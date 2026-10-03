.class public Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;
.super Ljavax/smartcardio/Card;
.source "OpenMobileAPICard.java"


# static fields
.field private static final AID_CM:[B


# instance fields
.field private mSession:Lorg/simalliance/openmobileapi/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;->AID_CM:[B

    return-void

    :array_0
    .array-data 1
        -0x60t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lorg/simalliance/openmobileapi/Session;)V
    .locals 1
    .param p1, "_session"    # Lorg/simalliance/openmobileapi/Session;

    .line 29
    invoke-direct {p0}, Ljavax/smartcardio/Card;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;->mSession:Lorg/simalliance/openmobileapi/Session;

    .line 30
    iput-object p1, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;->mSession:Lorg/simalliance/openmobileapi/Session;

    .line 31
    return-void
.end method


# virtual methods
.method public beginExclusive()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 85
    return-void
.end method

.method protected closeChannels()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;->mSession:Lorg/simalliance/openmobileapi/Session;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Session;->closeChannels()V

    .line 79
    return-void
.end method

.method public disconnect(Z)V
    .locals 1
    .param p1, "reset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;->closeChannels()V

    .line 102
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;->mSession:Lorg/simalliance/openmobileapi/Session;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Session;->close()V

    .line 103
    return-void
.end method

.method public endExclusive()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 91
    return-void
.end method

.method public getATR()Ljavax/smartcardio/ATR;
    .locals 2

    .line 35
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;->mSession:Lorg/simalliance/openmobileapi/Session;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Session;->getATR()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Ljavax/smartcardio/ATR;

    iget-object v1, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;->mSession:Lorg/simalliance/openmobileapi/Session;

    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/Session;->getATR()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/smartcardio/ATR;-><init>([B)V

    return-object v0

    .line 38
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBasicChannel()Ljavax/smartcardio/CardChannel;
    .locals 3

    .line 49
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICardChannel;

    iget-object v2, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;->mSession:Lorg/simalliance/openmobileapi/Session;

    .line 50
    invoke-virtual {v2, v0}, Lorg/simalliance/openmobileapi/Session;->openBasicChannel([B)Lorg/simalliance/openmobileapi/Channel;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICardChannel;-><init>(Lorg/simalliance/openmobileapi/Channel;Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return-object v1

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 54
    .end local v1    # "e":Ljava/io/IOException;
    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 43
    const-string v0, "T=1"

    return-object v0
.end method

.method public openLogicalChannel()Ljavax/smartcardio/CardChannel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 60
    :try_start_0
    new-instance v0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICardChannel;

    sget-object v1, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;->AID_CM:[B

    invoke-virtual {p0, v1}, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;->openLogicalChannel([B)Lorg/simalliance/openmobileapi/Channel;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICardChannel;-><init>(Lorg/simalliance/openmobileapi/Channel;Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 64
    .end local v0    # "e":Ljava/io/IOException;
    const/4 v0, 0x0

    return-object v0
.end method

.method protected openLogicalChannel([B)Lorg/simalliance/openmobileapi/Channel;
    .locals 1
    .param p1, "aid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;->mSession:Lorg/simalliance/openmobileapi/Session;

    invoke-virtual {v0, p1}, Lorg/simalliance/openmobileapi/Session;->openLogicalChannel([B)Lorg/simalliance/openmobileapi/Channel;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/util/NoSuchElementException;
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->printStackTrace()V

    .line 73
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public transmitControlCommand(I[B)[B
    .locals 2
    .param p1, "controlCode"    # I
    .param p2, "command"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 96
    new-instance v0, Ljavax/smartcardio/CardException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
