import tools.Host;

/**
 * 复刻 APP FileSysActivity v1.4.2 扫描算法：
 *   selectMf(P2=0C→00) / PSE 记录驱动 AID 发现 / 智能区间扩展 /
 *   每区间上下文恢复 / 命中 DF 后恢复并止损 / FID 优先路径重选
 * 在模拟卡上运行，输出 APP 实际会看到的文件树。
 */
public class AppScanSim {

    static class Node {
        int fid;
        String type = "DF";
        String fci = "";
        String probe = "";
        byte[] aidName;
        int sfi;
        java.util.ArrayList<Node> kids = new java.util.ArrayList<Node>();
    }

    static Host host;
    static java.util.ArrayList<byte[]> pendingAids;

    public static void main(String[] a) throws Exception {
        host = new Host(Host.h("A00000000386980701"), (short) 0);
        System.out.println("===== 智能扫描（复刻 APP v1.4.2 算法）=====");
        Node mf = scan(true);
        dump(mf, 0);
        System.out.println();
        System.out.println("===== 全扫描（先建扩展区间测试文件 0500/2000/3A00，扫后应能发现）=====");
        host.xfer(Host.h("00A40000023F00"));
        host.xfer(Host.h("80E0050006"), Host.h("280008F0F0FF"));   // 0500 BIN（0100-0FFF）
        host.xfer(Host.h("80E0200006"), Host.h("280004F0F0FF"));   // 2000 BIN（1200-2EFF）
        host.xfer(Host.h("80E03A0006"), Host.h("280004F0F0FF"));   // 3A00 BIN（3000-FFFF）
        Node mf2 = scan(false);
        dump(mf2, 0);
    }

    // ---- APP 算法逐行移植 ----
    static int swOf(byte[] r) {
        if (r == null || r.length < 2) return -1;
        return ((r[r.length - 2] & 0xFF) << 8) | (r[r.length - 1] & 0xFF);
    }

    static byte[] trim(byte[] r) {
        byte[] o = new byte[r.length - 2];
        System.arraycopy(r, 0, o, 0, o.length);
        return o;
    }

    static byte[] xfer(byte[] cmd) throws Exception {
        return host.xfer(cmd);
    }

    static byte[] selectFid(int fid) throws Exception {
        byte[] r = xfer(new byte[]{0x00, (byte) 0xA4, 0x00, 0x00, 0x02,
                (byte) ((fid >> 8) & 0xFF), (byte) (fid & 0xFF)});
        int sw = swOf(r);
        if (sw == 0x9000 || sw == 0x6282 || sw == 0x6283) return trim(r);
        r = xfer(new byte[]{0x00, (byte) 0xA4, 0x00, 0x0C, 0x02,
                (byte) ((fid >> 8) & 0xFF), (byte) (fid & 0xFF)});
        sw = swOf(r);
        if (sw == 0x9000 || sw == 0x6282 || sw == 0x6283) return trim(r);
        return null;
    }

    static boolean selectAid(byte[] aid) throws Exception {
        byte[] c = new byte[5 + aid.length];
        c[0] = 0x00; c[1] = (byte) 0xA4; c[2] = 0x04; c[3] = 0x00;
        c[4] = (byte) aid.length;
        System.arraycopy(aid, 0, c, 5, aid.length);
        int sw = swOf(xfer(c));
        return sw == 0x9000 || sw == 0x6282 || sw == 0x6283;
    }

    static byte[] selectAidFci(byte[] aid) throws Exception {
        byte[] c = new byte[5 + aid.length + 1];
        c[0] = 0x00; c[1] = (byte) 0xA4; c[2] = 0x04; c[3] = 0x00;
        c[4] = (byte) aid.length;
        System.arraycopy(aid, 0, c, 5, aid.length);
        byte[] r = xfer(c);
        int sw = swOf(r);
        if (sw == 0x9000 || sw == 0x6282 || sw == 0x6283) return trim(r);
        return null;
    }

    static boolean selectMf() throws Exception {
        int sw = swOf(xfer(new byte[]{0x00, (byte) 0xA4, 0x00, 0x0C, 0x02, 0x3F, 0x00}));
        if (sw == 0x9000 || sw == 0x6282 || sw == 0x6283) return true;
        sw = swOf(xfer(new byte[]{0x00, (byte) 0xA4, 0x00, 0x00, 0x02, 0x3F, 0x00}));
        return sw == 0x9000 || sw == 0x6282 || sw == 0x6283;
    }

    static Node scan(boolean smart) throws Exception {
        byte[] aid = Host.h("A00000000386980701");
        boolean inApplet = selectAid(aid);
        byte[] fci = null;
        byte[] r = xfer(new byte[]{0x00, (byte) 0xA4, 0x00, 0x00, 0x02, 0x3F, 0x00});
        if (swOf(r) == 0x9000 || swOf(r) == 0x6282 || swOf(r) == 0x6283) fci = trim(r);
        if (fci == null) throw new Exception("选择 3F00 失败");
        System.out.println("(inApplet=" + inApplet + ") MF FCI=" + Host.hex(fci));
        Node mf = buildNode(0x3F00, fci);
        pendingAids = discoverAidsViaPse();
        java.util.ArrayList<Node> path = new java.util.ArrayList<Node>();
        path.add(mf);
        scanUnder(mf, smart, path);
        selectMf();
        return mf;
    }

