package javacard.framework;

/** 模拟环境：Util 数组操作（真实语义） */
public class Util {
    public static short arrayCopyNonAtomic(byte[] src, short srcOff, byte[] dst, short dstOff, short len) {
        System.arraycopy(src, srcOff, dst, dstOff, len);
        return (short) (dstOff + len);
    }

    public static short arrayCopy(byte[] src, short srcOff, byte[] dst, short dstOff, short len) {
        System.arraycopy(src, srcOff, dst, dstOff, len);
        return (short) (dstOff + len);
    }

    /** 真卡 API 语义：返回差值，完全相等返回 0（源码可直接在真卡 SDK 编译） */
    public static short arrayCompare(byte[] a, short aOff, byte[] b, short bOff, short len) {
        for (short i = 0; i < len; i++) {
            if (a[aOff + i] != b[bOff + i]) {
                return (short) ((a[aOff + i] & 0xFF) - (b[bOff + i] & 0xFF));
            }
        }
        return 0;
    }

    public static void arrayFillNonAtomic(byte[] a, short off, short len, byte v) {
        for (short i = 0; i < len; i++) a[off + i] = v;
    }

    public static short getShort(byte[] a, short off) {
        return (short) (((a[off] & 0xFF) << 8) | (a[off + 1] & 0xFF));
    }

    public static void setShort(byte[] a, short off, short v) {
        a[off] = (byte) (v >> 8);
        a[off + 1] = (byte) v;
    }
}
