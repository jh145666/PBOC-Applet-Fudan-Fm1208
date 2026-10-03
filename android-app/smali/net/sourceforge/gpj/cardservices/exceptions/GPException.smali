.class public Lnet/sourceforge/gpj/cardservices/exceptions/GPException;
.super Ljavax/smartcardio/CardException;
.source "GPException.java"


# static fields
.field public static final serialVersionUID:J = 0x1L


# instance fields
.field public final sw:S


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 84
    invoke-direct {p0, p1}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/Throwable;)V

    .line 85
    const/4 v0, 0x0

    iput-short v0, p0, Lnet/sourceforge/gpj/cardservices/exceptions/GPException;->sw:S

    .line 86
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;)V
    .locals 0
    .param p1, "sw"    # S
    .param p2, "message"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p2}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;)V

    .line 56
    iput-short p1, p0, Lnet/sourceforge/gpj/cardservices/exceptions/GPException;->sw:S

    .line 57
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "sw"    # S
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 71
    invoke-direct {p0, p2, p3}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    iput-short p1, p0, Lnet/sourceforge/gpj/cardservices/exceptions/GPException;->sw:S

    .line 73
    return-void
.end method
