package tools;

import javacard.framework.APDU;
import javacard.framework.Applet;
import javacard.framework.ISOException;

/**
 * 测试宿主：模拟读卡终端（IsoDep 层）。
 * - SELECT applet AID → JCRE 语义（select() + selectingApplet()=true + process()）
 * - 其他命令直接 process()
 * - ISOException → SW；未捕获异常 → 6F00
 */
public class Host {
    private final Applet app;
    private final APDU apdu = new APDU();
    private boolean appletSelected = false;

    public Host(byte[] aid, short installDataLen) {
        // install 参数: [AID len][AID][0][0]
        byte[] b = new byte[1 + aid.length + 2];
        b[0] = (byte) aid.length;
        System.arraycopy(aid, 0, b, 1, aid.length);
        com.gpjpboc.toolkit.FmcosWalletApplet.install(b, (short) 0, (byte) b.length);
        app = Applet.__current();
        if (app == null) throw new IllegalStateException("install failed");
    }

    /** 发送一条命令（可含数据），返回 数据+SW */
    public byte[] xfer(byte[] cmd) {
        byte[] header = new byte[5];
        System.arraycopy(cmd, 0, header, 0, Math.min(5, cmd.length));
        int dataLen = cmd.length - 5;
        byte[] data = null;
        if (dataLen > 0) {
            data = new byte[dataLen];
            System.arraycopy(cmd, 5, data, 0, dataLen);
        }
        return dispatch(header, data, dataLen);
    }

    public byte[] xfer(byte[] header, byte[] data) {
        return dispatch(header, data, data == null ? 0 : data.length);
    }

    private byte[] dispatch(byte[] header, byte[] data, int dataLen) {
        byte ins = header[1];
        byte p1 = header[2];

        // JCRE: SELECT by DF name 且命中 applet AID → select + selectingApplet
        boolean isSelectAid = (ins == (byte) 0xA4 && (p1 == 0x04));
        if (isSelectAid) {
            byte[] target = extractName(header, data, dataLen);
            if (target != null && Applet.__current() != null && Applet.__current().__aid() != null
                    && java.util.Arrays.equals(target, Applet.__current().__aid())) {
                // JC 2.2.2：重选同一 applet 不触发 deselect；仅首次选择调用 select()
                if (!appletSelected) {
                    appletSelected = app.select();
                }
                if (appletSelected) {
                    Applet.__setSelecting(true);
                    byte[] r = run(header, data, dataLen);
                    Applet.__setSelecting(false);
                    return r;
                }
                return sw(0x6A82);
            }
            // 未知 DF 名称：JC 2.2.2 语义——转发给当前已选 applet（如 PSE 由 applet 内处理）
            if (!appletSelected) {
                return sw(0x6A82);
            }
        }
        if (!appletSelected) {
            // 未选择 applet 时其他命令 → 卡片路由层处理（模拟 6A82）
            return sw(0x6A82);
        }
        return run(header, data, dataLen);
    }

    private byte[] extractName(byte[] header, byte[] data, int dataLen) {
        // SELECT by name: Lc 在 header[4]，名称即数据域本身
        int n = header[4] & 0xFF;
        if (n == 0 || data == null || n > dataLen) return null;
        byte[] r = new byte[n];
        System.arraycopy(data, 0, r, 0, n);
        return r;
    }

    private byte[] run(byte[] header, byte[] data, int dataLen) {
        try {
            apdu.inject(header, data, dataLen);
            app.process(apdu);
            byte[] out = apdu.takeResponse();
            return concat(out, (short) 0x9000);
        } catch (ISOException e) {
            byte[] out = apdu.takeResponse();
            return concat(out, e.getReason());
        } catch (Throwable t) {
            return sw(0x6F00);
        }
    }

    public static byte[] concat(byte[] data, short sw) {
        byte[] r = new byte[(data == null ? 0 : data.length) + 2];
        if (data != null) System.arraycopy(data, 0, r, 0, data.length);
        r[r.length - 2] = (byte) (sw >> 8);
        r[r.length - 1] = (byte) sw;
        return r;
    }

    public static byte[] sw(int s) {
        return new byte[]{(byte) (s >> 8), (byte) s};
    }

    public static int swOf(byte[] r) {
        if (r == null || r.length < 2) return -1;
        return ((r[r.length - 2] & 0xFF) << 8) | (r[r.length - 1] & 0xFF);
    }

    public static byte[] dataOf(byte[] r) {
        if (r == null || r.length < 2) return new byte[0];
        byte[] d = new byte[r.length - 2];
        System.arraycopy(r, 0, d, 0, d.length);
        return d;
    }

    public static String hex(byte[] b) {
        if (b == null) return "";
        StringBuilder sb = new StringBuilder();
        for (byte x : b) sb.append(String.format("%02X", x));
        return sb.toString();
    }

    public static byte[] h(String s) {
        s = s.replace(" ", "");
        byte[] r = new byte[s.length() / 2];
        for (int i = 0; i < r.length; i++) {
            r[i] = (byte) Integer.parseInt(s.substring(i * 2, i * 2 + 2), 16);
        }
        return r;
    }

    public static int be32(byte[] b, int off) {
        return ((b[off] & 0xFF) << 24) | ((b[off + 1] & 0xFF) << 16) | ((b[off + 2] & 0xFF) << 8) | (b[off + 3] & 0xFF);
    }

    public static int be16(byte[] b, int off) {
        return ((b[off] & 0xFF) << 8) | (b[off + 1] & 0xFF);
    }
}
