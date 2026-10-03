package tools;

/**
 * 互操作测试套件：以「新版 APP 实际命令序列」驱动「真 applet 类」，
 * 验证 文件系统 / 钱包 / 记录 / 配置 / FMCOS 规则 全链路。
 */
public class TestSuite {

    static int pass = 0, fail = 0;
    static StringBuffer failures = new StringBuffer();

    public static void main(String[] args) throws Exception {
        Host host = new Host(Host.h("A00000000386980701"), (short) 0);
        System.out.println("== 安装 applet (AID A00000000386980701) ==");

        // ============ 0. applet 选择（JCRE 语义） ============
        byte[] r = host.xfer(Host.h("00A4040009A00000000386980701"));
        chk("选择 applet → 9000", sw(r) == 0x9000, Host.hex(r));
        chk("applet FCI 前缀 6F", Host.hex(r).startsWith("6F1B8409A00000000386980701"), Host.hex(r));

        // ============ 1. 文件系统扫描（按新版 FileSysActivity 序列） ============
        System.out.println("\n== T1 智能扫描（APP 命令序列） ==");
        r = host.xfer(Host.h("00A40000023F00"));
        chk("SELECT 3F00 (P2=00) → 9000", sw(r) == 0x9000, Host.hex(r));
        chk("MF FCI 含 88 01 01（目录 SFI）", Host.hex(r).contains("880101"), Host.hex(r));
        r = host.xfer(Host.h("00A4000C023F00"));
        chk("SELECT 3F00 (P2=0C 兼容) → 9000 无数据", sw(r) == 0x9000 && Host.dataOf(r).length == 0, Host.hex(r));
        r = host.xfer(Host.h("00A404000E"), "1PAY.SYS.DDF01".getBytes());
        chk("SELECT PSE → 9000 MF FCI", sw(r) == 0x9000 && Host.hex(r).contains("880101"), Host.hex(r));
        r = host.xfer(Host.h("00A4000002ABCD"));
        chk("SELECT 不存在 FID → 6A82", sw(r) == 0x6A82, Host.hex(r));

        int[] mfHits = scanRange(host, 0x0000, 0x00FF);
        int[] dfRange = scanRange(host, 0x1000, 0x10FF);
        chk("MF 命中 0001/0005", containsAll(mfHits, 0x0001, 0x0005), intArr(mfHits));
        chk("MF 命中 DF 1001", containsAll(dfRange, 0x1001), intArr(dfRange));
        chk("MF 命中数恰为 3", mfHits.length + dfRange.length == 3, intArr(mfHits) + " " + intArr(dfRange));

        // 探测 MF/0001（EF-REC）—— 扫描后先回 MF（当前目录语义）
        host.xfer(Host.h("00A40000023F00"));
        host.xfer(Host.h("00A40000020001"));
        r = host.xfer(Host.h("00B2010400"));
        chk("MF/0001 读记录1 → 9000 16B", sw(r) == 0x9000 && Host.dataOf(r).length == 16, Host.hex(r));
        chk("MF/0001 内容=目录模板 61 0B 4F 09 AID", Host.hex(r).startsWith("610B4F09A00000000386980701"), Host.hex(r));
        r = host.xfer(Host.h("00B2010C00")); // SFI=1 当前目录
        chk("MF/0001 SFI=1 读记录 → 同上", sw(r) == 0x9000 && Host.dataOf(r).length == 16, Host.hex(r));
        r = host.xfer(Host.h("00B2020400"));
        chk("MF/0001 记录2 → 6A83", sw(r) == 0x6A83, Host.hex(r));

        // 探测 MF/0005（EF-BIN）
        host.xfer(Host.h("00A40000020005"));
        r = host.xfer(Host.h("00B0000000"));
        chk("MF/0005 读二进制 → 16B", sw(r) == 0x9000 && Host.dataOf(r).length == 16, Host.hex(r));
        chk("MF/0005 内容 FMCOS-SIM", Host.hex(r).startsWith("464D434F532D53494D"), Host.hex(r));
        r = host.xfer(Host.h("00B0001008"));
        chk("MF/0005 偏移越界 → 6B00", sw(r) == 0x6B00, Host.hex(r));
        r = host.xfer(Host.h("00B0850000")); // SFI=5
        chk("MF/0005 SFI=5 读 → 16B", sw(r) == 0x9000 && Host.dataOf(r).length == 16, Host.hex(r));
        r = host.xfer(Host.h("00B0000008"));
        chk("MF/0005 Le=8 → 8B", sw(r) == 0x9000 && Host.dataOf(r).length == 8, Host.hex(r));

        // EF FCI 分类（62 82 01 fd 83 02 fid）
        r = host.xfer(Host.h("00A40000020005"));
        chk("MF/0005 FCI=62 06 82 01 00 83 02 0005", Host.hex(r).startsWith("620682010083020005"), Host.hex(r));
        r = host.xfer(Host.h("00A40000020001"));
        chk("MF/0001 FCI=62 06 82 01 01 83 02 0001", Host.hex(r).startsWith("620682010183020001"), Host.hex(r));

        // ============ 2. DF_1001 应用目录 ============
        System.out.println("\n== T2 DF_1001 应用目录 ==");
        host.xfer(Host.h("00A40000023F00")); // 回 MF 再进 DF
        r = host.xfer(Host.h("00A40000021001"));
        chk("SELECT 1001 → 9000 ADF FCI", sw(r) == 0x9000 && Host.hex(r).contains("8409"), Host.hex(r));
        int[] dfHits = scanRange(host, 0x0000, 0x00FF);
        chk("DF1001 命中 0001/0002/0015/0016/0018",
                containsAll(dfHits, 0x0001, 0x0002, 0x0015, 0x0016, 0x0018), intArr(dfHits));
        chk("DF1001 命中数恰为 5", dfHits.length == 5, intArr(dfHits));

        host.xfer(Host.h("00A40000020001"));
        r = host.xfer(Host.h("00B2010400"));
        chk("DF/0001 应用基本信息 → 48B", sw(r) == 0x9000 && Host.dataOf(r).length == 48, Host.hex(r));
        chk("DF/0001 前缀 = AID", Host.hex(r).startsWith("A00000000386980701"), Host.hex(r));
        host.xfer(Host.h("00A40000020002"));
        r = host.xfer(Host.h("00B2010400"));
        chk("DF/0002 应用参数 → 32B", sw(r) == 0x9000 && Host.dataOf(r).length == 32, Host.hex(r));
        chk("DF/0002 [0]=walletMode=1 [1]=recordsOn=1", Host.hex(r).startsWith("0101"), Host.hex(r));
        host.xfer(Host.h("00A40000020015"));
        r = host.xfer(Host.h("00B0000000"));
        chk("DF/0015 公钥信息 → 16B", sw(r) == 0x9000 && Host.dataOf(r).length == 16, Host.hex(r));
        host.xfer(Host.h("00A40000020016"));
        r = host.xfer(Host.h("00B0000000"));
        chk("DF/0016 私钥信息 → 16B", sw(r) == 0x9000 && Host.dataOf(r).length == 16, Host.hex(r));
        // SFI 直读：0018 SFI=24 → P2=24<<3|4=0xC4
        r = host.xfer(Host.h("00B201C400"));
        chk("DF/0018 SFI=24 读记录1（空）→ 6A83", sw(r) == 0x6A83, Host.hex(r));
        r = host.xfer(Host.h("00B0950000")); // 0015 SFI=21 → P1=0x95
        chk("DF/0015 SFI=21 读 → 16B", sw(r) == 0x9000 && Host.dataOf(r).length == 16, Host.hex(r));
        r = host.xfer(Host.h("00A40000020018"));
        chk("DF/0018 FCI=62 06 82 01 02 83 02 0018（循环）", Host.hex(r).startsWith("620682010283020018"), Host.hex(r));

        // 类型/参数错误
        host.xfer(Host.h("00A40000020015"));
        r = host.xfer(Host.h("00B2010400"));
        chk("READ RECORD 于二进制文件 → 6981", sw(r) == 0x6981, Host.hex(r));
        host.xfer(Host.h("00A40000020001"));
        r = host.xfer(Host.h("00B0000000"));
        chk("READ BINARY 于记录文件 → 6981", sw(r) == 0x6981, Host.hex(r));
        r = host.xfer(Host.h("00B2010000"));
        chk("READ RECORD P2 低3位≠100 → 6A86", sw(r) == 0x6A86, Host.hex(r));
        host.xfer(Host.h("00A40000020001"));
        r = host.xfer(Host.h("00B2010408")); // Le=8 < 48
        chk("READ RECORD Le 过短 → 6C30（记录长48）", sw(r) == 0x6C30, Host.hex(r));

        // ============ 3. 钱包：余额 / 圈存 / 消费 ============
        System.out.println("\n== T3 钱包操作（WalletActivity 序列） ==");
        walletSelect(host);
        r = host.xfer(Host.h("805C000104"));
        chk("ED 读余额 → 9000 默认 30.00 元", sw(r) == 0x9000 && Host.be32(Host.dataOf(r), 0) == 3000, Host.hex(r));
        r = host.xfer(Host.h("805C000204"));
        chk("EP 读余额 → 9000 默认 30.00 元", sw(r) == 0x9000 && Host.be32(Host.dataOf(r), 0) == 3000, Host.hex(r));

        // ---- EP 圈存 10.00 元 ----
        byte[] resp = doInitLoad(host, 0x02, 1000);
        chk("EP 圈存初始化 → 16B", resp != null && resp.length == 16, resp == null ? "null" : Host.hex(resp));
        byte[] sess = sessionKey(Host.h("1E02313233343536"), resp);
        byte[] mac1 = macPboc(sess, cat(Host.h("00000BB8"), Host.h("000003E8"), Host.h("02"), Host.h("000000000001")));
        chk("MAC1 校验通过（APP 复算一致）", eq(mac1, resp, 12), Host.hex(resp));
        r = host.xfer(Host.h("805200000B"), cat(Host.h("2026010111223300"), Host.h("DEADBEEF")));
        chk("EP 圈存（错误 MAC2 默认放行）→ 9000 + TAC4", sw(r) == 0x9000 && Host.dataOf(r).length == 4, Host.hex(r));
        walletSelect(host);
        r = host.xfer(Host.h("805C000204"));
        chk("EP 圈存后余额 40.00 元", sw(r) == 0x9000 && Host.be32(Host.dataOf(r), 0) == 4000, Host.hex(r));

        // ---- ED 圈存 5.00 元（正确 MAC2） ----
        resp = doInitLoad(host, 0x01, 500);
        sess = sessionKey(Host.h("1E02313233343536"), resp);
        byte[] mac2 = macPboc(sess, cat(Host.h("00000FA0"), Host.h("01"), Host.h("000000000001"), Host.h("20260101112233")));
        r = host.xfer(Host.h("805200000B"), cat(Host.h("20260101112233"), mac2));
        chk("ED 圈存（正确 MAC2）→ 9000 + TAC4", sw(r) == 0x9000 && Host.dataOf(r).length == 4, Host.hex(r));
        walletSelect(host);
        r = host.xfer(Host.h("805C000104"));
        chk("ED 圈存后余额 35.00 元", sw(r) == 0x9000 && Host.be32(Host.dataOf(r), 0) == 3500, Host.hex(r));

        // ---- ED 消费 7.00 元（默认不验 PIN） ----
        resp = doInitPurchase(host, 0x01, 700);
        chk("ED 消费初始化（无 PIN）→ 15B", resp != null && resp.length == 15, resp == null ? "null" : Host.hex(resp));
        byte[] ts = Host.h("00000001");
        byte[] dt = Host.h("20260101112233");
        byte[] div = new byte[8];
        System.arraycopy(resp, 11, div, 0, 4);
        div[4] = resp[4];
        div[5] = resp[5];
        div[6] = ts[2];
        div[7] = ts[3];
        byte[] dsess = desCbcZero(Host.h("1E02313233343536"), div);
        byte[] m1 = macPboc(dsess, cat(Host.h("000002BC"), Host.h("05"), Host.h("000000000001"), dt));
        byte[] fin = new byte[20];
        System.arraycopy(Host.h("805401000F"), 0, fin, 0, 5);
        System.arraycopy(ts, 0, fin, 5, 4);
        System.arraycopy(dt, 0, fin, 9, 7);
        System.arraycopy(m1, 0, fin, 16, 4);
        r = host.xfer(fin);
        chk("ED 消费 → 9000 TAC4+MAC2", sw(r) == 0x9000 && Host.dataOf(r).length == 8, Host.hex(r));
        byte[] m2exp = macPboc(dsess, Host.h("000002BC"));
        chk("消费 MAC2 校验通过", eq(m2exp, Host.dataOf(r), 4), Host.hex(r));
        walletSelect(host);
        r = host.xfer(Host.h("805C000104"));
        chk("ED 消费后余额 28.00 元", sw(r) == 0x9000 && Host.be32(Host.dataOf(r), 0) == 2800, Host.hex(r));

        // ---- EP 消费 12.00 元 ----
        resp = doInitPurchase(host, 0x02, 1200);
        System.arraycopy(resp, 11, div, 0, 4);
        div[4] = resp[4];
        div[5] = resp[5];
        div[6] = ts[2];
        div[7] = ts[3];
        dsess = desCbcZero(Host.h("1E02313233343536"), div);
        m1 = macPboc(dsess, cat(Host.h("000004B0"), Host.h("06"), Host.h("000000000001"), dt));
        System.arraycopy(m1, 0, fin, 16, 4);
        r = host.xfer(fin);
        chk("EP 消费 → 9000", sw(r) == 0x9000, Host.hex(r));
        walletSelect(host);
        r = host.xfer(Host.h("805C000204"));
        chk("EP 消费后余额 28.00 元", sw(r) == 0x9000 && Host.be32(Host.dataOf(r), 0) == 2800, Host.hex(r));

        // ---- 异常流 ----
        r = host.xfer(cat(Host.h("805001020B01"), Host.h("000F4240"), Host.h("000000000001")));
        chk("超额消费初始化 → 9401", sw(r) == 0x9401, Host.hex(r));
        r = host.xfer(cat(Host.h("805001020B02"), Host.h("00000064"), Host.h("000000000001")));
        chk("密钥索引≠01 → 9403", sw(r) == 0x9403, Host.hex(r));
        r = host.xfer(Host.h("805200000B"), Host.h("2026010111223300"));
        chk("未初始化圈存 → 6985", sw(r) == 0x6985, Host.hex(r));

        // ============ 4. 交易记录 ============
        System.out.println("\n== T4 交易记录（EF_DF_REC_0018） ==");
        host.xfer(Host.h("00A40000021001"));
        r = host.xfer(Host.h("00B201C400"));
        chk("记录1 → 23B", sw(r) == 0x9000 && Host.dataOf(r).length == 23, Host.hex(r));
        byte[] rec1 = Host.dataOf(r);
        chk("最新记录类型=06（EP消费）", (rec1[0] & 0xFF) == 0x06, Host.hex(rec1));
        chk("最新记录金额=1200", Host.be32(rec1, 3) == 1200, Host.hex(rec1));
        chk("最新记录终端号=000000000001", Host.hex(rec1).substring(14, 26).equals("000000000001"), Host.hex(rec1));
        byte[] rec2 = Host.dataOf(host.xfer(Host.h("00B202C400")));
        chk("记录2 类型=05（ED消费）", (rec2[0] & 0xFF) == 0x05, Host.hex(rec2));
        byte[] rec3 = Host.dataOf(host.xfer(Host.h("00B203C400")));
        chk("记录3 类型=01（ED圈存）", (rec3[0] & 0xFF) == 0x01, Host.hex(rec3));
        byte[] rec4 = Host.dataOf(host.xfer(Host.h("00B204C400")));
        chk("记录4 类型=02（EP圈存）", (rec4[0] & 0xFF) == 0x02, Host.hex(rec4));
        r = host.xfer(Host.h("00B205C400"));
        chk("记录5（未写满）→ 6A83", sw(r) == 0x6A83, Host.hex(r));
        host.xfer(Host.h("00A40000020018"));
        r = host.xfer(Host.h("00B2010400"));
        chk("选择 0018 后当前文件读记录1 → 23B", sw(r) == 0x9000 && Host.dataOf(r).length == 23, Host.hex(r));

        // ============ 5. 配置 ============
        System.out.println("\n== T5 配置（AppletSettingsActivity 序列） ==");
        r = host.xfer(Host.h("80CA000000"));
        chk("80CA 读配置 → 9000", sw(r) == 0x9000, Host.hex(r));
        String cfg = Host.hex(Host.dataOf(r));
        chk("配置含 tag01 主密钥默认 1E02..36", cfg.contains("01081E02313233343536"), cfg);
        chk("配置含 tag05 authOn=0", cfg.contains("050100"), cfg);
        chk("配置含 tag06 atcMode=0", cfg.contains("060100"), cfg);
        chk("配置含 tag07 atcVal", cfg.contains("0702"), cfg);
        chk("配置含 tag08 walletMode=1", cfg.contains("080101"), cfg);
        chk("配置含 tag09 recordsOn=1", cfg.contains("090101"), cfg);
        chk("配置含 tag0A/0B FCI", cfg.contains("0A1D6F1B8409") && cfg.contains("0B176F"), cfg);

        r = host.xfer(cat(Host.h("80DC00000D"), Host.h("0108"), Host.h("1122334455667788"), Host.h("080100")));
        chk("80DC 改主密钥+单钱包 → 9000", sw(r) == 0x9000, Host.hex(r));
        walletSelect(host);
        r = host.xfer(Host.h("805C000104"));
        chk("单钱包模式 ED 余额 → 6A86", sw(r) == 0x6A86, Host.hex(r));
        r = host.xfer(Host.h("805C000204"));
        chk("单钱包模式 EP 余额正常", sw(r) == 0x9000, Host.hex(r));
        host.xfer(cat(Host.h("80DC00000D"), Host.h("0108"), Host.h("1E02313233343536"), Host.h("080101")));
        walletSelect(host);
        r = host.xfer(Host.h("805C000104"));
        chk("恢复双钱包后 ED 余额正常", sw(r) == 0x9000, Host.hex(r));

        // ATC 固定模式
        r = host.xfer(cat(Host.h("80DC000007"), Host.h("060101"), Host.h("07020099")));
        chk("80DC 固定 ATC=0x0099 → 9000", sw(r) == 0x9000, Host.hex(r));
        resp = doInitPurchase(host, 0x02, 100);
        chk("固定 ATC 生效（resp ATC=0099）", resp != null && resp[4] == 0x00 && resp[5] == (byte) 0x99, Host.hex(resp));
        r = host.xfer(Host.h("805401000F"), cat(Host.h("00000001"), Host.h("2026010111223300")));
        chk("消费第二步（默认不验 MAC1）→ 9000", sw(r) == 0x9000, Host.hex(r));
        host.xfer(cat(Host.h("80DC000008"), Host.h("060100"))); // 恢复自动 ATC

        // ============ 6. 认证开关 ============
        System.out.println("\n== T6 认证开关（默认放行 / 启用后校验） ==");
        host.xfer(cat(Host.h("80DC000008"), Host.h("050101")));
        walletSelect(host);
        r = host.xfer(Host.h("805C000104"));
        chk("authOn=1 且未验 PIN → ED 余额 6982", sw(r) == 0x6982, Host.hex(r));
        r = host.xfer(Host.h("0020000006"), "123456".getBytes());
        chk("错误 PIN → 63Cx", (sw(r) >> 8) == 0x63, Host.hex(r));
        r = host.xfer(Host.h("0020000006"), "123455".getBytes());
        chk("正确 PIN → 9000", sw(r) == 0x9000, Host.hex(r));
        walletSelect(host);
        r = host.xfer(Host.h("805C000104"));
        chk("验 PIN 后 ED 余额 → 9000", sw(r) == 0x9000, Host.hex(r));
        resp = doInitLoad(host, 0x02, 100);
        r = host.xfer(Host.h("805200000B"), cat(Host.h("20260101112233"), Host.h("00000000")));
        chk("authOn=1 错误 MAC2 → 9302", sw(r) == 0x9302, Host.hex(r));
        host.xfer(cat(Host.h("80DC000008"), Host.h("050100")));
        resp = doInitLoad(host, 0x02, 100);
        r = host.xfer(Host.h("805200000B"), cat(Host.h("20260101112233"), Host.h("00000000")));
        chk("authOn=0 错误 MAC2 → 放行 9000", sw(r) == 0x9000, Host.hex(r));

        r = host.xfer(Host.h("0084000008"));
        chk("GET CHALLENGE → 8B", sw(r) == 0x9000 && Host.dataOf(r).length == 8, Host.hex(r));
        r = host.xfer(Host.h("0082000108"), Host.h("1122334455667788"));
        chk("外部认证（默认）→ 9000", sw(r) == 0x9000, Host.hex(r));
        r = host.xfer(Host.h("0088000108"), Host.h("0102030405060708"));
        chk("内部认证（无密钥）→ 8B 随机", sw(r) == 0x9000 && Host.dataOf(r).length == 8, Host.hex(r));

        // ============ 7. 动态文件 ============
        System.out.println("\n== T7 动态文件（80E0/00D6/00DC/00E2/80E4） ==");
        host.xfer(Host.h("00A40000023F00"));
        r = host.xfer(Host.h("80E0001006"), cat(Host.h("28"), Host.h("0008"), Host.h("F0F0FF")));
        chk("CREATE 0010 BIN → 9000", sw(r) == 0x9000, Host.hex(r));
        r = host.xfer(Host.h("80E0001006"), cat(Host.h("28"), Host.h("0008"), Host.h("F0F0FF")));
        chk("重复 CREATE → 6A82", sw(r) == 0x6A82, Host.hex(r));
        host.xfer(Host.h("00A40000020010"));
        r = host.xfer(Host.h("00B0000000"));
        chk("新建 BIN 读 → 8B 全零", Host.hex(r).equals("00000000000000009000"), Host.hex(r));
        r = host.xfer(Host.h("00D6000008"), Host.h("AABBCCDD00112233"));
        chk("UPDATE BINARY → 9000", sw(r) == 0x9000, Host.hex(r));
        r = host.xfer(Host.h("00B0000000"));
        chk("回读 = AABBCCDD00112233", Host.hex(r).equals("AABBCCDD001122339000"), Host.hex(r));
        r = host.xfer(Host.h("00B0900000")); // SFI=16 (0010&0x1F)
        chk("SFI=16 读 0010 → 8B", sw(r) == 0x9000 && Host.dataOf(r).length == 8, Host.hex(r));

        r = host.xfer(Host.h("80E0001108"), cat(Host.h("2A"), Host.h("0018"), Host.h("F0F0FF"), Host.h("0803")));
        chk("CREATE 0011 REC 8×3 → 9000", sw(r) == 0x9000, Host.hex(r));
        host.xfer(Host.h("00A40000020011"));
        r = host.xfer(Host.h("00E2000008"), Host.h("1122334455667788"));
        chk("APPEND 记录1 → 9000", sw(r) == 0x9000, Host.hex(r));
        r = host.xfer(Host.h("00E2000008"), Host.h("8877665544332211"));
        chk("APPEND 记录2 → 9000", sw(r) == 0x9000, Host.hex(r));
        r = host.xfer(Host.h("00B2010400"));
        chk("读记录1 → 1122334455667788", Host.hex(r).equals("11223344556677889000"), Host.hex(r));
        r = host.xfer(Host.h("00B2020400"));
        chk("读记录2 → 8877665544332211", Host.hex(r).equals("88776655443322119000"), Host.hex(r));
        r = host.xfer(Host.h("00B2030400"));
        chk("记录3 未写 → 6A83", sw(r) == 0x6A83, Host.hex(r));
        r = host.xfer(Host.h("00DC010408"), Host.h("A1B2C3D4E5F60718"));
        chk("UPDATE 记录1 → 9000", sw(r) == 0x9000, Host.hex(r));
        r = host.xfer(Host.h("00B2010400"));
        chk("更新后读回 = A1B2...", Host.hex(r).equals("A1B2C3D4E5F607189000"), Host.hex(r));

        r = host.xfer(Host.h("80E0101011"), cat(Host.h("38"), Host.h("0020"), Host.h("F0F0"),
                Host.h("00"), Host.h("FFFF"), Host.h("A0000000030001")));
        chk("CREATE DF 1010 → 9000", sw(r) == 0x9000, Host.hex(r));
        r = host.xfer(Host.h("00A40000021010"));
        chk("SELECT 动态 DF → 9000 FCI 82 01 38", sw(r) == 0x9000 && Host.hex(r).contains("820138"), Host.hex(r));
        r = host.xfer(Host.h("80E0002006"), cat(Host.h("28"), Host.h("0004"), Host.h("F0F0FF")));
        chk("DF1010 下 CREATE 0020 → 9000", sw(r) == 0x9000, Host.hex(r));
        host.xfer(Host.h("00A40000020020"));
        host.xfer(Host.h("00D6000004"), Host.h("CAFEBABE"));
        r = host.xfer(Host.h("00B0000000"));
        chk("DF1010/0020 写读 → CAFEBABE", Host.hex(r).equals("CAFEBABE9000"), Host.hex(r));

        host.xfer(Host.h("00A40000023F00"));
        r = host.xfer(Host.h("80E40000020010"));
        chk("DELETE 0010 → 9000", sw(r) == 0x9000, Host.hex(r));
        r = host.xfer(Host.h("00A40000020010"));
        chk("删除后 SELECT → 6A82", sw(r) == 0x6A82, Host.hex(r));
        r = host.xfer(Host.h("80E40000020001"));
        chk("DELETE 固定文件 → 6985", sw(r) == 0x6985, Host.hex(r));
        r = host.xfer(Host.h("80E40000021010"));
        chk("DELETE 非空 DF → 6985", sw(r) == 0x6985, Host.hex(r));

        host.xfer(Host.h("00A40000020005"));
        r = host.xfer(Host.h("00D6000010"), Host.h("000102030405060708090A0B0C0D0E0F"));
        chk("UPDATE MF/0005 → 9000", sw(r) == 0x9000, Host.hex(r));
        r = host.xfer(Host.h("00B0000000"));
        chk("卡序列号回读一致", Host.hex(r).equals("000102030405060708090A0B0C0D0E0F9000"), Host.hex(r));

        r = host.xfer(Host.h("00C0000004"));
        chk("GET RESPONSE 无挂起 → 6985", sw(r) == 0x6985, Host.hex(r));

        // ============ 8. 循环记录滚动覆盖 ============
        System.out.println("\n== T8 循环记录滚动覆盖（0018 满 10 条） ==");
        walletSelect(host);
        for (int i = 0; i < 11; i++) {
            resp = doInitPurchase(host, 0x02, 1);
            r = host.xfer(Host.h("805401000F"), cat(Host.h("00000001"), Host.h("2026010111223300")));
            if (sw(r) != 0x9000) break;
        }
        host.xfer(Host.h("00A40000021001"));
        int n = 0;
        for (int i = 1; i <= 10; i++) {
            byte[] rr = host.xfer(new byte[]{0x00, (byte) 0xB2, (byte) i, (byte) 0xC4, 0x00});
            if (sw(rr) != 0x9000) break;
            n = i;
        }
        chk("循环记录恰 10 条（滚动覆盖）", n == 10, String.valueOf(n));
        byte[] rr = host.xfer(Host.h("00B201C400"));
        chk("最新记录为最后交易（类型06）", (Host.dataOf(rr)[0] & 0xFF) == 0x06, Host.hex(rr));

        // ============ 9. 选择不影响钱包状态 ============
        System.out.println("\n== T9 选择不影响钱包状态 ==");
        walletSelect(host);
        r = host.xfer(Host.h("805C000204"));
        int before = Host.be32(Host.dataOf(r), 0);
        host.xfer(Host.h("00A40000023F00"));
        host.xfer(Host.h("00A404000E"), "1PAY.SYS.DDF01".getBytes());
        walletSelect(host);
        r = host.xfer(Host.h("805C000204"));
        chk("多次选择后余额不变", Host.be32(Host.dataOf(r), 0) == before, before + "→" + Host.be32(Host.dataOf(r), 0));

        // ============ 10. APP 修复后命令字节流端到端（WalletActivity v1.4.1） ============
        System.out.println("\n== T10 APP 命令字节流回归（17B init 带 Le / 16B 圈存 / 20B 消费 / 12位PIN） ==");

        // ---- APP 圈存 init：17 字节（5 头 + 11 数据 + Le=10）----
        walletSelect(host);
        walletSelect(host);
        byte[] epBal0 = Host.dataOf(host.xfer(Host.h("805C000204")));
        int ep0 = Host.be32(epBal0, 0);
        byte[] appInit = new byte[17];
        System.arraycopy(Host.h("805000020B01"), 0, appInit, 0, 6); // 头 + 密钥索引
        System.arraycopy(Host.h("000003E8"), 0, appInit, 6, 4);     // 10.00 元
        System.arraycopy(Host.h("000000000001"), 0, appInit, 10, 6);// 终端号完整 6 字节
        appInit[16] = 0x10;                                          // Le
        r = host.xfer(appInit);
        chk("APP 圈存 init(17B, Le=10) → 9000 16B", sw(r) == 0x9000 && Host.dataOf(r).length == 16, Host.hex(r));
        byte[] lresp = Host.dataOf(r);
        byte[] lsess = sessionKey(Host.h("1E02313233343536"), lresp);
        byte[] lold = new byte[]{lresp[0], lresp[1], lresp[2], lresp[3]};
        byte[] lmac1 = macPboc(lsess, cat(lold, Host.h("000003E8"), Host.h("02"), Host.h("000000000001")));
        chk("APP 圈存 MAC1 终端号完整（6字节 tid）", eq(lmac1, lresp, 12), Host.hex(lresp));

        // ---- APP 圈存第二步：16 字节（5 头 + 7 dt + 4 MAC2）----
        byte[] lfin = new byte[16];
        System.arraycopy(Host.h("805200000B"), 0, lfin, 0, 5);
        System.arraycopy(Host.h("20260101112233"), 0, lfin, 5, 7);
        System.arraycopy(macPboc(lsess, cat(Host.h("000003E8"), Host.h("02"), Host.h("000000000001"), Host.h("20260101112233"))), 0, lfin, 12, 4);
        r = host.xfer(lfin);
        chk("APP 圈存 fin(16B) → 9000 TAC4", sw(r) == 0x9000 && Host.dataOf(r).length == 4, Host.hex(r));
        walletSelect(host);
        r = host.xfer(Host.h("805C000204"));
        chk("APP 圈存后 EP 余额 = 原余额+10.00", sw(r) == 0x9000 && Host.be32(Host.dataOf(r), 0) == ep0 + 1000,
                Host.hex(r) + " 原" + ep0);

        // ---- APP 消费 init：17 字节（Le=0F）----
        byte[] pInit = new byte[17];
        System.arraycopy(Host.h("805001020B01"), 0, pInit, 0, 6);
        System.arraycopy(Host.h("000001F4"), 0, pInit, 6, 4);       // 5.00 元
        System.arraycopy(Host.h("000000000001"), 0, pInit, 10, 6);
        pInit[16] = 0x0F;
        r = host.xfer(pInit);
        chk("APP 消费 init(17B, Le=0F) → 9000 15B", sw(r) == 0x9000 && Host.dataOf(r).length == 15, Host.hex(r));
        byte[] presp = Host.dataOf(r);
        byte[] pdt = Host.h("20260115123456");
        byte[] pdiv = new byte[8];
        System.arraycopy(presp, 11, pdiv, 0, 4);
        pdiv[4] = presp[4]; pdiv[5] = presp[5];
        pdiv[6] = 0x00; pdiv[7] = 0x01;                             // 终端交易序号 0001
        byte[] psess = desCbcZero(Host.h("1E02313233343536"), pdiv);

        // ---- APP 消费：20 字节（5 头 + 4 序号 + 7 dt + 4 MAC1）----
        byte[] pfin = new byte[20];
        System.arraycopy(Host.h("805401000F"), 0, pfin, 0, 5);
        System.arraycopy(Host.h("00000001"), 0, pfin, 5, 4);
        System.arraycopy(pdt, 0, pfin, 9, 7);
        System.arraycopy(macPboc(psess, cat(Host.h("000001F4"), Host.h("06"), Host.h("000000000001"), pdt)), 0, pfin, 16, 4);
        r = host.xfer(pfin);
        chk("APP 消费(20B) → 9000 TAC4+MAC2", sw(r) == 0x9000 && Host.dataOf(r).length == 8, Host.hex(r));
        chk("APP 消费 MAC2 校验", eq(macPboc(psess, Host.h("000001F4")), Host.dataOf(r), 4), Host.hex(r));
        walletSelect(host);
        r = host.xfer(Host.h("805C000204"));
        chk("APP 消费后 EP 余额 = 圈存后-5.00", sw(r) == 0x9000 && Host.be32(Host.dataOf(r), 0) == ep0 + 1000 - 500,
                Host.hex(r) + " 原" + ep0);

        // ---- PIN 12 位：下发 + 验证 + 恢复 ----
        byte[] pin12 = "112233445566".getBytes();
        r = host.xfer(cat(Host.h("80DC00000E"), Host.h("04"), Host.h("0C"), pin12));
        chk("80DC 下发 12 位 PIN → 9000", sw(r) == 0x9000, Host.hex(r));
        walletSelect(host);
        r = host.xfer(Host.h("002000000C"), pin12);
        chk("12 位 PIN 验证 → 9000", sw(r) == 0x9000, Host.hex(r));
        r = host.xfer(cat(Host.h("80DC000008"), Host.h("04"), Host.h("06"), Host.h("313233343536")));
        chk("恢复 6 位 PIN → 9000", sw(r) == 0x9000, Host.hex(r));
        walletSelect(host);
        r = host.xfer(Host.h("0020000006"), Host.h("313233343536"));
        chk("恢复后 6 位 PIN 验证 → 9000", sw(r) == 0x9000, Host.hex(r));

        // ---- 扫描语义回归：DF 1001 下 5 个文件内容与 MF 不同 ----
        host.xfer(Host.h("00A40000023F00"));
        host.xfer(Host.h("00A40000021001"));
        int[] hits1001 = scanRange(host, 0x0000, 0x00FF);
        chk("DF1001 子文件数=5（递归修复回归）", hits1001.length == 5, intArr(hits1001));
        host.xfer(Host.h("00A40000020001"));
        byte[] dfRec = Host.dataOf(host.xfer(Host.h("00B2010400")));
        host.xfer(Host.h("00A40000023F00"));
        host.xfer(Host.h("00A40000020001"));
        byte[] mfRec = Host.dataOf(host.xfer(Host.h("00B2010400")));
        chk("DF/0001 与 MF/0001 内容不同（防父目录内容误扫）", !Host.hex(dfRec).equals(Host.hex(mfRec)),
                Host.hex(dfRec) + " vs " + Host.hex(mfRec));

        // ============ 11. v1.4.2：PIN 错误次数限制 / getConfig 剩余次数 / PSE 发现 ============
        System.out.println("\n== T11 PIN 次数限制 + 剩余次数上报 + PSE 记录发现（v1.4.2） ==");

        // ---- 恢复出厂默认 PIN 123455（与 applet/主页/APP 三处统一）----
        r = host.xfer(cat(Host.h("80DC000008"), Host.h("04"), Host.h("06"), Host.h("313233343535")));
        chk("80DC 恢复默认 PIN 123455 → 9000", sw(r) == 0x9000, Host.hex(r));
        walletSelect(host);
        r = host.xfer(Host.h("0020000006"), Host.h("313233343535"));
        chk("默认 PIN 123455 验证 → 9000（三处统一基准）", sw(r) == 0x9000, Host.hex(r));

        // ---- 错误次数倒计：63C2 → 63C1 →（正确恢复 3）----
        r = host.xfer(Host.h("0020000006"), Host.h("313233343534"));
        chk("错 1 次 → 63C2", sw(r) == 0x63C2, Host.hex(r));
        r = host.xfer(Host.h("0020000006"), Host.h("313233343534"));
        chk("错 2 次 → 63C1", sw(r) == 0x63C1, Host.hex(r));
        r = host.xfer(Host.h("0020000006"), Host.h("313233343535"));
        chk("正确验证 → 9000（计数恢复 3）", sw(r) == 0x9000, Host.hex(r));

        // ---- 连错 3 次锁死 → 6983 → 80DC 解锁 ----
        r = host.xfer(Host.h("0020000006"), Host.h("313233343534"));
        chk("错 1 次 → 63C2", sw(r) == 0x63C2, Host.hex(r));
        r = host.xfer(Host.h("0020000006"), Host.h("313233343534"));
        chk("错 2 次 → 63C1", sw(r) == 0x63C1, Host.hex(r));
        r = host.xfer(Host.h("0020000006"), Host.h("313233343534"));
        chk("错 3 次 → 63C0（即将锁死）", sw(r) == 0x63C0, Host.hex(r));
        r = host.xfer(Host.h("0020000006"), Host.h("313233343535"));
        chk("锁死后正确 PIN 也 → 6983", sw(r) == 0x6983, Host.hex(r));
        r = host.xfer(Host.h("0020000006"), Host.h("313233343534"));
        chk("锁死后错误 PIN → 6983（不再倒计）", sw(r) == 0x6983, Host.hex(r));

        // ---- getConfig 0x0C 上报剩余次数 ----
        byte[] cfg1 = Host.dataOf(host.xfer(Host.h("80CA000000")));
        int triesLeft = -1;
        for (tools.HostTlv.Tlv t : tools.HostTlv.parse(cfg1)) {
            if (t.tag == 0x0C && t.value.length >= 1) triesLeft = t.value[0] & 0xFF;
        }
        chk("锁死状态 getConfig 0x0C=0", triesLeft == 0, "0C=" + triesLeft);
        r = host.xfer(cat(Host.h("80DC000008"), Host.h("04"), Host.h("06"), Host.h("313233343535")));
        chk("80DC 重写 PIN → 9000（解锁+重置）", sw(r) == 0x9000, Host.hex(r));
        walletSelect(host);
        r = host.xfer(Host.h("0020000006"), Host.h("313233343535"));
        chk("解锁后正确 PIN → 9000", sw(r) == 0x9000, Host.hex(r));
        byte[] cfg2 = Host.dataOf(host.xfer(Host.h("80CA000000")));
        triesLeft = -1;
        for (tools.HostTlv.Tlv t : tools.HostTlv.parse(cfg2)) {
            if (t.tag == 0x0C && t.value.length >= 1) triesLeft = t.value[0] & 0xFF;
        }
        chk("解锁后 getConfig 0x0C=3", triesLeft == 3, "0C=" + triesLeft);

        // ---- PSE 记录驱动 AID 发现（APP discoverAidsViaPse 的 APDU 序列）----
        r = host.xfer(Host.h("00A404000E"), "1PAY.SYS.DDF01".getBytes());
        chk("SELECT PSE(1PAY.SYS.DDF01) → 9000", sw(r) == 0x9000, Host.hex(r));
        boolean foundAid = false;
        for (int rec = 1; rec <= 10; rec++) {
            byte[] pseRec = host.xfer(new byte[]{0x00, (byte) 0xB2, (byte) rec, (byte) (0x04 | (1 << 3)), 0x00});
            if (sw(pseRec) != 0x9000) break;
            for (tools.HostTlv.Tlv t : tools.HostTlv.parse(Host.dataOf(pseRec))) {
                if (t.tag == 0x61) {
                    for (tools.HostTlv.Tlv g : tools.HostTlv.parse(t.value)) {
                        if (g.tag == 0x4F && Host.hex(g.value).equals("A00000000386980701")) foundAid = true;
                    }
                }
            }
        }
        chk("PSE 记录解析出应用 AID", foundAid, "not found");
        r = host.xfer(Host.h("00A404000E"), "2PAY.SYS.DDF01".getBytes());
        chk("SELECT PPSE（无此目录）→ 非 9000 容错", sw(r) != 0x9000, Host.hex(r));
        r = host.xfer(Host.h("00A4000C023F00"));
        chk("PSE 发现后恢复 MF → 9000", sw(r) == 0x9000, Host.hex(r));

        // ---- 智能扫描新区间回归：2F00 区间建文件后智能扫应命中 ----
        host.xfer(Host.h("00A40000023F00"));
        r = host.xfer(Host.h("80E02F0006"), Host.h("280004F0F0FF")); // 2F00 BIN（新增智能区间）
        chk("2F00 区间建测试文件 → 9000", sw(r) == 0x9000, Host.hex(r));
        int[] hitsSmart = scanRange(host, 0x2F00, 0x2FFF);
        chk("智能扫描新增 2F00 区间能发现文件", hitsSmart.length == 1, intArr(hitsSmart));
        host.xfer(Host.h("00A40000023F00"));
        r = host.xfer(Host.h("80E4000002"), Host.h("2F00")); // 删除测试文件（Lc=02，数据域=FID）
        chk("清理 2F00 测试文件 → 9000", sw(r) == 0x9000, Host.hex(r));
        host.xfer(Host.h("00A40000023F00"));

        // ============ 12. v1.4.3：主页/钱包页双格式 PIN 兼容 ============
        System.out.println("\n== T12 双格式 PIN（主页 hex 模式 + 钱包页 ASCII 模式，v1.4.3） ==");

        // ---- 主页 PbocEngine 旧版行为：PIN 按 hex 解析发送（"123455" → 12 34 55 共 3 字节）----
        walletSelect(host);
        r = host.xfer(Host.h("0020000003"), Host.h("123455"));
        chk("主页 hex 模式 VERIFY(3B) → 9000（applet 双格式兼容）", sw(r) == 0x9000, Host.hex(r));

        // ---- 主页 P2=密钥标识 ≠ 0（verifyPin(String,int) 带 keyIdx）----
        r = host.xfer(Host.h("0020000203"), Host.h("123455"));
        chk("主页 P2=02 VERIFY → 9000（忽略 P2 密钥标识）", sw(r) == 0x9000, Host.hex(r));

        // ---- 钱包页 v1.4.1+ 行为：ASCII 明文发送（6 字节）----
        r = host.xfer(Host.h("0020000006"), Host.h("313233343535"));
        chk("钱包页 ASCII 模式 VERIFY(6B) → 9000", sw(r) == 0x9000, Host.hex(r));

        // ---- 错误值两种格式都不放过 ----
        r = host.xfer(Host.h("0020000003"), Host.h("123456"));
        chk("hex 模式错误 PIN → 63C2", sw(r) == 0x63C2, Host.hex(r));
        r = host.xfer(Host.h("0020000006"), Host.h("313233343534"));
        chk("ASCII 模式错误 PIN → 63C1", sw(r) == 0x63C1, Host.hex(r));
        r = host.xfer(Host.h("0020000006"), Host.h("313233343535"));
        chk("正确 PIN 恢复计数 → 9000", sw(r) == 0x9000, Host.hex(r));

        // ---- 奇数长度 PIN：hex 解读分支不成立（lc*2 != pin.length）----
        r = host.xfer(cat(Host.h("80DC000007"), Host.h("04"), Host.h("05"), Host.h("3132333435")));
        chk("80DC 改 5 位 PIN 12345 → 9000", sw(r) == 0x9000, Host.hex(r));
        walletSelect(host);
        r = host.xfer(Host.h("0020000005"), Host.h("3132333435"));
        chk("5 位 PIN ASCII VERIFY → 9000", sw(r) == 0x9000, Host.hex(r));
        r = host.xfer(Host.h("0020000002"), Host.h("1234"));
        chk("5 位 PIN 时 hex 猜测(2B) → 63C2（长度不符不误判）", sw(r) == 0x63C2, Host.hex(r));
        r = host.xfer(Host.h("0020000005"), Host.h("3132333435"));
        chk("5 位 PIN 恢复 → 9000", sw(r) == 0x9000, Host.hex(r));
        // 恢复默认 123455
        r = host.xfer(cat(Host.h("80DC000008"), Host.h("04"), Host.h("06"), Host.h("313233343535")));
        chk("恢复默认 PIN 123455 → 9000", sw(r) == 0x9000, Host.hex(r));

        // ---- Util.arrayCompare 真卡语义回归（按名选择 AID 仍命中）----
        walletSelect(host);
        r = host.xfer(Host.h("805C000104"));
        chk("arrayCompare 真卡语义下按名选择仍有效", sw(r) == 0x9000, Host.hex(r));

        System.out.println();
        System.out.println("===== 结果: PASS " + pass + " / FAIL " + fail + " =====");
        if (fail > 0) {
            System.out.println("失败项:\n" + failures);
            System.exit(1);
        }
    }

