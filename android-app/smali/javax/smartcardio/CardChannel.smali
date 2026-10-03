.class public abstract Ljavax/smartcardio/CardChannel;
.super Ljava/lang/Object;
.source "CardChannel.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation
.end method

.method public abstract getCard()Ljavax/smartcardio/Card;
.end method

.method public abstract getChannelNumber()I
.end method

.method public abstract transmit(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation
.end method

.method public abstract transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation
.end method
