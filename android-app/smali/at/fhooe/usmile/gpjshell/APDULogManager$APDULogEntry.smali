.class public Lat/fhooe/usmile/gpjshell/APDULogManager$APDULogEntry;
.super Ljava/lang/Object;
.source "APDULogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/fhooe/usmile/gpjshell/APDULogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "APDULogEntry"
.end annotation


# instance fields
.field public final command:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final response:Ljava/lang/String;

.field public final timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lat/fhooe/usmile/gpjshell/APDULogManager$APDULogEntry;->timestamp:J

    .line 27
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/APDULogManager$APDULogEntry;->command:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lat/fhooe/usmile/gpjshell/APDULogManager$APDULogEntry;->response:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lat/fhooe/usmile/gpjshell/APDULogManager$APDULogEntry;->description:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getFormattedTime()Ljava/lang/String;
    .locals 4

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 34
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lat/fhooe/usmile/gpjshell/APDULogManager$APDULogEntry;->timestamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lat/fhooe/usmile/gpjshell/APDULogManager$APDULogEntry;->getFormattedTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/APDULogManager$APDULogEntry;->description:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/APDULogManager$APDULogEntry;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/APDULogManager$APDULogEntry;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_0
    const-string v1, "\n  CMD> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/APDULogManager$APDULogEntry;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, "\n  RSP> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/APDULogManager$APDULogEntry;->response:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
