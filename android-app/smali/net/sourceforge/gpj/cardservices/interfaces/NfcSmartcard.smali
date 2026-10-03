.class public Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcard;
.super Ljavax/smartcardio/Card;
.source "NfcSmartcard.java"


# instance fields
.field private mIsoDep:Landroid/nfc/tech/IsoDep;


# direct methods
.method public constructor <init>(Landroid/nfc/tech/IsoDep;)V
    .locals 1
    .param p1, "isoDep"    # Landroid/nfc/tech/IsoDep;

    .line 18
    invoke-direct {p0}, Ljavax/smartcardio/Card;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcard;->mIsoDep:Landroid/nfc/tech/IsoDep;

    .line 19
    iput-object p1, p0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcard;->mIsoDep:Landroid/nfc/tech/IsoDep;

    .line 20
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

    .line 47
    return-void
.end method

.method protected connect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcard;->mIsoDep:Landroid/nfc/tech/IsoDep;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcard;->mIsoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcard;->mIsoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    nop

    .line 83
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcard;->mIsoDep:Landroid/nfc/tech/IsoDep;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Landroid/nfc/tech/IsoDep;->setTimeout(I)V

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljavax/smartcardio/CardException;

    const-string v2, "Error connecting to tag"

    invoke-direct {v1, v2}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    new-instance v0, Ljavax/smartcardio/CardException;

    const-string v1, "No tag to connect to"

    invoke-direct {v0, v1}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disconnect(Z)V
    .locals 0
    .param p1, "reset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public endExclusive()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public getATR()Ljavax/smartcardio/ATR;
    .locals 1

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBasicChannel()Ljavax/smartcardio/CardChannel;
    .locals 1

    .line 36
    new-instance v0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcardChannel;

    invoke-direct {v0, p0}, Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcardChannel;-><init>(Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcard;)V

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public openLogicalChannel()Ljavax/smartcardio/CardChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 41
    new-instance v0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcardChannel;

    invoke-direct {v0, p0}, Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcardChannel;-><init>(Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcard;)V

    return-object v0
.end method

.method public supportsExtendedLengthApdus()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcard;->mIsoDep:Landroid/nfc/tech/IsoDep;

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    return v0

    .line 91
    :cond_0
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcard;->mIsoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->isExtendedLengthApduSupported()Z

    move-result v0

    return v0
.end method

.method public transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;
    .locals 3
    .param p1, "cmd"    # Ljavax/smartcardio/CommandAPDU;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcard;->connect()V

    .line 69
    new-instance v0, Ljavax/smartcardio/ResponseAPDU;

    iget-object v1, p0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcard;->mIsoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {p1}, Ljavax/smartcardio/CommandAPDU;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/smartcardio/ResponseAPDU;-><init>([B)V

    return-object v0
.end method

.method public transmitControlCommand(I[B)[B
    .locals 1
    .param p1, "controlCode"    # I
    .param p2, "command"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method
