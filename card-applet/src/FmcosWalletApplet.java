package com.gpjpboc.toolkit;

import javacard.framework.APDU;
import javacard.framework.Applet;
import javacard.framework.ISO7816;
import javacard.framework.ISOException;
import javacard.framework.JCSystem;
import javacard.framework.Util;
import javacardx.crypto.Cipher;
import javacard.security.DESKey;
import javacard.security.KeyBuilder;
import javacard.security.RandomData;

/**
 * FMcos 钱包 Applet v2 —— 统一文件系统版
 * =====================================================
 *
 * 在 v1 钱包命令（FM1208/GB/T 16791 逐字节兼容）基础上，合并实现完整
 * FMCOS 2.0 文件系统，与 Android 工具箱“文件系统”页完全互操作：
 *
 * 默认文件结构（严格遵守 FMCOS 命令规则）：
 *
 *   MF (3F00)
 *   ├── EF 0001  卡信息记录   定长记录 1×16   SFI=01（兼作 MF 目录）
 *   ├── EF 0005  卡序列号     二进制 16       SFI=05
 *   └── DF 1001  电子钱包应用目录（AID = A00000000386980701）
 *       ├── EF 0001  应用基本信息  定长记录 1×48  SFI=01
 *       ├── EF 0002  应用参数      定长记录 1×32  SFI=02
 *       ├── EF 0015  公钥信息      二进制 16      SFI=21
 *       ├── EF 0016  私钥信息      二进制 16      SFI=22
 *       └── EF 0018  交易记录      循环 10×23     SFI=24
 *
 * 支持命令：
 *   00 A4  选择文件   P1=00 FID / P1=04 名称（PSE、钱包 AID）；P2=00 回 FCI、P2=0C 不回
 *   00 B0  读二进制   P1 最高位=1 → SFI 选择；否则 P1P2=偏移（当前文件）
 *   00 D6  写二进制   同上偏移规则
 *   00 B2  读记录     P2 低 3 位必须 100；P1=记录号（循环文件 01=最新）；Le=00 整条
 *   00 DC  写记录     定长记录文件
 *   00 E2  追加记录   循环/定长记录文件
 *   80 E0  建立文件   头部：28=二进制 2A=定长 2E=循环 38=DF
 *   80 E4  删除文件   仅限动态建立的文件
 *   00 C0  GET RESPONSE
 *   00 84  GET CHALLENGE（8 字节随机数）
 *   00 82  外部认证    默认（不启用认证）直接通过
 *   00 88  内部认证    DES 运算（密钥未配置时回随机数）
 *   00 20  VERIFY PIN
 *   80 5C  读余额      P2=01 电子存折 / 02 电子钱包（默认双钱包，各 30.00 元）
 *   80 50  交易初始化  P1=00 圈存 / 01 消费
 *   80 52  圈存        （TAC 应答）
 *   80 54  消费        （TAC+MAC2 应答）
 *   80 CA  读配置（Applet 设置页）
 *   80 DC  写配置（Applet 设置页）
 *
 * 交易成功后自动写入 0018 交易记录（可经 80DC tag 09 关闭）。
 * 默认不验证终端 MAC 与 PIN（80DC tag 05 可启用认证）。
 */
public class FmcosWalletApplet extends Applet {

    // ================== 状态字 ==================
    private static final short SW_PIN_BLOCKED = (short) 0x6983; // 认证方法阻塞（ISO 7816：计数为 0 后 VERIFY 一律 6983）
    private static final short SW_MAC_INVALID = (short) 0x9302;
    private static final short SW_NO_ENOUGH = (short) 0x9401;
    private static final short SW_KEY_IDX = (short) 0x9403;
    private static final short SW_WRONG_P1P2 = (short) 0x6A86;
    private static final short SW_WRONG_LENGTH = (short) 0x6700;
    private static final short SW_FILE_NOT_FOUND = (short) 0x6A82;
    private static final short SW_RECORD_NOT_FOUND = (short) 0x6A83;
    private static final short SW_NOT_BINARY = (short) 0x6981;
    private static final short SW_OFFSET_ERROR = (short) 0x6B00;
    private static final short SW_NO_SPACE = (short) 0x6A84;
    private static final short SW_FILE_EXISTS = (short) 0x6A82;
    private static final short SW_NO_PENDING = (short) 0x6985;

    // ================== 指令 ==================
    private static final byte INS_SELECT = (byte) 0xA4;
    private static final byte INS_READ_BIN = (byte) 0xB0;
    private static final byte INS_READ_REC = (byte) 0xB2;
    private static final byte INS_UPD_BIN = (byte) 0xD6;
    private static final byte INS_UPD_REC = (byte) 0xDC;
    private static final byte INS_APPEND_REC = (byte) 0xE2;
    private static final byte INS_CREATE_FILE = (byte) 0xE0;
    private static final byte INS_DELETE_FILE = (byte) 0xE4;
    private static final byte INS_GET_RESP = (byte) 0xC0;
    private static final byte INS_GET_CHALLENGE = (byte) 0x84;
    private static final byte INS_EXT_AUTH = (byte) 0x82;
    private static final byte INS_INT_AUTH = (byte) 0x88;
    private static final byte INS_VERIFY = 0x20;
    private static final byte INS_INITIALIZE = 0x50;
    private static final byte INS_CREDIT = 0x52;
    private static final byte INS_DEBIT = 0x54;
    private static final byte INS_GET_BALANCE = 0x5C;
    private static final byte INS_GET_DATA_CFG = (byte) 0xCA;
    private static final byte INS_PUT_DATA_CFG = (byte) 0xDC;

    // ================== 文件标识 ==================
    private static final short FILE_MF = (short) 0x3F00;
    private static final short FILE_DF_1001 = (short) 0x1001;
    private static final short FID_MF_REC_0001 = (short) 0x0001;
    private static final short FID_MF_BIN_0005 = (short) 0x0005;
    private static final short FID_DF_REC_0001 = (short) 0x0001;
    private static final short FID_DF_REC_0002 = (short) 0x0002;
    private static final short FID_DF_BIN_0015 = (short) 0x0015;
    private static final short FID_DF_BIN_0016 = (short) 0x0016;
    private static final short FID_DF_REC_0018 = (short) 0x0018;

    private static final byte[] WALLET_AID = {
            (byte) 0xA0, 0x00, 0x00, 0x00, 0x03, (byte) 0x86, (byte) 0x98, 0x07, 0x01
    };
    private static final byte[] CARDSIM_AID = {
            (byte) 0xA0, 0x00, 0x00, 0x00, 0x03, (byte) 0x86, (byte) 0x98, 0x07, 0x00
    };
    private static final byte[] PSE_NAME = {
            '1', 'P', 'A', 'Y', '.', 'S', 'Y', 'S', '.', 'D', 'D', 'F', '0', '1'
    };

    // ================== 文件类型（动态表） ==================
    private static final byte TYPE_BIN = 0;
    private static final byte TYPE_REC = 1;
    private static final byte TYPE_CYC = 2;
    private static final byte TYPE_DF = 3;

    private static final short TX_REC_COUNT = 10;
    private static final short TX_REC_LEN = 23;

    // ---- 钱包状态（EEPROM 持久化字段） ----
    private int epBalance = 3000;       // 电子钱包余额（分）默认 30.00 元
    private int edBalance = 3000;       // 电子存折余额（分）默认 30.00 元
    private short onlineATC = 1;        // 联机交易序号（圈存）
    private short offlineATC = 1;       // 脱机交易序号（消费）
    private byte pinTriesLeft = 3;

    // ---- 配置 ----
    private byte walletMode = 1;        // 默认双钱包（EP+ED）
    private byte recordsOn = 1;         // 默认写交易记录
    private byte authOn = 0;            // 默认不启用认证（不验证 MAC/PIN）
    private byte atcMode = 0;           // 0=自动递增 1=固定
    private short atcVal = 0;

    // ---- 会话内状态 ----
    private boolean pinVerified = false;
    private boolean transInit = false;
    private byte transIsLoad = 0;       // 1=圈存 2=消费
    private byte transP2 = 0;
    private int transAmount = 0;
    private final byte[] transRand = new byte[4];
    private final byte[] transTermId = new byte[6];
    private final byte[] transSess = new byte[8];
    private final byte[] lastChallenge = new byte[8];

    // ---- 密钥（默认与 APP 默认主密钥一致：1E02313233343536） ----
    private byte[] mk = {(byte) 0x1E, 0x02, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36}; // 交易主密钥
    private byte[] extKey = {};         // 外部认证密钥（默认空 → 认证直接通过）
    private byte[] intKey = {};         // 内部认证密钥（默认空 → 回随机数）
    private byte[] pin = {'1', '2', '3', '4', '5', '5'};

    // ---- FCI ----
    private byte[] selFci = {
            0x6F, 0x1B, (byte) 0x84, 0x09,
            (byte) 0xA0, 0x00, 0x00, 0x00, 0x03, (byte) 0x86, (byte) 0x98, 0x07, 0x01,
            (byte) 0xA5, 0x0D,
            (byte) 0x9F, 0x08, 0x02, 0x00, 0x01,
            (byte) 0x88, 0x01, 0x00,
            (byte) 0x9F, 0x0C, 0x03, 0x00, 0x00, 0x00
    };
    private byte[] mfFci = {
            0x6F, 0x15, (byte) 0x84, 0x0E,
            '1', 'P', 'A', 'Y', '.', 'S', 'Y', 'S', '.', 'D', 'D', 'F', '0', '1',
            (byte) 0xA5, 0x03, (byte) 0x88, 0x01, 0x01
    };