    /** PSE/PPSE 记录驱动 AID 发现（与 APP v1.4.2 相同） */
    static java.util.ArrayList<byte[]> discoverAidsViaPse() throws Exception {
        java.util.ArrayList<byte[]> aids = new java.util.ArrayList<byte[]>();
        String[] names = {"1PAY.SYS.DDF01", "2PAY.SYS.DDF01"};
        for (String nm : names) {
            try {
                byte[] name = nm.getBytes();
                byte[] c = new byte[5 + name.length + 1];
                c[0] = 0x00; c[1] = (byte) 0xA4; c[2] = 0x04; c[3] = 0x00;
                c[4] = (byte) name.length;
                System.arraycopy(name, 0, c, 5, name.length);
                byte[] r = xfer(c);
                int sw = swOf(r);
                if (!(sw == 0x9000 || sw == 0x6282 || sw == 0x6283)) continue;
                byte[] fci = trim(r);
                int sfi = 1;
                for (tools.HostTlv.Tlv t : tools.HostTlv.parse(fci)) {
                    if (t.tag == 0x88 && t.value.length >= 1) sfi = t.value[0] & 0xFF;
                }
                if (sfi < 1 || sfi > 30) sfi = 1;
                for (int rec = 1; rec <= 10; rec++) {
                    byte[] rr = xfer(new byte[]{0x00, (byte) 0xB2, (byte) rec,
                            (byte) (0x04 | (sfi << 3)), 0x00});
                    if (swOf(rr) != 0x9000) break;
                    byte[] data = trim(rr);
                    if (data.length == 0) break;
                    for (tools.HostTlv.Tlv t : tools.HostTlv.parse(data)) {
                        if (t.tag == 0x61) {
                            for (tools.HostTlv.Tlv g : tools.HostTlv.parse(t.value)) {
                                if (g.tag == 0x4F && g.value.length >= 5 && g.value.length <= 16
                                        && !containsAid(aids, g.value)) aids.add(g.value.clone());
                            }
                        } else if (t.tag == 0x4F && t.value.length >= 5 && t.value.length <= 16
                                && !containsAid(aids, t.value)) {
                            aids.add(t.value.clone());
                        }
                    }
                }
            } catch (Throwable t) {
                System.out.println("  (PSE " + nm + " 异常: " + t + ")");
            }
        }
        selectMf();
        return aids;
    }

    static boolean containsAid(java.util.ArrayList<byte[]> list, byte[] a) {
        for (byte[] b : list) if (java.util.Arrays.equals(b, a)) return true;
        return false;
    }

    static boolean kidHasAid(java.util.ArrayList<Node> kids, byte[] a) {
        for (Node n : kids) if (n.aidName != null && java.util.Arrays.equals(n.aidName, a)) return true;
        return false;
    }