    // ================== 辅助 ==================

    static byte[] cat(byte[]... parts) {
        int n = 0;
        for (byte[] p : parts) n += p.length;
        byte[] r = new byte[n];
        int o = 0;
        for (byte[] p : parts) {
            System.arraycopy(p, 0, r, o, p.length);
            o += p.length;
        }
        return r;
    }

    static void walletSelect(Host host) {
        host.xfer(Host.h("00A40000023F00"));
        host.xfer(Host.h("00A4040009A00000000386980701"));
    }

    static byte[] doInitLoad(Host host, int p2, int amountFen) {
        walletSelect(host);
        byte[] r = host.xfer(cat(Host.h("805000" + String.format("%02X", p2) + "0B01"),
                intB(amountFen), Host.h("000000000001")));
        if (sw(r) != 0x9000) return null;
        return Host.dataOf(r);
    }

    static byte[] doInitPurchase(Host host, int p2, int amountFen) {
        walletSelect(host);
        byte[] r = host.xfer(cat(Host.h("805001" + String.format("%02X", p2) + "0B01"),
                intB(amountFen), Host.h("000000000001")));
        if (sw(r) != 0x9000) return null;
        return Host.dataOf(r);
    }

    static byte[] intB(int v) {
        return new byte[]{(byte) (v >> 24), (byte) (v >> 16), (byte) (v >> 8), (byte) v};
    }

