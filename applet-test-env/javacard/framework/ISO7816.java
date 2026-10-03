package javacard.framework;

/** 模拟环境：ISO7816 常量（与真卡 API 一致） */
public interface ISO7816 {
    short OFFSET_CLA = 0;
    short OFFSET_INS = 1;
    short OFFSET_P1 = 2;
    short OFFSET_P2 = 3;
    short OFFSET_LC = 4;
    short OFFSET_CDATA = 5;

    short SW_NO_ERROR = (short) 0x9000;
    short SW_INS_NOT_SUPPORTED = (short) 0x6D00;
    short SW_CLA_NOT_SUPPORTED = (short) 0x6E00;
    short SW_SECURITY_STATUS_NOT_SATISFIED = (short) 0x6982;
    short SW_CONDITIONS_NOT_SATISFIED = (short) 0x6985;
    short SW_WRONG_DATA = (short) 0x6A80;
    short SW_FILE_NOT_FOUND = (short) 0x6A82;
    short SW_RECORD_NOT_FOUND = (short) 0x6A83;
    short SW_WRONG_P1P2 = (short) 0x6A86;
    short SW_WRONG_LENGTH = (short) 0x6700;
    short SW_UNKNOWN = (short) 0x6F00;
}
