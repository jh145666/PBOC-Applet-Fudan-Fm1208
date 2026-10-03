package javacardx.crypto;

import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import javacard.security.Key;

/** 模拟环境：DES/3DES CBC NoPadding（零 IV，语义与真卡一致） */
public class Cipher {
    public static final byte ALG_DES_CBC_NOPAD = 2;

    public static final byte MODE_ENCRYPT = 1;
    public static final byte MODE_DECRYPT = 2;

    private boolean encrypt;
    private byte[] keyData;

    public static Cipher getInstance(byte algorithm, boolean externalAccess) {
        if (algorithm != ALG_DES_CBC_NOPAD) throw new RuntimeException("unsupported alg");
        return new Cipher();
    }

    public void init(Key key, byte mode) {
        javacard.security.DESKey dk = (javacard.security.DESKey) key;
        keyData = dk.__data();
        encrypt = (mode == MODE_ENCRYPT);
    }

    public short doFinal(byte[] in, short inOff, short inLen, byte[] out, short outOff) {
        int len = inLen & 0xFFFF;
        if (len == 0) return 0;
        if ((len % 8) != 0) throw new RuntimeException("CBC NOPAD need multiple of 8");
        try {
            String alg = (keyData.length == 8) ? "DES" : "DESede";
            byte[] k = keyData;
            if (k.length == 16) {
                k = new byte[24];
                System.arraycopy(keyData, 0, k, 0, 16);
                System.arraycopy(keyData, 0, k, 16, 8);
            }
            SecretKeySpec ks = new SecretKeySpec(k, alg);
            javax.crypto.Cipher c = javax.crypto.Cipher.getInstance(alg + "/CBC/NoPadding");
            c.init(encrypt ? javax.crypto.Cipher.ENCRYPT_MODE : javax.crypto.Cipher.DECRYPT_MODE,
                    ks, new IvParameterSpec(new byte[8]));
            byte[] r = c.doFinal(in, inOff, len);
            System.arraycopy(r, 0, out, outOff, r.length);
            return (short) r.length;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
