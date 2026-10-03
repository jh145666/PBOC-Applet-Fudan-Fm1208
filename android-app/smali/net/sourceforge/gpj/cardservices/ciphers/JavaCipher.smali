.class public Lnet/sourceforge/gpj/cardservices/ciphers/JavaCipher;
.super Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;
.source "JavaCipher.java"

# interfaces
.implements Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;


# instance fields
.field private cipher:Ljavax/crypto/Cipher;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;-><init>()V

    .line 45
    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "alg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;-><init>(I)V

    .line 49
    return-void
.end method

.method constructor <init>(I[B)V
    .locals 0
    .param p1, "alg"    # I
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;-><init>(I[B)V

    .line 53
    return-void
.end method

.method constructor <init>(I[B[B)V
    .locals 0
    .param p1, "alg"    # I
    .param p2, "key"    # [B
    .param p3, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;-><init>(I[B[B)V

    .line 57
    return-void
.end method


# virtual methods
.method public encryptImpl([BII)[B
    .locals 3
    .param p1, "enc"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;
        }
    .end annotation

    .line 62
    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/ciphers/JavaCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;

    const-string v2, "Encryption error"

    invoke-direct {v1, v2}, Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public initCipherImpl()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;
        }
    .end annotation

    .line 70
    :try_start_0
    iget v0, p0, Lnet/sourceforge/gpj/cardservices/ciphers/JavaCipher;->alg:I

    packed-switch v0, :pswitch_data_0

    .line 84
    new-instance v0, Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;

    goto :goto_1

    .line 81
    :pswitch_0
    const-string v0, "DES/ECB/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/ciphers/JavaCipher;->cipher:Ljavax/crypto/Cipher;

    .line 82
    goto :goto_0

    .line 78
    :pswitch_1
    const-string v0, "DES/CBC/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/ciphers/JavaCipher;->cipher:Ljavax/crypto/Cipher;

    .line 79
    goto :goto_0

    .line 75
    :pswitch_2
    const-string v0, "DESede/ECB/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/ciphers/JavaCipher;->cipher:Ljavax/crypto/Cipher;

    .line 76
    goto :goto_0

    .line 72
    :pswitch_3
    const-string v0, "DESede/CBC/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/ciphers/JavaCipher;->cipher:Ljavax/crypto/Cipher;

    .line 73
    nop

    .line 88
    :goto_0
    nop

    .line 89
    return-void

    .line 84
    :goto_1
    const-string v1, "Algorithm not implemented yet"

    invoke-direct {v0, v1}, Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;

    const-string v2, "Crypto engine Initialization Error"

    invoke-direct {v1, v2}, Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected initParametersImpl()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;
        }
    .end annotation

    .line 94
    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/ciphers/JavaCipher;->key:[B

    array-length v0, v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    const-string v0, "DESede"

    goto :goto_0

    :cond_0
    const-string v0, "DES"

    .line 95
    .local v0, "keytype":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lnet/sourceforge/gpj/cardservices/ciphers/JavaCipher;->iv:[B

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lnet/sourceforge/gpj/cardservices/ciphers/JavaCipher;->cipher:Ljavax/crypto/Cipher;

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lnet/sourceforge/gpj/cardservices/ciphers/JavaCipher;->key:[B

    invoke-direct {v3, v4, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v5, p0, Lnet/sourceforge/gpj/cardservices/ciphers/JavaCipher;->iv:[B

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_1

    .line 100
    :cond_1
    iget-object v1, p0, Lnet/sourceforge/gpj/cardservices/ciphers/JavaCipher;->cipher:Ljavax/crypto/Cipher;

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lnet/sourceforge/gpj/cardservices/ciphers/JavaCipher;->key:[B

    invoke-direct {v3, v4, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v0    # "keytype":Ljava/lang/String;
    :goto_1
    nop

    .line 105
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;

    const-string v2, "Parameters initialization error"

    invoke-direct {v1, v2}, Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
