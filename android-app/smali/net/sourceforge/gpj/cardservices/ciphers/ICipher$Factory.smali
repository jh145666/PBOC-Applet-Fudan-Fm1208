.class public Lnet/sourceforge/gpj/cardservices/ciphers/ICipher$Factory;
.super Ljava/lang/Object;
.source "ICipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImplementation()Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;
    .locals 1

    .line 56
    new-instance v0, Lnet/sourceforge/gpj/cardservices/ciphers/JavaCipher;

    invoke-direct {v0}, Lnet/sourceforge/gpj/cardservices/ciphers/JavaCipher;-><init>()V

    return-object v0
.end method

.method public static getImplementation(I)Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;
    .locals 1
    .param p0, "alg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;
        }
    .end annotation

    .line 60
    new-instance v0, Lnet/sourceforge/gpj/cardservices/ciphers/JavaCipher;

    invoke-direct {v0, p0}, Lnet/sourceforge/gpj/cardservices/ciphers/JavaCipher;-><init>(I)V

    return-object v0
.end method

.method public static getImplementation(I[B)Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;
    .locals 1
    .param p0, "alg"    # I
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;
        }
    .end annotation

    .line 65
    new-instance v0, Lnet/sourceforge/gpj/cardservices/ciphers/JavaCipher;

    invoke-direct {v0, p0, p1}, Lnet/sourceforge/gpj/cardservices/ciphers/JavaCipher;-><init>(I[B)V

    return-object v0
.end method

.method public static getImplementation(I[B[B)Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;
    .locals 1
    .param p0, "alg"    # I
    .param p1, "key"    # [B
    .param p2, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;
        }
    .end annotation

    .line 70
    new-instance v0, Lnet/sourceforge/gpj/cardservices/ciphers/JavaCipher;

    invoke-direct {v0, p0, p1, p2}, Lnet/sourceforge/gpj/cardservices/ciphers/JavaCipher;-><init>(I[B[B)V

    return-object v0
.end method