    // ---- 文件系统数据 ----
    private short currentDir = FILE_MF;
    private short currentEF = 0;

    private final byte[] mfRec1 = new byte[16];      // 0001 卡信息记录（兼 MF 目录）
    private final byte[] mfBin5 = new byte[16];      // 0005 卡序列号
    private final byte[] dfRec1 = new byte[48];      // 1001/0001 应用基本信息
    private final byte[] dfRec2 = new byte[32];      // 1001/0002 应用参数
    private final byte[] dfBin15 = new byte[16];     // 1001/0015 公钥信息
    private final byte[] dfBin16 = new byte[16];     // 1001/0016 私钥信息
    private final byte[] txRec = new byte[TX_REC_COUNT * TX_REC_LEN]; // 0018 交易记录
    private short txCount = 0;
    private short txHead = -1;                       // 最新记录槽位

    // ---- 动态文件（APP 经 80 E0 建立） ----
    private static final short DYN_MAX = 16;
    private static final short DYN_POOL = 1536;
    private final byte[] dynValid = new byte[DYN_MAX];
    private final short[] dynFid = new short[DYN_MAX];
    private final short[] dynParent = new short[DYN_MAX];
    private final byte[] dynType = new byte[DYN_MAX];
    private final byte[] dynSfi = new byte[DYN_MAX];
    private final short[] dynSize = new short[DYN_MAX];
    private final byte[] dynRecLen = new byte[DYN_MAX];
    private final byte[] dynRecNum = new byte[DYN_MAX];
    private final byte[] dynRecCnt = new byte[DYN_MAX];
    private final byte[] dynHead = new byte[DYN_MAX];
    private final short[] dynOff = new short[DYN_MAX];
    private final byte[] dynPool = new byte[DYN_POOL];
    private short dynUsed = 0;

    // ---- GET RESPONSE 缓存 ----
    private final byte[] lastResp = new byte[256];
    private short lastRespLen = 0;

    // ---- 密码学对象 ----
    private final Cipher cipher;
    private final DESKey key8;
    private final DESKey key16;
    private final RandomData rng;

    public static void install(byte[] bArray, short bOffset, byte bLength) {
        new FmcosWalletApplet().register(bArray, (short) (bOffset + 1), bArray[bOffset]);
    }

    protected FmcosWalletApplet() {
        cipher = Cipher.getInstance(Cipher.ALG_DES_CBC_NOPAD, false);
        key8 = (DESKey) KeyBuilder.buildKey(KeyBuilder.TYPE_DES, KeyBuilder.LENGTH_DES, false);
        key16 = (DESKey) KeyBuilder.buildKey(KeyBuilder.TYPE_DES, KeyBuilder.LENGTH_DES3_2KEY, false);
        rng = RandomData.getInstance(RandomData.ALG_SECURE_RANDOM);
        initDefaultFiles();
    }

    /** 初始化默认文件内容 */
    private void initDefaultFiles() {
        // MF/0001 卡信息记录：目录模板（61 0B 4F 09 <钱包AID>）+ 补零
        byte[] dir = {
            0x61, 0x0B, 0x4F, 0x09,
            (byte) 0xA0, 0x00, 0x00, 0x00, 0x03, (byte) 0x86, (byte) 0x98, 0x07, 0x01,
            0x00, 0x00, 0x00
        };
        Util.arrayCopyNonAtomic(dir, (short) 0, mfRec1, (short) 0, (short) 16);

        // MF/0005 卡序列号："FMCOS-SIM" + 版本
        byte[] ser = {'F', 'M', 'C', 'O', 'S', '-', 'S', 'I', 'M', 0x00, 0x01, 0x00,
                0x00, 0x00, 0x00, 0x00};
        Util.arrayCopyNonAtomic(ser, (short) 0, mfBin5, (short) 0, (short) 16);

        // DF1001/0001 应用基本信息：AID + 版本 + 启用日期 + 持卡人编号 + 发卡方编号
        Util.arrayCopyNonAtomic(WALLET_AID, (short) 0, dfRec1, (short) 0, (short) 9);
        dfRec1[9] = 0x10;                                   // 应用版本 1.0
        dfRec1[10] = 0x20; dfRec1[11] = 0x20;               // 启用日期 2020-01-01
        dfRec1[12] = 0x01; dfRec1[13] = 0x01;
        dfRec1[14] = '1'; dfRec1[15] = '2'; dfRec1[16] = '3'; dfRec1[17] = '4';
        dfRec1[18] = '5'; dfRec1[19] = '6'; dfRec1[20] = '7'; dfRec1[21] = '8';
        dfRec1[22] = 0x00; dfRec1[23] = 0x00; dfRec1[24] = 0x00; dfRec1[25] = 0x01;

        // DF1001/0015 公钥信息：版本 + 算法(RSA) + 模长 + 模数摘要
        dfBin15[0] = 0x01; dfBin15[1] = 0x02; dfBin15[2] = 0x08; dfBin15[3] = 0x00;
        dfBin15[4] = 'P'; dfBin15[5] = 'U'; dfBin15[6] = 'B'; dfBin15[7] = 'K';
        dfBin15[8] = 'E'; dfBin15[9] = 'Y'; dfBin15[10] = 0x00; dfBin15[11] = 0x01;

        // DF1001/0016 私钥信息：版本 + 算法(DES) + 占位（不出卡）
        dfBin16[0] = 0x01; dfBin16[1] = 0x01; dfBin16[2] = 0x08;
        dfBin16[3] = 'S'; dfBin16[4] = 'E'; dfBin16[5] = 'C'; dfBin16[6] = 'R'; dfBin16[7] = 'E';
        dfBin16[8] = 'T'; dfBin16[9] = 0x00; dfBin16[10] = 0x00; dfBin16[11] = 0x00;

        syncAppParams();
    }

    /** 应用参数记录（DF1001/0002）与当前配置同步 */
    private void syncAppParams() {
        Util.arrayFillNonAtomic(dfRec2, (short) 0, (short) 32, (byte) 0);
        dfRec2[0] = walletMode;
        dfRec2[1] = recordsOn;
        dfRec2[2] = authOn;
        dfRec2[3] = pinTriesLeft;
        dfRec2[4] = atcMode;
        dfRec2[5] = (byte) (atcVal >> 8);
        dfRec2[6] = (byte) atcVal;
        dfRec2[7] = (byte) (mk.length == 16 ? 0x02 : 0x01); // 01=DES 02=3DES
        dfRec2[8] = (byte) (offlineATC >> 8);
        dfRec2[9] = (byte) offlineATC;
        dfRec2[10] = (byte) (onlineATC >> 8);
        dfRec2[11] = (byte) onlineATC;
    }

    public void process(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        if (selectingApplet()) {
            // 被读卡器选择：钱包 AID → 应用 FCI；其他（含无 data）→ MF FCI。
            byte[] fci = selFci;
            try {
                short lc = (short) (buf[ISO7816.OFFSET_LC] & 0xFF);
                if (lc > 0) {
                    apdu.setIncomingAndReceive();
                    if (lc == (short) WALLET_AID.length
                            && Util.arrayCompare(buf, ISO7816.OFFSET_CDATA, WALLET_AID, (short) 0, lc) == 0) {
                        fci = selFci;
                    } else {
                        fci = mfFci;
                    }
                }
            } catch (Exception e) {
                // 读不到 data 时按应用 FCI 应答
            }
            currentDir = FILE_MF;
            currentEF = 0;
            Util.arrayCopyNonAtomic(fci, (short) 0, buf, (short) 0, (short) fci.length);
            apdu.setOutgoingAndSend((short) 0, (short) fci.length);
            return;
        }
        switch (buf[ISO7816.OFFSET_INS]) {
            case INS_SELECT:
                selectFile(apdu);
                return;
            case INS_READ_BIN:
                readBinary(apdu);
                return;
            case INS_READ_REC:
                readRecord(apdu);
                return;
            case INS_UPD_BIN:
                updateBinary(apdu);
                return;
            case INS_UPD_REC:
                // 0x00/0x04 → UPDATE RECORD 写记录；0x80 → PUT DATA 配置
                if ((buf[ISO7816.OFFSET_CLA] & 0xF0) == 0x80) {
                    putConfig(apdu);
                } else {
                    updateRecord(apdu);
                }
                return;
            case INS_APPEND_REC:
                appendRecord(apdu);
                return;
            case INS_CREATE_FILE:
                createFile(apdu);
                return;
            case INS_DELETE_FILE:
                deleteFile(apdu);
                return;
            case INS_GET_RESP:
                getResponse(apdu);
                return;
            case INS_GET_CHALLENGE:
                getChallenge(apdu);
                return;
            case INS_EXT_AUTH:
                externalAuth(apdu);
                return;
            case INS_INT_AUTH:
                internalAuth(apdu);
                return;
            case INS_VERIFY:
                verify(apdu);
                return;
            case INS_GET_BALANCE:
                getBalance(apdu);
                return;
            case INS_INITIALIZE:
                initialize(apdu);
                return;
            case INS_CREDIT:
                credit(apdu);
                return;
            case INS_DEBIT:
                debit(apdu);
                return;
            case INS_GET_DATA_CFG:
                getConfig(apdu);
                return;
            default:
                ISOException.throwIt(ISO7816.SW_INS_NOT_SUPPORTED);
        }
    }

    public void deselect() {
        transInit = false;
        pinVerified = false;
        currentEF = 0;
        currentDir = FILE_MF;
    }

