.class public Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcardChannel;
.super Ljavax/smartcardio/CardChannel;
.source "NfcSmartcardChannel.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NFC Channel"


# instance fields
.field private mCard:Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcard;


# direct methods
.method public constructor <init>(Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcard;)V
    .locals 1
    .param p1, "c"    # Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcard;

    .line 19
    invoke-direct {p0}, Ljavax/smartcardio/CardChannel;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcardChannel;->mCard:Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcard;

    .line 20
    iput-object p1, p0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcardChannel;->mCard:Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcard;

    .line 21
    return-void
.end method

.method private describeAPDU([B)Ljava/lang/String;
    .locals 7
    .param p1, "apdu"    # [B

    .line 63
    if-eqz p1, :cond_3

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_1

    .line 66
    :cond_0
    const/4 v0, 0x0

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    .line 67
    .local v2, "cla":I
    const/4 v3, 0x1

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    .line 70
    .local v4, "ins":I
    const/16 v5, 0x80

    if-eq v2, v5, :cond_2

    const/16 v5, 0x84

    if-ne v2, v5, :cond_1

    goto :goto_0

    .line 89
    :cond_1
    sparse-switch v4, :sswitch_data_0

    .line 96
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v0

    aput-object v6, v1, v3

    const-string v0, "ISO\u6307\u4ee4 INS=0x%02X CLA=0x%02X"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 95
    :sswitch_0
    const-string v0, "PUT DATA(\u5199\u6570\u636e-odd INS)"

    return-object v0

    .line 94
    :sswitch_1
    const-string v0, "PUT DATA(\u5199\u6570\u636e)"

    return-object v0

    .line 92
    :sswitch_2
    const-string v0, "UPDATE BINARY(\u66f4\u65b0\u4e8c\u8fdb\u5236)"

    return-object v0

    .line 93
    :sswitch_3
    const-string v0, "READ RECORD(\u8bfb\u8bb0\u5f55)"

    return-object v0

    .line 91
    :sswitch_4
    const-string v0, "READ BINARY(\u8bfb\u4e8c\u8fdb\u5236)"

    return-object v0

    .line 90
    :sswitch_5
    const-string v0, "SELECT(\u9009\u62e9)"

    return-object v0

    .line 71
    :cond_2
    :goto_0
    sparse-switch v4, :sswitch_data_1

    .line 84
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v0

    aput-object v6, v1, v3

    const-string v0, "GP\u6307\u4ee4 INS=0x%02X CLA=0x%02X"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 75
    :sswitch_6
    const-string v0, "GET STATUS(\u83b7\u53d6\u72b6\u6001)"

    return-object v0

    .line 81
    :sswitch_7
    const-string v0, "SET STATUS(\u8bbe\u7f6e\u72b6\u6001)"

    return-object v0

    .line 73
    :sswitch_8
    const-string v0, "LOAD(\u52a0\u8f7d)"

    return-object v0

    .line 72
    :sswitch_9
    const-string v0, "INSTALL(\u5b89\u88c5)"

    return-object v0

    .line 74
    :sswitch_a
    const-string v0, "DELETE(\u5220\u9664)"

    return-object v0

    .line 77
    :sswitch_b
    const-string v0, "GET DATA(\u83b7\u53d6\u6570\u636e-odd INS)"

    return-object v0

    .line 76
    :sswitch_c
    const-string v0, "GET DATA(\u83b7\u53d6\u6570\u636e)"

    return-object v0

    .line 79
    :sswitch_d
    const-string v0, "GET CHALLENGE(\u83b7\u53d6\u968f\u673a\u6570)"

    return-object v0

    .line 78
    :sswitch_e
    const-string v0, "EXTERNAL AUTHENTICATE(\u5916\u90e8\u8ba4\u8bc1)"

    return-object v0

    .line 80
    :sswitch_f
    const-string v0, "INITIALIZE UPDATE(\u521d\u59cb\u5316\u66f4\u65b0)"

    return-object v0

    .line 83
    :sswitch_10
    const-string v0, "DEACTIVATE(\u53bb\u6fc0\u6d3b)"

    return-object v0

    .line 82
    :sswitch_11
    const-string v0, "ACTIVATE(\u6fc0\u6d3b)"

    return-object v0

    .line 64
    .end local v2    # "cla":I
    .end local v4    # "ins":I
    :cond_3
    :goto_1
    const-string v0, "UNKNOWN"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0xa4 -> :sswitch_5
        0xb0 -> :sswitch_4
        0xb2 -> :sswitch_3
        0xd6 -> :sswitch_2
        0xda -> :sswitch_1
        0xdb -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x44 -> :sswitch_11
        0x46 -> :sswitch_10
        0x50 -> :sswitch_f
        0x82 -> :sswitch_e
        0x84 -> :sswitch_d
        0xca -> :sswitch_c
        0xcb -> :sswitch_b
        0xe4 -> :sswitch_a
        0xe6 -> :sswitch_9
        0xe8 -> :sswitch_8
        0xf0 -> :sswitch_7
        0xf2 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 110
    return-void
.end method

.method public getCard()Ljavax/smartcardio/Card;
    .locals 1

    .line 25
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcardChannel;->mCard:Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcard;

    return-object v0
.end method

.method public getChannelNumber()I
    .locals 1

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public supportsExtendedLengthApdus()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcardChannel;->mCard:Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcard;

    invoke-virtual {v0}, Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcard;->supportsExtendedLengthApdus()Z

    move-result v0

    return v0
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

    .line 103
    const-string v0, "NFC Channel"

    const-string v1, "Transmitting command (ByteBuffer)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Ljavax/smartcardio/CardException;

    const-string v1, "Not supported yet"

    invoke-direct {v0, v1}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;
    .locals 11
    .param p1, "command"    # Ljavax/smartcardio/CommandAPDU;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 36
    const-string v0, " "

    invoke-virtual {p1}, Ljavax/smartcardio/CommandAPDU;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lat/fhooe/usmile/gpjshell/APDULogManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "cmdHex":Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/smartcardio/CommandAPDU;->getBytes()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcardChannel;->describeAPDU([B)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "desc":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APDU CMD: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NFC Channel"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :try_start_0
    iget-object v3, p0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcardChannel;->mCard:Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcard;

    invoke-virtual {v3, p1}, Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcard;->transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;

    move-result-object v3

    .line 44
    .local v3, "resp":Ljavax/smartcardio/ResponseAPDU;
    invoke-virtual {v3}, Ljavax/smartcardio/ResponseAPDU;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lat/fhooe/usmile/gpjshell/APDULogManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    .line 45
    .local v5, "respHex":Ljava/lang/String;
    invoke-virtual {v3}, Ljavax/smartcardio/ResponseAPDU;->getSW()I

    move-result v6

    .line 46
    .local v6, "sw":I
    const-string v7, "SW=%04X"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 47
    .local v7, "swStr":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "APDU RSP: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {}, Lat/fhooe/usmile/gpjshell/APDULogManager;->getInstance()Lat/fhooe/usmile/gpjshell/APDULogManager;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0, v2}, Lat/fhooe/usmile/gpjshell/APDULogManager;->logAPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    return-object v3

    .line 53
    .end local v3    # "resp":Ljavax/smartcardio/ResponseAPDU;
    .end local v5    # "respHex":Ljava/lang/String;
    .end local v6    # "sw":I
    .end local v7    # "swStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lat/fhooe/usmile/gpjshell/APDULogManager;->getInstance()Lat/fhooe/usmile/gpjshell/APDULogManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO_ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4, v2}, Lat/fhooe/usmile/gpjshell/APDULogManager;->logAPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v3, Ljavax/smartcardio/CardException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error transmitting APDU: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
