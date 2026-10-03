.class public abstract Ljavax/smartcardio/Card;
.super Ljava/lang/Object;
.source "Card.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public abstract beginExclusive()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation
.end method

.method public abstract disconnect(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation
.end method

.method public abstract endExclusive()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation
.end method

.method public abstract getATR()Ljavax/smartcardio/ATR;
.end method

.method public abstract getBasicChannel()Ljavax/smartcardio/CardChannel;
.end method

.method public abstract getProtocol()Ljava/lang/String;
.end method

.method public abstract openLogicalChannel()Ljavax/smartcardio/CardChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation
.end method

.method public abstract transmitControlCommand(I[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation
.end method
