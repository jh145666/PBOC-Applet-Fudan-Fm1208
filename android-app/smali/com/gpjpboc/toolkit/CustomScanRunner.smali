.class public Lcom/gpjpboc/toolkit/CustomScanRunner;
.super Ljava/lang/Object;
.source "CustomScanRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final host:Lcom/gpjpboc/toolkit/CustomScanHost;

.field private final ids:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gpjpboc/toolkit/CustomScanHost;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/gpjpboc/toolkit/CustomScanRunner;->host:Lcom/gpjpboc/toolkit/CustomScanHost;

    .line 11
    iput-object p2, p0, Lcom/gpjpboc/toolkit/CustomScanRunner;->ids:Ljava/lang/String;

    return-void
.end method

.method private static hex([BI)Ljava/lang/String;
    .locals 6

    .line 59
    array-length v0, p0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v0, :cond_1

    .line 64
    array-length p0, p0

    if-le p0, p1, :cond_0

    const-string p0, "\u2026"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 62
    :cond_1
    aget-byte v4, p0, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v2

    const-string v4, "%02X"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static hex4(I)Ljava/lang/String;
    .locals 2

    const v0, 0xffff

    and-int/2addr p0, v0

    .line 55
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "%04X"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 19
    :try_start_0
    iget-object v2, p0, Lcom/gpjpboc/toolkit/CustomScanRunner;->ids:Ljava/lang/String;

    invoke-static {v2}, Lcom/gpjpboc/toolkit/ScanExtras;->parseIds(Ljava/lang/String;)[I

    move-result-object v2

    if-eqz v2, :cond_5

    .line 20
    array-length v3, v2

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 24
    :cond_0
    const-string v3, "\u81ea\u5b9a\u4e49\u626b\u63cf "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u4e2a ID\uff1a\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    .line 25
    :goto_0
    array-length v4, v2

    if-lt v3, v4, :cond_1

    goto :goto_1

    .line 26
    :cond_1
    iget-object v4, p0, Lcom/gpjpboc/toolkit/CustomScanRunner;->host:Lcom/gpjpboc/toolkit/CustomScanHost;

    invoke-interface {v4}, Lcom/gpjpboc/toolkit/CustomScanHost;->isStopped()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 44
    const-string v2, "\n\u5df2\u505c\u6b62\uff08\u4fdd\u7559\u5df2\u626b\u5230\u7684\u90e8\u5206\uff09"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 46
    :cond_2
    const-string v2, "\n\u81ea\u5b9a\u4e49\u626b\u63cf\u5b8c\u6210\uff08\u547d\u4e2d\u7684\u4ee5\u4e0a\u5217\u51fa\uff09"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 30
    :cond_3
    aget v4, v2, v3

    .line 31
    iget-object v5, p0, Lcom/gpjpboc/toolkit/CustomScanRunner;->host:Lcom/gpjpboc/toolkit/CustomScanHost;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u626b\u63cf "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/gpjpboc/toolkit/CustomScanRunner;->hex4(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v8, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    int-to-long v8, v3

    const-wide/16 v10, 0x64

    mul-long v8, v8, v10

    .line 32
    array-length v3, v2

    int-to-long v10, v3

    div-long/2addr v8, v10

    long-to-int v3, v8

    .line 31
    invoke-interface {v5, v6, v3}, Lcom/gpjpboc/toolkit/CustomScanHost;->onPhase(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :try_start_1
    iget-object v3, p0, Lcom/gpjpboc/toolkit/CustomScanRunner;->host:Lcom/gpjpboc/toolkit/CustomScanHost;

    invoke-interface {v3, v4}, Lcom/gpjpboc/toolkit/CustomScanHost;->scanFid(I)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    .line 39
    :try_start_2
    array-length v5, v3

    const/4 v6, 0x2

    if-le v5, v6, :cond_4

    .line 40
    invoke-static {v4}, Lcom/gpjpboc/toolkit/CustomScanRunner;->hex4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u2192 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-static {v3, v5}, Lcom/gpjpboc/toolkit/CustomScanRunner;->hex([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    move v3, v7

    goto/16 :goto_0

    .line 21
    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/gpjpboc/toolkit/CustomScanRunner;->host:Lcom/gpjpboc/toolkit/CustomScanHost;

    const-string v3, "ID \u683c\u5f0f\u9519\u8bef\uff08\u793a\u4f8b\uff1a3F01 \u6216 2F00-2FFF\uff0c\u9017\u53f7\u5206\u9694\uff09"

    invoke-interface {v2, v3, v1}, Lcom/gpjpboc/toolkit/CustomScanHost;->onFinish(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v2

    .line 49
    const-string v3, "\n\u626b\u63cf\u5931\u8d25: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :goto_4
    iget-object v2, p0, Lcom/gpjpboc/toolkit/CustomScanRunner;->host:Lcom/gpjpboc/toolkit/CustomScanHost;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Lcom/gpjpboc/toolkit/CustomScanHost;->onFinish(Ljava/lang/String;Z)V

    return-void
.end method
