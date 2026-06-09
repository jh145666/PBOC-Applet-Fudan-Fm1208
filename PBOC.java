package com.fm1208.pboc;

import javacard.framework.*;
import javacard.security.RandomData;

public class PBOC extends Applet {
    // ==================== 卡片模拟器 AID ====================
    private static final byte[] CARDSIM_AID = {
        (byte) 0xA0, 0x00, 0x00, 0x00, 0x03, (byte) 0x86, (byte) 0x98, 0x07, 0x00
    };
    private static final byte[] WALLET_AID = {
        (byte) 0xA0, 0x00, 0x00, 0x00, 0x03, (byte) 0x86, (byte) 0x98, 0x07, 0x01
    };
    private static final byte[] PSE_NAME = {
        '1','P','A','Y','.','S','Y','S','.','D','D','F','0','1'
    };

    private static final byte MAX_TRANSACTIONS = 10;
    private static final byte TRANSACTION_RECORD_LENGTH = 23;
    private static final byte TRANSACTION_TYPE_PURCHASE = 0x06;

    private static final short FILE_MF        = (short) 0x3F00;
    private static final short FILE_DF_1001   = (short) 0x1001;
    private static final short EF_MF_REC_0001 = (short) 0x0001;
    private static final short EF_MF_BIN_0005  = (short) 0x0005;
    private static final short EF_DF_ED_0001   = (short) 0x0001;
    private static final short EF_DF_EP_0002   = (short) 0x0002;
    private static final short EF_DF_BIN_0015  = (short) 0x0015;
    private static final short EF_DF_BIN_0016  = (short) 0x0016;
    private static final short EF_DF_REC_0018  = (short) 0x0018;

    private static final byte[] MF_FCI = {
        0x6F, 0x15, (byte) 0x84, 0x0E,
        '1','P','A','Y','.','S','Y','S','.','D','D','F','0','1',
        (byte) 0xA5, 0x03, (byte) 0x88, 0x01, 0x01
    };
    private static final byte[] APP_FCI = {
        0x6F, 0x1A, (byte) 0x84, 0x09,
        (byte) 0xA0, 0x00, 0x00, 0x00, 0x03, (byte) 0x86, (byte) 0x98, 0x07, 0x01,
        (byte) 0xA5, 0x0D,
        (byte) 0x9F, 0x08, 0x02, 0x00, 0x01,
        (byte) 0x88, 0x01, 0x00,
        (byte) 0x9F, 0x0C, 0x03, 0x00, 0x00, 0x00
    };

    private static final byte INS_SELECT       = (byte) 0xA4;
    private static final byte INS_READ_BINARY  = (byte) 0xB0;
    private static final byte INS_READ_RECORD  = (byte) 0xB2;
    private static final byte INS_GET_BALANCE  = (byte) 0x5C;
    private static final byte INS_INIT_TRADE   = (byte) 0x50;
    private static final byte INS_DEBIT_52     = (byte) 0x52;
    private static final byte INS_DEBIT_54     = (byte) 0x54;
    private static final byte INS_PRIVATE_CA   = (byte) 0x01;
    private static final byte INS_GPO          = (byte) 0xA8;
    private static final byte INS_GET_DATA     = (byte) 0xCA;
    private static final byte INS_GET_CHALLENGE= (byte) 0x84;

    private static final byte CLA_PRIVATE_CA   = (byte) 0xCA;
    private static final byte TRADE_TYPE_LOAD    = 0x03;
    private static final byte TRADE_TYPE_CONSUME = 0x06;

    private static final short SW_SUCCESS                 = (short) 0x9000;
    private static final short SW_CLA_NOT_SUPPORTED      = (short) 0x6E00;
    private static final short SW_INS_NOT_SUPPORTED      = (short) 0x6D00;
    private static final short SW_CONDITIONS_NOT_SATISFIED = (short) 0x6985;
    private static final short SW_BALANCE_INSUFFICIENT   = (short) 0x6A80;
    private static final short SW_FILE_NOT_FOUND         = (short) 0x6A82;
    private static final short SW_RECORD_NOT_FOUND       = (short) 0x6A83;
    private static final short SW_WRONG_P1P2             = (short) 0x6A86;
    private static final short SW_COMMAND_NOT_ALLOWED    = (short) 0x6981;