    // ==================================================================
    //  文件系统
    // ==================================================================

    private void selectFile(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        byte p1 = buf[ISO7816.OFFSET_P1];
        byte p2 = buf[ISO7816.OFFSET_P2];
        short lc = (short) (buf[ISO7816.OFFSET_LC] & 0xFF);
        if (lc > 0) {
            apdu.setIncomingAndReceive();
        }

        short fid = 0;
        boolean byName = (p1 == 0x04);
        if (byName) {
            // 名称选择：PSE → MF；钱包 AID / 卡模拟 AID → DF1001
            if (lc == (short) PSE_NAME.length
                    && Util.arrayCompare(buf, ISO7816.OFFSET_CDATA, PSE_NAME, (short) 0, lc) == 0) {
                currentDir = FILE_MF;
                currentEF = 0;
                sendFci(apdu, mfFci, p2);
                return;
            }
            if (lc == (short) WALLET_AID.length
                    && Util.arrayCompare(buf, ISO7816.OFFSET_CDATA, WALLET_AID, (short) 0, lc) == 0) {
                currentDir = FILE_DF_1001;
                currentEF = 0;
                sendFci(apdu, selFci, p2);
                return;
            }
            if (lc == (short) CARDSIM_AID.length
                    && Util.arrayCompare(buf, ISO7816.OFFSET_CDATA, CARDSIM_AID, (short) 0, lc) == 0) {
                currentDir = FILE_MF;
                currentEF = 0;
                sendFci(apdu, mfFci, p2);
                return;
            }
            // 钱包 AID 前缀（≥7 字节）兼容
            if (lc >= 7 && lc <= (short) WALLET_AID.length
                    && Util.arrayCompare(buf, ISO7816.OFFSET_CDATA, WALLET_AID, (short) 0, lc) == 0) {
                currentDir = FILE_DF_1001;
                currentEF = 0;
                sendFci(apdu, selFci, p2);
                return;
            }
            ISOException.throwIt(SW_FILE_NOT_FOUND);
        } else if (p1 == 0x00) {
            if (lc != 2) {
                ISOException.throwIt(SW_WRONG_LENGTH);
            }
            fid = (short) (((buf[ISO7816.OFFSET_CDATA] & 0xFF) << 8)
                    | (buf[ISO7816.OFFSET_CDATA + 1] & 0xFF));
        } else {
            ISOException.throwIt(SW_WRONG_P1P2);
        }

        if (fid == FILE_MF) {
            // 任何目录下可选 MF
            currentDir = FILE_MF;
            currentEF = 0;
            sendFci(apdu, mfFci, p2);
            return;
        }

        if (currentDir == FILE_MF) {
            if (fid == FID_MF_REC_0001) {
                currentEF = fid;
                sendEfFci(apdu, TYPE_REC, (short) 16, (byte) 1, fid, (byte) 0x01, p2);
                return;
            }
            if (fid == FID_MF_BIN_0005) {
                currentEF = fid;
                sendEfFci(apdu, TYPE_BIN, (short) 16, (byte) 0, fid, (byte) 0x05, p2);
                return;
            }
            if (fid == FILE_DF_1001) {
                currentDir = FILE_DF_1001;
                currentEF = 0;
                sendFci(apdu, selFci, p2);
                return;
            }
        } else if (currentDir == FILE_DF_1001) {
            if (fid == FID_DF_REC_0001) {
                currentEF = fid;
                sendEfFci(apdu, TYPE_REC, (short) 48, (byte) 1, fid, (byte) 0x01, p2);
                return;
            }
            if (fid == FID_DF_REC_0002) {
                currentEF = fid;
                sendEfFci(apdu, TYPE_REC, (short) 32, (byte) 1, fid, (byte) 0x02, p2);
                return;
            }
            if (fid == FID_DF_BIN_0015) {
                currentEF = fid;
                sendEfFci(apdu, TYPE_BIN, (short) 16, (byte) 0, fid, (byte) 0x15, p2);
                return;
            }
            if (fid == FID_DF_BIN_0016) {
                currentEF = fid;
                sendEfFci(apdu, TYPE_BIN, (short) 16, (byte) 0, fid, (byte) 0x16, p2);
                return;
            }
            if (fid == FID_DF_REC_0018) {
                currentEF = fid;
                sendEfFci(apdu, TYPE_CYC, (short) TX_REC_LEN, (byte) TX_REC_COUNT, fid, (byte) 0x18, p2);
                return;
            }
        }

        // 动态文件
        short idx = dynFind(currentDir, fid);
        if (idx >= 0) {
            if (dynType[idx] == TYPE_DF) {
                currentDir = fid;
                currentEF = 0;
                sendDynDfFci(apdu, fid, p2);
            } else {
                currentEF = fid;
                sendEfFci(apdu, dynType[idx], (short) (dynRecLen[idx] & 0xFF),
                        (byte) (dynRecNum[idx] & 0xFF), fid, dynSfi[idx], p2);
            }
            return;
        }

        ISOException.throwIt(SW_FILE_NOT_FOUND);
    }

    /** P2=0C → 只回 9000；否则回 FCI */
    private void sendFci(APDU apdu, byte[] fci, byte p2) {
        if ((p2 & 0x0C) == 0x0C) {
            return; // 9000
        }
        byte[] buf = apdu.getBuffer();
        Util.arrayCopyNonAtomic(fci, (short) 0, buf, (short) 0, (short) fci.length);
        apdu.setOutgoingAndSend((short) 0, (short) fci.length);
    }

    /** EF 选择应答 FCI：62 06 82 01 <fd> 83 02 <FID> */
    private void sendEfFci(APDU apdu, byte type, short recLen, byte recNum, short fid, byte sfi, byte p2) {
        if ((p2 & 0x0C) == 0x0C) {
            return;
        }
        byte[] buf = apdu.getBuffer();
        byte fd;
        if (type == TYPE_BIN) {
            fd = 0x00;
        } else if (type == TYPE_REC) {
            fd = 0x01;
        } else if (type == TYPE_CYC) {
            fd = 0x02;
        } else {
            fd = 0x38;
        }
        buf[0] = 0x62;
        buf[1] = 0x06;
        buf[2] = (byte) 0x82;
        buf[3] = 0x01;
        buf[4] = fd;
        buf[5] = (byte) 0x83;
        buf[6] = 0x02;
        buf[7] = (byte) (fid >> 8);
        buf[8] = (byte) fid;
        apdu.setOutgoingAndSend((short) 0, (short) 9);
    }

    /** 动态 DF 选择应答 FCI：6F 06 82 01 38 83 02 <FID> */
    private void sendDynDfFci(APDU apdu, short fid, byte p2) {
        if ((p2 & 0x0C) == 0x0C) {
            return;
        }
        byte[] buf = apdu.getBuffer();
        buf[0] = 0x6F;
        buf[1] = 0x06;
        buf[2] = (byte) 0x82;
        buf[3] = 0x01;
        buf[4] = 0x38;
        buf[5] = (byte) 0x83;
        buf[6] = 0x02;
        buf[7] = (byte) (fid >> 8);
        buf[8] = (byte) fid;
        apdu.setOutgoingAndSend((short) 0, (short) 9);
    }

    // ---- 文件定位辅助 ----

    /** 定位 EF：返回文件句柄描述。type: 0=BIN 1=REC 2=CYC */
    private short[] loc = new short[6]; // [0]=src(0固定1动态) [1]=idx [2]=type [3]=size [4]=reclen [5]=numrec

    private short locateEf(short dir, short fid, short sfi) {
        // sfi=0 → 按 FID；否则按 SFI（当前目录优先）
        if (sfi != 0) {
            short f = fidBySfi(dir, sfi);
            if (f < 0) {
                return -1;
            }
            fid = f;
        }
        if (dir == FILE_MF) {
            if (fid == FID_MF_BIN_0005) {
                loc[0] = 0; loc[1] = 5; loc[2] = TYPE_BIN; loc[3] = 16; loc[4] = 0; loc[5] = 0;
                return 0;
            }
            if (fid == FID_MF_REC_0001) {
                loc[0] = 0; loc[1] = 1; loc[2] = TYPE_REC; loc[3] = 16; loc[4] = 16; loc[5] = 1;
                return 0;
            }
        } else if (dir == FILE_DF_1001) {
            if (fid == FID_DF_BIN_0015) {
                loc[0] = 0; loc[1] = 15; loc[2] = TYPE_BIN; loc[3] = 16; loc[4] = 0; loc[5] = 0;
                return 0;
            }
            if (fid == FID_DF_BIN_0016) {
                loc[0] = 0; loc[1] = 16; loc[2] = TYPE_BIN; loc[3] = 16; loc[4] = 0; loc[5] = 0;
                return 0;
            }
            if (fid == FID_DF_REC_0001) {
                loc[0] = 0; loc[1] = 101; loc[2] = TYPE_REC; loc[3] = 48; loc[4] = 48; loc[5] = 1;
                return 0;
            }
            if (fid == FID_DF_REC_0002) {
                loc[0] = 0; loc[1] = 102; loc[2] = TYPE_REC; loc[3] = 32; loc[4] = 32; loc[5] = 1;
                return 0;
            }
            if (fid == FID_DF_REC_0018) {
                loc[0] = 0; loc[1] = 118; loc[2] = TYPE_CYC; loc[3] = (short) (TX_REC_COUNT * TX_REC_LEN);
                loc[4] = TX_REC_LEN; loc[5] = TX_REC_COUNT;
                return 0;
            }
        }
        short idx = dynFind(dir, fid);
        if (idx >= 0 && dynType[idx] != TYPE_DF) {
            loc[0] = 1; loc[1] = idx; loc[2] = dynType[idx];
            loc[3] = dynSize[idx]; loc[4] = (short) (dynRecLen[idx] & 0xFF); loc[5] = (short) (dynRecNum[idx] & 0xFF);
            return 0;
        }
        return -1;
    }

