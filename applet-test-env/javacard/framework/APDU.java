package javacard.framework;

/** 模拟环境：APDU（真实缓冲区语义，供测试宿主注入命令） */
public class APDU {
    public static final short PROTOCOL_T0 = 0;
    public static final short PROTOCOL_T1 = 1;

    private final byte[] buf = new byte[261];
    private int inLen = 0;
    private int outOff = 0;
    private int outLen = 0;

    public byte[] getBuffer() {
        return buf;
    }

    public short setIncomingAndReceive() {
        return (short) inLen;
    }

    public short setOutgoing() {
        return (short) 256;
    }

    public void setOutgoingLength(short len) {
        this.outLen = len & 0xFFFF;
    }

    public void setOutgoingAndSend(short off, short len) {
        this.outOff = off;
        this.outLen = len & 0xFFFF;
    }

    // ==== 宿主注入 / 收集 ====
    public void inject(byte[] header5, byte[] data, int dataLen) {
        java.util.Arrays.fill(buf, (byte) 0);
        System.arraycopy(header5, 0, buf, 0, 5);
        if (data != null && dataLen > 0) {
            System.arraycopy(data, 0, buf, 5, dataLen);
        }
        inLen = dataLen;
        outOff = 0;
        outLen = 0;
    }

    public byte[] takeResponse() {
        if (outLen <= 0) return new byte[0];
        byte[] r = new byte[outLen];
        System.arraycopy(buf, outOff, r, 0, outLen);
        return r;
    }
}