    private static final byte BALANCE_LENGTH = 4;
    private static final byte MAC_LENGTH = 4;
    private static final byte[] FIXED_MAC2 = {0x43, 0x53, 0x4D, (byte) 0xB6};
    private static final byte[] FIXED_CARD_RANDOM = {0x79, 0x62, 0x2A, 0x11};
    private static final byte[] FIXED_OVERDRAFT = {0x00, 0x00, 0x00};

    private static final short BIN_0005_SIZE = (short) 34;

    private final RandomData rnd;
    private final byte[] ecBalance;
    private final byte[] record0, record1, record2, record3, record4,
                        record5, record6, record7, record8, record9;
    private byte transactionCount;
    private byte nextTransIdx;
    private short currentDir;
    private short currentEF;

    private final byte[] tradeContext;
    private final boolean[] tradeInit;
    private final byte[] challenge;
    private final byte[] tmpBuf;

    private PBOC() {
        rnd = RandomData.getInstance(RandomData.ALG_SECURE_RANDOM);
        ecBalance = new byte[BALANCE_LENGTH];
        Util.setShort(ecBalance, (short) 2, (short) 0x0BB8); // 3000分

        record0 = new byte[TRANSACTION_RECORD_LENGTH];
        record1 = new byte[TRANSACTION_RECORD_LENGTH];
        record2 = new byte[TRANSACTION_RECORD_LENGTH];
        record3 = new byte[TRANSACTION_RECORD_LENGTH];
        record4 = new byte[TRANSACTION_RECORD_LENGTH];
        record5 = new byte[TRANSACTION_RECORD_LENGTH];
        record6 = new byte[TRANSACTION_RECORD_LENGTH];
        record7 = new byte[TRANSACTION_RECORD_LENGTH];
        record8 = new byte[TRANSACTION_RECORD_LENGTH];
        record9 = new byte[TRANSACTION_RECORD_LENGTH];

        // 先初始化为0，然后写入5条记录
        transactionCount = 0;
        nextTransIdx = 0;
        currentDir = FILE_MF;
        currentEF = 0;

        tradeContext = JCSystem.makeTransientByteArray((short) 11, JCSystem.CLEAR_ON_DESELECT);
        tradeInit = JCSystem.makeTransientBooleanArray((short) 1, JCSystem.CLEAR_ON_DESELECT);
        challenge = JCSystem.makeTransientByteArray((short) 8, JCSystem.CLEAR_ON_DESELECT);
        tmpBuf = JCSystem.makeTransientByteArray((short) 32, JCSystem.CLEAR_ON_DESELECT);

        register(CARDSIM_AID, (short) 0, (byte) CARDSIM_AID.length);

        // 预置5条交易记录，写入后 transactionCount 将由后续赋值保证为5
        preloadTransaction((short) 0x0392, TRANSACTION_TYPE_PURCHASE, new byte[]{0x00,0x00,0x00,0x1E}, new byte[]{0x00,0x00,0x00,0x00,0x46,(byte)0xCB});
        preloadTransaction((short) 0x0391, TRANSACTION_TYPE_PURCHASE, new byte[]{0x00,0x00,0x00,0x1E}, new byte[]{0x00,0x00,0x00,0x00,(byte)0xBB,(byte)0x8E});
        preloadTransaction((short) 0x0390, TRANSACTION_TYPE_PURCHASE, new byte[]{0x00,0x00,0x00,0x1E}, new byte[]{0x00,0x00,0x00,0x00,0x46,(byte)0xCB});
        preloadTransaction((short) 0x038F, TRANSACTION_TYPE_PURCHASE, new byte[]{0x00,0x00,0x00,0x1E}, new byte[]{0x00,0x00,0x00,0x00,(byte)0xBB,(byte)0x8E});
        preloadTransaction((short) 0x038E, TRANSACTION_TYPE_PURCHASE, new byte[]{0x00,0x00,0x00,0x1E}, new byte[]{0x00,0x00,0x00,0x00,(byte)0xC6,(byte)0xC9});

        // 确保预置记录计数为5（持久化）
        transactionCount = 5;
        // nextTransIdx 此时为0（因为写入5条后模10归零），符合循环文件逻辑
    }

