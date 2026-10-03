package javacard.security;

/** 模拟环境：KeyBuilder */
public class KeyBuilder {
    public static final short TYPE_DES = 3;
    public static final short LENGTH_DES = 64;
    public static final short LENGTH_DES3_2KEY = 128;

    public static Key buildKey(short keyType, short keyLength, boolean keyEncryption) {
        if (keyType != TYPE_DES) throw new RuntimeException("unsupported");
        return DESKey.__make(keyLength == LENGTH_DES ? 8 : 16);
    }
}
