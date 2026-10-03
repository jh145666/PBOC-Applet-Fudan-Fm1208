.class public Lnet/sourceforge/gpj/cardservices/exceptions/GPSecurityDomainSelectionException;
.super Lnet/sourceforge/gpj/cardservices/exceptions/GPException;
.source "GPSecurityDomainSelectionException.java"


# static fields
.field public static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 81
    invoke-direct {p0, p1}, Lnet/sourceforge/gpj/cardservices/exceptions/GPException;-><init>(Ljava/lang/Throwable;)V

    .line 82
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;)V
    .locals 0
    .param p1, "sw"    # S
    .param p2, "message"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/gpj/cardservices/exceptions/GPException;-><init>(SLjava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "sw"    # S
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lnet/sourceforge/gpj/cardservices/exceptions/GPException;-><init>(SLjava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method