    public static void install(byte[] b, short o, byte l) {
        new PBOC();
    }

    public void process(APDU apdu) throws ISOException {
        byte[] buf = apdu.getBuffer();
        byte cla = buf[ISO7816.OFFSET_CLA];
        byte ins = buf[ISO7816.OFFSET_INS];

        if (cla != 0x00 && cla != (byte) 0x80 && cla != CLA_PRIVATE_CA)
            ISOException.throwIt(SW_CLA_NOT_SUPPORTED);

        if (ins == INS_SELECT && buf[ISO7816.OFFSET_P1] == 0x04) {
            short lc = (short)(buf[ISO7816.OFFSET_LC] & 0xFF);
            if (lc > 0) apdu.setIncomingAndReceive();

            if (lc == 14 && Util.arrayCompare(buf, ISO7816.OFFSET_CDATA, PSE_NAME, (short)0, (short)14) == 0) {
                currentDir = FILE_MF; currentEF = 0;
                sendFCI(apdu, MF_FCI);
                return;
            }
            if (lc == 9 && Util.arrayCompare(buf, ISO7816.OFFSET_CDATA, WALLET_AID, (short)0, (short)9) == 0) {
                currentDir = FILE_DF_1001; currentEF = 0;
                sendFCI(apdu, APP_FCI);
                return;
            }
            if (lc == 9 && Util.arrayCompare(buf, ISO7816.OFFSET_CDATA, CARDSIM_AID, (short)0, (short)9) == 0) {
                currentDir = FILE_MF; currentEF = 0;
                sendFCI(apdu, MF_FCI);
                return;
            }
            ISOException.throwIt(SW_FILE_NOT_FOUND);
        }

        switch (ins) {
            case INS_SELECT:       selectFile(apdu); break;
            case INS_READ_BINARY:  readBinary(apdu); break;
            case INS_READ_RECORD:  readRecord(apdu); break;
            case 0x20: case (byte) 0x82: ISOException.throwIt(SW_SUCCESS); break;
            case INS_GET_CHALLENGE: getChallenge(apdu); break;
            case INS_GET_BALANCE:  getBalance(apdu); break;
            case INS_INIT_TRADE:   initTrade(apdu); break;
            case INS_DEBIT_52:     debit52(apdu); break;
            case INS_DEBIT_54:     debit54(apdu); break;
            case INS_PRIVATE_CA   : privateCA(apdu); break;
            case INS_GPO          : gpo(apdu); break;
            case INS_GET_DATA     : getData(apdu); break;
            default: ISOException.throwIt(SW_INS_NOT_SUPPORTED);
        }
    }

    private void selectFile(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        byte p1 = buf[ISO7816.OFFSET_P1];
        short lc = (short)(buf[ISO7816.OFFSET_LC] & 0xFF);
        if (lc > 0) apdu.setIncomingAndReceive();

        if (p1 == 0x00 && lc == 2) {
            short fid = Util.getShort(buf, ISO7816.OFFSET_CDATA);
            if (fid == FILE_MF) { currentDir = FILE_MF; currentEF = 0; sendFCI(apdu, MF_FCI); return; }
            if (fid == FILE_DF_1001) { currentDir = FILE_DF_1001; currentEF = 0; sendFCI(apdu, APP_FCI); return; }

            boolean valid = false;
            if (currentDir == FILE_MF) {
                if (fid == EF_MF_REC_0001 || fid == EF_MF_BIN_0005) valid = true;
            } else if (currentDir == FILE_DF_1001) {
                if (fid == EF_DF_ED_0001 || fid == EF_DF_EP_0002 ||
                    fid == EF_DF_REC_0018 || fid == EF_DF_BIN_0015 || fid == EF_DF_BIN_0016)
                    valid = true;
            }
            if (valid) { currentEF = fid; apdu.setOutgoingAndSend((short)0, (short)0); return; }
            ISOException.throwIt(SW_FILE_NOT_FOUND);
        }
        ISOException.throwIt(SW_WRONG_P1P2);
    }

