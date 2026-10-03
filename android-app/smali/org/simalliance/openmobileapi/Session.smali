.class public Lorg/simalliance/openmobileapi/Session;
.super Ljava/lang/Object;
.source "Session.java"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mReader:Lorg/simalliance/openmobileapi/Reader;

.field private final mService:Lorg/simalliance/openmobileapi/SEService;

.field private final mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;


# direct methods
.method constructor <init>(Lorg/simalliance/openmobileapi/SEService;Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;Lorg/simalliance/openmobileapi/Reader;)V
    .locals 1
    .param p1, "service"    # Lorg/simalliance/openmobileapi/SEService;
    .param p2, "session"    # Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;
    .param p3, "reader"    # Lorg/simalliance/openmobileapi/Reader;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mLock:Ljava/lang/Object;

    .line 48
    iput-object p1, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    .line 49
    iput-object p3, p0, Lorg/simalliance/openmobileapi/Session;->mReader:Lorg/simalliance/openmobileapi/Reader;

    .line 50
    iput-object p2, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    .line 51
    return-void
.end method

.method private basicChannelInUse(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z
    .locals 3
    .param p1, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;

    .line 323
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v0

    .line 324
    .local v0, "exp":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "msg":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 327
    const-string v2, "basic channel in use"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    const/4 v2, 0x1

    return v2

    .line 332
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private channelCannotBeEstablished(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z
    .locals 4
    .param p1, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;

    .line 336
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v0

    .line 337
    .local v0, "exp":Ljava/lang/Exception;
    if-eqz v0, :cond_4

    .line 338
    instance-of v1, v0, Ljava/util/MissingResourceException;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 339
    return v2

    .line 341
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "msg":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 343
    const-string v3, "channel in use"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 344
    return v2

    .line 346
    :cond_1
    const-string v3, "open channel failed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 347
    return v2

    .line 349
    :cond_2
    const-string v3, "out of channels"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 350
    return v2

    .line 352
    :cond_3
    const-string v3, "MANAGE CHANNEL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 353
    return v2

    .line 357
    .end local v1    # "msg":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method private checkIfAppletAvailable(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    .locals 3
    .param p1, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 361
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v0

    .line 362
    .local v0, "exp":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 363
    instance-of v1, v0, Ljava/util/NoSuchElementException;

    if-nez v1, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Applet with the defined aid does not exist in the SE"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    :cond_1
    :goto_0
    return-void
.end method

.method private isDefaultApplicationSelected(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z
    .locals 3
    .param p1, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;

    .line 310
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v0

    .line 311
    .local v0, "exp":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "msg":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 314
    const-string v2, "default application is not selected"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    const/4 v2, 0x0

    return v2

    .line 319
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 88
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .local v1, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_1
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    invoke-interface {v2, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;->close(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    nop

    .line 99
    :try_start_2
    invoke-static {v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 100
    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    monitor-exit v0

    goto :goto_0

    .line 96
    .restart local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 100
    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closeChannels()V
    .locals 5

    .line 126
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .local v1, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_1
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    invoke-interface {v2, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;->closeChannels(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    nop

    .line 138
    :try_start_2
    invoke-static {v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 139
    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    monitor-exit v0

    goto :goto_0

    .line 135
    .restart local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 139
    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getATR()[B
    .locals 2

    .line 70
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    if-eqz v0, :cond_0

    .line 77
    :try_start_0
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    invoke-interface {v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;->getAtr()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service session is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReader()Lorg/simalliance/openmobileapi/Reader;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mReader:Lorg/simalliance/openmobileapi/Reader;

    return-object v0
.end method

.method public isClosed()Z
    .locals 3

    .line 111
    :try_start_0
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x1

    return v0

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    invoke-interface {v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;->isClosed()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openBasicChannel([B)Lorg/simalliance/openmobileapi/Channel;
    .locals 6
    .param p1, "aid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 185
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    if-eqz v0, :cond_6

    .line 188
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 192
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_0
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    .local v1, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    iget-object v4, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v4}, Lorg/simalliance/openmobileapi/SEService;->getCallback()Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    move-result-object v4

    invoke-interface {v3, p1, v4, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;->openBasicChannelAid([BLorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    .local v2, "channel":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    nop

    .line 203
    :try_start_2
    invoke-static {v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 204
    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->clear()V

    .line 205
    invoke-direct {p0, v1}, Lorg/simalliance/openmobileapi/Session;->basicChannelInUse(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v3

    .line 206
    .local v3, "b":Z
    invoke-static {v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 207
    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 208
    monitor-exit v0

    return-object v4

    .line 210
    :cond_0
    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->clear()V

    .line 211
    invoke-direct {p0, v1}, Lorg/simalliance/openmobileapi/Session;->channelCannotBeEstablished(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v5

    .line 212
    .end local v3    # "b":Z
    .local v5, "b":Z
    invoke-static {v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 213
    if-eqz v5, :cond_1

    .line 214
    monitor-exit v0

    return-object v4

    .line 216
    :cond_1
    if-eqz p1, :cond_2

    array-length v3, p1

    if-nez v3, :cond_3

    .line 218
    :cond_2
    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->clear()V

    .line 219
    invoke-direct {p0, v1}, Lorg/simalliance/openmobileapi/Session;->isDefaultApplicationSelected(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v3

    move v5, v3

    .line 220
    invoke-static {v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 221
    if-nez v5, :cond_3

    .line 222
    monitor-exit v0

    return-object v4

    .line 225
    :cond_3
    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->clear()V

    .line 226
    invoke-direct {p0, v1}, Lorg/simalliance/openmobileapi/Session;->checkIfAppletAvailable(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 227
    invoke-static {v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 229
    if-nez v2, :cond_4

    .line 230
    monitor-exit v0

    return-object v4

    .line 232
    :cond_4
    new-instance v3, Lorg/simalliance/openmobileapi/Channel;

    iget-object v4, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-direct {v3, v4, p0, v2}, Lorg/simalliance/openmobileapi/Channel;-><init>(Lorg/simalliance/openmobileapi/SEService;Lorg/simalliance/openmobileapi/Session;Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;)V

    monitor-exit v0

    return-object v3

    .line 200
    .end local v2    # "channel":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    .end local v5    # "b":Z
    :catch_0
    move-exception v3

    .line 201
    .restart local v2    # "channel":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "aid":[B
    throw v4

    .line 233
    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v2    # "channel":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local p1    # "aid":[B
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 189
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "reader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service session is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openLogicalChannel([B)Lorg/simalliance/openmobileapi/Channel;
    .locals 6
    .param p1, "aid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 268
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    if-eqz v0, :cond_3

    .line 271
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_0
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    .local v1, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    iget-object v4, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v4}, Lorg/simalliance/openmobileapi/SEService;->getCallback()Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    move-result-object v4

    invoke-interface {v3, p1, v4, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;->openLogicalChannel([BLorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    .local v2, "channel":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    nop

    .line 285
    :try_start_2
    invoke-static {v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 286
    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->clear()V

    .line 287
    invoke-direct {p0, v1}, Lorg/simalliance/openmobileapi/Session;->channelCannotBeEstablished(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v3

    .line 288
    .local v3, "b":Z
    invoke-static {v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 289
    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 290
    monitor-exit v0

    return-object v4

    .line 292
    :cond_0
    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->clear()V

    .line 293
    invoke-direct {p0, v1}, Lorg/simalliance/openmobileapi/Session;->checkIfAppletAvailable(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 294
    invoke-static {v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 296
    if-nez v2, :cond_1

    .line 297
    monitor-exit v0

    return-object v4

    .line 299
    :cond_1
    new-instance v4, Lorg/simalliance/openmobileapi/Channel;

    iget-object v5, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-direct {v4, v5, p0, v2}, Lorg/simalliance/openmobileapi/Channel;-><init>(Lorg/simalliance/openmobileapi/SEService;Lorg/simalliance/openmobileapi/Session;Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;)V

    monitor-exit v0

    return-object v4

    .line 282
    .end local v2    # "channel":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    .end local v3    # "b":Z
    :catch_0
    move-exception v3

    .line 283
    .restart local v2    # "channel":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "aid":[B
    throw v4

    .line 300
    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v2    # "channel":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local p1    # "aid":[B
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 272
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "reader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service session is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
