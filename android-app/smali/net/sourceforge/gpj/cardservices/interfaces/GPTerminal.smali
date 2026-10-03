.class public abstract Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;
.super Ljavax/smartcardio/CardTerminal;
.source "GPTerminal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljavax/smartcardio/CardTerminal;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getReader()I
.end method

.method public abstract isConnected()Z
.end method

.method public abstract setReader(I)V
.end method

.method public abstract shutdown()V
.end method