    private void sendFCI(APDU apdu, byte[] fci) {
        byte[] buf = apdu.getBuffer();
        Util.arrayCopyNonAtomic(fci, (short)0, buf, (short)0, (short)fci.length);
        apdu.setOutgoingAndSend((short)0, (short)fci.length);
    }

    // 核心修复：定向兼容手机错误B0指令，全局文件权限不变
    private void readBinary(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        byte p1 = buf[ISO7816.OFFSET_P1];
        byte p2 = buf[ISO7816.OFFSET_P2];
        short le = (short)(buf[4] & 0xFF);
        if (le == 0) le = 256;

        if (p1 == (byte)0x95 && p2 == 0x00) {
            buf[0] = 0x00; buf[1] = 0x00; buf[2] = 0x00; buf[3] = 0x00;
            Util.arrayCopy(ecBalance, (short)0, buf, (short)4, BALANCE_LENGTH);
            buf[8] = 0x00; buf[9] = 0x26;
            buf[10] = 0x00; buf[11] = 0x00; buf[12] = 0x00; buf[13] = 0x00;
            buf[14] = 0x00; buf[15] = 0x00;
            apdu.setOutgoingAndSend((short)0, (short)16);
            return;
        }
        if (p1 == (byte)0x84 && p2 == 0x09) {
            Util.arrayFillNonAtomic(buf, (short)0, (short)9, (byte)0x00);
            apdu.setOutgoingAndSend((short)0, (short)9);
            return;
        }

        byte sfi = (byte)(p1 >> 3);
        if (sfi == 12 || sfi == 18 || sfi == 85 || sfi == 97) {
            byte recNo = (byte)(p1 & 0x07);
            if (recNo < 1 || recNo > transactionCount) ISOException.throwIt(SW_RECORD_NOT_FOUND);
            byte[] rec = getRecordByIndex(recNo);
            Util.arrayCopyNonAtomic(rec, (short)0, buf, (short)0, TRANSACTION_RECORD_LENGTH);
            apdu.setOutgoingAndSend((short)0, TRANSACTION_RECORD_LENGTH);
            return;
        }

        if ((currentDir == FILE_MF && currentEF == EF_MF_BIN_0005) ||
            (currentDir == FILE_DF_1001 && (currentEF == EF_DF_BIN_0015 || currentEF == EF_DF_BIN_0016))) {
            short sendLen = (le < BIN_0005_SIZE) ? le : BIN_0005_SIZE;
            Util.arrayFillNonAtomic(buf, (short)0, sendLen, (byte)0x00);
            apdu.setOutgoingAndSend((short)0, sendLen);
            return;
        }
        ISOException.throwIt(SW_COMMAND_NOT_ALLOWED);
    }

    // ★ 修复 SFI 解析（高5位）并确保交易记录可被手机读取
    private void readRecord(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        byte p1 = buf[ISO7816.OFFSET_P1];
        byte p2 = buf[ISO7816.OFFSET_P2];

        if ((p2 & 0x07) != 0x04) ISOException.throwIt(SW_RECORD_NOT_FOUND);

        // 正确提取 SFI（高5位）
        byte sfi = (byte)((p2 >> 3) & 0x1F);

        // SFI 优先：指向交易记录文件（0x18 或 0x12）时直接返回记录
        if (sfi == 0x18 || sfi == 0x12) {
            short recNo = (short)(p1 & 0xFF);
            if (recNo < 1 || recNo > transactionCount) ISOException.throwIt(SW_RECORD_NOT_FOUND);
            byte[] rec = getRecordByIndex(recNo);
            Util.arrayCopyNonAtomic(rec, (short)0, buf, (short)0, TRANSACTION_RECORD_LENGTH);
            apdu.setOutgoingAndSend((short)0, TRANSACTION_RECORD_LENGTH);
            return;
        }

        // 原有逻辑：通过 currentEF 或目录映射
        short fileId = currentEF;
        if (sfi != 0) {
            if (currentDir == FILE_DF_1001 && sfi == 8) fileId = EF_DF_REC_0018;
            else if (currentDir == FILE_MF && sfi == 1) fileId = EF_MF_REC_0001;
            else ISOException.throwIt(SW_FILE_NOT_FOUND);
        }

        if ((currentDir == FILE_MF && currentEF == EF_MF_BIN_0005) ||
            (currentDir == FILE_DF_1001 && (currentEF == EF_DF_BIN_0015 || currentEF == EF_DF_BIN_0016)))
            ISOException.throwIt(SW_COMMAND_NOT_ALLOWED);
        if (currentDir == FILE_DF_1001 && (currentEF == EF_DF_ED_0001 || currentEF == EF_DF_EP_0002))
            ISOException.throwIt(SW_COMMAND_NOT_ALLOWED);
        if (currentDir == FILE_MF && fileId == EF_MF_REC_0001)
            ISOException.throwIt(SW_RECORD_NOT_FOUND);
        if (currentDir == FILE_DF_1001 && fileId == EF_DF_REC_0018) {
            short recNo = (short)(p1 & 0xFF);
            if (recNo < 1 || recNo > transactionCount) ISOException.throwIt(SW_RECORD_NOT_FOUND);
            byte[] rec = getRecordByIndex(recNo);
            Util.arrayCopyNonAtomic(rec, (short)0, buf, (short)0, TRANSACTION_RECORD_LENGTH);
            apdu.setOutgoingAndSend((short)0, TRANSACTION_RECORD_LENGTH);
            return;
        }
        ISOException.throwIt(SW_FILE_NOT_FOUND);
    }