    /** SFI → FID（当前目录优先，其次另一固定目录/动态文件） */
    private short fidBySfi(short dir, short sfi) {
        if (dir == FILE_MF) {
            if (sfi == 1) return FID_MF_REC_0001;
            if (sfi == 5) return FID_MF_BIN_0005;
        } else if (dir == FILE_DF_1001) {
            if (sfi == 1) return FID_DF_REC_0001;
            if (sfi == 2) return FID_DF_REC_0002;
            if (sfi == 21) return FID_DF_BIN_0015;
            if (sfi == 22) return FID_DF_BIN_0016;
            if (sfi == 24) return FID_DF_REC_0018;
        }
        // 动态文件 SFI（当前目录优先）
        for (short i = 0; i < DYN_MAX; i++) {
            if (dynValid[i] != 0 && dynSfi[i] == (byte) sfi && dynParent[i] == dir && dynType[i] != TYPE_DF) {
                return dynFid[i];
            }
        }
        for (short i = 0; i < DYN_MAX; i++) {
            if (dynValid[i] != 0 && dynSfi[i] == (byte) sfi && dynType[i] != TYPE_DF) {
                return dynFid[i];
            }
        }
        return -1;
    }

    private short dynFind(short parent, short fid) {
        for (short i = 0; i < DYN_MAX; i++) {
            if (dynValid[i] != 0 && dynFid[i] == fid && dynParent[i] == parent) {
                return i;
            }
        }
        return -1;
    }

    private short dynFindAny(short fid) {
        for (short i = 0; i < DYN_MAX; i++) {
            if (dynValid[i] != 0 && dynFid[i] == fid) {
                return i;
            }
        }
        return -1;
    }

    // ---- READ BINARY 00 B0 ----
    private void readBinary(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        short p1 = (short) (buf[ISO7816.OFFSET_P1] & 0xFF);
        short p2 = (short) (buf[ISO7816.OFFSET_P2] & 0xFF);
        short le = (short) (buf[ISO7816.OFFSET_LC] & 0xFF);
        short off;
        short fid = currentEF;
        short sfi = 0;
        if ((p1 & 0x80) != 0) {
            sfi = (short) (p1 & 0x1F);
            off = p2;
        } else {
            off = (short) ((p1 << 8) | p2);
        }
        if (sfi == 0 && fid == 0) {
            ISOException.throwIt(SW_FILE_NOT_FOUND);
        }
        if (locateEf(currentDir, fid, sfi) < 0) {
            ISOException.throwIt(SW_FILE_NOT_FOUND);
        }
        if (loc[2] != TYPE_BIN) {
            ISOException.throwIt(SW_NOT_BINARY); // 6981 不是二进制文件
        }
        short size = loc[3];
        if (off >= size && !(size == 0 && off == 0)) {
            ISOException.throwIt(SW_OFFSET_ERROR); // 6B00
        }
        short remain = (short) (size - off);
        short len = (le == 0) ? remain : ((le <= remain) ? le : remain);
        if (len < 0) {
            len = 0;
        }
        readEfData(buf, (short) 0, off, len);
        apdu.setOutgoingAndSend((short) 0, len);
    }

    /** 从定位到的 EF 拷贝数据到 buf */
    private void readEfData(byte[] out, short outOff, short off, short len) {
        if (len <= 0) {
            return;
        }
        if (loc[0] == 0) {
            switch ((int) loc[1]) {
                case 5:
                    Util.arrayCopyNonAtomic(mfBin5, off, out, outOff, len);
                    return;
                case 15:
                    Util.arrayCopyNonAtomic(dfBin15, off, out, outOff, len);
                    return;
                case 16:
                    Util.arrayCopyNonAtomic(dfBin16, off, out, outOff, len);
                    return;
                case 1:
                    Util.arrayCopyNonAtomic(mfRec1, off, out, outOff, len);
                    return;
                case 101:
                    Util.arrayCopyNonAtomic(dfRec1, off, out, outOff, len);
                    return;
                case 102:
                    Util.arrayCopyNonAtomic(dfRec2, off, out, outOff, len);
                    return;
                case 118:
                    Util.arrayCopyNonAtomic(txRec, off, out, outOff, len);
                    return;
            }
        } else {
            Util.arrayCopyNonAtomic(dynPool, (short) (dynOff[loc[1]] + off), out, outOff, len);
        }
    }

    /** 向定位到的 EF 写数据 */
    private void writeEfData(short off, byte[] src, short srcOff, short len) {
        if (len <= 0) {
            return;
        }
        if (loc[0] == 0) {
            switch ((int) loc[1]) {
                case 5:
                    Util.arrayCopyNonAtomic(src, srcOff, mfBin5, off, len);
                    return;
                case 15:
                    Util.arrayCopyNonAtomic(src, srcOff, dfBin15, off, len);
                    return;
                case 16:
                    Util.arrayCopyNonAtomic(src, srcOff, dfBin16, off, len);
                    return;
                case 1:
                    Util.arrayCopyNonAtomic(src, srcOff, mfRec1, off, len);
                    return;
                case 101:
                    Util.arrayCopyNonAtomic(src, srcOff, dfRec1, off, len);
                    return;
                case 102:
                    Util.arrayCopyNonAtomic(src, srcOff, dfRec2, off, len);
                    return;
                case 118:
                    Util.arrayCopyNonAtomic(src, srcOff, txRec, off, len);
                    return;
            }
        } else {
            Util.arrayCopyNonAtomic(src, srcOff, dynPool, (short) (dynOff[loc[1]] + off), len);
        }
    }

    // ---- READ RECORD 00 B2 ----
    private void readRecord(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        short p1 = (short) (buf[ISO7816.OFFSET_P1] & 0xFF);
        short p2 = (short) (buf[ISO7816.OFFSET_P2] & 0xFF);
        short le = (short) (buf[ISO7816.OFFSET_LC] & 0xFF);
        if ((p2 & 0x07) != 0x04) {
            ISOException.throwIt(SW_WRONG_P1P2); // P2 低 3 位必须 100
        }
        short sfi = (short) ((p2 >> 3) & 0x1F);
        if (sfi == 0 && currentEF == 0) {
            ISOException.throwIt(SW_FILE_NOT_FOUND);
        }
        if (locateEf(currentDir, currentEF, sfi) < 0) {
            ISOException.throwIt(SW_FILE_NOT_FOUND);
        }
        if (loc[2] == TYPE_BIN || loc[2] == TYPE_DF) {
            ISOException.throwIt(SW_NOT_BINARY); // 6981 不是记录文件
        }
        short recLen = loc[4];
        short fileOff = recordOffset(p1);
        if (fileOff < 0) {
            ISOException.throwIt(SW_RECORD_NOT_FOUND); // 6A83
        }
        if (le != 0 && le < recLen) {
            ISOException.throwIt((short) (0x6C00 | (recLen & 0xFF))); // 6C XX 实际记录长度
        }
        readEfData(buf, (short) 0, fileOff, recLen);
        apdu.setOutgoingAndSend((short) 0, recLen);
    }

    /**
     * 记录号 → 文件内偏移。
     * 循环文件：P1=01 最新；已写入条数之外 → -1。
     * 定长文件：P1 超出记录数/已写入数 → -1。
     */
    private short recordOffset(short recNo) {
        if (recNo < 1) {
            return -1;
        }
        short recLen = loc[4];
        if (loc[2] == TYPE_CYC) {
            if (loc[0] == 0 && loc[1] == 118) {
                if (recNo > txCount) {
                    return -1;
                }
                short slot = (short) ((txHead - (recNo - 1) + TX_REC_COUNT) % TX_REC_COUNT);
                return (short) (slot * TX_REC_LEN);
            }
            short idx = loc[1];
            short cnt = (short) (dynRecCnt[idx] & 0xFF);
            short num = (short) (dynRecNum[idx] & 0xFF);
            if (recNo > cnt) {
                return -1;
            }
            short slot = (short) (((dynHead[idx] & 0xFF) - (recNo - 1) + num) % num);
            return (short) (slot * recLen);
        }
        if (loc[0] == 1) {
            if (recNo > (short) (dynRecCnt[loc[1]] & 0xFF)) {
                return -1;
            }
            return (short) ((recNo - 1) * recLen);
        }
        if (recNo > loc[5]) {
            return -1;
        }
        return (short) ((recNo - 1) * recLen);
    }

    // ---- UPDATE BINARY 00 D6 ----
    private void updateBinary(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        short p1 = (short) (buf[ISO7816.OFFSET_P1] & 0xFF);
        short p2 = (short) (buf[ISO7816.OFFSET_P2] & 0xFF);
        short lc = (short) (buf[ISO7816.OFFSET_LC] & 0xFF);
        if (lc > 0) {
            apdu.setIncomingAndReceive();
        }
        short off;
        short sfi = 0;
        if ((p1 & 0x80) != 0) {
            sfi = (short) (p1 & 0x1F);
            off = p2;
        } else {
            off = (short) ((p1 << 8) | p2);
        }
        if (sfi == 0 && currentEF == 0) {
            ISOException.throwIt(SW_FILE_NOT_FOUND);
        }
        if (locateEf(currentDir, currentEF, sfi) < 0) {
            ISOException.throwIt(SW_FILE_NOT_FOUND);
        }
        if (loc[2] != TYPE_BIN) {
            ISOException.throwIt(SW_NOT_BINARY);
        }
        if (off + lc > loc[3]) {
            ISOException.throwIt(SW_OFFSET_ERROR);
        }
        JCSystem.beginTransaction();
        writeEfData(off, buf, ISO7816.OFFSET_CDATA, lc);
        JCSystem.commitTransaction();
    }

