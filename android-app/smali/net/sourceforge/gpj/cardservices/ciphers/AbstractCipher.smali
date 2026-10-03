.class public abstract Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;
.super Ljava/lang/Object;
.source "AbstractCipher.java"

# interfaces
.implements Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;


# instance fields
.field protected alg:I

.field protected iv:[B

.field protected key:[B


# direct methods
.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->key:[B

    .line 37
    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->iv:[B

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->alg:I

    .line 39
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "alg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p0, p1}, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->setAlgorithm(I)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->key:[B

    .line 44
    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->iv:[B

    .line 45
    return-void
.end method

.method constructor <init>(I[B)V
    .locals 1
    .param p1, "alg"    # I
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p0, p1}, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->setAlgorithm(I)V

    .line 49
    invoke-virtual {p0, p2}, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->setKey([B)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->iv:[B

    .line 51
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

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->setAlgorithm(I)V

    .line 55
    invoke-virtual {p0, p2}, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->setKey([B)V

    .line 56
    invoke-virtual {p0, p3}, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->setIV([B)V

    .line 57
    return-void
.end method


# virtual methods
.method public encrypt([B)[B
    .locals 2
    .param p1, "enc"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->encrypt([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt([BII)[B
    .locals 2
    .param p1, "enc"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;
        }
    .end annotation

    .line 81
    iget v0, p0, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->alg:I

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->key:[B

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0, p1, p2, p3}, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->encryptImpl([BII)[B

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    new-instance v0, Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;

    const-string v1, "Key not initialized"

    invoke-direct {v0, v1}, Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    new-instance v0, Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;

    const-string v1, "Cipher not initialized"

    invoke-direct {v0, v1}, Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract encryptImpl([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;
        }
    .end annotation
.end method

.method protected initCipher()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->initCipherImpl()V

    .line 61
    return-void
.end method

.method protected abstract initCipherImpl()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;
        }
    .end annotation
.end method

.method protected initParameters()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;
        }
    .end annotation

    .line 66
    iget v0, p0, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->alg:I

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->key:[B

    array-length v0, v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->key:[B

    array-length v0, v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;

    const-string v1, "Wrong key length"

    invoke-direct {v0, v1}, Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->initParametersImpl()V

    .line 73
    return-void

    .line 67
    :cond_2
    new-instance v0, Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;

    const-string v1, "Cipher not initialized"

    invoke-direct {v0, v1}, Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract initParametersImpl()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;
        }
    .end annotation
.end method

.method public setAlgorithm(I)V
    .locals 0
    .param p1, "alg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;
        }
    .end annotation

    .line 96
    iput p1, p0, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->alg:I

    .line 97
    invoke-virtual {p0}, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->initCipher()V

    .line 98
    return-void
.end method

.method public setIV([B)V
    .locals 3
    .param p1, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;
        }
    .end annotation

    .line 101
    if-eqz p1, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_1

    .line 104
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->iv:[B

    .line 105
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->iv:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget v0, p0, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->alg:I

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->initParameters()V

    .line 109
    :cond_0
    return-void

    .line 102
    :cond_1
    new-instance v0, Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;

    const-string v1, "Invalid IV length"

    invoke-direct {v0, v1}, Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setKey([B)V
    .locals 3
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;
        }
    .end annotation

    .line 112
    if-eqz p1, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_1

    .line 115
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->key:[B

    .line 116
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->key:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iget v0, p0, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->alg:I

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lnet/sourceforge/gpj/cardservices/ciphers/AbstractCipher;->initParameters()V

    .line 120
    :cond_0
    return-void

    .line 113
    :cond_1
    new-instance v0, Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;

    const-string v1, "Invalid key length"

    invoke-direct {v0, v1}, Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
