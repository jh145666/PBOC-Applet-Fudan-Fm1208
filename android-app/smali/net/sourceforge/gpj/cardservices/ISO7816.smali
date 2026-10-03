.class public interface abstract Lnet/sourceforge/gpj/cardservices/ISO7816;
.super Ljava/lang/Object;
.source "ISO7816.java"


# static fields
.field public static final CLA_ISO7816:B = 0x0t

.field public static final INS_APPEND_RECORD:B = -0x1et

.field public static final INS_ASK_RANDOM:B = -0x7ct

.field public static final INS_CHANGE_CHV:B = 0x24t

.field public static final INS_CLOSE_APPLICATION:B = -0x54t

.field public static final INS_CREATE_FILE:B = -0x20t

.field public static final INS_DECREASE:B = 0x30t

.field public static final INS_DECREASE_STAMPED:B = 0x34t

.field public static final INS_DELETE_FILE:B = -0x1ct

.field public static final INS_ENVELOPE:B = -0x3et

.field public static final INS_ERASE_BINARY:B = 0xet

.field public static final INS_EXTERNAL_AUTHENTICATE:B = -0x7et

.field public static final INS_GET_CHALLENGE:B = -0x7ct

.field public static final INS_GET_DATA:B = -0x36t

.field public static final INS_GET_RESPONSE:B = -0x40t

.field public static final INS_GIVE_RANDOM:B = -0x7at

.field public static final INS_INCREASE:B = 0x32t

.field public static final INS_INTERNAL_AUTHENTICATE:B = -0x78t

.field public static final INS_LOAD_KEY_FILE:B = -0x28t

.field public static final INS_MANAGE_CHANNEL:B = 0x70t

.field public static final INS_MUTUAL_AUTHENTICATE:B = -0x7et

.field public static final INS_PUT_DATA:B = -0x26t

.field public static final INS_READ_BINARY:B = -0x50t

.field public static final INS_READ_BINARY2:B = -0x4ft

.field public static final INS_READ_BINARY_STAMPED:B = -0x4ct

.field public static final INS_READ_RECORD:B = -0x4et

.field public static final INS_READ_RECORD2:B = -0x4dt

.field public static final INS_READ_RECORDS:B = -0x4et

.field public static final INS_READ_RECORD_STAMPED:B = -0x4at

.field public static final INS_REHABILITATE_CHV:B = 0x44t

.field public static final INS_SEEK:B = -0x5et

.field public static final INS_SELECT:B = -0x5ct

.field public static final INS_SELECT_FILE:B = -0x5ct

.field public static final INS_UNBLOCK_CHV:B = 0x2ct

.field public static final INS_UPDATE_BINARY:B = -0x2at

.field public static final INS_UPDATE_RECORD:B = -0x24t

.field public static final INS_VERIFY:B = 0x20t

.field public static final INS_WRITE_BINARY:B = -0x30t

.field public static final INS_WRITE_RECORD:B = -0x2et

.field public static final INVALIDATE_CHV:B = 0x4t

.field public static final OFFSET_CDATA:B = 0x5t

.field public static final OFFSET_CLA:B = 0x0t

.field public static final OFFSET_INS:B = 0x1t

.field public static final OFFSET_LC:B = 0x4t

.field public static final OFFSET_P1:B = 0x2t

.field public static final OFFSET_P2:B = 0x3t

.field public static final SW_APPLET_SELECT_FAILED:S = 0x6999s

.field public static final SW_BYTES_REMAINING_00:S = 0x6100s

.field public static final SW_CARD_TERMINATED:S = 0x6fffs

.field public static final SW_CLA_NOT_SUPPORTED:S = 0x6e00s

.field public static final SW_COMMAND_NOT_ALLOWED:S = 0x6986s

.field public static final SW_CONDITIONS_NOT_SATISFIED:S = 0x6985s

.field public static final SW_CORRECT_LENGTH_00:S = 0x6c00s

.field public static final SW_DATA_INVALID:S = 0x6984s

.field public static final SW_END_OF_FILE:S = 0x6282s

.field public static final SW_EXPECTED_SM_DATA_OBJECTS_MISSING:S = 0x6987s

.field public static final SW_FILEHEADER_INCONSISTENT:S = 0x6a80s

.field public static final SW_FILE_FULL:S = 0x6a84s

.field public static final SW_FILE_INVALID:S = 0x6983s

.field public static final SW_FILE_NOT_FOUND:S = 0x6a82s

.field public static final SW_FUNC_NOT_SUPPORTED:S = 0x6a81s

.field public static final SW_INCORRECT_P1P2:S = 0x6a86s

.field public static final SW_INS_NOT_SUPPORTED:S = 0x6d00s

.field public static final SW_KEY_NOT_FOUND:S = 0x6a88s

.field public static final SW_KEY_USAGE_ERROR:S = 0x69c1s

.field public static final SW_LESS_DATA_RESPONDED_THAN_REQUESTED:S = 0x6287s

.field public static final SW_NO_ERROR:S = -0x7000s

.field public static final SW_OUT_OF_MEMORY:S = 0x6a84s

.field public static final SW_RECORD_NOT_FOUND:S = 0x6a83s

.field public static final SW_SECURITY_STATUS_NOT_SATISFIED:S = 0x6982s

.field public static final SW_SM_DATA_OBJECTS_INCORRECT:S = 0x6988s

.field public static final SW_UNKNOWN:S = 0x6f00s

.field public static final SW_WRONG_DATA:S = 0x6a80s

.field public static final SW_WRONG_LENGTH:S = 0x6700s

.field public static final SW_WRONG_P1P2:S = 0x6b00s
