package com.fm1208.allinone;

import javacard.framework.*;
import javacard.security.RandomData;

public class AllInOneWallet extends Applet {

    private static final byte[] APP_AID = {
        (byte) 0xA0, 0x00, 0x00, 0x00,
        0x03, (byte) 0x86, (byte) 0x98, 0x07, 0x01
    };

    private static final byte MAX_TRANSACTIONS = 10;
    private static final byte TRANSACTION_RECORD_LENGTH = 32;

    private static final byte TRANSACTION_TYPE_LOAD = 0x01;
    private static final byte TRANSACTION_TYPE_PURCHASE = 0x02;
    private static final byte TRANSACTION_TYPE_WITHDRAW = 0x03;

    private static final short FILE_MF       = (short) 0x3F00;
    private static final short FILE_DF_1001  = (short) 0x1001;
    private static final short EF_MF_REC_0001 = (short) 0x0001;
    private static final short EF_MF_BIN_0005 = (short) 0x0005;
    private static final short EF_DF_REC_0001 = (short) 0x0001;
    private static final short EF_DF_REC_0002 = (short) 0x0002;
    private static final short EF_DF_BIN_0015 = (short) 0x0015;
    private static final short EF_DF_BIN_0016 = (short) 0x0016;
    private static final short EF_DF_REC_0018 = (short) 0x0018;

    private static final byte[] MF_FCI_TEMPLATE = {
        0x6F, 0x15,
        (byte) 0x84, 0x0E,
        '1','P','A','Y','.','S','Y','S','.','D','D','F','0','1',
        (byte) 0xA5, 0x03,
        (byte) 0x88, 0x01, 0x01
    };

    private static final byte[] DF_1001_FCI_TEMPLATE = {
        0x6F, 0x17, (byte) 0x84, 0x02, 0x10, 0x01,
        (byte) 0xA5, 0x11, (byte) 0x88, 0x01, 0x38, (byte) 0x9F,
        0x11, 0x01, 0x01, (byte) 0x9F, 0x12, 0x01,
        0x00, (byte) 0x9F, 0x13, 0x02, 0x00, 0x00,
        (byte) 0x9F, 0x14, 0x01, 0x00
    };

    private static final byte[] EF_RECORD_FCI_TEMPLATE = {
        0x6F, 0x0F, (byte) 0x84, 0x02, 0x00, 0x00,
        (byte) 0xA5, 0x09, (byte) 0x88, 0x01, 0x01, (byte) 0x9F,
        0x11, 0x01, 0x01, (byte) 0x9F, 0x12, 0x01, 0x00
    };

    private static final byte[] EF_BINARY_FCI_TEMPLATE = {
        0x6F, 0x0F, (byte) 0x84, 0x02, 0x00, 0x00,
        (byte) 0xA5, 0x09, (byte) 0x88, 0x01, 0x00, (byte) 0x9F,
        0x11, 0x01, 0x01, (byte) 0x9F, 0x12, 0x01, 0x00
    };

    private static final byte[] APP_FCI_TEMPLATE = {
        0x6F, 0x10, (byte) 0x84, 0x09,
        (byte) 0xA0, 0x00, 0x00, 0x00, 0x03, (byte) 0x86, (byte) 0x98, 0x07, 0x01,
        (byte) 0xA5, 0x03, (byte) 0x88, 0x01, 0x00
    };

    private static final byte CLA_PRIVATE_CA = (byte) 0xCA;
    private static final byte INS_PRIVATE_CA = (byte) 0x01;
    private static final byte[] PRIVATE_CA_FIXED_RESP = {(byte)0xCA, 0x01, (byte)0xF3, 0x38};

    private static final byte INS_SELECT       = (byte) 0xA4;
    private static final byte INS_READ_BINARY  = (byte) 0xB0;
    private static final byte INS_READ_RECORD  = (byte) 0xB2;
    private static final byte INS_GET_BALANCE  = (byte) 0x5C;
    private static final byte INS_INIT_TRADE   = (byte) 0x50;
    private static final byte INS_DEBIT_52     = (byte) 0x52;
    private static final byte INS_DEBIT_54     = (byte) 0x54;
    private static final byte INS_VERIFY_PIN   = (byte) 0x20;
    private static final byte INS_EXTERNAL_AUTH = (byte) 0x82;
    private static final byte INS_GET_CHALLENGE = (byte) 0x84;

    private static final byte TRADE_TYPE_LOAD    = 0x03;
    private static final byte TRADE_TYPE_CONSUME = 0x01;

