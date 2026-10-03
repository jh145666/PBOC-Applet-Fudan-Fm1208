.class public Lat/fhooe/usmile/gpjshell/TimerLog;
.super Ljava/lang/Object;
.source "TimerLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TsLog"


# instance fields
.field private currentStart:J

.field private mDurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/TimerLog;->mDurations:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/TimerLog;->mDurations:Ljava/util/List;

    .line 28
    return-void
.end method

.method private start()V
    .locals 2

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lat/fhooe/usmile/gpjshell/TimerLog;->currentStart:J

    .line 37
    return-void
.end method


# virtual methods
.method public beginTest()V
    .locals 2

    .line 31
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/TimerLog;->mDurations:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-direct {p0}, Lat/fhooe/usmile/gpjshell/TimerLog;->start()V

    .line 33
    return-void
.end method

.method log(Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;)V
    .locals 4
    .param p1, "event"    # Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

    .line 40
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/TimerLog;->mDurations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lat/fhooe/usmile/gpjshell/TimerLog;->currentStart:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 42
    .local v0, "duration":Ljava/lang/Integer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TsLog"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/TimerLog;->mDurations:Ljava/util/List;

    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/TimerLog;->mDurations:Ljava/util/List;

    .line 45
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 44
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 46
    .local v1, "currentRun":Ljava/util/Map;, "Ljava/util/Map<Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;Ljava/lang/Integer;>;"
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-direct {p0}, Lat/fhooe/usmile/gpjshell/TimerLog;->start()V

    .line 50
    .end local v0    # "duration":Ljava/lang/Integer;
    .end local v1    # "currentRun":Ljava/util/Map;, "Ljava/util/Map<Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method public writeToFile(Ljava/lang/String;[Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;)V
    .locals 12
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "eventsToWrite"    # [Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

    .line 55
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 58
    .local v0, "writer":Ljava/io/BufferedWriter;
    array-length v1, p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string v4, ", "

    if-ge v3, v1, :cond_0

    :try_start_1
    aget-object v5, p2, v3

    .line 59
    .local v5, "event":Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 58
    .end local v5    # "event":Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    :cond_0
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(I)V

    .line 64
    const/4 v3, 0x0

    .line 65
    .local v3, "i":I
    iget-object v5, p0, Lat/fhooe/usmile/gpjshell/TimerLog;->mDurations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 66
    .local v6, "run":Ljava/util/Map;, "Ljava/util/Map<Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;Ljava/lang/Integer;>;"
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 67
    array-length v7, p2

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_2

    aget-object v9, p2, v8

    .line 68
    .local v9, "event":Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 69
    .local v10, "duration":Ljava/lang/Integer;
    if-nez v10, :cond_1

    .line 70
    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 72
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 67
    .end local v9    # "event":Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;
    .end local v10    # "duration":Ljava/lang/Integer;
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 75
    :cond_2
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(I)V

    .line 76
    nop

    .end local v6    # "run":Ljava/util/Map;, "Ljava/util/Map<Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;Ljava/lang/Integer;>;"
    add-int/lit8 v3, v3, 0x1

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    .end local v3    # "i":I
    goto :goto_4

    .line 79
    .end local v0    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 83
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    return-void
.end method
