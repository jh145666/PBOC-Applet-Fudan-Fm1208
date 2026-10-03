package javacard.security;

/** 模拟环境：密钥接口 */
public interface Key {
    void clearKey();

    boolean isInitialized();
}
