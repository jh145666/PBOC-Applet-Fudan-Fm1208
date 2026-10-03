.class public Lat/fhooe/usmile/gpjshell/GPConnection;
.super Ljava/lang/Object;
.source "GPConnection.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GPConnection"

.field private static _INSTANCE:Lat/fhooe/usmile/gpjshell/GPConnection;


# instance fields
.field private data:Lat/fhooe/usmile/gpjshell/objects/GPAppletData;

.field private mContext:Landroid/content/Context;

.field private mGPService:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;

.field private mTsLog:Lat/fhooe/usmile/gpjshell/TimerLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lat/fhooe/usmile/gpjshell/GPConnection;->_INSTANCE:Lat/fhooe/usmile/gpjshell/GPConnection;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "_con"    # Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->data:Lat/fhooe/usmile/gpjshell/objects/GPAppletData;

    .line 62
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->mTsLog:Lat/fhooe/usmile/gpjshell/TimerLog;

    .line 74
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->mContext:Landroid/content/Context;

    .line 75
    new-instance v1, Lat/fhooe/usmile/gpjshell/objects/GPAppletData;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2}, Lat/fhooe/usmile/gpjshell/objects/GPAppletData;-><init>(Ljava/util/List;I)V

    iput-object v1, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->data:Lat/fhooe/usmile/gpjshell/objects/GPAppletData;

    .line 76
    return-void
.end method

.method private deleteAID(Lnet/sourceforge/gpj/cardservices/AID;)V
    .locals 2
    .param p1, "deleteAID"    # Lnet/sourceforge/gpj/cardservices/AID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/GPDeleteException;,
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->mGPService:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->deleteAID(Lnet/sourceforge/gpj/cardservices/AID;Z)V

    .line 184
    return-void
.end method

