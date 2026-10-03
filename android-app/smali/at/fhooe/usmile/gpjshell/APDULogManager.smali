.class public Lat/fhooe/usmile/gpjshell/APDULogManager;
.super Ljava/lang/Object;
.source "APDULogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/fhooe/usmile/gpjshell/APDULogManager$APDULogEntry;,
        Lat/fhooe/usmile/gpjshell/APDULogManager$OnLogUpdatedListener;
    }
.end annotation


# static fields
.field private static _INSTANCE:Lat/fhooe/usmile/gpjshell/APDULogManager;


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lat/fhooe/usmile/gpjshell/APDULogManager$OnLogUpdatedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lat/fhooe/usmile/gpjshell/APDULogManager$APDULogEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/APDULogManager;->mLogs:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/APDULogManager;->mListeners:Ljava/util/List;

    .line 57
    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .line 148
    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-byte v4, p0, v3

    .line 151
    .local v4, "b":B
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v2

    const-string v5, "%02X"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getInstance()Lat/fhooe/usmile/gpjshell/APDULogManager;
    .locals 2

    const-class v0, Lat/fhooe/usmile/gpjshell/APDULogManager;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lat/fhooe/usmile/gpjshell/APDULogManager;->_INSTANCE:Lat/fhooe/usmile/gpjshell/APDULogManager;

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Lat/fhooe/usmile/gpjshell/APDULogManager;

    invoke-direct {v1}, Lat/fhooe/usmile/gpjshell/APDULogManager;-><init>()V

    sput-object v1, Lat/fhooe/usmile/gpjshell/APDULogManager;->_INSTANCE:Lat/fhooe/usmile/gpjshell/APDULogManager;

    .line 63
    :cond_0
    sget-object v1, Lat/fhooe/usmile/gpjshell/APDULogManager;->_INSTANCE:Lat/fhooe/usmile/gpjshell/APDULogManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 59
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private notifyListeners()V
    .locals 3

    .line 137
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/APDULogManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/APDULogManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lat/fhooe/usmile/gpjshell/APDULogManager$OnLogUpdatedListener;

    .line 139
    .local v2, "listener":Lat/fhooe/usmile/gpjshell/APDULogManager$OnLogUpdatedListener;
    invoke-interface {v2}, Lat/fhooe/usmile/gpjshell/APDULogManager$OnLogUpdatedListener;->onLogUpdated()V

    .line 140
    .end local v2    # "listener":Lat/fhooe/usmile/gpjshell/APDULogManager$OnLogUpdatedListener;
    goto :goto_0

    .line 141
    :cond_0
    monitor-exit v0

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public addListener(Lat/fhooe/usmile/gpjshell/APDULogManager$OnLogUpdatedListener;)V
    .locals 2
    .param p1, "listener"    # Lat/fhooe/usmile/gpjshell/APDULogManager$OnLogUpdatedListener;

    .line 120
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/APDULogManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/APDULogManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/APDULogManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_0
    monitor-exit v0

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearLogs()V
    .locals 2

    .line 110
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/APDULogManager;->mLogs:Ljava/util/List;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/APDULogManager;->mLogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 112
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-direct {p0}, Lat/fhooe/usmile/gpjshell/APDULogManager;->notifyListeners()V

    .line 114
    return-void

    .line 112
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getLogs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lat/fhooe/usmile/gpjshell/APDULogManager$APDULogEntry;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/APDULogManager;->mLogs:Ljava/util/List;

    monitor-enter v0

    .line 89
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/APDULogManager;->mLogs:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLogsAsString()Ljava/lang/String;
    .locals 6

    .line 97
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/APDULogManager;->mLogs:Ljava/util/List;

    monitor-enter v0

    .line 98
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/APDULogManager;->mLogs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lat/fhooe/usmile/gpjshell/APDULogManager$APDULogEntry;

    .line 100
    .local v3, "entry":Lat/fhooe/usmile/gpjshell/APDULogManager$APDULogEntry;
    invoke-virtual {v3}, Lat/fhooe/usmile/gpjshell/APDULogManager$APDULogEntry;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    nop

    .end local v3    # "entry":Lat/fhooe/usmile/gpjshell/APDULogManager$APDULogEntry;
    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 103
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public logAPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .line 70
    new-instance v0, Lat/fhooe/usmile/gpjshell/APDULogManager$APDULogEntry;

    invoke-direct {v0, p1, p2, p3}, Lat/fhooe/usmile/gpjshell/APDULogManager$APDULogEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .local v0, "entry":Lat/fhooe/usmile/gpjshell/APDULogManager$APDULogEntry;
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/APDULogManager;->mLogs:Ljava/util/List;

    monitor-enter v1

    .line 72
    :try_start_0
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/APDULogManager;->mLogs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-direct {p0}, Lat/fhooe/usmile/gpjshell/APDULogManager;->notifyListeners()V

    .line 75
    return-void

    .line 73
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public logAPDU([B[BLjava/lang/String;)V
    .locals 2
    .param p1, "command"    # [B
    .param p2, "response"    # [B
    .param p3, "description"    # Ljava/lang/String;

    .line 81
    invoke-static {p1}, Lat/fhooe/usmile/gpjshell/APDULogManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lat/fhooe/usmile/gpjshell/APDULogManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lat/fhooe/usmile/gpjshell/APDULogManager;->logAPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public removeListener(Lat/fhooe/usmile/gpjshell/APDULogManager$OnLogUpdatedListener;)V
    .locals 2
    .param p1, "listener"    # Lat/fhooe/usmile/gpjshell/APDULogManager$OnLogUpdatedListener;

    .line 131
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/APDULogManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/APDULogManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 133
    monitor-exit v0

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