    /** 圈存过程密钥 = DES(MK, rand4+ATC2+8000)（与 WalletActivity sessionKey 一致） */
    static byte[] sessionKey(byte[] mk, byte[] initResp) {
        byte[] div = new byte[8];
        System.arraycopy(initResp, 8, div, 0, 4);
        div[4] = initResp[4];
        div[5] = initResp[5];
        div[6] = (byte) 0x80;
        div[7] = 0x00;
        return desCbcZero(mk, div);
    }

    /** PBOC CBC-MAC（前 4 字节），与 CardIO.macPboc 一致 */
    static byte[] macPboc(byte[] key, byte[] data) {
        int n = (data.length / 8 + 1) * 8;
        byte[] padded = new byte[n];
        System.arraycopy(data, 0, padded, 0, data.length);
        padded[data.length] = (byte) 0x80;
        byte[] iv = new byte[8];
        for (int off = 0; off < n; off += 8) {
            for (int j = 0; j < 8; j++) iv[j] ^= padded[off + j];
            iv = desCbcZero(key, iv);
        }
        byte[] out = new byte[4];
        System.arraycopy(iv, 0, out, 0, 4);
        return out;
    }

    static byte[] desCbcZero(byte[] key, byte[] data) {
        try {
            String alg = (key.length == 8) ? "DES" : "DESede";
            byte[] k = key;
            if (k.length == 16) {
                k = new byte[24];
                System.arraycopy(key, 0, k, 0, 16);
                System.arraycopy(key, 0, k, 16, 8);
            }
            javax.crypto.Cipher c = javax.crypto.Cipher.getInstance(alg + "/CBC/NoPadding");
            c.init(javax.crypto.Cipher.ENCRYPT_MODE,
                    new javax.crypto.spec.SecretKeySpec(k, alg),
                    new javax.crypto.spec.IvParameterSpec(new byte[8]));
            return c.doFinal(data);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    static boolean eq(byte[] a, byte[] b, int bOff) {
        for (int i = 0; i < 4; i++) {
            if (a[i] != b[bOff + i]) return false;
        }
        return true;
    }

    static int[] scanRange(Host host, int from, int to) {
        java.util.ArrayList<Integer> hits = new java.util.ArrayList<Integer>();
        for (int fid = from; fid <= to; fid++) {
            byte hi = (byte) (fid >> 8);
            byte lo = (byte) fid;
            byte[] r = host.xfer(Host.h("00A4000002"), new byte[]{hi, lo});
            int s = sw(r);
            if (s == 0x9000 || s == 0x6282 || s == 0x6283) hits.add(fid);
        }
        int[] a = new int[hits.size()];
        for (int i = 0; i < a.length; i++) a[i] = hits.get(i);
        return a;
    }

    static boolean containsAll(int[] arr, int... need) {
        for (int nd : need) {
            boolean f = false;
            for (int v : arr) if (v == nd) f = true;
            if (!f) return false;
        }
        return true;
    }

    static String intArr(int[] a) {
        StringBuilder sb = new StringBuilder();
        for (int v : a) sb.append(String.format("%04X ", v));
        return sb.toString();
    }

    static int sw(byte[] r) {
        if (r == null || r.length < 2) return -1;
        return ((r[r.length - 2] & 0xFF) << 8) | (r[r.length - 1] & 0xFF);
    }

    static void chk(String name, boolean ok, String detail) {
        if (ok) {
            pass++;
            System.out.println("  [PASS] " + name);
        } else {
            fail++;
            System.out.println("  [FAIL] " + name + "  ← " + detail);
            failures.append("  ").append(name).append(" ← ").append(detail).append('\n');
        }
    }
}