.method private deleteAllApplets()Ljava/lang/String;
    .locals 13

    .line 105
    const-string v0, " - "

    const-string v1, "\u5220\u9664\u5931\u8d25: "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v2, "result":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 107
    .local v3, "deleted":I
    const/4 v4, 0x0

    .line 108
    .local v4, "skipped":I
    iget-object v5, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->data:Lat/fhooe/usmile/gpjshell/objects/GPAppletData;

    invoke-virtual {v5}, Lat/fhooe/usmile/gpjshell/objects/GPAppletData;->getRegistry()Ljava/util/List;

    move-result-object v5

    .line 110
    .local v5, "registry":Ljava/util/List;, "Ljava/util/List<Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 112
    .local v6, "toDelete":Ljava/util/List;, "Ljava/util/List<Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;

    .line 113
    .local v8, "entry":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    invoke-virtual {v8}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getKind()Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    move-result-object v9

    sget-object v10, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->IssuerSecurityDomain:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    const-string v11, "<br/>"

    if-eq v9, v10, :cond_1

    .line 114
    invoke-virtual {v8}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getKind()Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    move-result-object v9

    sget-object v10, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->SecurityDomain:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    if-ne v9, v10, :cond_0

    goto/16 :goto_3

    .line 120
    :cond_0
    :try_start_0
    iget-object v9, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->mGPService:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;

    invoke-virtual {v8}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getAID()Lnet/sourceforge/gpj/cardservices/AID;

    move-result-object v10

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v12}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->deleteAID(Lnet/sourceforge/gpj/cardservices/AID;Z)V

    .line 121
    invoke-interface {v5, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v3, v3, 0x1

    .line 123
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u5df2\u5220\u9664: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getAID()Lnet/sourceforge/gpj/cardservices/AID;

    move-result-object v10

    invoke-virtual {v10}, Lnet/sourceforge/gpj/cardservices/AID;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lnet/sourceforge/gpj/cardservices/exceptions/GPDeleteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/smartcardio/CardException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 126
    :catch_0
    move-exception v9

    .line 127
    .local v9, "e":Ljavax/smartcardio/CardException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getAID()Lnet/sourceforge/gpj/cardservices/AID;

    move-result-object v12

    invoke-virtual {v12}, Lnet/sourceforge/gpj/cardservices/AID;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljavax/smartcardio/CardException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 124
    .end local v9    # "e":Ljavax/smartcardio/CardException;
    :catch_1
    move-exception v9

    .line 125
    .local v9, "e":Lnet/sourceforge/gpj/cardservices/exceptions/GPDeleteException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getAID()Lnet/sourceforge/gpj/cardservices/AID;

    move-result-object v12

    invoke-virtual {v12}, Lnet/sourceforge/gpj/cardservices/AID;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Lnet/sourceforge/gpj/cardservices/exceptions/GPDeleteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .end local v9    # "e":Lnet/sourceforge/gpj/cardservices/exceptions/GPDeleteException;
    :goto_1
    nop

    .line 129
    .end local v8    # "entry":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    :goto_2
    goto/16 :goto_0

    .line 115
    .restart local v8    # "entry":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    :cond_1
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 116
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u5df2\u8df3\u8fc7(\u5b89\u5168\u57df): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getAID()Lnet/sourceforge/gpj/cardservices/AID;

    move-result-object v10

    invoke-virtual {v10}, Lnet/sourceforge/gpj/cardservices/AID;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    goto/16 :goto_0

    .line 130
    .end local v8    # "entry":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<br/>\u5171\u5220\u9664: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u4e2a, \u8df3\u8fc7: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u4e2a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private deleteSelectedApplet()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/GPDeleteException;,
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->data:Lat/fhooe/usmile/gpjshell/objects/GPAppletData;

    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/objects/GPAppletData;->getSelectedApplet()Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getKind()Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->IssuerSecurityDomain:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->data:Lat/fhooe/usmile/gpjshell/objects/GPAppletData;

    .line 92
    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/objects/GPAppletData;->getSelectedApplet()Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getKind()Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->SecurityDomain:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    if-eq v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->mGPService:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;

    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->data:Lat/fhooe/usmile/gpjshell/objects/GPAppletData;

    invoke-virtual {v1}, Lat/fhooe/usmile/gpjshell/objects/GPAppletData;->getSelectedApplet()Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getAID()Lnet/sourceforge/gpj/cardservices/AID;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->deleteAID(Lnet/sourceforge/gpj/cardservices/AID;Z)V

    .line 97
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->data:Lat/fhooe/usmile/gpjshell/objects/GPAppletData;

    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/objects/GPAppletData;->removeSelectedAppletFromList()V

    .line 98
    return-void

    .line 93
    :cond_0
    new-instance v0, Ljavax/smartcardio/CardException;

    const-string v1, "Deleting Security domain currently not supported"

    invoke-direct {v0, v1}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getData(II)Ljavax/smartcardio/ResponseAPDU;
    .locals 3
    .param p1, "p1"    # I
    .param p2, "p2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 223
    new-instance v0, Ljavax/smartcardio/CommandAPDU;

    const/16 v1, -0x80

    const/16 v2, -0x36

    invoke-direct {v0, v1, v2, p1, p2}, Ljavax/smartcardio/CommandAPDU;-><init>(IIII)V

    .line 227
    .local v0, "getData":Ljavax/smartcardio/CommandAPDU;
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->mGPService:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;

    invoke-virtual {v1, v0}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lat/fhooe/usmile/gpjshell/GPConnection;
    .locals 2
    .param p0, "_con"    # Landroid/content/Context;

    .line 65
    const-class v0, Lat/fhooe/usmile/gpjshell/GPConnection;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lat/fhooe/usmile/gpjshell/GPConnection;->_INSTANCE:Lat/fhooe/usmile/gpjshell/GPConnection;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lat/fhooe/usmile/gpjshell/GPConnection;

    invoke-direct {v1, p0}, Lat/fhooe/usmile/gpjshell/GPConnection;-><init>(Landroid/content/Context;)V

    sput-object v1, Lat/fhooe/usmile/gpjshell/GPConnection;->_INSTANCE:Lat/fhooe/usmile/gpjshell/GPConnection;

    .line 69
    :cond_0
    sget-object v1, Lat/fhooe/usmile/gpjshell/GPConnection;->_INSTANCE:Lat/fhooe/usmile/gpjshell/GPConnection;

    monitor-exit v0

    return-object v1

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initializeKeys(Ljavax/smartcardio/CardChannel;Lat/fhooe/usmile/gpjshell/objects/GPKeyset;)V
    .locals 5
    .param p1, "channel"    # Ljavax/smartcardio/CardChannel;
    .param p2, "keyset"    # Lat/fhooe/usmile/gpjshell/objects/GPKeyset;

    .line 192
    new-instance v0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;

    invoke-direct {v0, p1}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;-><init>(Ljavax/smartcardio/CardChannel;)V

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->mGPService:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;

    .line 193
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->mGPService:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;

    invoke-virtual {p2}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->getID()I

    move-result v1

    invoke-virtual {p2}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->getENCByte()[B

    move-result-object v2

    .line 194
    invoke-virtual {p2}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->getMACByte()[B

    move-result-object v3

    invoke-virtual {p2}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->getKEKByte()[B

    move-result-object v4

    .line 193
    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->setKeys(I[B[B[B)V

    .line 195
    return-void
.end method

.method private installApplet(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "_url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;,
            Lnet/sourceforge/gpj/cardservices/exceptions/GPInstallForLoadException;,
            Lnet/sourceforge/gpj/cardservices/exceptions/GPLoadException;,
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 358
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lat/fhooe/usmile/gpjshell/GPConnection;->installApplet(Ljava/lang/String;[BB)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private installApplet(Ljava/lang/String;[BB)Ljava/lang/String;
    .locals 3
    .param p1, "_url"    # Ljava/lang/String;
    .param p2, "params"    # [B
    .param p3, "privileges"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;,
            Lnet/sourceforge/gpj/cardservices/exceptions/GPInstallForLoadException;,
            Lnet/sourceforge/gpj/cardservices/exceptions/GPLoadException;,
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 365
    if-nez p1, :cond_0

    .line 366
    const-string v0, "no Applet selected"

    return-object v0

    .line 368
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".cap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 369
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid path or not a cap file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading Applet from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<br/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "ret":Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3}, Lat/fhooe/usmile/gpjshell/GPConnection;->installCapFile(Ljava/lang/String;[BB)V

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Installation successful"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private installCapFile(Ljava/lang/String;[BB)V
    .locals 16
    .param p1, "_appletUrl"    # Ljava/lang/String;
    .param p2, "params"    # [B
    .param p3, "privileges"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;,
            Lnet/sourceforge/gpj/cardservices/exceptions/GPInstallForLoadException;,
            Lnet/sourceforge/gpj/cardservices/exceptions/GPLoadException;,
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 249
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "GPConnection"

    const/4 v4, 0x0

    .line 251
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    const-string v0, "content://"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "file://"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3

    .line 258
    .end local v4    # "is":Ljava/io/InputStream;
    .local v0, "is":Ljava/io/InputStream;
    move-object v5, v0

    goto :goto_1

    .line 256
    .end local v0    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/net/MalformedURLException;
    :try_start_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    .end local v4    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    goto :goto_1

    .line 252
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_0
    iget-object v0, v1, Lat/fhooe/usmile/gpjshell/GPConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v5, v0

    .line 262
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :goto_1
    nop

    .line 264
    if-eqz v5, :cond_7

    .line 268
    new-instance v0, Lnet/sourceforge/gpj/cardservices/CapFile;

    const/4 v4, 0x0

    invoke-direct {v0, v5, v4}, Lnet/sourceforge/gpj/cardservices/CapFile;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v7, v0

    .line 269
    .local v7, "cpFile":Lnet/sourceforge/gpj/cardservices/CapFile;
    invoke-virtual {v7}, Lnet/sourceforge/gpj/cardservices/CapFile;->getPackageAID()Lnet/sourceforge/gpj/cardservices/AID;

    move-result-object v4

    .line 270
    .local v4, "p":Lnet/sourceforge/gpj/cardservices/AID;
    if-eqz v4, :cond_6

    .line 275
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to delete existing package "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lnet/sourceforge/gpj/cardservices/AID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {v7}, Lnet/sourceforge/gpj/cardservices/CapFile;->getAppletAIDs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/gpj/cardservices/AID;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v8, v0

    .line 278
    .local v8, "a":Lnet/sourceforge/gpj/cardservices/AID;
    :try_start_4
    iget-object v0, v1, Lat/fhooe/usmile/gpjshell/GPConnection;->mGPService:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->deleteAID(Lnet/sourceforge/gpj/cardservices/AID;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 279
    :catch_1
    move-exception v0

    :goto_3
    nop

    .line 280
    .end local v8    # "a":Lnet/sourceforge/gpj/cardservices/AID;
    goto :goto_2

    .line 281
    :cond_2
    :try_start_5
    iget-object v0, v1, Lat/fhooe/usmile/gpjshell/GPConnection;->mGPService:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v6}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->deleteAID(Lnet/sourceforge/gpj/cardservices/AID;Z)V

    .line 282
    const-string v0, "Successfully deleted existing package"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 285
    goto :goto_4

    .line 283
    :catch_2
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package deletion failed (probably not installed): "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    iget-object v6, v1, Lat/fhooe/usmile/gpjshell/GPConnection;->mGPService:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xef

    invoke-virtual/range {v6 .. v12}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->loadCapFile(Lnet/sourceforge/gpj/cardservices/CapFile;ZZIZZ)V

    .line 289
    sget-object v0, Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;->CAP_LOAD_FINISHED:Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

    invoke-direct {v1, v0}, Lat/fhooe/usmile/gpjshell/GPConnection;->logTimestamp(Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;)V

    .line 291
    invoke-virtual {v7}, Lnet/sourceforge/gpj/cardservices/CapFile;->getPackageAID()Lnet/sourceforge/gpj/cardservices/AID;

    move-result-object v9

    .line 292
    .end local v4    # "p":Lnet/sourceforge/gpj/cardservices/AID;
    .local v9, "p":Lnet/sourceforge/gpj/cardservices/AID;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installing Applet with package AID "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Lnet/sourceforge/gpj/cardservices/AID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-static {v2}, Lat/fhooe/usmile/gpjshell/CapInstallScript;->getFromCapFile(Ljava/lang/String;)Lat/fhooe/usmile/gpjshell/CapInstallScript;

    move-result-object v0

    .line 296
    .local v0, "inst":Lat/fhooe/usmile/gpjshell/CapInstallScript;
    const-string v4, "Finished installing applet. AID: "

    if-nez v0, :cond_4

    .line 297
    const-string v6, "Warning: no install script for CAP file found"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {v7}, Lnet/sourceforge/gpj/cardservices/CapFile;->getAppletAIDs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lnet/sourceforge/gpj/cardservices/AID;

    .line 299
    .local v10, "a":Lnet/sourceforge/gpj/cardservices/AID;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "params"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {p2 .. p2}, Lat/fhooe/usmile/gpjshell/GPUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v8, v1, Lat/fhooe/usmile/gpjshell/GPConnection;->mGPService:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object/from16 v13, p2

    move/from16 v12, p3

    invoke-virtual/range {v8 .. v14}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->installAndMakeSelecatable(Lnet/sourceforge/gpj/cardservices/AID;Lnet/sourceforge/gpj/cardservices/AID;Lnet/sourceforge/gpj/cardservices/AID;B[B[B)V

    .line 302
    sget-object v8, Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;->APPLET_INSTALL_FINISHED:Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

    invoke-direct {v1, v8}, Lat/fhooe/usmile/gpjshell/GPConnection;->logTimestamp(Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;)V

    .line 303
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 304
    invoke-virtual {v10}, Lnet/sourceforge/gpj/cardservices/AID;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 303
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .end local v10    # "a":Lnet/sourceforge/gpj/cardservices/AID;
    goto :goto_5

    :cond_3
    goto :goto_7

    .line 307
    :cond_4
    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/CapInstallScript;->getDescriptors()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    check-cast v15, Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;

    .line 308
    .local v15, "d":Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;
    invoke-virtual {v15}, Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v8, v1, Lat/fhooe/usmile/gpjshell/GPConnection;->mGPService:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;

    invoke-virtual {v15}, Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;->getAppletAid()Lnet/sourceforge/gpj/cardservices/AID;

    move-result-object v10

    invoke-virtual {v15}, Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;->getInstAid()Lnet/sourceforge/gpj/cardservices/AID;

    move-result-object v11

    .line 310
    invoke-virtual {v15}, Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;->getPrivileges()B

    move-result v12

    invoke-virtual {v15}, Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;->getParams()[B

    move-result-object v13

    .line 309
    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->installAndMakeSelecatable(Lnet/sourceforge/gpj/cardservices/AID;Lnet/sourceforge/gpj/cardservices/AID;Lnet/sourceforge/gpj/cardservices/AID;B[B[B)V

    .line 311
    sget-object v8, Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;->APPLET_INSTALL_FINISHED:Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

    invoke-direct {v1, v8}, Lat/fhooe/usmile/gpjshell/GPConnection;->logTimestamp(Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;)V

    .line 312
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 313
    invoke-virtual {v15}, Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;->getAppletAid()Lnet/sourceforge/gpj/cardservices/AID;

    move-result-object v10

    invoke-virtual {v10}, Lnet/sourceforge/gpj/cardservices/AID;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " to "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v15}, Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;->getInstAid()Lnet/sourceforge/gpj/cardservices/AID;

    move-result-object v10

    invoke-virtual {v10}, Lnet/sourceforge/gpj/cardservices/AID;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 312
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .end local v15    # "d":Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;
    goto :goto_6

    .line 316
    :cond_5
    :goto_7
    return-void

    .line 271
    .end local v0    # "inst":Lat/fhooe/usmile/gpjshell/CapInstallScript;
    .end local v9    # "p":Lnet/sourceforge/gpj/cardservices/AID;
    .restart local v4    # "p":Lnet/sourceforge/gpj/cardservices/AID;
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Failed to read package AID from CAP file. Invalid CAP?"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    .end local v4    # "p":Lnet/sourceforge/gpj/cardservices/AID;
    .end local v7    # "cpFile":Lnet/sourceforge/gpj/cardservices/CapFile;
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Failed to open file: InputStream is null"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    .end local v5    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    :catch_3
    move-exception v0

    .line 261
    .local v0, "se":Ljava/lang/SecurityException;
    new-instance v3, Ljava/io/IOException;

    const-string v5, "SecurityException: Permission denied to read file"

    invoke-direct {v3, v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :goto_8
    throw v3

    :goto_9
    goto :goto_8
.end method

.method private listApplets(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "_reader"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 385
    invoke-virtual {p0}, Lat/fhooe/usmile/gpjshell/GPConnection;->loadAppletsfromCard()Lat/fhooe/usmile/gpjshell/objects/GPAppletData;

    move-result-object v0

    .line 387
    .local v0, "mApplets":Lat/fhooe/usmile/gpjshell/objects/GPAppletData;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read all applets from reader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". <br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 389
    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/objects/GPAppletData;->getRegistry()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Applets."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 387
    return-object v1
.end method

.method private logTimestamp(Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;)V
    .locals 1
    .param p1, "event"    # Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

    .line 319
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->mTsLog:Lat/fhooe/usmile/gpjshell/TimerLog;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->mTsLog:Lat/fhooe/usmile/gpjshell/TimerLog;

    invoke-virtual {v0, p1}, Lat/fhooe/usmile/gpjshell/TimerLog;->log(Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;)V

    .line 322
    :cond_0
    return-void
.end method

.method private open()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/GPSecurityDomainSelectionException;,
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->mGPService:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;

    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->mGPService:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;

    invoke-virtual {v0, v1}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->addAPDUListener(Lnet/sourceforge/gpj/cardservices/APDUListener;)V

    .line 200
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->mGPService:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;

    invoke-virtual {v0}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->open()V

    .line 201
    return-void
.end method

.method private openSecureChannel(IIIIIZ)V
    .locals 7
    .param p1, "uniqueIndex"    # I
    .param p2, "keyId"    # I
    .param p3, "keyVersion"    # I
    .param p4, "scpVersion"    # I
    .param p5, "securityLevel"    # I
    .param p6, "gemalto"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->mGPService:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "uniqueIndex":I
    .end local p2    # "keyId":I
    .end local p3    # "keyVersion":I
    .end local p4    # "scpVersion":I
    .end local p5    # "securityLevel":I
    .end local p6    # "gemalto":Z
    .local v1, "uniqueIndex":I
    .local v2, "keyId":I
    .local v3, "keyVersion":I
    .local v4, "scpVersion":I
    .local v5, "securityLevel":I
    .local v6, "gemalto":Z
    invoke-virtual/range {v0 .. v6}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->openSecureChannel(IIIIIZ)V

    .line 219
    return-void
.end method

.method private setDefaultApplet()Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 141
    const-string v1, "<br/>"

    const-string v2, "GPConnection"

    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->data:Lat/fhooe/usmile/gpjshell/objects/GPAppletData;

    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/objects/GPAppletData;->getSelectedApplet()Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;

    move-result-object v3

    .line 142
    .local v3, "selected":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    if-nez v3, :cond_0

    .line 143
    const-string v0, "\u672a\u9009\u62e9Applet"

    return-object v0

    .line 145
    :cond_0
    invoke-virtual {v3}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getKind()Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    move-result-object v0

    sget-object v4, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->IssuerSecurityDomain:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    if-eq v0, v4, :cond_4

    .line 146
    invoke-virtual {v3}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getKind()Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    move-result-object v0

    sget-object v4, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->SecurityDomain:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    if-ne v0, v4, :cond_1

    goto/16 :goto_2

    .line 151
    :cond_1
    invoke-virtual {v3}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getPrivileges()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    int-to-byte v8, v0

    .line 154
    .local v8, "newPrivileges":B
    invoke-virtual {v3}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getExecutableAIDs()Ljava/util/List;

    move-result-object v11

    .line 155
    .local v11, "executableAIDs":Ljava/util/List;, "Ljava/util/List<Lnet/sourceforge/gpj/cardservices/AID;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    const-string v0, "\u672a\u627e\u5230\u6b64Applet\u7684\u53ef\u6267\u884cAID"

    return-object v0

    .line 159
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v0

    .line 160
    .local v12, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getAID()Lnet/sourceforge/gpj/cardservices/AID;

    move-result-object v5

    .line 162
    .local v5, "packageAID":Lnet/sourceforge/gpj/cardservices/AID;
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lnet/sourceforge/gpj/cardservices/AID;

    .line 165
    .local v6, "appletAID":Lnet/sourceforge/gpj/cardservices/AID;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting applet instance for re-install: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lnet/sourceforge/gpj/cardservices/AID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->mGPService:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;

    const/4 v4, 0x0

    invoke-virtual {v0, v6, v4}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->deleteAID(Lnet/sourceforge/gpj/cardservices/AID;Z)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Re-installing applet with default selected privilege: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lnet/sourceforge/gpj/cardservices/AID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v4, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->mGPService:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v10}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->installAndMakeSelecatable(Lnet/sourceforge/gpj/cardservices/AID;Lnet/sourceforge/gpj/cardservices/AID;Lnet/sourceforge/gpj/cardservices/AID;B[B[B)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5df2\u8bbe\u4e3a\u9ed8\u8ba4: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lnet/sourceforge/gpj/cardservices/AID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    goto :goto_1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u8bbe\u4e3a\u9ed8\u8ba4\u5931\u8d25 "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Lnet/sourceforge/gpj/cardservices/AID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 175
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 174
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "appletAID":Lnet/sourceforge/gpj/cardservices/AID;
    :goto_1
    goto/16 :goto_0

    .line 178
    :cond_3
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 147
    .end local v5    # "packageAID":Lnet/sourceforge/gpj/cardservices/AID;
    .end local v8    # "newPrivileges":B
    .end local v11    # "executableAIDs":Ljava/util/List;, "Ljava/util/List<Lnet/sourceforge/gpj/cardservices/AID;>;"
    .end local v12    # "result":Ljava/lang/StringBuilder;
    :cond_4
    :goto_2
    const-string v0, "\u4e0d\u80fd\u5c06\u5b89\u5168\u57df\u8bbe\u4e3a\u9ed8\u8ba4Applet"

    return-object v0
.end method


# virtual methods
.method public deleteApplet(Lnet/sourceforge/gpj/cardservices/AID;)V
    .locals 1
    .param p1, "aid"    # Lnet/sourceforge/gpj/cardservices/AID;

    .line 335
    :try_start_0
    invoke-direct {p0, p1}, Lat/fhooe/usmile/gpjshell/GPConnection;->deleteAID(Lnet/sourceforge/gpj/cardservices/AID;)V

    .line 336
    sget-object v0, Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;->APPLET_DELETE_FINISHED:Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

    invoke-direct {p0, v0}, Lat/fhooe/usmile/gpjshell/GPConnection;->logTimestamp(Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;)V
    :try_end_0
    .catch Lnet/sourceforge/gpj/cardservices/exceptions/GPDeleteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/smartcardio/CardException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljavax/smartcardio/CardException;
    invoke-virtual {v0}, Ljavax/smartcardio/CardException;->printStackTrace()V

    goto :goto_1

    .line 337
    .end local v0    # "e":Ljavax/smartcardio/CardException;
    :catch_1
    move-exception v0

    .line 338
    .local v0, "e":Lnet/sourceforge/gpj/cardservices/exceptions/GPDeleteException;
    invoke-virtual {v0}, Lnet/sourceforge/gpj/cardservices/exceptions/GPDeleteException;->printStackTrace()V

    .line 341
    .end local v0    # "e":Lnet/sourceforge/gpj/cardservices/exceptions/GPDeleteException;
    :goto_0
    nop

    .line 342
    :goto_1
    return-void
.end method

.method public getRegistry()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->data:Lat/fhooe/usmile/gpjshell/objects/GPAppletData;

    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/objects/GPAppletData;->getRegistry()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedApplet()Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    .locals 1

    .line 87
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->data:Lat/fhooe/usmile/gpjshell/objects/GPAppletData;

    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/objects/GPAppletData;->getSelectedApplet()Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;

    move-result-object v0

    return-object v0
.end method

.method public loadAppletsfromCard()Lat/fhooe/usmile/gpjshell/objects/GPAppletData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->data:Lat/fhooe/usmile/gpjshell/objects/GPAppletData;

    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->mGPService:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;

    invoke-virtual {v1}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->getStatus()Lnet/sourceforge/gpj/cardservices/AIDRegistry;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/gpj/cardservices/AIDRegistry;->allPackages()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/fhooe/usmile/gpjshell/objects/GPAppletData;->setRegistry(Ljava/util/List;)V

    .line 330
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->data:Lat/fhooe/usmile/gpjshell/objects/GPAppletData;

    return-object v0
.end method

.method public performCommand(Ljavax/smartcardio/CardChannel;Lat/fhooe/usmile/gpjshell/objects/GPKeyset;Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;Lat/fhooe/usmile/gpjshell/GPCommand;)Ljava/lang/String;
    .locals 14
    .param p1, "channel"    # Ljavax/smartcardio/CardChannel;
    .param p2, "keyset"    # Lat/fhooe/usmile/gpjshell/objects/GPKeyset;
    .param p3, "channelSet"    # Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;
    .param p4, "_cmd"    # Lat/fhooe/usmile/gpjshell/GPCommand;

    .line 441
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, ""

    .line 442
    .local v3, "ret":Ljava/lang/String;
    invoke-static {}, Lat/fhooe/usmile/gpjshell/APDULogManager;->getInstance()Lat/fhooe/usmile/gpjshell/APDULogManager;

    move-result-object v4

    .line 445
    .local v4, "logMgr":Lat/fhooe/usmile/gpjshell/APDULogManager;
    const/4 v0, 0x1

    .line 446
    .local v0, "closeConn":Z
    const-string v5, "\u9519\u8bef: "

    const-string v6, "--"

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 447
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lat/fhooe/usmile/gpjshell/GPConnection;->initializeKeys(Ljavax/smartcardio/CardChannel;Lat/fhooe/usmile/gpjshell/objects/GPKeyset;)V

    .line 450
    :cond_0
    invoke-direct {p0}, Lat/fhooe/usmile/gpjshell/GPConnection;->open()V

    .line 453
    invoke-virtual {v1}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->getID()I

    move-result v8

    .line 454
    invoke-virtual {v1}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->getID()I

    move-result v9

    invoke-virtual {v1}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->getVersion()I

    move-result v10

    .line 455
    invoke-virtual {v2}, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->getScpVersion()I

    move-result v11

    invoke-virtual {v2}, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->getSecurityLevel()I

    move-result v12

    .line 456
    invoke-virtual {v2}, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->isGemalto()Z

    move-result v13

    .line 453
    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lat/fhooe/usmile/gpjshell/GPConnection;->openSecureChannel(IIIIIZ)V

    .line 458
    const-string v8, "GPConnection"

    const-string v9, "Secure channel opened"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5b89\u5168\u901a\u9053\u5df2\u5efa\u7acb (SCP"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->getScpVersion()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", \u5b89\u5168\u7ea7\u522b=0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->getSecurityLevel()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v6, v8}, Lat/fhooe/usmile/gpjshell/APDULogManager;->logAPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    sget-object v8, Lat/fhooe/usmile/gpjshell/GPConnection$1;->$SwitchMap$at$fhooe$usmile$gpjshell$MainActivity$APDU_COMMAND:[I

    invoke-virtual/range {p4 .. p4}, Lat/fhooe/usmile/gpjshell/GPCommand;->getCmd()Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    move-result-object v9

    invoke-virtual {v9}, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_1

    .line 517
    :pswitch_0
    const/4 v0, 0x0

    .line 518
    const-string v5, "GP\u8fde\u63a5\u5df2\u521d\u59cb\u5316"

    return-object v5

    .line 502
    :pswitch_1
    const-string v8, "\u6b63\u5728\u5217\u51fa\u5361\u7247\u4e0a\u7684Applet..."

    invoke-virtual {v4, v6, v6, v8}, Lat/fhooe/usmile/gpjshell/APDULogManager;->logAPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-virtual/range {p4 .. p4}, Lat/fhooe/usmile/gpjshell/GPCommand;->getSeekReaderName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lat/fhooe/usmile/gpjshell/GPConnection;->listApplets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 504
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u627e\u5230 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->data:Lat/fhooe/usmile/gpjshell/objects/GPAppletData;

    invoke-virtual {v9}, Lat/fhooe/usmile/gpjshell/objects/GPAppletData;->getRegistry()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \u4e2aApplet"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v6, v8}, Lat/fhooe/usmile/gpjshell/APDULogManager;->logAPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-virtual {p1}, Ljavax/smartcardio/CardChannel;->close()V

    .line 507
    new-instance v8, Landroid/content/Intent;

    iget-object v9, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->mContext:Landroid/content/Context;

    const-class v10, Lat/fhooe/usmile/gpjshell/AppletListActivity;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 508
    .local v8, "intent":Landroid/content/Intent;
    const-string v9, "at.fhooe.usmile.gpjshell.AppletListActivity.channelset"

    invoke-virtual {v8, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 509
    const-string v9, "at.fhooe.usmile.gpjshell.AppletListActivity.keyset"

    invoke-virtual {v8, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 510
    const-string v9, "at.fhooe.usmile.gpjshell.AppletListActivity.seekreader"

    invoke-virtual/range {p4 .. p4}, Lat/fhooe/usmile/gpjshell/GPCommand;->getSeekReader()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 512
    iget-object v9, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 513
    const/4 v0, 0x0

    .line 514
    goto/16 :goto_1

    .line 496
    .end local v8    # "intent":Landroid/content/Intent;
    :pswitch_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u8bbe\u7f6e\u9ed8\u8ba4Applet: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->data:Lat/fhooe/usmile/gpjshell/objects/GPAppletData;

    invoke-virtual {v9}, Lat/fhooe/usmile/gpjshell/objects/GPAppletData;->getSelectedApplet()Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;

    move-result-object v9

    invoke-virtual {v9}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getAID()Lnet/sourceforge/gpj/cardservices/AID;

    move-result-object v9

    invoke-virtual {v9}, Lnet/sourceforge/gpj/cardservices/AID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v6, v8}, Lat/fhooe/usmile/gpjshell/APDULogManager;->logAPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-direct {p0}, Lat/fhooe/usmile/gpjshell/GPConnection;->setDefaultApplet()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 498
    const-string v8, "\u8bbe\u7f6e\u9ed8\u8ba4\u7ed3\u679c"

    invoke-virtual {v4, v6, v3, v8}, Lat/fhooe/usmile/gpjshell/APDULogManager;->logAPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    goto/16 :goto_1

    .line 490
    :pswitch_3
    const-string v8, "\u6b63\u5728\u5220\u9664\u6240\u6709Applet..."

    invoke-virtual {v4, v6, v6, v8}, Lat/fhooe/usmile/gpjshell/APDULogManager;->logAPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-direct {p0}, Lat/fhooe/usmile/gpjshell/GPConnection;->deleteAllApplets()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 492
    const-string v8, "\u5220\u9664\u6240\u6709Applet\u5b8c\u6210"

    invoke-virtual {v4, v6, v6, v8}, Lat/fhooe/usmile/gpjshell/APDULogManager;->logAPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    goto/16 :goto_1

    .line 483
    :pswitch_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5220\u9664\u9009\u4e2d\u7684Applet: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->data:Lat/fhooe/usmile/gpjshell/objects/GPAppletData;

    invoke-virtual {v9}, Lat/fhooe/usmile/gpjshell/objects/GPAppletData;->getSelectedApplet()Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;

    move-result-object v9

    invoke-virtual {v9}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getAID()Lnet/sourceforge/gpj/cardservices/AID;

    move-result-object v9

    invoke-virtual {v9}, Lnet/sourceforge/gpj/cardservices/AID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v6, v8}, Lat/fhooe/usmile/gpjshell/APDULogManager;->logAPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-direct {p0}, Lat/fhooe/usmile/gpjshell/GPConnection;->deleteSelectedApplet()V

    .line 485
    const-string v8, "Applet\u5df2\u5220\u9664"

    move-object v3, v8

    .line 486
    const-string v8, "\u9009\u4e2dApplet\u5220\u9664\u6210\u529f"

    invoke-virtual {v4, v6, v6, v8}, Lat/fhooe/usmile/gpjshell/APDULogManager;->logAPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    goto/16 :goto_1

    .line 474
    :pswitch_5
    invoke-virtual/range {p4 .. p4}, Lat/fhooe/usmile/gpjshell/GPCommand;->getCommandParameter()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lat/fhooe/usmile/gpjshell/CAPFile;->readAID(Ljava/lang/String;)Lnet/sourceforge/gpj/cardservices/AID;

    move-result-object v8

    .line 475
    .local v8, "aid":Lnet/sourceforge/gpj/cardservices/AID;
    invoke-virtual {v8}, Lnet/sourceforge/gpj/cardservices/AID;->getBytes()[B

    move-result-object v9

    invoke-static {v9}, Lat/fhooe/usmile/gpjshell/GPUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v9

    .line 476
    .local v9, "aidStr":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u6309AID\u5220\u9664Applet: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v6, v6, v10}, Lat/fhooe/usmile/gpjshell/APDULogManager;->logAPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TCPConn"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 478
    invoke-virtual {p0, v8}, Lat/fhooe/usmile/gpjshell/GPConnection;->deleteApplet(Lnet/sourceforge/gpj/cardservices/AID;)V

    .line 479
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AID\u5220\u9664\u5b8c\u6210: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v6, v6, v10}, Lat/fhooe/usmile/gpjshell/APDULogManager;->logAPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    goto :goto_1

    .line 463
    .end local v8    # "aid":Lnet/sourceforge/gpj/cardservices/AID;
    .end local v9    # "aidStr":Ljava/lang/String;
    :pswitch_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u6b63\u5728\u5b89\u88c5Applet: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p4 .. p4}, Lat/fhooe/usmile/gpjshell/GPCommand;->getCommandParameter()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v6, v8}, Lat/fhooe/usmile/gpjshell/APDULogManager;->logAPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p4 .. p4}, Lat/fhooe/usmile/gpjshell/GPCommand;->getInstallParams()[B

    move-result-object v8

    if-eqz v8, :cond_1

    .line 465
    invoke-virtual/range {p4 .. p4}, Lat/fhooe/usmile/gpjshell/GPCommand;->getCommandParameter()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Lat/fhooe/usmile/gpjshell/GPCommand;->getInstallParams()[B

    move-result-object v9

    invoke-virtual/range {p4 .. p4}, Lat/fhooe/usmile/gpjshell/GPCommand;->getPrivileges()B

    move-result v10

    invoke-direct {p0, v8, v9, v10}, Lat/fhooe/usmile/gpjshell/GPConnection;->installApplet(Ljava/lang/String;[BB)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .end local v3    # "ret":Ljava/lang/String;
    .local v8, "ret":Ljava/lang/String;
    goto :goto_0

    .line 467
    .end local v8    # "ret":Ljava/lang/String;
    .restart local v3    # "ret":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p4 .. p4}, Lat/fhooe/usmile/gpjshell/GPCommand;->getCommandParameter()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8}, Lat/fhooe/usmile/gpjshell/GPConnection;->installApplet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .end local v3    # "ret":Ljava/lang/String;
    .restart local v8    # "ret":Ljava/lang/String;
    move-object v3, v8

    .line 469
    .end local v8    # "ret":Ljava/lang/String;
    .restart local v3    # "ret":Ljava/lang/String;
    :goto_0
    const-string v8, "\u5b89\u88c5\u7ed3\u679c"

    invoke-virtual {v4, v6, v3, v8}, Lat/fhooe/usmile/gpjshell/APDULogManager;->logAPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    nop

    .line 524
    :goto_1
    if-eqz v0, :cond_2

    .line 525
    invoke-virtual {p1}, Ljavax/smartcardio/CardChannel;->close()V
    :try_end_0
    .catch Lnet/sourceforge/gpj/cardservices/exceptions/GPSecurityDomainSelectionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lnet/sourceforge/gpj/cardservices/exceptions/GPInstallForLoadException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/smartcardio/CardException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 548
    .end local v0    # "closeConn":Z
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 550
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5f02\u5e38 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 551
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "\u901a\u7528\u5f02\u5e38"

    invoke-virtual {v4, v6, v5, v8}, Lat/fhooe/usmile/gpjshell/APDULogManager;->logAPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 544
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 545
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 546
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IO\u5f02\u5e38 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 547
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "IO\u5f02\u5e38"

    invoke-virtual {v4, v6, v5, v8}, Lat/fhooe/usmile/gpjshell/APDULogManager;->logAPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    .line 540
    :catch_2
    move-exception v0

    .line 541
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "URL\u683c\u5f0f\u9519\u8bef "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 542
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "URL\u683c\u5f0f\u9519\u8bef"

    invoke-virtual {v4, v6, v5, v8}, Lat/fhooe/usmile/gpjshell/APDULogManager;->logAPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .end local v0    # "e":Ljava/net/MalformedURLException;
    goto/16 :goto_2

    .line 536
    :catch_3
    move-exception v0

    .line 537
    .local v0, "e":Ljavax/smartcardio/CardException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5361\u7247\u5f02\u5e38 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljavax/smartcardio/CardException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 538
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "\u5361\u7247\u5f02\u5e38"

    invoke-virtual {v4, v6, v5, v8}, Lat/fhooe/usmile/gpjshell/APDULogManager;->logAPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-virtual {v0}, Ljavax/smartcardio/CardException;->printStackTrace()V

    .end local v0    # "e":Ljavax/smartcardio/CardException;
    goto :goto_2

    .line 532
    :catch_4
    move-exception v0

    .line 533
    .local v0, "e":Lnet/sourceforge/gpj/cardservices/exceptions/GPInstallForLoadException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5b89\u88c5\u52a0\u8f7d\u5f02\u5e38 - Applet\u5df2\u5b89\u88c5? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lnet/sourceforge/gpj/cardservices/exceptions/GPInstallForLoadException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 534
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "\u5b89\u88c5\u52a0\u8f7d\u5931\u8d25"

    invoke-virtual {v4, v6, v5, v8}, Lat/fhooe/usmile/gpjshell/APDULogManager;->logAPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-virtual {v0}, Lnet/sourceforge/gpj/cardservices/exceptions/GPInstallForLoadException;->printStackTrace()V

    .end local v0    # "e":Lnet/sourceforge/gpj/cardservices/exceptions/GPInstallForLoadException;
    goto :goto_2

    .line 528
    :catch_5
    move-exception v0

    .line 529
    .local v0, "e":Lnet/sourceforge/gpj/cardservices/exceptions/GPSecurityDomainSelectionException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5b89\u5168\u57df\u9009\u62e9\u5f02\u5e38 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lnet/sourceforge/gpj/cardservices/exceptions/GPSecurityDomainSelectionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 530
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "\u5b89\u5168\u57df\u9009\u62e9\u5931\u8d25"

    invoke-virtual {v4, v6, v5, v8}, Lat/fhooe/usmile/gpjshell/APDULogManager;->logAPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-virtual {v0}, Lnet/sourceforge/gpj/cardservices/exceptions/GPSecurityDomainSelectionException;->printStackTrace()V

    .line 552
    .end local v0    # "e":Lnet/sourceforge/gpj/cardservices/exceptions/GPSecurityDomainSelectionException;
    :cond_2
    :goto_2
    nop

    .line 553
    :goto_3
    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performCommand(Ljavax/smartcardio/CardTerminal;Lat/fhooe/usmile/gpjshell/objects/GPKeyset;Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;Lat/fhooe/usmile/gpjshell/GPCommand;)Ljava/lang/String;
    .locals 7
    .param p1, "_term"    # Ljavax/smartcardio/CardTerminal;
    .param p2, "keyset"    # Lat/fhooe/usmile/gpjshell/objects/GPKeyset;
    .param p3, "channelSet"    # Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;
    .param p4, "_cmd"    # Lat/fhooe/usmile/gpjshell/GPCommand;

    .line 405
    invoke-static {}, Lat/fhooe/usmile/gpjshell/APDULogManager;->getInstance()Lat/fhooe/usmile/gpjshell/APDULogManager;

    move-result-object v0

    .line 406
    .local v0, "logMgr":Lat/fhooe/usmile/gpjshell/APDULogManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> \u6267\u884c\u547d\u4ee4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lat/fhooe/usmile/gpjshell/GPCommand;->getCmd()Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    move-result-object v2

    invoke-virtual {v2}, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "--"

    invoke-virtual {v0, v2, v2, v1}, Lat/fhooe/usmile/gpjshell/APDULogManager;->logAPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const/4 v1, 0x0

    .line 411
    .local v1, "c":Ljavax/smartcardio/Card;
    :try_start_0
    instance-of v3, p1, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;

    if-eqz v3, :cond_0

    .line 412
    move-object v3, p1

    check-cast v3, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;

    invoke-virtual {p4}, Lat/fhooe/usmile/gpjshell/GPCommand;->getSeekReader()I

    move-result v4

    invoke-virtual {v3, v4}, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->setReader(I)V

    .line 415
    :cond_0
    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljavax/smartcardio/CardTerminal;->connect(Ljava/lang/String;)Ljavax/smartcardio/Card;

    move-result-object v3

    .line 416
    .end local v1    # "c":Ljavax/smartcardio/Card;
    .local v3, "c":Ljavax/smartcardio/Card;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found card in terminal: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljavax/smartcardio/CardTerminal;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v3}, Ljavax/smartcardio/Card;->getATR()Ljavax/smartcardio/ATR;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 418
    invoke-virtual {v3}, Ljavax/smartcardio/Card;->getATR()Ljavax/smartcardio/ATR;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/smartcardio/ATR;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lnet/sourceforge/gpj/cardservices/GPUtil;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "atrStr":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ATR: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 420
    const-string v4, "ATR"

    const-string v5, "\u5361\u7247ATR"

    invoke-virtual {v0, v4, v1, v5}, Lat/fhooe/usmile/gpjshell/APDULogManager;->logAPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .end local v1    # "atrStr":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljavax/smartcardio/Card;->openLogicalChannel()Ljavax/smartcardio/CardChannel;

    move-result-object v1

    .line 423
    .local v1, "channel":Ljavax/smartcardio/CardChannel;
    invoke-virtual {p0, v1, p2, p3, p4}, Lat/fhooe/usmile/gpjshell/GPConnection;->performCommand(Ljavax/smartcardio/CardChannel;Lat/fhooe/usmile/gpjshell/objects/GPKeyset;Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;Lat/fhooe/usmile/gpjshell/GPCommand;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 424
    .end local v1    # "channel":Ljavax/smartcardio/CardChannel;
    .end local v3    # "c":Ljavax/smartcardio/Card;
    :catch_0
    move-exception v1

    .line 425
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u9519\u8bef: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u547d\u4ee4\u5931\u8d25: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p4}, Lat/fhooe/usmile/gpjshell/GPCommand;->getCmd()Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    move-result-object v5

    invoke-virtual {v5}, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lat/fhooe/usmile/gpjshell/APDULogManager;->logAPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 428
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public setSelectedApplet(I)V
    .locals 1
    .param p1, "position"    # I

    .line 83
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->data:Lat/fhooe/usmile/gpjshell/objects/GPAppletData;

    invoke-virtual {v0, p1}, Lat/fhooe/usmile/gpjshell/objects/GPAppletData;->setSelectedApplet(I)V

    .line 84
    return-void
.end method

.method public setTimestampLog(Lat/fhooe/usmile/gpjshell/TimerLog;)V
    .locals 0
    .param p1, "log"    # Lat/fhooe/usmile/gpjshell/TimerLog;

    .line 325
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->mTsLog:Lat/fhooe/usmile/gpjshell/TimerLog;

    .line 326
    return-void
.end method

.method public transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;
    .locals 4
    .param p1, "cmd"    # Ljavax/smartcardio/CommandAPDU;

    .line 558
    const-string v0, "Error transmitting APDU:"

    const-string v1, "GPConnection"

    :try_start_0
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/GPConnection;->mGPService:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;

    invoke-virtual {v2, p1}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/smartcardio/CardException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 562
    :catch_0
    move-exception v2

    .line 563
    .local v2, "e":Ljavax/smartcardio/CardException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljavax/smartcardio/CardException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-virtual {v2}, Ljavax/smartcardio/CardException;->printStackTrace()V

    goto :goto_0

    .line 559
    .end local v2    # "e":Ljavax/smartcardio/CardException;
    :catch_1
    move-exception v2

    .line 560
    .local v2, "e":Ljava/lang/IllegalStateException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 565
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    nop

    .line 566
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
