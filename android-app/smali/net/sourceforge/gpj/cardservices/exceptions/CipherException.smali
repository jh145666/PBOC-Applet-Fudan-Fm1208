.class public Lnet/sourceforge/gpj/cardservices/exceptions/CipherException;
.super Ljava/lang/Exception;
.source "CipherException.java"


# static fields
.field private static final serialVersionUID:J = 0x1d4927579d5435d5L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method
