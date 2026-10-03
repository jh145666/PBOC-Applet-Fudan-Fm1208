.class public Ljavax/smartcardio/CardNotPresentException;
.super Ljavax/smartcardio/CardException;
.source "CardNotPresentException.java"


# static fields
.field private static final serialVersionUID:J = 0x12b11424c460cc3fL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 66
    invoke-direct {p0, p1, p2}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 56
    invoke-direct {p0, p1}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method