    static boolean reselectPath(java.util.ArrayList<Node> path) throws Exception {
        try {
            if (!selectMf()) return false;
            for (int i = 1; i < path.size(); i++) {
                Node n = path.get(i);
                if (n.fid != 0x3F00 && selectFid(n.fid) != null) continue;
                if (n.aidName != null && n.aidName.length >= 5) {
                    if (!selectAid(n.aidName)) return false;
                    if (n.fid != 0x3F00) selectFid(n.fid);
                } else if (n.fid == 0x3F00) continue;
                else return false;
            }
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    static void scanUnder(Node dir, boolean smart, java.util.ArrayList<Node> path) throws Exception {
        int[] smartRanges = {0x0000, 0x00FF, 0x1000, 0x10FF, 0x1100, 0x11FF, 0x2F00, 0x2FFF};
        int[] ranges = smart ? smartRanges
                : new int[]{0x0000, 0x00FF, 0x1000, 0x10FF, 0x1100, 0x11FF, 0x2F00, 0x2FFF,
                        0x0100, 0x0FFF, 0x1200, 0x2EFF, 0x3000, 0xFFFF};
        java.util.ArrayList<Node> dirs = new java.util.ArrayList<Node>();
        int found = 0;
        for (int ri = 0; ri < ranges.length; ri += 2) {
            int from = ranges[ri], to = ranges[ri + 1];
            String stage = smart ? "智能扫描" : (ri < smartRanges.length ? "全扫描·智能区间" : "全扫描·扩展区间");
            if (!reselectPath(path)) { System.out.println("  !! " + stage + " 路径恢复失败，止损"); return; }
            int rangeHit = 0;
            for (int fid = from; fid <= to; fid++) {
                if (fid == dir.fid || fid == 0x3F00 || fid == 0x0000 || fid == 0xFFFF) continue;
                byte[] fci;
                try {
                    fci = selectFid(fid);
                } catch (Throwable t) {
                    return;
                }
                if (fci == null) continue;
                Node n = buildNode(fid, fci);
                probe(n);
                dir.kids.add(n);
                found++;
                rangeHit++;
                if (n.type.equals("DF") || n.type.equals("ADF")) {
                    dirs.add(n);
                    if (!reselectPath(path)) { System.out.println("  !! 命中目录后路径恢复失败，止损"); return; }
                }
            }
            if (rangeHit > 0 || from == 0x2F00)
                System.out.println("  [" + stage + " " + hex4(dir.fid) + "] 区间 " + hex4(from) + "-" + hex4(to) + " 命中 " + rangeHit);
        }

        // PSE 记录发现的应用合入（去重）
        if (path.size() == 1 && pendingAids != null) {
            int pseudo = 0x4F00;
            for (byte[] aid : pendingAids) {
                if (kidHasAid(dir.kids, aid)) {
                    System.out.println("  [PSE] AID " + Host.hex(aid) + " 已由区间扫描发现，去重跳过");
                    continue;
                }
                byte[] fciA = selectAidFci(aid);
                if (fciA == null) continue;
                Node n = buildNode(pseudo++, fciA);
                n.type = "ADF";
                n.probe = "PSE 目录发现（按 AID 进入）";
                dir.kids.add(n);
                found++;
                dirs.add(n);
                System.out.println("  [PSE] 新增 ADF " + Host.hex(aid));
            }
            pendingAids = null;
        }
        System.out.println("[" + hex4(dir.fid) + "] 命中 " + found + " 个，子目录 " + dirs.size());
        for (int i = 0; i < dirs.size(); i++) {
            Node d = dirs.get(i);
            boolean cycle = false;
            for (int j = 0; j < path.size(); j++) if (path.get(j).fid == d.fid) cycle = true;
            if (cycle) { System.out.println("  跳过(防环) " + hex4(d.fid)); continue; }
            path.add(d);
            boolean ok = reselectPath(path);
            System.out.println("  进入 " + hex4(d.fid) + " reselect=" + ok);
            if (ok) scanUnder(d, smart, path);
            path.remove(path.size() - 1);
            reselectPath(path);
        }
    }

    static Node buildNode(int fid, byte[] fci) {
        Node n = new Node();
        n.fid = fid;
        n.fci = Host.hex(fci);
        for (tools.HostTlv.Tlv t : tools.HostTlv.parse(fci)) {
            if (t.tag == 0x6F || t.tag == 0x62) {
                for (tools.HostTlv.Tlv g : tools.HostTlv.parse(t.value)) {
                    if (g.tag == 0x82 && g.value.length >= 1) {
                        int fb = g.value[0] & 0xFF;
                        if ((fb & 0x38) == 0x38) n.type = "DF";
                        else if ((fb & 0x07) == 0x00) n.type = "EF-BIN";
                        else if ((fb & 0x07) == 0x01) n.type = "EF-REC";
                        else if ((fb & 0x07) == 0x02) n.type = "EF-CYC";
                    } else if (g.tag == 0x84 && g.value.length > 0) n.aidName = g.value;
                    else if (g.tag == 0x88 && g.value.length >= 1) n.sfi = g.value[0] & 0xFF;
                }
            } else if (t.tag == 0x84 && t.value.length > 0) {
                n.aidName = t.value;
            }
        }
        return n;
    }

    static void probe(Node n) {
        try {
            if (n.type.equals("EF-BIN")) {
                byte[] r = xfer(new byte[]{0x00, (byte) 0xB0, 0x00, 0x00, 0x00});
                byte[] data = trim(r);
                n.probe = "长度=" + data.length + " 数据=" + Host.hex(data);
            } else if (n.type.equals("EF-REC") || n.type.equals("EF-CYC")) {
                int cnt = 0;
                String first = "";
                for (int rec = 1; rec <= 30; rec++) {
                    byte[] r = xfer(new byte[]{0x00, (byte) 0xB2, (byte) rec, 0x04, 0x00});
                    int sw = swOf(r);
                    if (sw == 0x6A83 || sw == 0x6A82 || sw == 0x6981) break;
                    if (sw != 0x9000) break;
                    if (cnt == 0) first = Host.hex(trim(r));
                    cnt++;
                }
                n.probe = "记录数=" + cnt + " 首条=" + first;
            }
        } catch (Throwable t) {
        }
    }

    static void dump(Node n, int depth) {
        StringBuilder ind = new StringBuilder();
        for (int i = 0; i < depth; i++) ind.append("  ");
        System.out.println(ind + hex4(n.fid) + " " + n.type + (n.sfi > 0 ? " SFI=" + hex2(n.sfi) : "")
                + (n.probe.length() > 0 ? "  | " + n.probe : "") + "  FCI=" + n.fci);
        for (Node k : n.kids) dump(k, depth + 1);
    }

    static String hex2(int b) { return String.format("%02X", b & 0xFF); }
    static String hex4(int b) { return String.format("%04X", b & 0xFFFF); }
}
