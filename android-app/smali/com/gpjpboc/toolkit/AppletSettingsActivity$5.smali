.class Lcom/gpjpboc/toolkit/AppletSettingsActivity$5;
.super Ljava/lang/Thread;
.source "AppletSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpjpboc/toolkit/AppletSettingsActivity;->pushToApplet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpjpboc/toolkit/AppletSettingsActivity;

.field private final synthetic val$d:Landroid/nfc/tech/IsoDep;


# direct methods
.method constructor <init>(Lcom/gpjpboc/toolkit/AppletSettingsActivity;Landroid/nfc/tech/IsoDep;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$5;->this$0:Lcom/gpjpboc/toolkit/AppletSettingsActivity;

    iput-object p2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$5;->val$d:Landroid/nfc/tech/IsoDep;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/gpjpboc/toolkit/AppletSettingsActivity$5;)Lcom/gpjpboc/toolkit/AppletSettingsActivity;
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$5;->this$0:Lcom/gpjpboc/toolkit/AppletSettingsActivity;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 297
    :try_start_0
    sget-object v0, Lcom/gpjpboc/toolkit/Config;->aid:Ljava/lang/String;

    invoke-static {v0}, Lcom/gpjpboc/toolkit/Config;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 299
    const-string v0, "AID\u9519\u8bef"

    goto/16 :goto_1

    .line 301
    :cond_0
    array-length v1, v0

    const/4 v2, 0x6

    add-int/2addr v1, v2

    new-array v1, v1, [B

    const/4 v3, 0x0

    .line 302
    aput-byte v3, v1, v3

    const/16 v4, -0x5c

    const/4 v5, 0x1

    aput-byte v4, v1, v5

    const/4 v4, 0x4

    const/4 v6, 0x2

    aput-byte v4, v1, v6

    const/4 v7, 0x3

    aput-byte v3, v1, v7

    .line 303
    array-length v8, v0

    int-to-byte v8, v8

    aput-byte v8, v1, v4

    .line 304
    array-length v8, v0

    const/4 v9, 0x5

    invoke-static {v0, v3, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$5;->val$d:Landroid/nfc/tech/IsoDep;

    invoke-static {v0, v1}, Lcom/gpjpboc/toolkit/NfcIo;->xfer(Landroid/nfc/tech/IsoDep;[B)[B

    move-result-object v0

    .line 306
    invoke-static {v0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->access$2([B)I

    move-result v0

    const v1, 0x9000

    if-eq v0, v1, :cond_1

    .line 307
    const-string v0, "Applet\u4e0d\u5728\u5361\u4e0a\uff0c\u4ec5\u4fdd\u5b58\u672c\u5730"

    goto/16 :goto_1

    .line 309
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 310
    sget-object v8, Lcom/gpjpboc/toolkit/Config;->macKey:Ljava/lang/String;

    invoke-static {v8}, Lcom/gpjpboc/toolkit/Config;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v0, v5, v8}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->access$10(Ljava/io/ByteArrayOutputStream;I[B)V

    .line 311
    sget-object v8, Lcom/gpjpboc/toolkit/Config;->extKey:Ljava/lang/String;

    invoke-static {v8}, Lcom/gpjpboc/toolkit/Config;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v0, v6, v8}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->access$10(Ljava/io/ByteArrayOutputStream;I[B)V

    .line 312
    sget-object v8, Lcom/gpjpboc/toolkit/Config;->intKey:Ljava/lang/String;

    invoke-static {v8}, Lcom/gpjpboc/toolkit/Config;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->access$10(Ljava/io/ByteArrayOutputStream;I[B)V

    .line 313
    sget-object v8, Lcom/gpjpboc/toolkit/Config;->pin:Ljava/lang/String;

    if-nez v8, :cond_2

    new-array v8, v3, [B

    goto :goto_0

    :cond_2
    sget-object v8, Lcom/gpjpboc/toolkit/Config;->pin:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    :goto_0
    invoke-static {v0, v4, v8}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->access$10(Ljava/io/ByteArrayOutputStream;I[B)V

    .line 314
    new-array v8, v5, [B

    sget-boolean v10, Lcom/gpjpboc/toolkit/Config;->authOn:Z

    int-to-byte v10, v10

    aput-byte v10, v8, v3

    invoke-static {v0, v9, v8}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->access$10(Ljava/io/ByteArrayOutputStream;I[B)V

    .line 315
    new-array v8, v5, [B

    sget v10, Lcom/gpjpboc/toolkit/Config;->atcMode:I

    int-to-byte v10, v10

    aput-byte v10, v8, v3

    invoke-static {v0, v2, v8}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->access$10(Ljava/io/ByteArrayOutputStream;I[B)V

    .line 316
    new-array v2, v6, [B

    sget v8, Lcom/gpjpboc/toolkit/Config;->atcVal:I

    const/16 v10, 0x8

    shr-int/2addr v8, v10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v2, v3

    sget v8, Lcom/gpjpboc/toolkit/Config;->atcVal:I

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v2, v5

    const/4 v8, 0x7

    invoke-static {v0, v8, v2}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->access$10(Ljava/io/ByteArrayOutputStream;I[B)V

    .line 317
    new-array v2, v5, [B

    sget v8, Lcom/gpjpboc/toolkit/Config;->walletMode:I

    int-to-byte v8, v8

    aput-byte v8, v2, v3

    invoke-static {v0, v10, v2}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->access$10(Ljava/io/ByteArrayOutputStream;I[B)V

    .line 318
    new-array v2, v5, [B

    sget-boolean v8, Lcom/gpjpboc/toolkit/Config;->recordsOn:Z

    int-to-byte v8, v8

    aput-byte v8, v2, v3

    const/16 v8, 0x9

    invoke-static {v0, v8, v2}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->access$10(Ljava/io/ByteArrayOutputStream;I[B)V

    .line 319
    sget-object v2, Lcom/gpjpboc/toolkit/Config;->fci:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 320
    sget-object v2, Lcom/gpjpboc/toolkit/Config;->fci:Ljava/lang/String;

    invoke-static {v2}, Lcom/gpjpboc/toolkit/Config;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v8, 0xa

    invoke-static {v0, v8, v2}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->access$10(Ljava/io/ByteArrayOutputStream;I[B)V

    .line 322
    :cond_3
    sget-object v2, Lcom/gpjpboc/toolkit/Config;->fciMf:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 323
    sget-object v2, Lcom/gpjpboc/toolkit/Config;->fciMf:Ljava/lang/String;

    invoke-static {v2}, Lcom/gpjpboc/toolkit/Config;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v8, 0xb

    invoke-static {v0, v8, v2}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->access$10(Ljava/io/ByteArrayOutputStream;I[B)V

    .line 325
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 326
    array-length v2, v0

    add-int/2addr v2, v9

    new-array v2, v2, [B

    const/16 v8, -0x80

    .line 327
    aput-byte v8, v2, v3

    const/16 v8, -0x24

    aput-byte v8, v2, v5

    aput-byte v3, v2, v6

    aput-byte v3, v2, v7

    .line 328
    array-length v5, v0

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 329
    array-length v4, v0

    invoke-static {v0, v3, v2, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$5;->val$d:Landroid/nfc/tech/IsoDep;

    invoke-static {v0, v2}, Lcom/gpjpboc/toolkit/NfcIo;->xfer(Landroid/nfc/tech/IsoDep;[B)[B

    move-result-object v0

    .line 331
    invoke-static {v0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->access$2([B)I

    move-result v2

    if-ne v2, v1, :cond_5

    const-string v0, "\u5e76\u5df2\u4e0b\u53d1\u5230Applet \u2713"

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0b\u53d1\u5931\u8d25 SW="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->access$2([B)I

    move-result v0

    invoke-static {v0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->access$3(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0b\u53d1\u5f02\u5e38: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    :goto_1
    invoke-static {}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->access$6()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/gpjpboc/toolkit/AppletSettingsActivity$5$1;

    invoke-direct {v2, p0, v0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity$5$1;-><init>(Lcom/gpjpboc/toolkit/AppletSettingsActivity$5;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