    private byte[] getRecordByIndex(short recNo) {
        short idx = (short)((nextTransIdx - recNo + MAX_TRANSACTIONS) % MAX_TRANSACTIONS);
        switch (idx) {
            case 0: return record0; case 1: return record1; case 2: return record2;
            case 3: return record3; case 4: return record4; case 5: return record5;
            case 6: return record6; case 7: return record7; case 8: return record8;
            default: return record9;
        }
    }
    private byte[] getRecordByWriteIndex() {
        switch (nextTransIdx) {
            case 0: return record0; case 1: return record1; case 2: return record2;
            case 3: return record3; case 4: return record4; case 5: return record5;
            case 6: return record6; case 7: return record7; case 8: return record8;
            default: return record9;
        }
    }
    private void preloadTransaction(short atc, byte type, byte[] amount, byte[] terminal) {
        byte[] rec = getRecordByWriteIndex();
        Util.arrayFillNonAtomic(rec, (short)0, TRANSACTION_RECORD_LENGTH, (byte)0x00);
        short off = 0;
        Util.setShort(rec, off, atc); off += 2;
        rec[off++] = 0x00; rec[off++] = 0x00; rec[off++] = 0x00;
        Util.arrayCopy(amount, (short)0, rec, off, BALANCE_LENGTH); off += BALANCE_LENGTH;
        rec[off++] = type;
        Util.arrayCopy(terminal, (short)0, rec, off, (short)6); off += 6;
        rec[off++] = 0x20; rec[off++] = 0x11; rec[off++] = 0x07; rec[off++] = 0x08;
        rec[off++] = 0x10; rec[off++] = 0x28; rec[off++] = 0x26;
        nextTransIdx = (byte)((nextTransIdx + 1) % MAX_TRANSACTIONS);
        // 不在此递增 transactionCount，由构造函数最后统一设置
    }