    // ---- UPDATE RECORD 00 DC ----
    private void updateRecord(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        short p1 = (short) (buf[ISO7816.OFFSET_P1] & 0xFF);
        short p2 = (short) (buf[ISO7816.OFFSET_P2] & 0xFF);
        short lc = (short) (buf[ISO7816.OFFSET_LC] & 0xFF);
        if (lc > 0) {
            apdu.setIncomingAndReceive();
        }
        if ((p2 & 0x07) != 0x04) {
            ISOException.throwIt(SW_WRONG_P1P2);
        }
        short sfi = (short) ((p2 >> 3) & 0x1F);
        if (sfi == 0 && currentEF == 0) {
            ISOException.throwIt(SW_FILE_NOT_FOUND);
        }
        if (locateEf(currentDir, currentEF, sfi) < 0) {
            ISOException.throwIt(SW_FILE_NOT_FOUND);
        }
        if (loc[2] == TYPE_CYC) {
            ISOException.throwIt(SW_NOT_BINARY); // 循环文件请用 APPEND RECORD
        }
        if (loc[2] == TYPE_BIN || loc[2] == TYPE_DF) {
            ISOException.throwIt(SW_NOT_BINARY);
        }
        short recLen = loc[4];
        if (lc != recLen) {
            ISOException.throwIt(SW_WRONG_LENGTH);
        }
        short fileOff = recordOffset(p1);
        if (fileOff < 0) {
            ISOException.throwIt(SW_RECORD_NOT_FOUND);
        }
        JCSystem.beginTransaction();
        writeEfData(fileOff, buf, ISO7816.OFFSET_CDATA, recLen);
        JCSystem.commitTransaction();
        if (loc[0] == 0 && loc[1] == 102) {
            // 应用参数记录被外部改写后同步内部配置镜像
        }
    }

    // ---- APPEND RECORD 00 E2 ----
    private void appendRecord(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        short p2 = (short) (buf[ISO7816.OFFSET_P2] & 0xFF);
        short lc = (short) (buf[ISO7816.OFFSET_LC] & 0xFF);
        if (lc > 0) {
            apdu.setIncomingAndReceive();
        }
        if ((p2 & 0x07) != 0x00) { // FMCOS APPEND RECORD：b3~b1 = '000'
            ISOException.throwIt(SW_WRONG_P1P2);
        }
        short sfi = (short) ((p2 >> 3) & 0x1F);
        if (sfi == 0 && currentEF == 0) {
            ISOException.throwIt(SW_FILE_NOT_FOUND);
        }
        if (locateEf(currentDir, currentEF, sfi) < 0) {
            ISOException.throwIt(SW_FILE_NOT_FOUND);
        }
        if (loc[2] != TYPE_CYC && loc[2] != TYPE_REC) {
            ISOException.throwIt(SW_NOT_BINARY);
        }
        if (lc != loc[4]) {
            ISOException.throwIt(SW_WRONG_LENGTH);
        }
        JCSystem.beginTransaction();
        if (loc[2] == TYPE_CYC) {
            if (loc[0] == 0 && loc[1] == 118) {
                txHead = (short) ((txHead + 1) % TX_REC_COUNT);
                if (txCount < TX_REC_COUNT) {
                    txCount++;
                }
                writeEfData((short) (txHead * TX_REC_LEN), buf, ISO7816.OFFSET_CDATA, TX_REC_LEN);
            } else {
                short idx = loc[1];
                short num = (short) (dynRecNum[idx] & 0xFF);
                dynHead[idx] = (byte) (((dynHead[idx] & 0xFF) + 1) % num);
                if ((dynRecCnt[idx] & 0xFF) < num) {
                    dynRecCnt[idx]++;
                }
                writeEfData((short) (((dynHead[idx] & 0xFF)) * loc[4]), buf, ISO7816.OFFSET_CDATA, loc[4]);
            }
        } else {
            if (loc[0] == 1) {
                short idx = loc[1];
                short cnt = (short) (dynRecCnt[idx] & 0xFF);
                short num = (short) (dynRecNum[idx] & 0xFF);
                if (cnt >= num) {
                    JCSystem.abortTransaction();
                    ISOException.throwIt(SW_NO_SPACE);
                }
                dynRecCnt[idx]++;
                writeEfData((short) (cnt * loc[4]), buf, ISO7816.OFFSET_CDATA, loc[4]);
            } else {
                // 固定文件只有 1 条记录 → 覆盖
                writeEfData((short) 0, buf, ISO7816.OFFSET_CDATA, loc[4]);
            }
        }
        JCSystem.commitTransaction();
    }

    // ---- CREATE FILE 80 E0 ----
    private void createFile(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        short fid = (short) (((buf[ISO7816.OFFSET_P1] & 0xFF) << 8)
                | (buf[ISO7816.OFFSET_P2] & 0xFF));
        short lc = (short) (buf[ISO7816.OFFSET_LC] & 0xFF);
        if (lc < 5) {
            ISOException.throwIt(SW_WRONG_LENGTH);
        }
        apdu.setIncomingAndReceive();
        short d = ISO7816.OFFSET_CDATA;

        if (fid == FILE_MF || fid == currentDir) {
            ISOException.throwIt(SW_FILE_EXISTS);
        }
        if (dynFindAny(fid) >= 0 || dynFind(currentDir, fid) >= 0) {
            ISOException.throwIt(SW_FILE_EXISTS);
        }
        if (currentDir == FILE_MF
                && (fid == FID_MF_REC_0001 || fid == FID_MF_BIN_0005 || fid == FILE_DF_1001)) {
            ISOException.throwIt(SW_FILE_EXISTS);
        }
        if (currentDir == FILE_DF_1001
                && (fid == FID_DF_REC_0001 || fid == FID_DF_REC_0002 || fid == FID_DF_BIN_0015
                || fid == FID_DF_BIN_0016 || fid == FID_DF_REC_0018)) {
            ISOException.throwIt(SW_FILE_EXISTS);
        }

        byte t = buf[d];
        byte type;
        if (t == 0x28 || t == (byte) 0xA8 || t == 0x68) {
            type = TYPE_BIN;
        } else if (t == 0x2A) {
            type = TYPE_REC;
        } else if (t == 0x2E) {
            type = TYPE_CYC;
        } else if (t == 0x38) {
            type = TYPE_DF;
        } else {
            ISOException.throwIt(ISO7816.SW_WRONG_DATA);
            return;
        }

        short size = (short) (((buf[(short) (d + 1)] & 0xFF) << 8) | (buf[(short) (d + 2)] & 0xFF));
        byte recLen = 0;
        byte recNum = 0;
        if (type == TYPE_REC || type == TYPE_CYC) {
            if (lc < 8) {
                ISOException.throwIt(SW_WRONG_LENGTH);
            }
            recLen = buf[(short) (d + 6)];
            recNum = buf[(short) (d + 7)];
            if (recLen < 1 || recNum < 1 || recLen > 248) {
                ISOException.throwIt(ISO7816.SW_WRONG_DATA);
            }
            size = (short) ((recLen & 0xFF) * (recNum & 0xFF));
        }
        if (type == TYPE_DF) {
            size = 0;
        }
        if (size > DYN_POOL) {
            ISOException.throwIt(SW_NO_SPACE);
        }

        short slot = -1;
        for (short i = 0; i < DYN_MAX; i++) {
            if (dynValid[i] == 0) {
                slot = i;
                break;
            }
        }
        if (slot < 0) {
            ISOException.throwIt(SW_NO_SPACE);
        }
        if (dynUsed + size > DYN_POOL) {
            ISOException.throwIt(SW_NO_SPACE);
        }

        dynValid[slot] = 1;
        dynFid[slot] = fid;
        dynParent[slot] = currentDir;
        dynType[slot] = type;
        dynSize[slot] = size;
        dynRecLen[slot] = recLen;
        dynRecNum[slot] = recNum;
        dynRecCnt[slot] = 0;
        dynHead[slot] = (byte) (type == TYPE_CYC ? ((recNum & 0xFF) - 1) : 0);
        dynOff[slot] = dynUsed;
        byte sfi = (byte) (fid & 0x1F);
        if (sfi == 0 || sfi > 30) {
            sfi = 0;
        }
        // SFI 冲突检测（同目录）
        if (sfi != 0) {
            short f = fidBySfi(currentDir, sfi);
            if (f >= 0 && f != fid) {
                sfi = 0;
            }
        }
        dynSfi[slot] = sfi;
        if (size > 0) {
            Util.arrayFillNonAtomic(dynPool, dynUsed, size, (byte) 0);
        }
        dynUsed = (short) (dynUsed + size);
    }

