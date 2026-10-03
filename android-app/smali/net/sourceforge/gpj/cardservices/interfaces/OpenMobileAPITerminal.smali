.class public Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;
.super Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;
.source "OpenMobileAPITerminal.java"

# interfaces
.implements Lorg/simalliance/openmobileapi/SEService$CallBack;


# static fields
.field private static final TERMINAL_NAME:Ljava/lang/String; = "OpenMobile API for SE access"


# instance fields
.field final LOG_TAG:Ljava/lang/String;

.field private isConnected:Z

.field private mCallback:Lorg/simalliance/openmobileapi/SEService$CallBack;

.field private mReader:I

.field private seService:Lorg/simalliance/openmobileapi/SEService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/simalliance/openmobileapi/SEService$CallBack;)V
    .locals 4
    .param p1, "_con"    # Landroid/content/Context;
    .param p2, "_connectedServiceCallback"    # Lorg/simalliance/openmobileapi/SEService$CallBack;

    .line 36
    invoke-direct {p0}, Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;-><init>()V

    .line 29
    const-string v0, "HelloSmartcard"

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->LOG_TAG:Ljava/lang/String;

    .line 31
    const/4 v1, -0x1

    iput v1, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->mReader:I

    .line 32
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->isConnected:Z

    .line 34
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->mCallback:Lorg/simalliance/openmobileapi/SEService$CallBack;

    .line 38
    :try_start_0
    const-string v1, "creating SEService object"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iput-object p2, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->mCallback:Lorg/simalliance/openmobileapi/SEService$CallBack;

    .line 40
    new-instance v1, Lorg/simalliance/openmobileapi/SEService;

    invoke-direct {v1, p1, p0}, Lorg/simalliance/openmobileapi/SEService;-><init>(Landroid/content/Context;Lorg/simalliance/openmobileapi/SEService$CallBack;)V

    iput-object v1, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->seService:Lorg/simalliance/openmobileapi/SEService;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 41
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Binding not allowed, uses-permission org.simalliance.openmobileapi.SMARTCARD?"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_0
    nop

    .line 46
    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/simalliance/openmobileapi/SEService$CallBack;I)V
    .locals 0
    .param p1, "_con"    # Landroid/content/Context;
    .param p2, "_connectedServiceCallback"    # Lorg/simalliance/openmobileapi/SEService$CallBack;
    .param p3, "_reader"    # I

    .line 48
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;-><init>(Landroid/content/Context;Lorg/simalliance/openmobileapi/SEService$CallBack;)V

    .line 49
    invoke-virtual {p0, p3}, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->setReader(I)V

    .line 50
    return-void
.end method

.method private checkCurrentStatusAndGetReaders()[Lorg/simalliance/openmobileapi/Reader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->seService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->isConnected:Z

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->seService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->getReaders()[Lorg/simalliance/openmobileapi/Reader;

    move-result-object v0

    .line 74
    .local v0, "readers":[Lorg/simalliance/openmobileapi/Reader;
    iget v1, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->mReader:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 75
    iget v1, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->mReader:I

    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget v1, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->mReader:I

    if-ltz v1, :cond_0

    .line 76
    return-object v0

    .line 75
    :cond_0
    new-instance v1, Ljavax/smartcardio/CardException;

    const-string v2, "OpenMobile Reader not available"

    invoke-direct {v1, v2}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_1
    new-instance v1, Ljavax/smartcardio/CardException;

    const-string v2, "Missing reader argument"

    invoke-direct {v1, v2}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    .end local v0    # "readers":[Lorg/simalliance/openmobileapi/Reader;
    :cond_2
    new-instance v0, Ljavax/smartcardio/CardException;

    const-string v1, "OpenMobileAPI not connected yet"

    invoke-direct {v0, v1}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public connect(Ljava/lang/String;)Ljavax/smartcardio/Card;
    .locals 6
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 59
    const-string v0, " failed. "

    const-string v1, "Open Session to reader "

    invoke-direct {p0}, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->checkCurrentStatusAndGetReaders()[Lorg/simalliance/openmobileapi/Reader;

    move-result-object v2

    .line 62
    .local v2, "readers":[Lorg/simalliance/openmobileapi/Reader;
    :try_start_0
    new-instance v3, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;

    iget v4, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->mReader:I

    aget-object v4, v2, v4

    invoke-virtual {v4}, Lorg/simalliance/openmobileapi/Reader;->openSession()Lorg/simalliance/openmobileapi/Session;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPICard;-><init>(Lorg/simalliance/openmobileapi/Session;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 65
    :catch_0
    move-exception v3

    .line 66
    .local v3, "e":Ljava/lang/RuntimeException;
    new-instance v4, Ljavax/smartcardio/CardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->mReader:I

    aget-object v5, v2, v5

    invoke-virtual {v5}, Lorg/simalliance/openmobileapi/Reader;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 63
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v3

    .line 64
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljavax/smartcardio/CardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->mReader:I

    aget-object v5, v2, v5

    invoke-virtual {v5}, Lorg/simalliance/openmobileapi/Reader;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, "OpenMobile API for SE access"

    return-object v0
.end method

.method public getReader()I
    .locals 1

    .line 101
    iget v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->mReader:I

    return v0
.end method

.method public getReaders()[Lorg/simalliance/openmobileapi/Reader;
    .locals 1

    .line 80
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->seService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->getReaders()[Lorg/simalliance/openmobileapi/Reader;

    move-result-object v0

    return-object v0
.end method

.method public isCardPresent()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->checkCurrentStatusAndGetReaders()[Lorg/simalliance/openmobileapi/Reader;

    move-result-object v0

    .line 85
    .local v0, "readers":[Lorg/simalliance/openmobileapi/Reader;
    iget v1, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->mReader:I

    aget-object v1, v0, v1

    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/Reader;->isSecureElementPresent()Z

    move-result v1

    return v1
.end method

.method public isConnected()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->seService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    return v0
.end method

.method public serviceConnected(Lorg/simalliance/openmobileapi/SEService;)V
    .locals 2
    .param p1, "service"    # Lorg/simalliance/openmobileapi/SEService;

    .line 111
    const-string v0, "HelloSmartcard"

    const-string v1, "seviceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->isConnected:Z

    .line 114
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->mCallback:Lorg/simalliance/openmobileapi/SEService$CallBack;

    invoke-interface {v0, p1}, Lorg/simalliance/openmobileapi/SEService$CallBack;->serviceConnected(Lorg/simalliance/openmobileapi/SEService;)V

    .line 115
    return-void
.end method

.method public setReader(I)V
    .locals 0
    .param p1, "mReader"    # I

    .line 105
    iput p1, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->mReader:I

    .line 106
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 117
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->seService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->seService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->seService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->shutdown()V

    .line 120
    :cond_0
    return-void
.end method

.method public waitForCardAbsent(J)Z
    .locals 1
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public waitForCardPresent(J)Z
    .locals 1
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    return v0
.end method
