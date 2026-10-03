package javacard.framework;

/** 模拟环境：ISOException 携带真实状态字 */
public class ISOException extends RuntimeException {
    private final short reason;

    public ISOException(short reason) {
        super("SW=" + Integer.toHexString(reason & 0xFFFF));
        this.reason = reason;
    }

    public short getReason() {
        return reason;
    }

    public static void throwIt(short s) {
        throw new ISOException(s);
    }
}