    private static final short SW_SUCCESS        = (short) 0x9000;
    private static final short SW_CLA_NOT_SUPPORTED = (short) 0x6E00;
    private static final short SW_INS_NOT_SUPPORTED = (short) 0x6D00;
    private static final short SW_CONDITIONS_NOT_SATISFIED = (short) 0x6985;
    private static final short SW_BALANCE_INSUFFICIENT = (short) 0x6A80;
    private static final short SW_FILE_NOT_FOUND = (short) 0x6A82;
    private static final short SW_RECORD_NOT_FOUND = (short) 0x6A83;
    private static final short SW_WRONG_P1P2 = (short) 0x6A86;

    private static final byte BALANCE_LENGTH = 4;
    private static final byte MAC_LENGTH = 4;
    private static final byte[] FIXED_MAC2 = {0x43, 0x53, 0x4D, (byte)0xB6};
    private static final byte[] FIXED_CARD_RANDOM = {0x79, 0x62, 0x2A, 0x11};

    private final byte[] ecBalance;
    private final byte[] transactionRecords;
    private byte transactionCount;
    private byte nextTransIdx;
    private short currentDir;

    private final byte[] mfRec0001 = new byte[16];
    private final byte[] mfBin0005 = new byte[16];
    private final byte[] dfRec0001 = new byte[48];
    private final byte[] dfRec0002 = new byte[32];
    private final byte[] dfBin0015 = new byte[16];
    private final byte[] dfBin0016 = new byte[16];

    private final byte[] tradeContext;
    private final boolean[] tradeInit;
    private final byte[] challenge;
    private final byte[] tmpBuf;
    private final RandomData rnd;

    private AllInOneWallet() {
        rnd = RandomData.getInstance(RandomData.ALG_SECURE_RANDOM);
        ecBalance = new byte[BALANCE_LENGTH];
        Util.setShort(ecBalance, (short)2, (short)0x0BB8);

        transactionRecords = new byte[(short)(MAX_TRANSACTIONS * TRANSACTION_RECORD_LENGTH)];
        transactionCount = 0;
        nextTransIdx = 0;
        currentDir = FILE_MF;

        tradeContext = JCSystem.makeTransientByteArray((short)12, JCSystem.CLEAR_ON_DESELECT);
        tradeInit = JCSystem.makeTransientBooleanArray((short)1, JCSystem.CLEAR_ON_DESELECT);
        challenge = JCSystem.makeTransientByteArray((short)8, JCSystem.CLEAR_ON_DESELECT);
        tmpBuf = JCSystem.makeTransientByteArray((short)32, JCSystem.CLEAR_ON_DESELECT);
        register(APP_AID, (short)0, (byte)APP_AID.length);
    }

    public static void install(byte[] b, short o, byte l) {
        new AllInOneWallet();
    }

    public void process(APDU apdu) throws ISOException {
        byte[] buf = apdu.getBuffer();
        byte cla = buf[ISO7816.OFFSET_CLA];
        byte ins = buf[ISO7816.OFFSET_INS];
        short lc = (short)(buf[ISO7816.OFFSET_LC] & 0xFF);

        if (lc > 0) {
            apdu.setIncomingAndReceive();
        }

        if (cla != 0x00 && cla != (byte)0x80 && cla != CLA_PRIVATE_CA) {
            ISOException.throwIt(SW_CLA_NOT_SUPPORTED);
        }

        if (selectingApplet()) {
            currentDir = FILE_MF;
            sendFCI(apdu, MF_FCI_TEMPLATE);
            return;
        }

        switch (ins) {
            case INS_SELECT:       selectFile(apdu); break;
            case INS_READ_BINARY:  readBinary(apdu); break;
            case INS_READ_RECORD:  readRecord(apdu); break;
            case INS_VERIFY_PIN:
            case INS_EXTERNAL_AUTH:
                ISOException.throwIt(SW_SUCCESS);
                break;
            case INS_GET_CHALLENGE: getChallenge(apdu); break;
            case INS_GET_BALANCE:   getBalance(apdu); break;
            case INS_INIT_TRADE:    initTrade(apdu); break;
            case INS_DEBIT_52:      debit52(apdu); break;
            case INS_DEBIT_54:      debit54(apdu); break;
            case INS_PRIVATE_CA:    privateCA(apdu); break;
            default: ISOException.throwIt(SW_INS_NOT_SUPPORTED);
        }
    }

