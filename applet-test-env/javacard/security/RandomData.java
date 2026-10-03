package javacard.security;

/** 模拟环境：随机数（SecureRandom） */
public class RandomData {
    public static final byte ALG_SECURE_RANDOM = 1;
    public static final byte ALG_PSEUDO_RANDOM = 2;

    private static final java.security.SecureRandom RND = new java.security.SecureRandom();

    public static RandomData getInstance(byte algorithm) {
        return new RandomData();
    }

    public void generateData(byte[] buf, short off, short len) {
        byte[] t = new byte[len & 0xFFFF];
        RND.nextBytes(t);
        System.arraycopy(t, 0, buf, off, len & 0xFFFF);
    }

    public void setSeed(byte[] seed, short off, short len) {
    }
}