    private void getBalance(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        Util.arrayCopy(ecBalance, (short)0, buf, (short)0, BALANCE_LENGTH);
        apdu.setOutgoingAndSend((short)0, BALANCE_LENGTH);
    }
    private void initTrade(APDU apdu) throws ISOException {
        byte[] buf = apdu.getBuffer();
        byte p1 = buf[ISO7816.OFFSET_P1];
        short lc = (short)(buf[ISO7816.OFFSET_LC] & 0xFF);
        if (lc > 0) apdu.setIncomingAndReceive();

        byte type = (p1 == 0x00) ? TRADE_TYPE_LOAD : TRADE_TYPE_CONSUME;
        tradeContext[0] = type;
        Util.arrayCopy(buf, (short)(ISO7816.OFFSET_CDATA + 1), tradeContext, (short)1, BALANCE_LENGTH);
        Util.arrayCopy(buf, (short)(ISO7816.OFFSET_CDATA + 5), tradeContext, (short)5, (short)6);

        if (type != TRADE_TYPE_LOAD && !sufficient(ecBalance, tradeContext, (short)1))
            ISOException.throwIt(SW_BALANCE_INSUFFICIENT);

        short off = 0;
        Util.arrayCopy(ecBalance, (short)0, buf, off, BALANCE_LENGTH); off += BALANCE_LENGTH;
        byte[] atc = (type == TRADE_TYPE_LOAD) ? new byte[]{0x00, 0x27} : new byte[]{0x00, 0x26};
        Util.arrayCopy(atc, (short)0, buf, off, (short)2); off += 2;
        if (type == TRADE_TYPE_CONSUME) { Util.arrayCopy(FIXED_OVERDRAFT, (short)0, buf, off, (short)3); off += 3; }
        buf[off++] = 0x01; buf[off++] = 0x01;
        Util.arrayCopy(FIXED_CARD_RANDOM, (short)0, buf, off, (short)4); off += 4;
        if (type == TRADE_TYPE_LOAD) { buf[off++] = (byte) 0xCC; buf[off++] = 0x27; buf[off++] = 0x55; buf[off++] = (byte) 0x90; }
        Util.arrayCopy(atc, (short)0, tmpBuf, (short)0, (short)2);
        tradeInit[0] = true;
        apdu.setOutgoingAndSend((short)0, off);
    }
    private void debit52(APDU apdu) throws ISOException {
        if (!tradeInit[0]) ISOException.throwIt(SW_CONDITIONS_NOT_SATISFIED);
        byte type = tradeContext[0];
        JCSystem.beginTransaction();
        try {
            if (type == TRADE_TYPE_LOAD) add(ecBalance, (short)1);
            else { if (!sufficient(ecBalance, tradeContext, (short)1)) ISOException.throwIt(SW_BALANCE_INSUFFICIENT); sub(ecBalance, (short)1); }
            addTransactionRecord(type, tradeContext, (short)1, tmpBuf, (short)0);
            JCSystem.commitTransaction();
        } catch (Exception e) { JCSystem.abortTransaction(); throw e; }
        tradeInit[0] = false;
        byte[] buf = apdu.getBuffer();
        Util.arrayCopy(FIXED_MAC2, (short)0, buf, (short)0, MAC_LENGTH);
        apdu.setOutgoingAndSend((short)0, MAC_LENGTH);
    }
    private void debit54(APDU apdu) throws ISOException {
        if (!tradeInit[0]) ISOException.throwIt(SW_CONDITIONS_NOT_SATISFIED);
        JCSystem.beginTransaction();
        try {
            if (!sufficient(ecBalance, tradeContext, (short)1)) ISOException.throwIt(SW_BALANCE_INSUFFICIENT);
            sub(ecBalance, (short)1);
            byte[] atc = {0x00, 0x26};
            addTransactionRecord(TRANSACTION_TYPE_PURCHASE, tradeContext, (short)1, atc, (short)0);
            JCSystem.commitTransaction();
        } catch (Exception e) { JCSystem.abortTransaction(); throw e; }
        tradeInit[0] = false;
        byte[] buf = apdu.getBuffer();
        short off = 0;
        Util.arrayCopy(FIXED_MAC2, (short)0, buf, off, MAC_LENGTH); off += MAC_LENGTH;
        buf[off++] = 0x00; buf[off++] = 0x00; buf[off++] = 0x00; buf[off++] = 0x01;
        apdu.setOutgoingAndSend((short)0, off);
    }
    private void addTransactionRecord(byte type, byte[] amount, short amtOff, byte[] atc, short off) {
        byte[] rec = getRecordByWriteIndex();
        Util.arrayFillNonAtomic(rec, (short)0, TRANSACTION_RECORD_LENGTH, (byte)0x00);
        short o = 0;
        Util.arrayCopy(atc, off, rec, o, (short)2); o += 2;
        Util.arrayCopy(FIXED_OVERDRAFT, (short)0, rec, o, (short)3); o += 3;
        Util.arrayCopy(amount, amtOff, rec, o, BALANCE_LENGTH); o += BALANCE_LENGTH;
        rec[o++] = type;
        Util.arrayCopy(tradeContext, (short)5, rec, o, (short)6); o += 6;
        rec[o++] = 0x20; rec[o++] = 0x11; rec[o++] = 0x07; rec[o++] = 0x08;
        rec[o++] = 0x10; rec[o++] = 0x28; rec[o++] = 0x26;
        nextTransIdx = (byte)((nextTransIdx + 1) % MAX_TRANSACTIONS);
        if (transactionCount < MAX_TRANSACTIONS) transactionCount++;
    }