    private void selectFile(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        byte p1 = buf[ISO7816.OFFSET_P1];
        byte p2 = buf[ISO7816.OFFSET_P2];
        short lc = (short)(buf[ISO7816.OFFSET_LC] & 0xFF);

        if (p1 == 0x00 && p2 == 0x00) {
            short fileId = (lc == 2) ? Util.getShort(buf, ISO7816.OFFSET_CDATA) : FILE_MF;

            if (fileId == FILE_MF) {
                currentDir = FILE_MF;
                sendFCI(apdu, MF_FCI_TEMPLATE);
                return;
            }
            if (fileId == FILE_DF_1001) {
                currentDir = FILE_DF_1001;
                sendFCI(apdu, DF_1001_FCI_TEMPLATE);
                return;
            }
            if (currentDir == FILE_MF) {
                if (fileId == EF_MF_REC_0001) { sendRecordFCI(apdu, fileId); return; }
                if (fileId == EF_MF_BIN_0005) { sendBinaryFCI(apdu, fileId); return; }
            } else if (currentDir == FILE_DF_1001) {
                if (fileId == EF_DF_REC_0001 || fileId == EF_DF_REC_0002 || fileId == EF_DF_REC_0018) {
                    sendRecordFCI(apdu, fileId); return;
                }
                if (fileId == EF_DF_BIN_0015 || fileId == EF_DF_BIN_0016) {
                    sendBinaryFCI(apdu, fileId); return;
                }
            }
            ISOException.throwIt(SW_FILE_NOT_FOUND);
        }
        if (p1 == 0x04 && lc == 9) {
            if (Util.arrayCompare(buf, ISO7816.OFFSET_CDATA, APP_AID, (short)0, (short)9) == 0) {
                currentDir = FILE_MF;
                sendFCI(apdu, APP_FCI_TEMPLATE);
                return;
            }
        }
        ISOException.throwIt(SW_WRONG_P1P2);
    }

    private void sendFCI(APDU apdu, byte[] fci) {
        apdu.setOutgoing();
        apdu.setOutgoingLength((short)fci.length);
        apdu.sendBytesLong(fci, (short)0, (short)fci.length);
    }

    private void sendRecordFCI(APDU apdu, short fileId) {
        byte[] fci = new byte[EF_RECORD_FCI_TEMPLATE.length];
        Util.arrayCopy(EF_RECORD_FCI_TEMPLATE, (short)0, fci, (short)0, (short)EF_RECORD_FCI_TEMPLATE.length);
        Util.setShort(fci, (short)4, fileId);
        sendFCI(apdu, fci);
    }

    private void sendBinaryFCI(APDU apdu, short fileId) {
        byte[] fci = new byte[EF_BINARY_FCI_TEMPLATE.length];
        Util.arrayCopy(EF_BINARY_FCI_TEMPLATE, (short)0, fci, (short)0, (short)EF_BINARY_FCI_TEMPLATE.length);
        Util.setShort(fci, (short)4, fileId);
        sendFCI(apdu, fci);
    }

    private void readBinary(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        byte p1 = buf[ISO7816.OFFSET_P1];
        byte p2 = buf[ISO7816.OFFSET_P2];
        short le = apdu.setOutgoing();

        short fileId = 0;
        short offset = 0;
        if ((p1 & 0x80) != 0) {
            fileId = (short)(p1 & 0x1F);
            offset = (short)(p2 & 0xFF);
        } else {
            offset = Util.makeShort(p1, p2);
        }

        byte[] data = null;
        if (currentDir == FILE_MF) {
            if (fileId == EF_MF_BIN_0005 || fileId == 0) data = mfBin0005;
        } else if (currentDir == FILE_DF_1001) {
            if (fileId == EF_DF_BIN_0015 || fileId == 0) data = dfBin0015;
            else if (fileId == EF_DF_BIN_0016) data = dfBin0016;
        }
        if (data == null) ISOException.throwIt(SW_FILE_NOT_FOUND);

        short avail = (short)(data.length - offset);
        if (avail <= 0) ISOException.throwIt(SW_WRONG_P1P2);
        short len = (le < avail) ? le : avail;
        Util.arrayCopy(data, offset, buf, (short)0, len);
        apdu.setOutgoingAndSend((short)0, len);
    }

