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

public class FmcosWalletApplet extends Applet {

    private static final short SW_PIN_BLOCKED = (short) 0x6983;
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

    private static final byte TYPE_BIN = 0;
    private static final byte TYPE_REC = 1;
    private static final byte TYPE_CYC = 2;
    private static final byte TYPE_DF = 3;

    private static final short TX_REC_COUNT = 10;
    private static final short TX_REC_LEN = 23;

    private int epBalance = 3000;
    private int edBalance = 3000;
    private short onlineATC = 1;
    private short offlineATC = 1;
    private byte pinTriesLeft = 3;

    private byte walletMode = 1;
    private byte recordsOn = 1;
    private byte authOn = 0;
    private byte atcMode = 0;
    private short atcVal = 0;

    private boolean pinVerified = false;
    private boolean transInit = false;
    private byte transIsLoad = 0;
    private byte transP2 = 0;
    private int transAmount = 0;
    private final byte[] transRand = new byte[4];
    private final byte[] transTermId = new byte[6];
    private final byte[] transSess = new byte[8];
    private final byte[] lastChallenge = new byte[8];

    private byte[] mk = {(byte) 0x1E, 0x02, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36};
    private byte[] extKey = {};
    private byte[] intKey = {};
    private byte[] pin = {'1', '2', '3', '4', '5', '5'};

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

    private short currentDir = FILE_MF;
    private short currentEF = 0;

    private final byte[] mfRec1 = new byte[16];
    private final byte[] mfBin5 = new byte[16];
    private final byte[] dfRec1 = new byte[48];
    private final byte[] dfRec2 = new byte[32];
    private final byte[] dfBin15 = new byte[16];
    private final byte[] dfBin16 = new byte[16];
    private final byte[] txRec = new byte[TX_REC_COUNT * TX_REC_LEN];
    private short txCount = 0;
    private short txHead = -1;

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

    private final byte[] lastResp = new byte[256];
    private short lastRespLen = 0;

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

    private void initDefaultFiles() {

        byte[] dir = {
            0x61, 0x0B, 0x4F, 0x09,
            (byte) 0xA0, 0x00, 0x00, 0x00, 0x03, (byte) 0x86, (byte) 0x98, 0x07, 0x01,
            0x00, 0x00, 0x00
        };
        Util.arrayCopyNonAtomic(dir, (short) 0, mfRec1, (short) 0, (short) 16);

        byte[] ser = {'F', 'M', 'C', 'O', 'S', '-', 'S', 'I', 'M', 0x00, 0x01, 0x00,
                0x00, 0x00, 0x00, 0x00};
        Util.arrayCopyNonAtomic(ser, (short) 0, mfBin5, (short) 0, (short) 16);

        Util.arrayCopyNonAtomic(WALLET_AID, (short) 0, dfRec1, (short) 0, (short) 9);
        dfRec1[9] = 0x10;
        dfRec1[10] = 0x20; dfRec1[11] = 0x20;
        dfRec1[12] = 0x01; dfRec1[13] = 0x01;
        dfRec1[14] = '1'; dfRec1[15] = '2'; dfRec1[16] = '3'; dfRec1[17] = '4';
        dfRec1[18] = '5'; dfRec1[19] = '6'; dfRec1[20] = '7'; dfRec1[21] = '8';
        dfRec1[22] = 0x00; dfRec1[23] = 0x00; dfRec1[24] = 0x00; dfRec1[25] = 0x01;

        dfBin15[0] = 0x01; dfBin15[1] = 0x02; dfBin15[2] = 0x08; dfBin15[3] = 0x00;
        dfBin15[4] = 'P'; dfBin15[5] = 'U'; dfBin15[6] = 'B'; dfBin15[7] = 'K';
        dfBin15[8] = 'E'; dfBin15[9] = 'Y'; dfBin15[10] = 0x00; dfBin15[11] = 0x01;

        dfBin16[0] = 0x01; dfBin16[1] = 0x01; dfBin16[2] = 0x08;
        dfBin16[3] = 'S'; dfBin16[4] = 'E'; dfBin16[5] = 'C'; dfBin16[6] = 'R'; dfBin16[7] = 'E';
        dfBin16[8] = 'T'; dfBin16[9] = 0x00; dfBin16[10] = 0x00; dfBin16[11] = 0x00;

        syncAppParams();
    }

    private void syncAppParams() {
        Util.arrayFillNonAtomic(dfRec2, (short) 0, (short) 32, (byte) 0);
        dfRec2[0] = walletMode;
        dfRec2[1] = recordsOn;
        dfRec2[2] = authOn;
        dfRec2[3] = pinTriesLeft;
        dfRec2[4] = atcMode;
        dfRec2[5] = (byte) (atcVal >> 8);
        dfRec2[6] = (byte) atcVal;
        dfRec2[7] = (byte) (mk.length == 16 ? 0x02 : 0x01);
        dfRec2[8] = (byte) (offlineATC >> 8);
        dfRec2[9] = (byte) offlineATC;
        dfRec2[10] = (byte) (onlineATC >> 8);
        dfRec2[11] = (byte) onlineATC;
    }

