.class public Lorg/simalliance/openmobileapi/Reader;
.super Ljava/lang/Object;
.source "Reader.java"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private mReader:Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

.field private final mService:Lorg/simalliance/openmobileapi/SEService;


# direct methods
.method constructor <init>(Lorg/simalliance/openmobileapi/SEService;Ljava/lang/String;)V
    .locals 1
    .param p1, "service"    # Lorg/simalliance/openmobileapi/SEService;
    .param p2, "name"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mLock:Ljava/lang/Object;

    .line 46
    iput-object p2, p0, Lorg/simalliance/openmobileapi/Reader;->mName:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mReader:Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    .line 50
    return-void
.end method


# virtual methods
.method public closeSessions()V
    .locals 5

    .line 151
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mReader:Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_0
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .local v1, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_1
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Reader;->mReader:Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    invoke-interface {v2, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;->closeSessions(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    nop

    .line 162
    :try_start_2
    invoke-static {v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 163
    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    monitor-exit v0

    goto :goto_0

    .line 159
    .restart local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :catch_0
    move-exception v2

    .line 160
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 163
    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service is not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSEService()Lorg/simalliance/openmobileapi/SEService;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    return-object v0
.end method

.method public isSecureElementPresent()Z
    .locals 5

    .line 115
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mReader:Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    if-nez v0, :cond_0

    .line 120
    :try_start_0
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    iget-object v1, p0, Lorg/simalliance/openmobileapi/Reader;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/simalliance/openmobileapi/SEService;->getReader(Ljava/lang/String;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    move-result-object v0

    iput-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mReader:Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service reader cannot be accessed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    new-instance v0, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 129
    .local v0, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Reader;->mReader:Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    invoke-interface {v2, v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;->isSecureElementPresent(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    .local v1, "flag":Z
    nop

    .line 133
    invoke-static {v0}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 134
    return v1

    .line 130
    .end local v1    # "flag":Z
    :catch_1
    move-exception v2

    .line 131
    .restart local v1    # "flag":Z
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 116
    .end local v0    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v1    # "flag":Z
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service is not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openSession()Lorg/simalliance/openmobileapi/Session;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mReader:Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    if-nez v0, :cond_0

    .line 85
    :try_start_0
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    iget-object v1, p0, Lorg/simalliance/openmobileapi/Reader;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/simalliance/openmobileapi/SEService;->getReader(Ljava/lang/String;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    move-result-object v0

    iput-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mReader:Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "service reader cannot be accessed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_1
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .local v1, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    const/4 v2, 0x0

    :try_start_2
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Reader;->mReader:Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    invoke-interface {v3, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;->openSession(Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    move-result-object v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    .local v2, "session":Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;
    nop

    .line 99
    :try_start_3
    invoke-static {v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 101
    if-eqz v2, :cond_1

    .line 105
    new-instance v3, Lorg/simalliance/openmobileapi/Session;

    iget-object v4, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-direct {v3, v4, v2, p0}, Lorg/simalliance/openmobileapi/Session;-><init>(Lorg/simalliance/openmobileapi/SEService;Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;Lorg/simalliance/openmobileapi/Reader;)V

    monitor-exit v0

    return-object v3

    .line 102
    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "service session is null."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 96
    .end local v2    # "session":Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;
    :catch_1
    move-exception v3

    .line 97
    .restart local v2    # "session":Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 106
    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v2    # "session":Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 81
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service is not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