    private void readRecord(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        byte p1 = buf[ISO7816.OFFSET_P1];
        byte p2 = buf[ISO7816.OFFSET_P2];
        short le = apdu.setOutgoing();

        if ((p2 & 0x07) != 0x04) ISOException.throwIt(SW_RECORD_NOT_FOUND);

        short fileId = 0;
        if ((p2 & 0x1F) != 0) {
            fileId = (short)((p2 >> 3) & 0x1F);
        }

        if ((currentDir == FILE_DF_1001) && (fileId == EF_DF_REC_0018 || fileId == 0)) {
            try {
                short recNo = (short)(p1 & 0xFF);
                getTransactionRecord(recNo, tmpBuf, (short)0);
                buf[0] = (byte)0x70;
                buf[1] = (byte)0x20;
                Util.arrayCopy(tmpBuf, (short)0, buf, (short)2, (short)32);
                short len = (le > 34) ? 34 : le;
                apdu.setOutgoingAndSend((short)0, len);
                return;
            } catch (ISOException e) {
                if (e.getReason() == SW_RECORD_NOT_FOUND) {
                    Util.arrayFillNonAtomic(buf, (short)0, le, (byte)0x00);
                    apdu.setOutgoingAndSend((short)0, le);
                    return;
                }
                throw e;
            }
        }

        byte[] data = null;
        short maxLen = 0;
        if (currentDir == FILE_MF) {
            if (fileId == EF_MF_REC_0001 || fileId == 0) { data = mfRec0001; maxLen = 16; }
        } else if (currentDir == FILE_DF_1001) {
            if (fileId == EF_DF_REC_0001 || fileId == 0) { data = dfRec0001; maxLen = 48; }
            else if (fileId == EF_DF_REC_0002) { data = dfRec0002; maxLen = 32; }
        }
        if (data == null) ISOException.throwIt(SW_FILE_NOT_FOUND);
        short len = (le < maxLen) ? le : maxLen;
        Util.arrayCopy(data, (short)0, buf, (short)0, len);
        apdu.setOutgoingAndSend((short)0, len);
    }

    private void getTransactionRecord(short recNo, byte[] outBuf, short outOff) {
        if (recNo < 1 || recNo > transactionCount) ISOException.throwIt(SW_RECORD_NOT_FOUND);
        short idx = (short)((nextTransIdx - recNo + MAX_TRANSACTIONS) % MAX_TRANSACTIONS);
        short base = (short)(idx * TRANSACTION_RECORD_LENGTH);
        Util.arrayCopyNonAtomic(transactionRecords, base, outBuf, outOff, TRANSACTION_RECORD_LENGTH);
    }

    private void addTransactionRecord(byte type, byte[] amount, short amtOff, byte[] atc, short atcOff) {
        short base = (short)(nextTransIdx * TRANSACTION_RECORD_LENGTH);
        Util.arrayFillNonAtomic(transactionRecords, base, TRANSACTION_RECORD_LENGTH, (byte)0x00);
        transactionRecords[base] = type;
        Util.arrayCopy(amount, amtOff, transactionRecords, (short)(base+1), BALANCE_LENGTH);
        Util.arrayCopy(atc, atcOff, transactionRecords, (short)(base+5), (short)2);
        transactionRecords[(short)(base+7)] = 0x01;
        transactionRecords[(short)(base+8)] = 0x26;
        transactionRecords[(short)(base+9)] = 0x05;
        transactionRecords[(short)(base+10)] = 0x10;
        transactionRecords[(short)(base+11)] = 0x15;
        transactionRecords[(short)(base+12)] = 0x30;
        transactionRecords[(short)(base+13)] = 0x00;
        nextTransIdx = (byte)((nextTransIdx + 1) % MAX_TRANSACTIONS);
        if (transactionCount < MAX_TRANSACTIONS) transactionCount++;
    }

    private void getBalance(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        Util.arrayCopy(ecBalance, (short)0, buf, (short)0, BALANCE_LENGTH);
        apdu.setOutgoingAndSend((short)0, BALANCE_LENGTH);
    }

    private void initTrade(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        byte p1 = buf[ISO7816.OFFSET_P1];
        byte tradeType = (p1 == 0x00) ? TRADE_TYPE_LOAD : TRADE_TYPE_CONSUME;
        tradeContext[0] = tradeType;

        Util.arrayCopy(buf, (short)(ISO7816.OFFSET_CDATA + 1), tradeContext, (short)2, BALANCE_LENGTH);

        if (tradeType != TRADE_TYPE_LOAD && !sufficient(ecBalance, tradeContext, (short)2)) {
            ISOException.throwIt(SW_BALANCE_INSUFFICIENT);
        }

        short off = 0;
        Util.arrayCopy(ecBalance, (short)0, buf, off, BALANCE_LENGTH); off += BALANCE_LENGTH;
        byte[] atc = (tradeType == TRADE_TYPE_LOAD) ? new byte[]{0x00, 0x27} : new byte[]{0x00, 0x26};
        Util.arrayCopy(atc, (short)0, buf, off, (short)2); off += 2;
        buf[off++] = 0x01; buf[off++] = 0x01;
        Util.arrayCopy(FIXED_CARD_RANDOM, (short)0, buf, off, (short)4); off += 4;
        buf[off++] = (byte)0xCC; buf[off++] = 0x27; buf[off++] = 0x55; buf[off++] = (byte)0x90;
        Util.arrayCopy(atc, (short)0, tmpBuf, (short)0, (short)2);

        tradeInit[0] = true;
        apdu.setOutgoingAndSend((short)0, off);
    }