    public void process(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        if (selectingApplet()) {

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

    private void sendFci(APDU apdu, byte[] fci, byte p2) {
        if ((p2 & 0x0C) == 0x0C) {
            return;
        }
        byte[] buf = apdu.getBuffer();
        Util.arrayCopyNonAtomic(fci, (short) 0, buf, (short) 0, (short) fci.length);
        apdu.setOutgoingAndSend((short) 0, (short) fci.length);
    }

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

    private short[] loc = new short[6];

    private short locateEf(short dir, short fid, short sfi) {

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
            ISOException.throwIt(SW_NOT_BINARY);
        }
        short size = loc[3];
        if (off >= size && !(size == 0 && off == 0)) {
            ISOException.throwIt(SW_OFFSET_ERROR);
        }
        short remain = (short) (size - off);
        short len = (le == 0) ? remain : ((le <= remain) ? le : remain);
        if (len < 0) {
            len = 0;
        }
        readEfData(buf, (short) 0, off, len);
        apdu.setOutgoingAndSend((short) 0, len);
    }

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

    private void readRecord(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        short p1 = (short) (buf[ISO7816.OFFSET_P1] & 0xFF);
        short p2 = (short) (buf[ISO7816.OFFSET_P2] & 0xFF);
        short le = (short) (buf[ISO7816.OFFSET_LC] & 0xFF);
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
        if (loc[2] == TYPE_BIN || loc[2] == TYPE_DF) {
            ISOException.throwIt(SW_NOT_BINARY);
        }
        short recLen = loc[4];
        short fileOff = recordOffset(p1);
        if (fileOff < 0) {
            ISOException.throwIt(SW_RECORD_NOT_FOUND);
        }
        if (le != 0 && le < recLen) {
            ISOException.throwIt((short) (0x6C00 | (recLen & 0xFF)));
        }
        readEfData(buf, (short) 0, fileOff, recLen);
        apdu.setOutgoingAndSend((short) 0, recLen);
    }

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
            ISOException.throwIt(SW_NOT_BINARY);
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

        }
    }

    private void appendRecord(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        short p2 = (short) (buf[ISO7816.OFFSET_P2] & 0xFF);
        short lc = (short) (buf[ISO7816.OFFSET_LC] & 0xFF);
        if (lc > 0) {
            apdu.setIncomingAndReceive();
        }
        if ((p2 & 0x07) != 0x00) {
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

                writeEfData((short) 0, buf, ISO7816.OFFSET_CDATA, loc[4]);
            }
        }
        JCSystem.commitTransaction();
    }

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

    private void deleteFile(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        short lc = (short) (buf[ISO7816.OFFSET_LC] & 0xFF);
        apdu.setIncomingAndReceive();
        if (lc != 2) {
            ISOException.throwIt(SW_WRONG_LENGTH);
        }
        short fid = Util.getShort(buf, ISO7816.OFFSET_CDATA);
        short idx = dynFindAny(fid);
        if (idx < 0) {
            ISOException.throwIt(ISO7816.SW_CONDITIONS_NOT_SATISFIED);
        }
        if (dynType[idx] == TYPE_DF) {
            for (short i = 0; i < DYN_MAX; i++) {
                if (dynValid[i] != 0 && dynParent[i] == fid) {
                    ISOException.throwIt(ISO7816.SW_CONDITIONS_NOT_SATISFIED);
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

    private void getChallenge(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        rng.generateData(lastChallenge, (short) 0, (short) 8);
        Util.arrayCopyNonAtomic(lastChallenge, (short) 0, buf, (short) 0, (short) 8);
        apdu.setOutgoingAndSend((short) 0, (short) 8);
    }

    private void externalAuth(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        short lc = (short) (buf[ISO7816.OFFSET_LC] & 0xFF);
        if (lc > 0) {
            apdu.setIncomingAndReceive();
        }
        if (authOn == 0 || extKey.length == 0 || lc != 8) {
            return;
        }
        byte[] calc = desBlock(extKey, lastChallenge);
        if (lc == 8 && Util.arrayCompare(calc, (short) 0, buf, ISO7816.OFFSET_CDATA, (short) 8) == 0) {
            return;
        }
        ISOException.throwIt(SW_MAC_INVALID);
    }

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
            ISOException.throwIt(SW_WRONG_P1P2);
        }
        if (ed && authOn != 0 && !pinVerified) {
            ISOException.throwIt(ISO7816.SW_SECURITY_STATUS_NOT_SATISFIED);
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
            return atcVal;
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
            resp[6] = 0x01;
            resp[7] = 0x01;
            Util.arrayCopyNonAtomic(transRand, (short) 0, resp, (short) 8, (short) 4);

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
            resp[6] = 0;
            resp[7] = 0;
            resp[8] = 0;
            resp[9] = 0x01;
            resp[10] = 0x01;
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

        byte[] div = new byte[8];
        Util.arrayCopyNonAtomic(transRand, (short) 0, div, (short) 0, (short) 4);
        short atc = useATC(false);
        div[4] = (byte) (atc >> 8);
        div[5] = (byte) atc;
        div[6] = buf[ISO7816.OFFSET_CDATA + 2];
        div[7] = buf[ISO7816.OFFSET_CDATA + 3];
        deriveSession(mk, div, transSess);

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

        byte[] amountB = new byte[4];
        putInt(amountB, (short) 0, transAmount);
        byte[] mac2 = mac(transSess, amountB, (short) 0, (short) 4);

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

    private static int hexVal(byte c) {
        if (c >= '0' && c <= '9') return c - '0';
        if (c >= 'A' && c <= 'F') return c - 'A' + 10;
        if (c >= 'a' && c <= 'f') return c - 'a' + 10;
        return -1;
    }

    private void getConfig(APDU apdu) {
        byte[] buf = apdu.getBuffer();
        short o = 0;
        o = putTlv(buf, o, (byte) 0x01, mk);
        o = putTlv(buf, o, (byte) 0x02, extKey);
        o = putTlv(buf, o, (byte) 0x03, intKey);
        o = putTlv(buf, o, (byte) 0x04, pin);
        buf[o++] = 0x05; buf[o++] = 0x01; buf[o++] = authOn;
        buf[o++] = 0x06; buf[o++] = 0x01; buf[o++] = atcMode;
        buf[o++] = 0x07; buf[o++] = 0x02;
        buf[o++] = (byte) (atcVal >> 8); buf[o++] = (byte) atcVal;
        buf[o++] = 0x08; buf[o++] = 0x01; buf[o++] = walletMode;
        buf[o++] = 0x09; buf[o++] = 0x01; buf[o++] = recordsOn;
        buf[o++] = 0x0C; buf[o++] = 0x01; buf[o++] = pinTriesLeft;
        o = putTlv(buf, o, (byte) 0x0A, selFci);
        o = putTlv(buf, o, (byte) 0x0B, mfFci);
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
                case 0x01:
                    if (len == 8 || len == 16) {
                        byte[] k = new byte[len];
                        Util.arrayCopyNonAtomic(buf, val, k, (short) 0, len);
                        mk = k;
                    }
                    break;
                case 0x02:
                    if (len == 8 || len == 16) {
                        byte[] k = new byte[len];
                        Util.arrayCopyNonAtomic(buf, val, k, (short) 0, len);
                        extKey = k;
                    } else if (len == 0) {
                        extKey = new byte[0];
                    }
                    break;
                case 0x03:
                    if (len == 8 || len == 16) {
                        byte[] k = new byte[len];
                        Util.arrayCopyNonAtomic(buf, val, k, (short) 0, len);
                        intKey = k;
                    } else if (len == 0) {
                        intKey = new byte[0];
                    }
                    break;
                case 0x04:
                    if (len >= 4 && len <= 12) {
                        byte[] p = new byte[len];
                        Util.arrayCopyNonAtomic(buf, val, p, (short) 0, len);
                        pin = p;
                        pinTriesLeft = 3;
                    }
                    break;
                case 0x05:
                    if (len == 1) authOn = buf[val];
                    break;
                case 0x06:
                    if (len == 1) atcMode = buf[val];
                    break;
                case 0x07:
                    if (len == 2) {
                        atcVal = (short) (((buf[val] & 0xFF) << 8) | (buf[val + 1] & 0xFF));
                    }
                    break;
                case 0x08:
                    if (len == 1) walletMode = buf[val];
                    break;
                case 0x09:
                    if (len == 1) recordsOn = buf[val];
                    break;
                case 0x0A:
                    if (len >= 4 && len <= 64 && (buf[val] & 0xFF) == 0x6F) {
                        byte[] f = new byte[len];
                        Util.arrayCopyNonAtomic(buf, val, f, (short) 0, len);
                        selFci = f;
                    }
                    break;
                case 0x0B:
                    if (len >= 4 && len <= 64 && (buf[val] & 0xFF) == 0x6F) {
                        byte[] f = new byte[len];
                        Util.arrayCopyNonAtomic(buf, val, f, (short) 0, len);
                        mfFci = f;
                    }
                    break;
                default:
                    break;
            }
            i = (short) (val + len);
        }
        syncAppParams();
    }

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

    private void deriveSession(byte[] mk, byte[] div8, byte[] out8) {
        byte[] r = desBlock(mk, div8);
        Util.arrayCopyNonAtomic(r, (short) 0, out8, (short) 0, (short) 8);
    }

    private byte[] mac(byte[] key, byte[] data, short off, short len) {
        short n = (short) (((len / 8) + 1) * 8);
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
