package com.emv.sim;

import javacard.framework.*;
import javacard.security.RandomData;

public class PBOCWalletSim extends Applet {
    private static final byte[] APP_AID = {
        (byte)0xA0, 0x00, 0x00, 0x00, 0x03, (byte)0x86, (byte)0x98, 0x07, 0x01
    };

    private static final short FILE_MF       = (short)0x3F00;
    private static final short FILE_DF_1001  = (short)0x1001;
    private static final short EF_MF_REC_0001= (short)0x0001;
    private static final short EF_MF_BIN_0005= (short)0x0005;
    private static final short EF_DF_REC_0001= (short)0x0001;
    private static final short EF_DF_REC_0002= (short)0x0002;
    private static final short EF_DF_BIN_0015= (short)0x0015;
    private static final short EF_DF_BIN_0016= (short)0x0016;
    private static final short EF_DF_REC_0018= (short)0x0018;

    private static final byte[] MF_FCI = {
        0x6F, 0x15, 0x84, 0x02, 0x3F, 0x00,
        0xA5, 0x0F, (byte)0x88, 0x01, 0x38, (byte)0x9F,
        0x11, 0x01, 0x01, (byte)0x9F, 0x12, 0x01,
        0x00, (byte)0x9F, 0x13, 0x02, 0x00, 0x00
    };
    private static final byte[] DF_1001_FCI = {
        0x6F, 0x17, 0x84, 0x02, 0x10, 0x01,
        0xA5, 0x11, (byte)0x88, 0x01, 0x38, (byte)0x9F,
        0x11, 0x01, 0x01, (byte)0x9F, 0x12, 0x01,
        0x00, (byte)0x9F, 0x13, 0x02, 0x00, 0x00,
        (byte)0x9F, 0x14, 0x01, 0x00
    };
    private static final byte[] RECORD_FCI = {
        0x6F, 0x0F, 0x84, 0x02, 0x00, 0x00,
        0xA5, 0x09, (byte)0x88, 0x01, 0x01, (byte)0x9F,
        0x11, 0x01, 0x01, (byte)0x9F, 0x12, 0x01, 0x00
    };
    private static final byte[] BINARY_FCI = {
        0x6F, 0x0F, 0x84, 0x02, 0x00, 0x00,
        0xA5, 0x09, (byte)0x88, 0x01, 0x00, (byte)0x9F,
        0x11, 0x01, 0x01, (byte)0x9F, 0x12, 0x01, 0x00
    };
    private static final byte[] APP_FCI = {
        0x6F, 0x10, 0x84, 0x09,
        (byte)0xA0, 0x00, 0x00, 0x00, 0x03, (byte)0x86, (byte)0x98, 0x07, 0x01,
        0xA5, 0x03, (byte)0x88, 0x01, 0x00
    };

    private static final byte INS_SELECT       = (byte)0xA4;
    private static final byte INS_READ_BINARY  = (byte)0xB0;
    private static final byte INS_READ_RECORD  = (byte)0xB2;
    private static final byte INS_GET_BALANCE  = (byte)0x5C;
    private static final byte INS_INIT_TRADE   = (byte)0x50;
    private static final byte INS_DEBIT_52     = (byte)0x52;
    private static final byte INS_DEBIT_54     = (byte)0x54;
    private static final byte INS_PRIVATE_CA   = (byte)0x01;
    private static final byte CLA_PRIVATE_CA   = (byte)0xCA;

    private static final byte TRADE_LOAD       = 0x03;
    private static final byte TRADE_CONSUME    = 0x01;
    private static final byte[] FIXED_MAC2     = {0x43, 0x53, 0x4D, (byte)0xB6};
    private static final byte[] FIXED_RND      = {0x79, 0x62, 0x2A, 0x11};
    private static final short BALANCE_LEN     = 4;
    private static final short MAC_LEN         = 4;

    private final byte[] balance;
    private byte[] transLog;
    private byte transCount;
    private byte nextTransIdx;
    private short currentDir;
    private short currentFile;

    private final byte[] mfRec0001 = new byte[16];
    private final byte[] mfBin0005 = new byte[16];
    private final byte[] dfRec0001 = new byte[48];
    private final byte[] dfRec0002 = new byte[32];
    private final byte[] dfBin0015 = new byte[16];
    private final byte[] dfBin0016 = new byte[16];

