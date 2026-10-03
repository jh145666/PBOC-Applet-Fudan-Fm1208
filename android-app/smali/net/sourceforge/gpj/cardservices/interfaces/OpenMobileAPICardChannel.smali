.class public Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICardChannel;
.super Ljavax/smartcardio/CardChannel;
.source "OpenMobileAPICardChannel.java"


# instance fields
.field private mOpenMobileChannel:Lorg/simalliance/openmobileapi/Channel;

.field private mParentCard:Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;


# direct methods
.method public constructor <init>(Lorg/simalliance/openmobileapi/Channel;Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;)V
    .locals 1
    .param p1, "_openBasicChannel"    # Lorg/simalliance/openmobileapi/Channel;
    .param p2, "_openMobileAPICard"    # Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;

    .line 34
    invoke-direct {p0}, Ljavax/smartcardio/CardChannel;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICardChannel;->mParentCard:Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;

    .line 31
    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICardChannel;->mOpenMobileChannel:Lorg/simalliance/openmobileapi/Channel;

    .line 35
    invoke-virtual {p0, p1}, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICardChannel;->setOpenMobileChannel(Lorg/simalliance/openmobileapi/Channel;)V

    .line 36
    invoke-virtual {p0, p2}, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICardChannel;->setParentCard(Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;)V

    .line 37
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICardChannel;->mOpenMobileChannel:Lorg/simalliance/openmobileapi/Channel;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Channel;->close()V

    .line 84
    return-void
.end method

.method public getCard()Ljavax/smartcardio/Card;
    .locals 1

    .line 41
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICardChannel;->mParentCard:Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;

    return-object v0
.end method

.method public getChannelNumber()I
    .locals 1

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getOpenMobileChannel()Lorg/simalliance/openmobileapi/Channel;
    .locals 1

    .line 95
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICardChannel;->mOpenMobileChannel:Lorg/simalliance/openmobileapi/Channel;

    return-object v0
.end method

.method public getParentCard()Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;
    .locals 1

    .line 87
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICardChannel;->mParentCard:Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;

    return-object v0
.end method

.method public setOpenMobileChannel(Lorg/simalliance/openmobileapi/Channel;)V
    .locals 0
    .param p1, "mOpenMobileChannel"    # Lorg/simalliance/openmobileapi/Channel;

    .line 99
    iput-object p1, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICardChannel;->mOpenMobileChannel:Lorg/simalliance/openmobileapi/Channel;

    .line 100
    return-void
.end method

.method public setParentCard(Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;)V
    .locals 0
    .param p1, "mParentCard"    # Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;

    .line 91
    iput-object p1, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICardChannel;->mParentCard:Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;

    .line 92
    return-void
.end method

.method public transmit(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "command"    # Ljava/nio/ByteBuffer;
    .param p2, "response"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 78
    new-instance v0, Ljavax/smartcardio/CardException;

    const-string v1, "Not supported yet"

    invoke-direct {v0, v1}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;
    .locals 5
    .param p1, "command"    # Ljavax/smartcardio/CommandAPDU;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    .line 53
    .local v0, "response":Ljavax/smartcardio/ResponseAPDU;
    const/4 v1, 0x0

    .line 55
    .local v1, "byteResponse":[B
    :try_start_0
    invoke-virtual {p1}, Ljavax/smartcardio/CommandAPDU;->getINS()I

    move-result v2

    const/16 v3, 0xa4

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Ljavax/smartcardio/CommandAPDU;->getP1()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 56
    iget-object v2, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICardChannel;->mParentCard:Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;

    invoke-virtual {v2}, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;->closeChannels()V

    .line 57
    const-string v2, "CardChannel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Select AID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljavax/smartcardio/CommandAPDU;->getData()[B

    move-result-object v4

    invoke-static {v4}, Lnet/sourceforge/gpj/cardservices/GPUtil;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v2, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICardChannel;->mParentCard:Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;

    invoke-virtual {p1}, Ljavax/smartcardio/CommandAPDU;->getData()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;->openLogicalChannel([B)Lorg/simalliance/openmobileapi/Channel;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICardChannel;->setOpenMobileChannel(Lorg/simalliance/openmobileapi/Channel;)V

    .line 60
    iget-object v2, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICardChannel;->mOpenMobileChannel:Lorg/simalliance/openmobileapi/Channel;

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICardChannel;->mOpenMobileChannel:Lorg/simalliance/openmobileapi/Channel;

    invoke-virtual {v2}, Lorg/simalliance/openmobileapi/Channel;->getSelectResponse()[B

    move-result-object v2

    .end local v1    # "byteResponse":[B
    .local v2, "byteResponse":[B
    goto :goto_0

    .line 63
    .end local v2    # "byteResponse":[B
    .restart local v1    # "byteResponse":[B
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    .end local v1    # "byteResponse":[B
    .restart local v2    # "byteResponse":[B
    goto :goto_0

    .line 66
    .end local v2    # "byteResponse":[B
    .restart local v1    # "byteResponse":[B
    :cond_1
    iget-object v2, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICardChannel;->mOpenMobileChannel:Lorg/simalliance/openmobileapi/Channel;

    invoke-virtual {p1}, Ljavax/smartcardio/CommandAPDU;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/simalliance/openmobileapi/Channel;->transmit([B)[B

    move-result-object v2

    .line 68
    .end local v1    # "byteResponse":[B
    .restart local v2    # "byteResponse":[B
    :goto_0
    new-instance v1, Ljavax/smartcardio/ResponseAPDU;

    invoke-direct {v1, v2}, Ljavax/smartcardio/ResponseAPDU;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v0    # "response":Ljavax/smartcardio/ResponseAPDU;
    .end local v2    # "byteResponse":[B
    .local v1, "response":Ljavax/smartcardio/ResponseAPDU;
    nop

    .line 72
    return-object v1

    .line 69
    .end local v1    # "response":Ljavax/smartcardio/ResponseAPDU;
    .restart local v0    # "response":Ljavax/smartcardio/ResponseAPDU;
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljavax/smartcardio/CardException;

    const-string v3, "Transmit failed"

    invoke-direct {v2, v3, v1}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    nop

    :array_0
    .array-data 1
        0x6at
        -0x7et
    .end array-data
.end method