    private void getChallenge(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        rnd.generateData(challenge, (short)0, (short)8);
        Util.arrayCopy(challenge, (short)0, buf, (short)0, (short)8);
        apdu.setOutgoingAndSend((short)0, (short)8);
    }
    private void privateCA(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        buf[0] = (byte) 0xCA; buf[1] = 0x01; buf[2] = (byte) 0xF3; buf[3] = 0x38;
        apdu.setOutgoingAndSend((short)0, (short)4);
    }
    private void gpo(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        buf[0] = 0x77; buf[1] = 0x1A;
        buf[2] = (byte)0x82; buf[3] = 0x02; buf[4] = 0x7C; buf[5] = 0x00;
        buf[6] = (byte)0x94; buf[7] = 0x10;
        buf[8] = 0x05; buf[9] = 0x01; buf[10] = 0x01; buf[11] = 0x01;
        buf[12] = 0x0C; buf[13] = 0x01; buf[14] = 0x01; buf[15] = 0x01;
        buf[16] = 0x18; buf[17] = 0x01; buf[18] = 0x01; buf[19] = 0x01;
        buf[20] = 0x08; buf[21] = 0x01; buf[22] = 0x01; buf[23] = 0x01;
        apdu.setOutgoingAndSend((short)0, (short)26);
    }
    private void getData(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        byte p1 = buf[ISO7816.OFFSET_P1];
        byte p2 = buf[ISO7816.OFFSET_P2];
        if (p1 == (byte)0x9F && p2 == 0x79) {
            buf[0] = (byte)0x9F; buf[1] = 0x79; buf[2] = 0x06; buf[3] = 0x00; buf[4] = 0x00;
            Util.arrayCopy(ecBalance, (short)0, buf, (short)5, BALANCE_LENGTH);
            apdu.setOutgoingAndSend((short)0, (short)9); return;
        }
        if (p1 == (byte)0x9F && p2 == 0x36) {
            buf[0] = (byte)0x9F; buf[1] = 0x36; buf[2] = 0x02; buf[3] = 0x00; buf[4] = 0x26;
            apdu.setOutgoingAndSend((short)0, (short)5); return;
        }
        if (p1 == (byte)0x9F && p2 == 0x27) {
            buf[0] = (byte)0x9F; buf[1] = 0x27; buf[2] = 0x01; buf[3] = 0x00;
            apdu.setOutgoingAndSend((short)0, (short)4); return;
        }
        if (p1 == (byte)0x9F && p2 == 0x6D) {
            buf[0] = (byte)0x9F; buf[1] = 0x6D; buf[2] = 0x06;
            Util.arrayFillNonAtomic(buf, (short)3, (short)6, (byte)0xFF);
            apdu.setOutgoingAndSend((short)0, (short)9); return;
        }
        ISOException.throwIt(SW_FILE_NOT_FOUND);
    }

    private boolean sufficient(byte[] bal, byte[] amt, short off) {
        return Util.arrayCompare(bal, (short)0, amt, off, BALANCE_LENGTH) >= 0;
    }
    private void add(byte[] d, short off) {
        short c = 0;
        for (short i = 3; i >= 0; i--) { short v = (short)((d[i] & 0xFF) + (tradeContext[off + i] & 0xFF) + c); d[i] = (byte) v; c = (short) (v >> 8); }
    }
    private void sub(byte[] d, short off) {
        short b = 0;
        for (short i = 3; i >= 0; i--) { short a = (short)(d[i] & 0xFF); short sb = (short)((tradeContext[off + i] & 0xFF) + b); if (a < sb) { a += 256; b = 1; } else b = 0; d[i] = (byte) (a - sb); }
    }

    public void deselect() {
        tradeInit[0] = false;
        currentEF = 0;
        currentDir = FILE_MF;
    }
}