    private final byte[] tradeCtx;
    private final boolean[] tradeInit;
    private final byte[] challenge;
    private final RandomData rnd;

    private PBOCWalletSim() {
        rnd = RandomData.getInstance(RandomData.ALG_SECURE_RANDOM);
        balance = new byte[BALANCE_LEN];
        Util.setShort(balance, (short)2, (short)0x0BB8);
        transLog = new byte[(short)(10 * 32)];
        transCount = 0;
        nextTransIdx = 0;
        currentDir = FILE_MF;
        currentFile = 0;

        tradeCtx = JCSystem.makeTransientByteArray((short)12, JCSystem.CLEAR_ON_DESELECT);
        tradeInit = JCSystem.makeTransientBooleanArray((short)1, JCSystem.CLEAR_ON_DESELECT);
        challenge = JCSystem.makeTransientByteArray((short)8, JCSystem.CLEAR_ON_DESELECT);
        register(APP_AID, (short)0, (byte)APP_AID.length);
    }

    public static void install(byte[] b, short o, byte l) {
        new PBOCWalletSim();
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
            ISOException.throwIt(ISO7816.SW_CLA_NOT_SUPPORTED);
        }

        if (selectingApplet()) {
            sendFCI(apdu, MF_FCI);
            currentDir = FILE_MF;
            currentFile = 0;
            return;
        }

