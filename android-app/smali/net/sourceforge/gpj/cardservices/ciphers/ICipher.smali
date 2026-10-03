.class public interface abstract Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;
.super Ljava/lang/Object;
.source "ICipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/gpj/cardservices/ciphers/ICipher$Factory;
    }
.end annotation


# static fields
.field public static final DESEDE_CBC_NOPADDING:I = 0x1

.field public static final DESEDE_ECB_NOPADDING:I = 0x2

.field public static final DES_CBC_NOPADDING:I = 0x3

.field public static final DES_ECB_NOPADDING:I = 0x4


# virtual methods
.method public abstract encrypt([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;
        }
    .end annotation
.end method

.method public abstract encrypt([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;
        }
    .end annotation
.end method

.method public abstract setAlgorithm(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;
        }
    .end annotation
.end method

.method public abstract setIV([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;
        }
    .end annotation
.end method

.method public abstract setKey([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;
        }
    .end annotation
.end method
