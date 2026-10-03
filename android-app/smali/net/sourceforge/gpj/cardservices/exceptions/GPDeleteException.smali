.class public Lnet/sourceforge/gpj/cardservices/exceptions/GPDeleteException;
.super Lnet/sourceforge/gpj/cardservices/exceptions/GPException;
.source "GPDeleteException.java"


# static fields
.field public static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 76
    invoke-direct {p0, p1}, Lnet/sourceforge/gpj/cardservices/exceptions/GPException;-><init>(Ljava/lang/Throwable;)V

    .line 77
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;)V
    .locals 0
    .param p1, "sw"    # S
    .param p2, "message"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/gpj/cardservices/exceptions/GPException;-><init>(SLjava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "sw"    # S
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lnet/sourceforge/gpj/cardservices/exceptions/GPException;-><init>(SLjava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method