    // ---- DELETE FILE 80 E4 ----
    private void deleteFile(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        short lc = (short) (buf[ISO7816.OFFSET_LC] & 0xFF);
        apdu.setIncomingAndReceive();
        if (lc != 2) { // FMCOS：数据域 = 2 字节文件标识符
            ISOException.throwIt(SW_WRONG_LENGTH);
        }
        short fid = Util.getShort(buf, ISO7816.OFFSET_CDATA);
        short idx = dynFindAny(fid);
        if (idx < 0) {
            ISOException.throwIt(ISO7816.SW_CONDITIONS_NOT_SATISFIED); // 固定文件不可删除
        }
        if (dynType[idx] == TYPE_DF) {
            for (short i = 0; i < DYN_MAX; i++) {
                if (dynValid[i] != 0 && dynParent[i] == fid) {
                    ISOException.throwIt(ISO7816.SW_CONDITIONS_NOT_SATISFIED); // 目录非空
                }
            }
        }
        if (currentDir == fid) {
            currentDir = dynParent[idx];
        }
        if (currentEF == fid) {
            currentEF = 0;
        }
        dynValid[idx] = 0;
    }

    // ---- GET RESPONSE 00 C0 ----
    private void getResponse(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        short le = (short) (buf[ISO7816.OFFSET_LC] & 0xFF);
        if (lastRespLen <= 0) {
            ISOException.throwIt(SW_NO_PENDING);
        }
        short len = (le == 0 || le > lastRespLen) ? lastRespLen : le;
        Util.arrayCopyNonAtomic(lastResp, (short) 0, buf, (short) 0, len);
        apdu.setOutgoingAndSend((short) 0, len);
        lastRespLen = 0;
    }

    // ---- GET CHALLENGE 00 84 ----
    private void getChallenge(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        rng.generateData(lastChallenge, (short) 0, (short) 8);
        Util.arrayCopyNonAtomic(lastChallenge, (short) 0, buf, (short) 0, (short) 8);
        apdu.setOutgoingAndSend((short) 0, (short) 8);
    }

    // ---- 外部认证 00 82 ----
    private void externalAuth(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        short lc = (short) (buf[ISO7816.OFFSET_LC] & 0xFF);
        if (lc > 0) {
            apdu.setIncomingAndReceive();
        }
        if (authOn == 0 || extKey.length == 0 || lc != 8) {
            return; // 默认直接通过 9000
        }
        byte[] calc = desBlock(extKey, lastChallenge);
        if (lc == 8 && Util.arrayCompare(calc, (short) 0, buf, ISO7816.OFFSET_CDATA, (short) 8) == 0) {
            return;
        }
        ISOException.throwIt(SW_MAC_INVALID);
    }

    // ---- 内部认证 00 88 ----
    private void internalAuth(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        byte p1 = buf[ISO7816.OFFSET_P1];
        short lc = (short) (buf[ISO7816.OFFSET_LC] & 0xFF);
        if (lc > 0) {
            apdu.setIncomingAndReceive();
        }
        byte[] in8 = new byte[8];
        if (lc == 8) {
            Util.arrayCopyNonAtomic(buf, ISO7816.OFFSET_CDATA, in8, (short) 0, (short) 8);
        } else {
            rng.generateData(in8, (short) 0, (short) 8);
        }
        byte[] out;
        if (intKey.length == 8 || intKey.length == 16) {
            if (p1 == 0x01) {
                out = desDecrypt(intKey, in8);
            } else if (p1 == 0x02) {
                out = mac(intKey, in8, (short) 0, (short) 8);
            } else {
                out = desBlock(intKey, in8);
            }
        } else {
            out = new byte[8];
            rng.generateData(out, (short) 0, (short) 8);
            if (p1 == 0x02) {
                byte[] r4 = new byte[4];
                rng.generateData(r4, (short) 0, (short) 4);
                Util.arrayCopyNonAtomic(r4, (short) 0, buf, (short) 0, (short) 4);
                apdu.setOutgoingAndSend((short) 0, (short) 4);
                return;
            }
        }
        Util.arrayCopyNonAtomic(out, (short) 0, buf, (short) 0, (short) out.length);
        apdu.setOutgoingAndSend((short) 0, (short) out.length);
    }

    // ==================================================================
    //  钱包（FM1208 / GB/T 16791 逐字节兼容）
    // ==================================================================

    private void getBalance(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        if (buf[ISO7816.OFFSET_P1] != 0x00) {
            ISOException.throwIt(SW_WRONG_P1P2);
        }
        boolean ed = (buf[ISO7816.OFFSET_P2] == 0x01);
        if (!ed && buf[ISO7816.OFFSET_P2] != 0x02) {
            ISOException.throwIt(SW_WRONG_P1P2);
        }
        if (ed && walletMode == 0) {
            ISOException.throwIt(SW_WRONG_P1P2); // 单钱包模式无存折
        }
        if (ed && authOn != 0 && !pinVerified) {
            ISOException.throwIt(ISO7816.SW_SECURITY_STATUS_NOT_SATISFIED); // 启用认证时读存折余额需 PIN
        }
        int bal = ed ? edBalance : epBalance;
        buf[0] = (byte) (bal >> 24);
        buf[1] = (byte) (bal >> 16);
        buf[2] = (byte) (bal >> 8);
        buf[3] = (byte) bal;
        apdu.setOutgoingAndSend((short) 0, (short) 4);
    }

    private short useATC(boolean load) {
        if (atcMode == 1) {
            return atcVal; // 固定 ATC
        }
        return load ? onlineATC : offlineATC;
    }

    private void bumpATC(boolean load) {
        if (atcMode == 1) {
            return;
        }
        if (load) {
            onlineATC++;
        } else {
            offlineATC++;
        }
        syncAppParams();
    }

    private void initialize(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        byte p1 = buf[ISO7816.OFFSET_P1];
        byte p2 = buf[ISO7816.OFFSET_P2];
        boolean isLoad = (p1 == 0x00);
        if (!isLoad && p1 != 0x01) {
            ISOException.throwIt(SW_WRONG_P1P2);
        }
        if (p2 != 0x01 && p2 != 0x02) {
            ISOException.throwIt(SW_WRONG_P1P2);
        }
        if (p2 == 0x01 && walletMode == 0) {
            ISOException.throwIt(SW_WRONG_P1P2);
        }
        short lc = (short) (buf[ISO7816.OFFSET_LC] & 0xFF);
        if (lc != 0x0B) {
            ISOException.throwIt(SW_WRONG_LENGTH);
        }
        apdu.setIncomingAndReceive();

        // Data: 密钥索引(1) + 交易金额(4) + 终端机编号(6)
        if (buf[ISO7816.OFFSET_CDATA] != 0x01) {
            ISOException.throwIt(SW_KEY_IDX);
        }
        int amount = ((buf[ISO7816.OFFSET_CDATA + 1] & 0xFF) << 24)
                | ((buf[ISO7816.OFFSET_CDATA + 2] & 0xFF) << 16)
                | ((buf[ISO7816.OFFSET_CDATA + 3] & 0xFF) << 8)
                | (buf[ISO7816.OFFSET_CDATA + 4] & 0xFF);
        Util.arrayCopyNonAtomic(buf, (short) (ISO7816.OFFSET_CDATA + 5),
                transTermId, (short) 0, (short) 6);

        boolean ed = (p2 == 0x01);
        int bal = ed ? edBalance : epBalance;
        short atc = useATC(isLoad);

        if (!isLoad) {
            if (ed && authOn != 0 && !pinVerified) {
                ISOException.throwIt(ISO7816.SW_SECURITY_STATUS_NOT_SATISFIED);
            }
            if (amount > bal) {
                ISOException.throwIt(SW_NO_ENOUGH);
            }
        }

        rng.generateData(transRand, (short) 0, (short) 4);
        byte[] resp;
        if (isLoad) {
            byte[] div = new byte[8];
            Util.arrayCopyNonAtomic(transRand, (short) 0, div, (short) 0, (short) 4);
            div[4] = (byte) (atc >> 8);
            div[5] = (byte) atc;
            div[6] = (byte) 0x80;
            div[7] = 0x00;
            deriveSession(mk, div, transSess);

            resp = new byte[16];
            resp[0] = (byte) (bal >> 24);
            resp[1] = (byte) (bal >> 16);
            resp[2] = (byte) (bal >> 8);
            resp[3] = (byte) bal;
            resp[4] = (byte) (atc >> 8);
            resp[5] = (byte) atc;
            resp[6] = 0x01;  // 密钥版本号
            resp[7] = 0x01;  // 算法标识（01 = DES）
            Util.arrayCopyNonAtomic(transRand, (short) 0, resp, (short) 8, (short) 4);
            // MAC1 = MAC(sess, 旧余额4+金额4+类型1+终端编号6)；类型 01=ED圈存 02=EP圈存
            byte[] macIn = new byte[15];
            macIn[0] = (byte) (bal >> 24);
            macIn[1] = (byte) (bal >> 16);
            macIn[2] = (byte) (bal >> 8);
            macIn[3] = (byte) bal;
            putInt(macIn, (short) 4, amount);
            macIn[8] = ed ? (byte) 0x01 : (byte) 0x02;
            Util.arrayCopyNonAtomic(transTermId, (short) 0, macIn, (short) 9, (short) 6);
            byte[] mac1 = mac(transSess, macIn, (short) 0, (short) 15);
            Util.arrayCopyNonAtomic(mac1, (short) 0, resp, (short) 12, (short) 4);
        } else {
            resp = new byte[15];
            resp[0] = (byte) (bal >> 24);
            resp[1] = (byte) (bal >> 16);
            resp[2] = (byte) (bal >> 8);
            resp[3] = (byte) bal;
            resp[4] = (byte) (atc >> 8);
            resp[5] = (byte) atc;
            resp[6] = 0;     // 透支限额 3 字节 = 0
            resp[7] = 0;
            resp[8] = 0;
            resp[9] = 0x01;  // 密钥版本号
            resp[10] = 0x01; // 算法标识
            Util.arrayCopyNonAtomic(transRand, (short) 0, resp, (short) 11, (short) 4);
        }

        transInit = true;
        transIsLoad = isLoad ? (byte) 1 : (byte) 2;
        transP2 = p2;
        transAmount = amount;

        Util.arrayCopyNonAtomic(resp, (short) 0, apdu.getBuffer(), (short) 0, (short) resp.length);
        apdu.setOutgoingAndSend((short) 0, (short) resp.length);
    }