    private void debit52(APDU apdu) {
        if (!tradeInit[0]) ISOException.throwIt(SW_CONDITIONS_NOT_SATISFIED);
        apdu.setIncomingAndReceive();

        byte tradeType = tradeContext[0];
        byte recType;
        JCSystem.beginTransaction();
        try {
            if (tradeType == TRADE_TYPE_LOAD) {
                add(ecBalance, tradeContext, (short)2);
                recType = TRANSACTION_TYPE_LOAD;
            } else {
                sub(ecBalance, tradeContext, (short)2);
                recType = TRANSACTION_TYPE_PURCHASE;
            }
            addTransactionRecord(recType, tradeContext, (short)2, tmpBuf, (short)0);
            JCSystem.commitTransaction();
        } catch (Exception e) {
            JCSystem.abortTransaction();
            ISOException.throwIt(SW_CONDITIONS_NOT_SATISFIED);
        }
        tradeInit[0] = false;
        byte[] buf = apdu.getBuffer();
        Util.arrayCopy(FIXED_MAC2, (short)0, buf, (short)0, MAC_LENGTH);
        apdu.setOutgoingAndSend((short)0, MAC_LENGTH);
    }

    private void debit54(APDU apdu) {
        if (!tradeInit[0]) ISOException.throwIt(SW_CONDITIONS_NOT_SATISFIED);
        apdu.setIncomingAndReceive();

        JCSystem.beginTransaction();
        try {
            sub(ecBalance, tradeContext, (short)2);
            byte[] atc = {0x00, 0x26};
            addTransactionRecord(TRANSACTION_TYPE_PURCHASE, tradeContext, (short)2, atc, (short)0);
            JCSystem.commitTransaction();
        } catch (Exception e) {
            JCSystem.abortTransaction();
            ISOException.throwIt(SW_CONDITIONS_NOT_SATISFIED);
        }
        tradeInit[0] = false;
        byte[] buf = apdu.getBuffer();
        short off = 0;
        Util.arrayCopy(FIXED_MAC2, (short)0, buf, off, MAC_LENGTH); off += MAC_LENGTH;
        buf[off++] = 0x00; buf[off++] = 0x00; buf[off++] = 0x00; buf[off++] = 0x01;
        apdu.setOutgoingAndSend((short)0, off);
    }

    private void getChallenge(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        rnd.generateData(challenge, (short)0, (short)8);
        Util.arrayCopy(challenge, (short)0, buf, (short)0, (short)8);
        apdu.setOutgoingAndSend((short)0, (short)8);
    }

    private void privateCA(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        buf[0] = (byte)0xCA; buf[1] = 0x01; buf[2] = (byte)0xF3; buf[3] = 0x38;
        apdu.setOutgoingAndSend((short)0, (short)4);
    }

    private boolean sufficient(byte[] bal, byte[] amt, short off) {
        return Util.arrayCompare(bal, (short)0, amt, off, (short)4) >= 0;
    }

    private void add(byte[] dest, byte[] src, short off) {
        short carry = 0;
        for (short i = 3; i >= 0; i--) {
            short a = (short)(dest[i] & 0xFF);
            short b = (short)(src[off+i] & 0xFF);
            short sum = (short)(a + b + carry);
            dest[i] = (byte)sum;
            carry = (short)(sum >> 8);
        }
    }

    private void sub(byte[] dest, byte[] src, short off) {
        short borrow = 0;
        for (short i = 3; i >= 0; i--) {
            short a = (short)(dest[i] & 0xFF);
            short b = (short)((src[off+i] & 0xFF) + borrow);
            if (a < b) { a += 256; borrow = 1; } else borrow = 0;
            dest[i] = (byte)(a - b);
        }
    }

    public void deselect() {
        tradeInit[0] = false;
        Util.arrayFillNonAtomic(tradeContext, (short)0, (short)12, (byte)0x00);
        currentDir = FILE_MF;
    }
}
