.class public Lorg/simalliance/openmobileapi/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


# instance fields
.field private final mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

.field private final mLock:Ljava/lang/Object;

.field private final mService:Lorg/simalliance/openmobileapi/SEService;

.field private mSession:Lorg/simalliance/openmobileapi/Session;


# direct methods
.method constructor <init>(Lorg/simalliance/openmobileapi/SEService;Lorg/simalliance/openmobileapi/Session;Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;)V
    .locals 1
    .param p1, "service"    # Lorg/simalliance/openmobileapi/SEService;
    .param p2, "session"    # Lorg/simalliance/openmobileapi/Session;
    .param p3, "channel"    # Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mLock:Ljava/lang/Object;

    .line 48
    iput-object p1, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    .line 49
    iput-object p2, p0, Lorg/simalliance/openmobileapi/Channel;->mSession:Lorg/simalliance/openmobileapi/Session;

    .line 50
    iput-object p3, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    .line 51
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 59
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 67
    .local v0, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_0
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    invoke-interface {v1, v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->close(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 70
    :goto_0
    invoke-static {v0}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 71
    return-void

    .line 63
    .end local v0    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "channel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSelectResponse()[B
    .locals 4

    .line 184
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    if-eqz v0, :cond_2

    .line 191
    :try_start_0
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    invoke-interface {v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->isClosed()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_1

    .line 196
    nop

    .line 200
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    invoke-interface {v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->getSelectResponse()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 203
    .local v0, "response":[B
    nop

    .line 205
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_0

    .line 206
    const/4 v0, 0x0

    .line 207
    :cond_0
    return-object v0

    .line 201
    .end local v0    # "response":[B
    :catch_0
    move-exception v1

    .line 202
    .restart local v0    # "response":[B
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    .end local v0    # "response":[B
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "channel is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 194
    :catch_1
    move-exception v0

    .line 195
    .local v0, "e1":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    .end local v0    # "e1":Ljava/lang/Exception;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "channel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSession()Lorg/simalliance/openmobileapi/Session;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mSession:Lorg/simalliance/openmobileapi/Session;

    return-object v0
.end method

.method public isBasicChannel()Z
    .locals 3

    .line 99
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    if-eqz v0, :cond_0

    .line 106
    :try_start_0
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    invoke-interface {v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->isBasicChannel()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "channel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isClosed()Z
    .locals 3

    .line 79
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    if-eqz v0, :cond_0

    .line 86
    :try_start_0
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    invoke-interface {v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->isClosed()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "channel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public selectNext()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    if-eqz v0, :cond_1

    .line 234
    :try_start_0
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    invoke-interface {v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->isClosed()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    .line 239
    nop

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "response":Z
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 243
    :try_start_1
    new-instance v2, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v2}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    .local v2, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_2
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    invoke-interface {v3, v2}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->selectNext(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v3

    .line 248
    nop

    .line 249
    :try_start_3
    invoke-static {v2}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 250
    .end local v2    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    monitor-exit v1

    .line 251
    return v0

    .line 246
    .restart local v2    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :catch_0
    move-exception v3

    .line 247
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "response":Z
    throw v4

    .line 250
    .end local v2    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "response":Z
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 235
    .end local v0    # "response":Z
    :cond_0
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "channel is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 237
    :catch_1
    move-exception v0

    .line 238
    .local v0, "e1":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    .end local v0    # "e1":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "channel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public transmit([B)[B
    .locals 6
    .param p1, "command"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v2}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .local v2, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_1
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    invoke-interface {v3, p1, v2}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->transmit([BLorg/simalliance/openmobileapi/service/SmartcardError;)[B

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    .local v1, "response":[B
    nop

    .line 159
    :try_start_2
    invoke-static {v2}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 160
    .end local v2    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    monitor-exit v0

    .line 161
    return-object v1

    .line 156
    .end local v1    # "response":[B
    .restart local v2    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :catch_0
    move-exception v3

    .line 157
    .restart local v1    # "response":[B
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "response":[B
    .end local p1    # "command":[B
    throw v4

    .line 160
    .end local v2    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local p1    # "command":[B
    :catchall_0
    move-exception v2

    .restart local v1    # "response":[B
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_0

    .line 148
    .end local v1    # "response":[B
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "channel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