    private void credit(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        if (!transInit || transIsLoad != 1) {
            ISOException.throwIt(ISO7816.SW_CONDITIONS_NOT_SATISFIED);
        }
        short lc = (short) (buf[ISO7816.OFFSET_LC] & 0xFF);
        if (lc != 0x0B) {
            ISOException.throwIt(SW_WRONG_LENGTH);
        }
        apdu.setIncomingAndReceive();
        // Data: 主机交易日期(4) + 主机交易时间(3) + MAC2(4)
        byte[] macIn = new byte[18];
        putInt(macIn, (short) 0, transAmount);
        macIn[4] = (transP2 == 0x01) ? (byte) 0x01 : (byte) 0x02;
        Util.arrayCopyNonAtomic(transTermId, (short) 0, macIn, (short) 5, (short) 6);
        Util.arrayCopyNonAtomic(buf, ISO7816.OFFSET_CDATA, macIn, (short) 11, (short) 7);

        if (authOn != 0) {
            byte[] calc = mac(transSess, macIn, (short) 0, (short) 18);
            if (Util.arrayCompare(calc, (short) 0, buf, (short) (ISO7816.OFFSET_CDATA + 7), (short) 4) != 0) {
                transInit = false;
                ISOException.throwIt(SW_MAC_INVALID);
            }
        }

        boolean ed = (transP2 == 0x01);
        int newBal = (ed ? edBalance : epBalance) + transAmount;
        JCSystem.beginTransaction();
        if (ed) {
            edBalance = newBal;
        } else {
            epBalance = newBal;
        }
        short oldATC = useATC(true);
        bumpATC(true);

        // TAC = MAC(MK', 新余额4+ATC2+金额4+类型1+终端编号6+日期4+时间3)
        byte[] tacIn = new byte[24];
        putInt(tacIn, (short) 0, newBal);
        tacIn[4] = (byte) (oldATC >> 8);
        tacIn[5] = (byte) oldATC;
        putInt(tacIn, (short) 6, transAmount);
        tacIn[10] = ed ? (byte) 0x01 : (byte) 0x02;
        Util.arrayCopyNonAtomic(transTermId, (short) 0, tacIn, (short) 11, (short) 6);
        Util.arrayCopyNonAtomic(buf, ISO7816.OFFSET_CDATA, tacIn, (short) 17, (short) 7);

        if (recordsOn != 0) {
            appendTxRecord(ed ? (byte) 0x01 : (byte) 0x02, oldATC, transAmount,
                    buf, ISO7816.OFFSET_CDATA, newBal);
        }
        JCSystem.commitTransaction();

        transInit = false;
        byte[] tac = mac(reduceKey(mk), tacIn, (short) 0, (short) 24);
        Util.arrayCopyNonAtomic(tac, (short) 0, apdu.getBuffer(), (short) 0, (short) 4);
        apdu.setOutgoingAndSend((short) 0, (short) 4);
    }

    private void debit(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        if (!transInit || transIsLoad != 2) {
            ISOException.throwIt(ISO7816.SW_CONDITIONS_NOT_SATISFIED);
        }
        short lc = (short) (buf[ISO7816.OFFSET_LC] & 0xFF);
        if (lc != 0x0F) {
            ISOException.throwIt(SW_WRONG_LENGTH);
        }
        apdu.setIncomingAndReceive();
        // Data: 终端交易序号(4) + 终端交易日期(4) + 终端交易时间(3) + MAC1(4)

        // 过程密钥 = DES(MK, rand4+脱机ATC2+终端交易序号最右2字节)
        byte[] div = new byte[8];
        Util.arrayCopyNonAtomic(transRand, (short) 0, div, (short) 0, (short) 4);
        short atc = useATC(false);
        div[4] = (byte) (atc >> 8);
        div[5] = (byte) atc;
        div[6] = buf[ISO7816.OFFSET_CDATA + 2];
        div[7] = buf[ISO7816.OFFSET_CDATA + 3];
        deriveSession(mk, div, transSess);

        // MAC1 = MAC(sess, 金额4+类型1+终端编号6+日期4+时间3)；类型 05=ED消费 06=EP消费
        byte[] macIn = new byte[18];
        putInt(macIn, (short) 0, transAmount);
        macIn[4] = (transP2 == 0x01) ? (byte) 0x05 : (byte) 0x06;
        Util.arrayCopyNonAtomic(transTermId, (short) 0, macIn, (short) 5, (short) 6);
        Util.arrayCopyNonAtomic(buf, (short) (ISO7816.OFFSET_CDATA + 4), macIn, (short) 11, (short) 7);

        if (authOn != 0) {
            byte[] calc = mac(transSess, macIn, (short) 0, (short) 18);
            if (Util.arrayCompare(calc, (short) 0, buf, (short) (ISO7816.OFFSET_CDATA + 11), (short) 4) != 0) {
                transInit = false;
                ISOException.throwIt(SW_MAC_INVALID);
            }
        }

        boolean ed = (transP2 == 0x01);
        int newBal = (ed ? edBalance : epBalance) - transAmount;
        JCSystem.beginTransaction();
        if (ed) {
            edBalance = newBal;
        } else {
            epBalance = newBal;
        }
        short oldATC = atc;
        bumpATC(false);

        // 响应: TAC(4) + MAC2(4)；MAC2 = MAC(sess, 金额4)
        byte[] amountB = new byte[4];
        putInt(amountB, (short) 0, transAmount);
        byte[] mac2 = mac(transSess, amountB, (short) 0, (short) 4);

        // TAC = MAC(MK', 金额4+类型1+终端编号6+终端序号4+日期4+时间3)
        byte[] tacIn = new byte[22];
        putInt(tacIn, (short) 0, transAmount);
        tacIn[4] = ed ? (byte) 0x05 : (byte) 0x06;
        Util.arrayCopyNonAtomic(transTermId, (short) 0, tacIn, (short) 5, (short) 6);
        Util.arrayCopyNonAtomic(buf, ISO7816.OFFSET_CDATA, tacIn, (short) 11, (short) 4);
        Util.arrayCopyNonAtomic(buf, (short) (ISO7816.OFFSET_CDATA + 4), tacIn, (short) 15, (short) 7);

        if (recordsOn != 0) {
            appendTxRecord(ed ? (byte) 0x05 : (byte) 0x06, oldATC, transAmount,
                    buf, (short) (ISO7816.OFFSET_CDATA + 4), newBal);
        }
        JCSystem.commitTransaction();

        transInit = false;
        byte[] tac = mac(reduceKey(mk), tacIn, (short) 0, (short) 22);
        byte[] resp = new byte[8];
        Util.arrayCopyNonAtomic(tac, (short) 0, resp, (short) 0, (short) 4);
        Util.arrayCopyNonAtomic(mac2, (short) 0, resp, (short) 4, (short) 4);
        Util.arrayCopyNonAtomic(resp, (short) 0, apdu.getBuffer(), (short) 0, (short) 8);
        apdu.setOutgoingAndSend((short) 0, (short) 8);
    }

    /** 写交易记录（0018 循环文件最新一条）
     *  rec: 类型1 + ATC2 + 金额4 + 终端6 + 日期4 + 时间3 + 新余额低3字节 */
    private void appendTxRecord(byte type, short atc, int amount, byte[] src, short dtOff, int newBal) {
        txHead = (short) ((txHead + 1) % TX_REC_COUNT);
        if (txCount < TX_REC_COUNT) {
            txCount++;
        }
        short o = (short) (txHead * TX_REC_LEN);
        txRec[o] = type;
        txRec[(short) (o + 1)] = (byte) (atc >> 8);
        txRec[(short) (o + 2)] = (byte) atc;
        txRec[(short) (o + 3)] = (byte) (amount >> 24);
        txRec[(short) (o + 4)] = (byte) (amount >> 16);
        txRec[(short) (o + 5)] = (byte) (amount >> 8);
        txRec[(short) (o + 6)] = (byte) amount;
        Util.arrayCopyNonAtomic(transTermId, (short) 0, txRec, (short) (o + 7), (short) 6);
        Util.arrayCopyNonAtomic(src, dtOff, txRec, (short) (o + 13), (short) 7);
        txRec[(short) (o + 20)] = (byte) (newBal >> 16);
        txRec[(short) (o + 21)] = (byte) (newBal >> 8);
        txRec[(short) (o + 22)] = (byte) newBal;
        syncAppParams();
    }

    // ==================================================================
    //  VERIFY / 配置
    // ==================================================================

