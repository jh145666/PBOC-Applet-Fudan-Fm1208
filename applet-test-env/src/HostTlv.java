package tools;

import java.util.ArrayList;

/** 仿真用扁平 TLV 解析（含 6F/62/A5 模板展开） */
public class HostTlv {

    public static class Tlv {
        public final int tag;
        public final byte[] value;

        public Tlv(int tag, byte[] value) {
            this.tag = tag;
            this.value = value;
        }
    }

    public static ArrayList<Tlv> parse(byte[] d) {
        ArrayList<Tlv> out = new ArrayList<Tlv>();
        if (d == null) return out;
        int i = 0;
        while (i + 1 < d.length) {
            int tag = d[i] & 0xFF;
            i++;
            if ((tag & 0x1F) == 0x1F) { // 多字节标签
                int b = d[i] & 0xFF;
                i++;
                tag = (tag << 8) | b;
                while ((b & 0x80) == 0x80 && i < d.length) {
                    b = d[i] & 0xFF;
                    i++;
                    tag = (tag << 8) | b;
                }
            }
            if (i >= d.length) break;
            int len = d[i] & 0xFF;
            i++;
            if ((len & 0x80) != 0) {
                int nb = len & 0x7F;
                if (nb == 0 || i + nb > d.length) break;
                len = 0;
                for (int k = 0; k < nb; k++) len = (len << 8) | (d[i + k] & 0xFF);
                i += nb;
            }
            if (len < 0 || i + len > d.length) break;
            byte[] v = new byte[len];
            System.arraycopy(d, i, v, 0, len);
            i += len;
            out.add(new Tlv(tag, v));
            // 展开模板：6F FCI / 62 FCP / A5 专有
            if (tag == 0x6F || tag == 0x62 || tag == 0xA5) {
                out.addAll(parse(v));
            }
        }
        return out;
    }
}
