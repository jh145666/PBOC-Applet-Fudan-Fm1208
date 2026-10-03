.class public Lorg/simalliance/openmobileapi/SEService;
.super Ljava/lang/Object;
.source "SEService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simalliance/openmobileapi/SEService$CallBack;
    }
.end annotation


# static fields
.field private static final SERVICE_TAG:Ljava/lang/String; = "SEService"


# instance fields
.field private final mCallback:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

.field private mCallerCallback:Lorg/simalliance/openmobileapi/SEService$CallBack;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mReaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/simalliance/openmobileapi/Reader;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/simalliance/openmobileapi/SEService$CallBack;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lorg/simalliance/openmobileapi/SEService$CallBack;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:Ljava/util/HashMap;

    .line 71
    new-instance v0, Lorg/simalliance/openmobileapi/SEService$1;

    invoke-direct {v0, p0}, Lorg/simalliance/openmobileapi/SEService$1;-><init>(Lorg/simalliance/openmobileapi/SEService;)V

    iput-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mCallback:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    .line 110
    if-eqz p1, :cond_1

    .line 114
    iput-object p1, p0, Lorg/simalliance/openmobileapi/SEService;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lorg/simalliance/openmobileapi/SEService;->mCallerCallback:Lorg/simalliance/openmobileapi/SEService$CallBack;

    .line 117
    new-instance v0, Lorg/simalliance/openmobileapi/SEService$2;

    invoke-direct {v0, p0}, Lorg/simalliance/openmobileapi/SEService$2;-><init>(Lorg/simalliance/openmobileapi/SEService;)V

    iput-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mConnection:Landroid/content/ServiceConnection;

    .line 134
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/simalliance/openmobileapi/service/ISmartcardService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/simalliance/openmobileapi/SEService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 136
    .local v0, "bindingSuccessful":Z
    if-eqz v0, :cond_0

    .line 137
    const-string v1, "SEService"

    const-string v2, "bindService successful"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    return-void

    .line 111
    .end local v0    # "bindingSuccessful":Z
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$002(Lorg/simalliance/openmobileapi/SEService;Lorg/simalliance/openmobileapi/service/ISmartcardService;)Lorg/simalliance/openmobileapi/service/ISmartcardService;
    .locals 0
    .param p0, "x0"    # Lorg/simalliance/openmobileapi/SEService;
    .param p1, "x1"    # Lorg/simalliance/openmobileapi/service/ISmartcardService;

    .line 46
    iput-object p1, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    return-object p1
.end method

.method static synthetic access$100(Lorg/simalliance/openmobileapi/SEService;)Lorg/simalliance/openmobileapi/SEService$CallBack;
    .locals 1
    .param p0, "x0"    # Lorg/simalliance/openmobileapi/SEService;

    .line 46
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mCallerCallback:Lorg/simalliance/openmobileapi/SEService$CallBack;

    return-object v0
.end method

.method static checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    .locals 3
    .param p0, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;

    .line 230
    :try_start_0
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/service/SmartcardError;->throwException()V
    :try_end_0
    .catch Lorg/simalliance/openmobileapi/service/CardException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    nop

    .line 236
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "exp":Ljava/security/AccessControlException;
    new-instance v1, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Ljava/security/AccessControlException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    .end local v0    # "exp":Ljava/security/AccessControlException;
    :catch_1
    move-exception v0

    .line 232
    .local v0, "exp":Lorg/simalliance/openmobileapi/service/CardException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/service/CardException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method getCallback()Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mCallback:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    return-object v0
.end method

.method getReader(Ljava/lang/String;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 217
    new-instance v0, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 218
    .local v0, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    const/4 v1, 0x0

    .line 220
    .local v1, "reader":Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    :try_start_0
    iget-object v2, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    invoke-interface {v2, p1, v0}, Lorg/simalliance/openmobileapi/service/ISmartcardService;->getReader(Ljava/lang/String;Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v1    # "reader":Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    .local v2, "reader":Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    nop

    .line 224
    invoke-static {v0}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 225
    return-object v2

    .line 221
    .end local v2    # "reader":Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    .restart local v1    # "reader":Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    :catch_0
    move-exception v2

    .line 222
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getReaders()[Lorg/simalliance/openmobileapi/Reader;
    .locals 8

    .line 161
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-eqz v0, :cond_1

    .line 165
    new-instance v0, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 168
    .local v0, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    invoke-interface {v2, v0}, Lorg/simalliance/openmobileapi/service/ISmartcardService;->getReaders(Lorg/simalliance/openmobileapi/service/SmartcardError;)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .local v1, "readerNames":[Ljava/lang/String;
    nop

    .line 173
    iget-object v2, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 174
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 175
    .local v5, "readerName":Ljava/lang/String;
    iget-object v6, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:Ljava/util/HashMap;

    new-instance v7, Lorg/simalliance/openmobileapi/Reader;

    invoke-direct {v7, p0, v5}, Lorg/simalliance/openmobileapi/Reader;-><init>(Lorg/simalliance/openmobileapi/SEService;Ljava/lang/String;)V

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .end local v5    # "readerName":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 177
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_0
    iget-object v2, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 178
    .local v2, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/simalliance/openmobileapi/Reader;>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v3, v3, [Lorg/simalliance/openmobileapi/Reader;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/simalliance/openmobileapi/Reader;

    return-object v3

    .line 169
    .end local v1    # "readerNames":[Ljava/lang/String;
    .end local v2    # "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/simalliance/openmobileapi/Reader;>;"
    :catch_0
    move-exception v2

    .line 170
    .restart local v1    # "readerNames":[Ljava/lang/String;
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 162
    .end local v0    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v1    # "readerNames":[Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
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

.method public isConnected()Z
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x0

    return v0

    .line 150
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public shutdown()V
    .locals 4

    .line 189
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_0
    iget-object v1, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 192
    .local v1, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/simalliance/openmobileapi/Reader;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 193
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/simalliance/openmobileapi/Reader;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 195
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/simalliance/openmobileapi/Reader;

    .line 196
    .local v3, "reader":Lorg/simalliance/openmobileapi/Reader;
    invoke-virtual {v3}, Lorg/simalliance/openmobileapi/Reader;->closeSessions()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "reader":Lorg/simalliance/openmobileapi/Reader;
    goto :goto_1

    .line 197
    :catch_0
    move-exception v3

    .line 198
    :goto_1
    goto :goto_0

    .line 202
    .end local v1    # "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/simalliance/openmobileapi/Reader;>;"
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/simalliance/openmobileapi/Reader;>;"
    :cond_0
    :try_start_2
    iget-object v1, p0, Lorg/simalliance/openmobileapi/SEService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/simalliance/openmobileapi/SEService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    goto :goto_2

    .line 203
    :catch_1
    move-exception v1

    .line 207
    :goto_2
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    .line 208
    monitor-exit v0

    .line 209
    return-void

    .line 208
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method