    private void verify(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        short lc = (short) (buf[ISO7816.OFFSET_LC] & 0xFF);
        apdu.setIncomingAndReceive();
        if (lc < 1 || lc > 12) {
            ISOException.throwIt(SW_WRONG_LENGTH);
        }
        if (pinTriesLeft == 0) {
            ISOException.throwIt(SW_PIN_BLOCKED);
        }
        // 双格式兼容：
        //  A) 明文/ASCII PIN：数据长度 == 卡内 PIN 长度且逐字节相等（钱包页/设置页模式）
        //  B) hex 编码 PIN：主页 PbocEngine.verifyPin 把 "123455" 按 hex 解析发送（3 字节），
        //     卡内 ASCII PIN 每两个字符解出一个 hex 字节后比较（lc*2 == pin.length 才尝试）
        boolean ok = false;
        if (lc == (short) pin.length) {
            ok = (Util.arrayCompare(buf, ISO7816.OFFSET_CDATA, pin, (short) 0, lc) == 0);
        } else if ((short) (lc * 2) == (short) pin.length) {
            ok = true;
            for (short i = 0; i < lc; i++) {
                int hi = hexVal(pin[(short) (i * 2)]);
                int lo = hexVal(pin[(short) (i * 2 + 1)]);
                if (hi < 0 || lo < 0
                        || ((hi << 4) | lo) != (buf[ISO7816.OFFSET_CDATA + i] & 0xFF)) {
                    ok = false;
                    break;
                }
            }
        }
        if (ok) {
            pinVerified = true;
            pinTriesLeft = 3;
        } else {
            pinVerified = false;
            pinTriesLeft--;
            ISOException.throwIt((short) (0x63C0 + pinTriesLeft));
        }
    }

    /** ASCII 字符 → hex 值（非法返回 -1） */
    private static int hexVal(byte c) {
        if (c >= '0' && c <= '9') return c - '0';
        if (c >= 'A' && c <= 'F') return c - 'A' + 10;
        if (c >= 'a' && c <= 'f') return c - 'a' + 10;
        return -1;
    }

    private void getConfig(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        short o = 0;
        o = putTlv(buf, o, (byte) 0x01, mk);   // 01 交易主密钥（圈存/消费/TAC）
        o = putTlv(buf, o, (byte) 0x02, extKey); // 02 外部认证密钥
        o = putTlv(buf, o, (byte) 0x03, intKey); // 03 内部认证密钥
        o = putTlv(buf, o, (byte) 0x04, pin);   // 04 PIN
        buf[o++] = 0x05; buf[o++] = 0x01; buf[o++] = authOn;
        buf[o++] = 0x06; buf[o++] = 0x01; buf[o++] = atcMode;
        buf[o++] = 0x07; buf[o++] = 0x02;
        buf[o++] = (byte) (atcVal >> 8); buf[o++] = (byte) atcVal;
        buf[o++] = 0x08; buf[o++] = 0x01; buf[o++] = walletMode;
        buf[o++] = 0x09; buf[o++] = 0x01; buf[o++] = recordsOn;
        buf[o++] = 0x0C; buf[o++] = 0x01; buf[o++] = pinTriesLeft; // PIN 剩余尝试次数
        o = putTlv(buf, o, (byte) 0x0A, selFci);   // 0A 钱包应用选择应答 FCI
        o = putTlv(buf, o, (byte) 0x0B, mfFci);    // 0B MF(3F00)/PSE 选择应答 FCI
        apdu.setOutgoingAndSend((short) 0, o);
    }

    private short putTlv(byte[] buf, short o, byte tag, byte[] v) {
        buf[o++] = tag;
        buf[o++] = (byte) v.length;
        Util.arrayCopyNonAtomic(v, (short) 0, buf, o, (short) v.length);
        return (short) (o + v.length);
    }

    private void putConfig(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        short lc = (short) (buf[ISO7816.OFFSET_LC] & 0xFF);
        apdu.setIncomingAndReceive();
        short i = ISO7816.OFFSET_CDATA;
        short end = (short) (ISO7816.OFFSET_CDATA + lc);
        while (i + 2 <= end && i + 2 + (buf[i + 1] & 0xFF) <= end) {
            byte tag = buf[i];
            short len = (short) (buf[i + 1] & 0xFF);
            short val = (short) (i + 2);
            switch (tag) {
                case 0x01: // 交易主密钥
                    if (len == 8 || len == 16) {
                        byte[] k = new byte[len];
                        Util.arrayCopyNonAtomic(buf, val, k, (short) 0, len);
                        mk = k;
                    }
                    break;
                case 0x02: // 外部认证密钥
                    if (len == 8 || len == 16) {
                        byte[] k = new byte[len];
                        Util.arrayCopyNonAtomic(buf, val, k, (short) 0, len);
                        extKey = k;
                    } else if (len == 0) {
                        extKey = new byte[0];
                    }
                    break;
                case 0x03: // 内部认证密钥
                    if (len == 8 || len == 16) {
                        byte[] k = new byte[len];
                        Util.arrayCopyNonAtomic(buf, val, k, (short) 0, len);
                        intKey = k;
                    } else if (len == 0) {
                        intKey = new byte[0];
                    }
                    break;
                case 0x04: // PIN
                    if (len >= 4 && len <= 12) {
                        byte[] p = new byte[len];
                        Util.arrayCopyNonAtomic(buf, val, p, (short) 0, len);
                        pin = p;
                        pinTriesLeft = 3;
                    }
                    break;
                case 0x05: // 认证开关
                    if (len == 1) authOn = buf[val];
                    break;
                case 0x06: // ATC 模式
                    if (len == 1) atcMode = buf[val];
                    break;
                case 0x07: // ATC 固定值
                    if (len == 2) {
                        atcVal = (short) (((buf[val] & 0xFF) << 8) | (buf[val + 1] & 0xFF));
                    }
                    break;
                case 0x08: // 钱包模式
                    if (len == 1) walletMode = buf[val];
                    break;
                case 0x09: // 记录开关
                    if (len == 1) recordsOn = buf[val];
                    break;
                case 0x0A: // 自定义钱包应用选择应答 FCI
                    if (len >= 4 && len <= 64 && (buf[val] & 0xFF) == 0x6F) {
                        byte[] f = new byte[len];
                        Util.arrayCopyNonAtomic(buf, val, f, (short) 0, len);
                        selFci = f;
                    }
                    break;
                case 0x0B: // 自定义 MF(3F00)/PSE 选择应答 FCI
                    if (len >= 4 && len <= 64 && (buf[val] & 0xFF) == 0x6F) {
                        byte[] f = new byte[len];
                        Util.arrayCopyNonAtomic(buf, val, f, (short) 0, len);
                        mfFci = f;
                    }
                    break;
                default:
                    break; // 未知标签忽略
            }
            i = (short) (val + len);
        }
        syncAppParams();
    }

    // ==================================================================
    //  密码学原语
    // ==================================================================

    /** DES/3DES ECB 单块加密。8 字节密钥 = DES，16 字节 = 3DES EDE(2key)。 */
    private byte[] desBlock(byte[] key, byte[] in8) {
        byte[] out = new byte[8];
        if (key.length == 8) {
            key8.setKey(key, (short) 0);
            cipher.init(key8, Cipher.MODE_ENCRYPT);
        } else {
            key16.setKey(key, (short) 0);
            cipher.init(key16, Cipher.MODE_ENCRYPT);
        }
        cipher.doFinal(in8, (short) 0, (short) 8, out, (short) 0);
        return out;
    }

    /** DES/3DES ECB 单块解密（内部认证用）。 */
    private byte[] desDecrypt(byte[] key, byte[] in8) {
        byte[] out = new byte[8];
        if (key.length == 8) {
            key8.setKey(key, (short) 0);
            cipher.init(key8, Cipher.MODE_DECRYPT);
        } else {
            key16.setKey(key, (short) 0);
            cipher.init(key16, Cipher.MODE_DECRYPT);
        }
        cipher.doFinal(in8, (short) 0, (short) 8, out, (short) 0);
        return out;
    }

    /** 过程密钥派生：SESSION = DES(MK, div8)。 */
    private void deriveSession(byte[] mk, byte[] div8, byte[] out8) {
        byte[] r = desBlock(mk, div8);
        Util.arrayCopyNonAtomic(r, (short) 0, out8, (short) 0, (short) 8);
    }

    /** PBOC CBC-MAC：数据 0x80 填充到 8 倍数、零 IV、逐块异或+加密，取最终块前 4 字节。 */
    private byte[] mac(byte[] key, byte[] data, short off, short len) {
        short n = (short) (((len / 8) + 1) * 8); // 总是追加 0x80 块
        byte[] iv = new byte[8];
        byte[] padded = new byte[n];
        Util.arrayCopyNonAtomic(data, off, padded, (short) 0, len);
        padded[len] = (byte) 0x80;
        for (short b = 0; b < n; b += 8) {
            for (short j = 0; j < 8; j++) {
                iv[j] ^= padded[(short) (b + j)];
            }
            iv = desBlock(key, iv);
        }
        byte[] out = new byte[4];
        Util.arrayCopyNonAtomic(iv, (short) 0, out, (short) 0, (short) 4);
        return out;
    }

    /** MK 折半：16 字节密钥左右 8 字节异或折叠为 8 字节；8 字节原样返回。 */
    private byte[] reduceKey(byte[] k) {
        if (k.length == 8) {
            return k;
        }
        byte[] r = new byte[8];
        for (short i = 0; i < 8; i++) {
            r[i] = (byte) (k[i] ^ k[(short) (i + 8)]);
        }
        return r;
    }

    private void putInt(byte[] a, short off, int v) {
        a[off] = (byte) (v >> 24);
        a[(short) (off + 1)] = (byte) (v >> 16);
        a[(short) (off + 2)] = (byte) (v >> 8);
        a[(short) (off + 3)] = (byte) v;
    }
}
