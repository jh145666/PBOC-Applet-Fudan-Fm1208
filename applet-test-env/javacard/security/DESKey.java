package javacard.security;

/** 模拟环境：DES 密钥 */
public class DESKey implements Key {
    private byte[] k;
    private boolean init;

    public void setKey(byte[] keyData, short kOff) {
        System.arraycopy(keyData, kOff, k, 0, k.length);
        init = true;
    }

    public short getKey(byte[] keyBuf, short kOff) {
        System.arraycopy(k, 0, keyBuf, kOff, k.length);
        return (short) k.length;
    }

    public void clearKey() {
        java.util.Arrays.fill(k, (byte) 0);
        init = false;
    }

    public boolean isInitialized() {
        return init;
    }

    public byte[] __data() {
        return k;
    }

    static DESKey __make(int len) {
        DESKey d = new DESKey();
        d.k = new byte[len];
        return d;
    }
}