        switch (ins) {
            case INS_SELECT:       selectFile(apdu); break;
            case INS_READ_BINARY:  readBinary(apdu); break;
            case INS_READ_RECORD:  readRecord(apdu); break;
            case 0x20: case (byte)0x82:
                ISOException.throwIt(ISO7816.SW_NO_ERROR);
                break;
            case 0x84: getChallenge(apdu); break;
            case INS_GET_BALANCE: getBalance(apdu); break;
            case INS_INIT_TRADE:  initTrade(apdu); break;
            case INS_DEBIT_52:    debit52(apdu); break;
            case INS_DEBIT_54:    debit54(apdu); break;
            case INS_PRIVATE_CA:  privateCA(apdu); break;
            default: ISOException.throwIt(ISO7816.SW_INS_NOT_SUPPORTED);
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
                currentFile = 0;
                sendFCI(apdu, MF_FCI);
                return;
            }
            if (fileId == FILE_DF_1001) {
                currentDir = FILE_DF_1001;
                currentFile = 0;
                sendFCI(apdu, DF_1001_FCI);
                return;
            }
            if (currentDir == FILE_MF) {
                if (fileId == EF_MF_REC_0001) {
                    currentFile = fileId;
                    sendRecordFCI(apdu, fileId);
                    return;
                }
                if (fileId == EF_MF_BIN_0005) {
                    currentFile = fileId;
                    sendBinaryFCI(apdu, fileId);
                    return;
                }
            } else if (currentDir == FILE_DF_1001) {
                if (fileId == EF_DF_REC_0001 || fileId == EF_DF_REC_0002 || fileId == EF_DF_REC_0018) {
                    currentFile = fileId;
                    sendRecordFCI(apdu, fileId);
                    return;
                }
                if (fileId == EF_DF_BIN_0015 || fileId == EF_DF_BIN_0016) {
                    currentFile = fileId;
                    sendBinaryFCI(apdu, fileId);
                    return;
                }
            }
            ISOException.throwIt(ISO7816.SW_FILE_NOT_FOUND);
        }

        if (p1 == 0x04 && lc == 9) {
            if (Util.arrayCompare(buf, ISO7816.OFFSET_CDATA, APP_AID, (short)0, (short)9) == 0) {
                sendFCI(apdu, APP_FCI);
                currentDir = FILE_MF;
                currentFile = 0;
                return;
            }
        }
        ISOException.throwIt(ISO7816.SW_WRONG_P1P2);
    }

    private void sendFCI(APDU apdu, byte[] fci) {
        apdu.setOutgoing();
        apdu.setOutgoingLength((short)fci.length);
        apdu.sendBytesLong(fci, (short)0, (short)fci.length);
    }

    private void sendRecordFCI(APDU apdu, short fid) {
        byte[] fci = new byte[RECORD_FCI.length];
        Util.arrayCopy(RECORD_FCI, (short)0, fci, (short)0, (short)RECORD_FCI.length);
        Util.setShort(fci, (short)4, fid);
        sendFCI(apdu, fci);
    }

    private void sendBinaryFCI(APDU apdu, short fid) {
        byte[] fci = new byte[BINARY_FCI.length];
        Util.arrayCopy(BINARY_FCI, (short)0, fci, (short)0, (short)BINARY_FCI.length);
        Util.setShort(fci, (short)4, fid);
        sendFCI(apdu, fci);
    }

    private void readBinary(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        short offset = Util.makeShort((byte)(buf[ISO7816.OFFSET_P1] & 0x7F), buf[ISO7816.OFFSET_P2]);
        short le = apdu.setOutgoing();
        
        byte[] data = null;
        switch (currentFile) {
            case EF_MF_BIN_0005: data = mfBin0005; break;
            case EF_DF_BIN_0015: data = dfBin0015; break;
            case EF_DF_BIN_0016: data = dfBin0016; break;
            default: ISOException.throwIt(ISO7816.SW_CONDITIONS_NOT_SATISFIED);
        }
        
        if (offset >= data.length) {
            ISOException.throwIt(ISO7816.SW_WRONG_DATA);
        }
        
        short len = (le < (short)(data.length - offset)) ? le : (short)(data.length - offset);
        Util.arrayCopy(data, offset, buf, (short)0, len);
        apdu.setOutgoingAndSend((short)0, len);
    }

    private void readRecord(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        byte p1 = buf[ISO7816.OFFSET_P1];
        byte p2 = buf[ISO7816.OFFSET_P2];
        short le = apdu.setOutgoing();
        
        if ((p2 & 0x07) != 0x04) ISOException.throwIt((short)0x6A83);
        
        byte[] data = null;
        short offset = 0;
        short maxLen = 0;
        
        switch (currentFile) {
            case EF_MF_REC_0001: 
                data = mfRec0001; 
                maxLen = 16; 
                break;
            case EF_DF_REC_0001: 
                data = dfRec0001; 
                maxLen = 48; 
                break;
            case EF_DF_REC_0002: 
                data = dfRec0002; 
                maxLen = 32; 
                break;
            case EF_DF_REC_0018:
                if (p1 < 1 || p1 > transCount) {
                    ISOException.throwIt((short)0x6A83);
                }
                short recordIdx = (short)((nextTransIdx - p1 + 10) % 10);
                data = transLog;
                offset = (short)(recordIdx * 32);
                maxLen = 32;
                break;
            default: 
                ISOException.throwIt(ISO7816.SW_CONDITIONS_NOT_SATISFIED);
        }
        
        short len = (le < maxLen) ? le : maxLen;
        Util.arrayCopy(data, offset, buf, (short)0, len);
        apdu.setOutgoingAndSend((short)0, len);
    }

    private void getChallenge(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        rnd.generateData(challenge, (short)0, (short)8);
        Util.arrayCopy(challenge, (short)0, buf, (short)0, (short)8);
        apdu.setOutgoingAndSend((short)0, (short)8);
    }

    private void getBalance(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        Util.arrayCopy(balance, (short)0, buf, (short)0, BALANCE_LEN);
        apdu.setOutgoingAndSend((short)0, BALANCE_LEN);
    }

    private void initTrade(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        byte p1 = buf[ISO7816.OFFSET_P1];
        byte tradeType = TRADE_CONSUME;
        if (p1 == 0x00) tradeType = TRADE_LOAD;
        else if (p1 == 0x01) tradeType = TRADE_CONSUME;
        else if (p1 == 0x02) tradeType = 0x02;
        tradeCtx[0] = tradeType;

        short dataOff = ISO7816.OFFSET_CDATA + 1;
        Util.arrayCopy(buf, dataOff, tradeCtx, (short)2, BALANCE_LEN);

        if (tradeType != TRADE_LOAD) {
            if (!sufficient(balance, tradeCtx, (short)2))
                ISOException.throwIt((short)0x6A80);
        }

        short off = 0;
        Util.arrayCopy(balance, (short)0, buf, off, BALANCE_LEN); off += BALANCE_LEN;
        byte[] atc = new byte[2];
        if (tradeType == TRADE_LOAD) { atc[0] = 0x00; atc[1] = 0x27; }
        else                         { atc[0] = 0x00; atc[1] = 0x26; }
        Util.arrayCopy(atc, (short)0, buf, off, (short)2); off += 2;
        buf[off++] = 0x01;
        buf[off++] = 0x01;
        Util.arrayCopy(FIXED_RND, (short)0, buf, off, (short)4); off += 4;
        buf[off++] = (byte)0xCC; buf[off++] = 0x27;
        buf[off++] = 0x55; buf[off++] = (byte)0x90;
        Util.arrayCopy(atc, (short)0, tradeCtx, (short)6, (short)2);

        tradeInit[0] = true;
        apdu.setOutgoingAndSend((short)0, off);
    }

    private void debit52(APDU apdu) {
        if (!tradeInit[0]) ISOException.throwIt(ISO7816.SW_CONDITIONS_NOT_SATISFIED);
        apdu.setIncomingAndReceive();

        byte tradeType = tradeCtx[0];
        byte recType;
        JCSystem.beginTransaction();
        try {
            if (tradeType == TRADE_LOAD) {
                add(balance, tradeCtx, (short)2);
                recType = 0x01;
            } else {
                sub(balance, tradeCtx, (short)2);
                recType = 0x02;
            }
            addTransRecord(recType, tradeCtx, (short)2, tradeCtx, (short)6);
            JCSystem.commitTransaction();
        } catch (Exception e) {
            JCSystem.abortTransaction();
            ISOException.throwIt(ISO7816.SW_CONDITIONS_NOT_SATISFIED);
        }
        tradeInit[0] = false;
        byte[] buf = apdu.getBuffer();
        Util.arrayCopy(FIXED_MAC2, (short)0, buf, (short)0, MAC_LEN);
        apdu.setOutgoingAndSend((short)0, MAC_LEN);
    }

    private void debit54(APDU apdu) {
        if (!tradeInit[0]) ISOException.throwIt(ISO7816.SW_CONDITIONS_NOT_SATISFIED);
        apdu.setIncomingAndReceive();

        JCSystem.beginTransaction();
        try {
            sub(balance, tradeCtx, (short)2);
            byte[] atc = {0x00, 0x26};
            addTransRecord(0x02, tradeCtx, (short)2, atc, (short)0);
            JCSystem.commitTransaction();
        } catch (Exception e) {
            JCSystem.abortTransaction();
            ISOException.throwIt(ISO7816.SW_CONDITIONS_NOT_SATISFIED);
        }
        tradeInit[0] = false;
        byte[] buf = apdu.getBuffer();
        short off = 0;
        Util.arrayCopy(FIXED_MAC2, (short)0, buf, off, MAC_LEN); off += MAC_LEN;
        buf[off++] = 0x00; buf[off++] = 0x00;
        buf[off++] = 0x00; buf[off++] = 0x01;
        apdu.setOutgoingAndSend((short)0, off);
    }

    private void privateCA(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        buf[0] = (byte)0xCA; buf[1] = 0x01; buf[2] = (byte)0xF3; buf[3] = 0x38;
        apdu.setOutgoingAndSend((short)0, (short)4);
    }

    private void addTransRecord(byte type, byte[] amount, short amtOff, byte[] atc, short atcOff) {
        short base = (short)(nextTransIdx * 32);
        Util.arrayFillNonAtomic(transLog, base, (short)32, (byte)0x00);
        transLog[base] = type;
        Util.arrayCopy(amount, amtOff, transLog, (short)(base+1), (short)4);
        Util.arrayCopy(atc, atcOff, transLog, (short)(base+5), (short)2);
        transLog[(short)(base+7)] = 0x01;
        transLog[(short)(base+8)] = 0x26; transLog[(short)(base+9)] = 0x05;
        transLog[(short)(base+10)] = 0x10; transLog[(short)(base+11)] = 0x15;
        transLog[(short)(base+12)] = 0x30; transLog[(short)(base+13)] = 0x00;
        nextTransIdx = (byte)((nextTransIdx + 1) % 10);
        if (transCount < 10) transCount++;
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
        Util.arrayFillNonAtomic(tradeCtx, (short)0, (short)12, (byte)0x00);
        currentDir = FILE_MF;
        currentFile = 0;
    }
}
