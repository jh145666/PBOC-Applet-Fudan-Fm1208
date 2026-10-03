package javacard.framework;

/** 模拟环境：JCSystem（事务为空操作，行为兼容） */
public class JCSystem {
    public static final byte NOT_A_TRANSIENT_OBJECT = 0;
    public static final byte CLEAR_ON_RESET = 1;
    public static final byte CLEAR_ON_DESELECT = 2;

    public static void beginTransaction() {
    }

    public static void commitTransaction() {
    }

    public static void abortTransaction() {
    }

    public static byte[] makeTransientByteArray(short len, byte event) {
        return new byte[len & 0xFFFF];
    }
}
