.class public Lcom/gpjpboc/toolkit/WalletActivity;
.super Landroid/app/Activity;
.source "WalletActivity.java"


# static fields
.field private static final H:Landroid/os/Handler;

.field private static termSeq:I


# instance fields
.field private volatile busy:Z

.field private dep:Landroid/nfc/tech/IsoDep;

.field private etAmount:Landroid/widget/EditText;

.field private etKeyIdx:Landroid/widget/EditText;

.field private etPin:Landroid/widget/EditText;

.field private rg:Landroid/widget/RadioGroup;

.field private tvOut:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/gpjpboc/toolkit/WalletActivity;->H:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 31
    sput v0, Lcom/gpjpboc/toolkit/WalletActivity;->termSeq:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/gpjpboc/toolkit/WalletActivity;Ljava/lang/String;)V
    .locals 0

    .line 183
    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->run(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/gpjpboc/toolkit/WalletActivity;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/gpjpboc/toolkit/WalletActivity;->tvOut:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2(Lcom/gpjpboc/toolkit/WalletActivity;Landroid/nfc/tech/IsoDep;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 256
    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->doSelect(Landroid/nfc/tech/IsoDep;)V

    return-void
.end method

.method static synthetic access$3(Lcom/gpjpboc/toolkit/WalletActivity;Landroid/nfc/tech/IsoDep;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 319
    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->doBalance(Landroid/nfc/tech/IsoDep;)V

    return-void
.end method

.method static synthetic access$4(Lcom/gpjpboc/toolkit/WalletActivity;Landroid/nfc/tech/IsoDep;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 278
    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->doVerifyPin(Landroid/nfc/tech/IsoDep;)V

    return-void
.end method

.method static synthetic access$5(Lcom/gpjpboc/toolkit/WalletActivity;Landroid/nfc/tech/IsoDep;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 340
    invoke-direct {p0, p1, p2}, Lcom/gpjpboc/toolkit/WalletActivity;->doTrade(Landroid/nfc/tech/IsoDep;Z)V

    return-void
.end method

.method static synthetic access$6(Lcom/gpjpboc/toolkit/WalletActivity;Ljava/lang/String;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/gpjpboc/toolkit/WalletActivity;Ljava/lang/String;)V
    .locals 0

    .line 173
    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->toast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/gpjpboc/toolkit/WalletActivity;Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/gpjpboc/toolkit/WalletActivity;->busy:Z

    return-void
.end method

.method private cmd([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/gpjpboc/toolkit/WalletActivity;->dep:Landroid/nfc/tech/IsoDep;

    invoke-static {v0, p1}, Lcom/gpjpboc/toolkit/NfcIo;->xfer(Landroid/nfc/tech/IsoDep;[B)[B

    move-result-object v0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u2192 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gpjpboc/toolkit/Config;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    .line 225
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u2190 "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gpjpboc/toolkit/Config;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method private doBalance(Landroid/nfc/tech/IsoDep;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 320
    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->doSelect(Landroid/nfc/tech/IsoDep;)V

    .line 321
    invoke-direct {p0}, Lcom/gpjpboc/toolkit/WalletActivity;->walletP2()I

    move-result p1

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--- \u8bfb\u4f59\u989d "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/gpjpboc/toolkit/WalletActivity;->walletName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (80 5C 00 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "%02X"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") ---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 323
    new-array v0, v0, [B

    const/16 v1, -0x80

    aput-byte v1, v0, v4

    const/16 v1, 0x5c

    aput-byte v1, v0, v2

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    const/4 p1, 0x4

    aput-byte p1, v0, p1

    invoke-direct {p0, v0}, Lcom/gpjpboc/toolkit/WalletActivity;->cmd([B)[B

    move-result-object v0

    .line 324
    invoke-direct {p0, v0}, Lcom/gpjpboc/toolkit/WalletActivity;->sw([B)I

    move-result v3

    const v5, 0x9000

    if-ne v3, v5, :cond_0

    .line 326
    invoke-direct {p0, v0}, Lcom/gpjpboc/toolkit/WalletActivity;->trim([B)[B

    move-result-object v0

    .line 327
    array-length v5, v0

    if-lt v5, p1, :cond_0

    .line 328
    aget-byte p1, v0, v4

    int-to-long v5, p1

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    const/16 p1, 0x18

    shl-long/2addr v5, p1

    aget-byte p1, v0, v2

    int-to-long v9, p1

    and-long/2addr v9, v7

    const/16 p1, 0x10

    shl-long/2addr v9, p1

    or-long/2addr v5, v9

    const/4 p1, 0x2

    aget-byte p1, v0, p1

    int-to-long v9, p1

    and-long/2addr v9, v7

    const/16 p1, 0x8

    shl-long/2addr v9, p1

    or-long/2addr v5, v9

    aget-byte p1, v0, v1

    int-to-long v0, p1

    and-long/2addr v0, v7

    or-long/2addr v0, v5

    .line 329
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/gpjpboc/toolkit/WalletActivity;->walletName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " \u4f59\u989d: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-wide/16 v5, 0x64

    div-long v7, v0, v5

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    rem-long/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const-string v0, "%02d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u5143"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 330
    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    .line 331
    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 335
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u8bfb\u4f59\u989d\u5931\u8d25 SW="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const-string v0, "%04X"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    .line 336
    const-string p1, "\u8bfb\u4f59\u989d\u5931\u8d25"

    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->toast(Ljava/lang/String;)V

    return-void
.end method

.method private doSelect(Landroid/nfc/tech/IsoDep;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 257
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "--- \u9009\u62e9\u5e94\u7528 "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/gpjpboc/toolkit/Config;->aid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " ---"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    const/4 p1, 0x7

    .line 258
    new-array p1, p1, [B

    const/4 v0, 0x1

    const/16 v1, -0x5c

    aput-byte v1, p1, v0

    const/4 v2, 0x4

    const/4 v3, 0x2

    aput-byte v3, p1, v2

    const/16 v4, 0x3f

    const/4 v5, 0x5

    aput-byte v4, p1, v5

    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->cmd([B)[B

    .line 259
    sget-object p1, Lcom/gpjpboc/toolkit/Config;->aid:Ljava/lang/String;

    invoke-static {p1}, Lcom/gpjpboc/toolkit/Config;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    .line 260
    const-string p1, "AID \u683c\u5f0f\u9519\u8bef"

    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    return-void

    .line 261
    :cond_0
    array-length v4, p1

    add-int/lit8 v4, v4, 0x6

    new-array v4, v4, [B

    const/4 v6, 0x0

    .line 262
    aput-byte v6, v4, v6

    aput-byte v1, v4, v0

    aput-byte v2, v4, v3

    const/4 v1, 0x3

    aput-byte v6, v4, v1

    .line 263
    array-length v1, p1

    int-to-byte v1, v1

    aput-byte v1, v4, v2

    .line 264
    array-length v1, p1

    invoke-static {p1, v6, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    invoke-direct {p0, v4}, Lcom/gpjpboc/toolkit/WalletActivity;->cmd([B)[B

    move-result-object p1

    .line 266
    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->sw([B)I

    move-result p1

    const v1, 0x9000

    if-ne p1, v1, :cond_1

    .line 268
    const-string p1, "\u9009\u62e9\u5e94\u7528\u6210\u529f"

    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->toast(Ljava/lang/String;)V

    .line 269
    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9009\u62e9\u5e94\u7528\u5931\u8d25 SW="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v6

    const-string p1, "%04X"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    .line 272
    const-string p1, "\u9009\u62e9\u5e94\u7528\u5931\u8d25"

    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->toast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private doTrade(Landroid/nfc/tech/IsoDep;Z)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 341
    invoke-direct/range {p0 .. p1}, Lcom/gpjpboc/toolkit/WalletActivity;->doSelect(Landroid/nfc/tech/IsoDep;)V

    .line 342
    invoke-direct/range {p0 .. p0}, Lcom/gpjpboc/toolkit/WalletActivity;->walletP2()I

    move-result v2

    .line 343
    invoke-direct {v0, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->tradeType(Z)I

    move-result v3

    .line 344
    iget-object v4, v0, Lcom/gpjpboc/toolkit/WalletActivity;->etAmount:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_18

    const-wide v6, 0xffffffffL

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    goto/16 :goto_d

    :cond_0
    const/16 v6, 0x10

    const/4 v7, 0x1

    .line 348
    :try_start_0
    iget-object v8, v0, Lcom/gpjpboc/toolkit/WalletActivity;->etKeyIdx:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    const/4 v8, 0x1

    :goto_0
    if-ltz v8, :cond_1

    const/16 v9, 0xff

    if-le v8, v9, :cond_2

    :cond_1
    const/4 v8, 0x1

    :cond_2
    const/16 v9, 0x18

    shr-long v10, v4, v9

    long-to-int v11, v10

    int-to-byte v10, v11

    shr-long v11, v4, v6

    long-to-int v12, v11

    int-to-byte v11, v12

    const/16 v12, 0x8

    shr-long v13, v4, v12

    long-to-int v14, v13

    int-to-byte v13, v14

    long-to-int v14, v4

    int-to-byte v14, v14

    const/4 v15, 0x4

    .line 354
    new-array v12, v15, [B

    const/4 v9, 0x0

    aput-byte v10, v12, v9

    aput-byte v11, v12, v7

    const/4 v10, 0x2

    aput-byte v13, v12, v10

    const/4 v11, 0x3

    aput-byte v14, v12, v11

    .line 355
    invoke-direct/range {p0 .. p0}, Lcom/gpjpboc/toolkit/WalletActivity;->termId()[B

    move-result-object v13

    .line 356
    invoke-direct/range {p0 .. p0}, Lcom/gpjpboc/toolkit/WalletActivity;->masterKey()[B

    move-result-object v14

    .line 358
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v15, "--- "

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "\u5708\u5b58"

    const-string v19, "\u6d88\u8d39"

    if-eqz v1, :cond_3

    move-object v11, v15

    goto :goto_1

    :cond_3
    move-object/from16 v11, v19

    :goto_1
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/gpjpboc/toolkit/WalletActivity;->walletName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 359
    const-string v11, " \u91d1\u989d="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, "\u5206 \u5bc6\u94a5\u7d22\u5f15="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v11, v10, v9

    const-string v11, "%02X"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " ---"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 358
    invoke-direct {v0, v6}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    const/16 v6, 0x11

    .line 362
    new-array v6, v6, [B

    const/16 v10, -0x80

    .line 363
    aput-byte v10, v6, v9

    const/16 v11, 0x50

    aput-byte v11, v6, v7

    xor-int/lit8 v11, v1, 0x1

    const/16 v20, 0x2

    .line 364
    aput-byte v11, v6, v20

    int-to-byte v2, v2

    const/4 v11, 0x3

    .line 365
    aput-byte v2, v6, v11

    const/16 v2, 0xb

    const/4 v11, 0x4

    .line 366
    aput-byte v2, v6, v11

    int-to-byte v8, v8

    const/4 v2, 0x5

    .line 367
    aput-byte v8, v6, v2

    const/4 v8, 0x6

    .line 368
    invoke-static {v12, v9, v6, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v11, 0xa

    .line 369
    invoke-static {v13, v9, v6, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v11, 0xf

    if-eqz v1, :cond_4

    const/16 v17, 0x10

    goto :goto_2

    :cond_4
    const/16 v17, 0xf

    :goto_2
    const/16 v21, 0x10

    .line 370
    aput-byte v17, v6, v21

    .line 371
    invoke-direct {v0, v6}, Lcom/gpjpboc/toolkit/WalletActivity;->cmd([B)[B

    move-result-object v6

    .line 372
    invoke-direct {v0, v6}, Lcom/gpjpboc/toolkit/WalletActivity;->sw([B)I

    move-result v8

    const v10, 0x9000

    const-string v2, "%04X"

    if-eq v8, v10, :cond_7

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_5

    move-object v4, v15

    goto :goto_3

    :cond_5
    move-object/from16 v4, v19

    :goto_3
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u521d\u59cb\u5316\u5931\u8d25 SW="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {v0, v6}, Lcom/gpjpboc/toolkit/WalletActivity;->sw([B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v4, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move-object/from16 v15, v19

    .line 374
    :goto_4
    const-string v1, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-virtual {v15, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 377
    :cond_7
    invoke-direct {v0, v6}, Lcom/gpjpboc/toolkit/WalletActivity;->trim([B)[B

    move-result-object v6

    .line 378
    const-string v8, "\u521d\u59cb\u5316\u54cd\u5e94\u957f\u5ea6\u9519\u8bef: "

    if-eqz v1, :cond_8

    array-length v15, v6

    const/16 v10, 0x10

    if-ge v15, v10, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    return-void

    :cond_8
    if-nez v1, :cond_9

    .line 379
    array-length v10, v6

    if-ge v10, v11, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    return-void

    .line 383
    :cond_9
    aget-byte v8, v6, v9

    move-object v10, v12

    int-to-long v11, v8

    const-wide/16 v22, 0xff

    and-long v11, v11, v22

    const/16 v8, 0x18

    shl-long/2addr v11, v8

    aget-byte v8, v6, v7

    int-to-long v7, v8

    and-long v7, v7, v22

    const/16 v17, 0x10

    shl-long v7, v7, v17

    or-long/2addr v7, v11

    const/4 v11, 0x2

    aget-byte v12, v6, v11

    move-object/from16 v24, v10

    int-to-long v9, v12

    and-long v9, v9, v22

    const/16 v12, 0x8

    shl-long/2addr v9, v12

    or-long/2addr v7, v9

    const/4 v9, 0x3

    aget-byte v10, v6, v9

    int-to-long v9, v10

    and-long v9, v9, v22

    or-long/2addr v7, v9

    const/4 v9, 0x4

    .line 384
    aget-byte v10, v6, v9

    const/4 v12, 0x5

    aget-byte v18, v6, v12

    new-array v12, v11, [B

    const/4 v11, 0x0

    aput-byte v10, v12, v11

    const/4 v10, 0x1

    aput-byte v18, v12, v10

    .line 385
    new-array v10, v9, [B

    if-eqz v1, :cond_a

    const/16 v15, 0x8

    goto :goto_5

    :cond_a
    const/16 v15, 0xb

    .line 386
    :goto_5
    invoke-static {v6, v15, v10, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "\u65e7\u4f59\u989d="

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\u5206  ATC="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v12}, Lcom/gpjpboc/toolkit/Config;->bytesToHex([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " \u968f\u673a\u6570="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v10}, Lcom/gpjpboc/toolkit/Config;->bytesToHex([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_b

    const/4 v9, 0x2

    .line 392
    new-array v11, v9, [B

    const/16 v15, -0x80

    const/16 v23, 0x0

    aput-byte v15, v11, v23

    move-object/from16 v25, v2

    goto :goto_6

    :cond_b
    const/4 v9, 0x2

    const/16 v23, 0x0

    .line 394
    sget v11, Lcom/gpjpboc/toolkit/WalletActivity;->termSeq:I

    shr-int/lit8 v15, v11, 0x8

    int-to-byte v15, v15

    int-to-byte v11, v11

    move-object/from16 v25, v2

    new-array v2, v9, [B

    aput-byte v15, v2, v23

    const/4 v9, 0x1

    aput-byte v11, v2, v9

    move-object v11, v2

    .line 396
    :goto_6
    invoke-static {v14, v10, v12, v11}, Lcom/gpjpboc/toolkit/CardIO;->deriveSession([B[B[B[B)[B

    move-result-object v2

    if-nez v2, :cond_c

    .line 397
    const-string v1, "\u8fc7\u7a0b\u5bc6\u94a5\u6d3e\u751f\u5931\u8d25"

    invoke-direct {v0, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    return-void

    :cond_c
    const/16 v10, 0x9

    if-eqz v1, :cond_f

    const/16 v11, 0xf

    .line 401
    new-array v12, v11, [B

    const/4 v11, 0x4

    const/4 v14, 0x0

    .line 402
    invoke-static {v6, v14, v12, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v15, v24

    .line 403
    invoke-static {v15, v14, v12, v11, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-byte v9, v3

    const/16 v18, 0x8

    .line 404
    aput-byte v9, v12, v18

    const/4 v9, 0x6

    .line 405
    invoke-static {v13, v14, v12, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 406
    invoke-static {v2, v12}, Lcom/gpjpboc/toolkit/CardIO;->macPboc([B[B)[B

    move-result-object v9

    .line 407
    new-array v12, v11, [B

    const/16 v10, 0xc

    .line 408
    invoke-static {v6, v10, v12, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v9, :cond_e

    .line 409
    aget-byte v6, v9, v14

    aget-byte v10, v12, v14

    if-ne v6, v10, :cond_e

    const/4 v6, 0x1

    aget-byte v10, v9, v6

    aget-byte v11, v12, v6

    if-ne v10, v11, :cond_e

    const/4 v6, 0x2

    aget-byte v10, v9, v6

    aget-byte v11, v12, v6

    if-ne v10, v11, :cond_e

    const/4 v6, 0x3

    aget-byte v10, v9, v6

    aget-byte v11, v12, v6

    if-eq v10, v11, :cond_d

    goto :goto_7

    .line 414
    :cond_d
    const-string v6, "MAC1 \u6821\u9a8c\u901a\u8fc7"

    invoke-direct {v0, v6}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 410
    :cond_e
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MAC1 \u9a8c\u8bc1\u5931\u8d25\uff08\u5361\u7247\u4e0e\u7ec8\u7aef\u5bc6\u94a5\u4e0d\u4e00\u81f4\uff1f\uff09\u8ba1\u7b97="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/gpjpboc/toolkit/Config;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u5361\u7247="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v12}, Lcom/gpjpboc/toolkit/Config;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    .line 411
    const-string v1, "MAC1 \u9a8c\u8bc1\u5931\u8d25"

    invoke-direct {v0, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->toast(Ljava/lang/String;)V

    return-void

    :cond_f
    move-object/from16 v15, v24

    .line 418
    :goto_8
    invoke-static {}, Lcom/gpjpboc/toolkit/WalletActivity;->nowDT()[B

    move-result-object v6

    const/4 v9, 0x7

    if-eqz v1, :cond_12

    const/16 v1, 0x12

    .line 423
    new-array v1, v1, [B

    const/4 v10, 0x4

    const/4 v11, 0x0

    .line 424
    invoke-static {v15, v11, v1, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-byte v3, v3

    .line 425
    aput-byte v3, v1, v10

    const/4 v3, 0x6

    const/4 v12, 0x5

    .line 426
    invoke-static {v13, v11, v1, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0xb

    .line 427
    invoke-static {v6, v11, v1, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 428
    invoke-static {v2, v1}, Lcom/gpjpboc/toolkit/CardIO;->macPboc([B[B)[B

    move-result-object v1

    const/16 v2, 0x10

    .line 429
    new-array v2, v2, [B

    const/16 v13, -0x80

    .line 430
    aput-byte v13, v2, v11

    const/16 v13, 0x52

    const/4 v14, 0x1

    aput-byte v13, v2, v14

    const/4 v13, 0x2

    aput-byte v11, v2, v13

    const/4 v13, 0x3

    aput-byte v11, v2, v13

    .line 431
    aput-byte v3, v2, v10

    .line 432
    invoke-static {v6, v11, v2, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0xc

    .line 433
    invoke-static {v1, v11, v2, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    invoke-direct {v0, v2}, Lcom/gpjpboc/toolkit/WalletActivity;->cmd([B)[B

    move-result-object v1

    .line 435
    invoke-direct {v0, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->sw([B)I

    move-result v2

    const v3, 0x9000

    if-ne v2, v3, :cond_11

    .line 437
    invoke-direct {v0, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->trim([B)[B

    move-result-object v1

    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5708\u5b58\u6210\u529f \u2713 \u65b0\u4f59\u989d\u5e94\u4e3a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-long/2addr v7, v4

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u5206"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 439
    array-length v3, v1

    const/4 v4, 0x4

    if-lt v3, v4, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "  TAC="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-static {v1}, Lcom/gpjpboc/toolkit/Config;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_10
    const-string v1, ""

    :goto_9
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 438
    invoke-direct {v0, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    .line 440
    const-string v1, "\u5708\u5b58\u6210\u529f \u2713"

    invoke-direct {v0, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->toast(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 442
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u5708\u5b58\u5931\u8d25 SW="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    move-object/from16 v10, v25

    invoke-static {v10, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u5708\u5b58\u5931\u8d25 SW="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-static {v10, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->toast(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_12
    move-object/from16 v10, v25

    .line 448
    sget v1, Lcom/gpjpboc/toolkit/WalletActivity;->termSeq:I

    shr-int/lit8 v11, v1, 0x8

    int-to-byte v11, v11

    int-to-byte v1, v1

    const/4 v12, 0x4

    new-array v14, v12, [B

    const/4 v9, 0x0

    aput-byte v9, v14, v9

    const/16 v16, 0x1

    aput-byte v9, v14, v16

    const/16 v20, 0x2

    aput-byte v11, v14, v20

    const/4 v11, 0x3

    aput-byte v1, v14, v11

    const/16 v1, 0x12

    .line 449
    new-array v1, v1, [B

    .line 450
    invoke-static {v15, v9, v1, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-byte v3, v3

    .line 451
    aput-byte v3, v1, v12

    const/4 v3, 0x6

    const/4 v11, 0x5

    .line 452
    invoke-static {v13, v9, v1, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x7

    const/16 v13, 0xb

    .line 453
    invoke-static {v6, v9, v1, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 454
    invoke-static {v2, v1}, Lcom/gpjpboc/toolkit/CardIO;->macPboc([B[B)[B

    move-result-object v1

    const/16 v13, 0x14

    .line 455
    new-array v13, v13, [B

    const/16 v18, -0x80

    .line 456
    aput-byte v18, v13, v9

    const/16 v18, 0x54

    const/16 v16, 0x1

    aput-byte v18, v13, v16

    const/16 v18, 0x2

    aput-byte v16, v13, v18

    const/16 v18, 0x3

    aput-byte v9, v13, v18

    const/16 v18, 0xf

    .line 457
    aput-byte v18, v13, v12

    .line 458
    invoke-static {v14, v9, v13, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v11, 0x9

    .line 459
    invoke-static {v6, v9, v13, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x10

    .line 460
    invoke-static {v1, v9, v13, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 461
    invoke-direct {v0, v13}, Lcom/gpjpboc/toolkit/WalletActivity;->cmd([B)[B

    move-result-object v1

    .line 462
    invoke-direct {v0, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->sw([B)I

    move-result v3

    const v6, 0x9000

    if-ne v3, v6, :cond_16

    .line 464
    invoke-direct {v0, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->trim([B)[B

    move-result-object v1

    .line 465
    array-length v3, v1

    if-lt v3, v12, :cond_13

    invoke-static {v1, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-static {v3}, Lcom/gpjpboc/toolkit/Config;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_13
    const-string v3, ""

    .line 467
    :goto_a
    array-length v6, v1

    const/16 v9, 0x8

    if-lt v6, v9, :cond_15

    .line 468
    invoke-static {v2, v15}, Lcom/gpjpboc/toolkit/CardIO;->macPboc([B[B)[B

    move-result-object v2

    .line 469
    invoke-static {v1, v12, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    if-eqz v2, :cond_14

    const/4 v6, 0x0

    .line 470
    aget-byte v9, v2, v6

    aget-byte v6, v1, v6

    if-ne v9, v6, :cond_14

    const/4 v6, 0x1

    aget-byte v9, v2, v6

    aget-byte v10, v1, v6

    if-ne v9, v10, :cond_14

    const/4 v6, 0x2

    .line 471
    aget-byte v9, v2, v6

    aget-byte v6, v1, v6

    if-ne v9, v6, :cond_14

    const/4 v6, 0x3

    aget-byte v9, v2, v6

    aget-byte v6, v1, v6

    if-ne v9, v6, :cond_14

    .line 472
    const-string v1, "MAC2 \u6821\u9a8c\u901a\u8fc7"

    invoke-direct {v0, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    goto :goto_b

    .line 474
    :cond_14
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "MAC2 \u4e0d\u4e00\u81f4\uff08\u4ec5\u63d0\u793a\uff09 \u5361="

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gpjpboc/toolkit/Config;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " \u7b97="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/gpjpboc/toolkit/Config;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    .line 477
    :cond_15
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6d88\u8d39\u6210\u529f \u2713 \u65b0\u4f59\u989d\u5e94\u4e3a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v7, v4

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u5206  TAC="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    .line 478
    const-string v1, "\u6d88\u8d39\u6210\u529f \u2713"

    invoke-direct {v0, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->toast(Ljava/lang/String;)V

    .line 479
    sget v1, Lcom/gpjpboc/toolkit/WalletActivity;->termSeq:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/gpjpboc/toolkit/WalletActivity;->termSeq:I

    goto :goto_c

    :cond_16
    const/16 v1, 0x6982

    if-ne v3, v1, :cond_17

    .line 482
    const-string v1, "\u6d88\u8d39\u5931\u8d25 SW=6982 \u4e0d\u6ee1\u8db3\u5b89\u5168\u72b6\u6001\uff08ED\u6d88\u8d39\u9700\u5148\u5728\u4e3b\u9875\u505aPIN\u8ba4\u8bc1\uff09"

    invoke-direct {v0, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    .line 483
    const-string v1, "\u6d88\u8d39\u5931\u8d25\uff1a\u8bf7\u5148\u5728\u4e3b\u9875 PIN \u8ba4\u8bc1"

    invoke-direct {v0, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->toast(Ljava/lang/String;)V

    goto :goto_c

    .line 485
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6d88\u8d39\u5931\u8d25 SW="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v10, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6d88\u8d39\u5931\u8d25 SW="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-static {v10, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->toast(Ljava/lang/String;)V

    :goto_c
    return-void

    .line 345
    :cond_18
    :goto_d
    const-string v1, "\u91d1\u989d\u8d85\u8303\u56f4"

    invoke-direct {v0, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    return-void
.end method

.method private doVerifyPin(Landroid/nfc/tech/IsoDep;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 279
    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->doSelect(Landroid/nfc/tech/IsoDep;)V

    .line 280
    iget-object p1, p0, Lcom/gpjpboc/toolkit/WalletActivity;->etPin:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 281
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xc

    if-le v0, v2, :cond_0

    goto/16 :goto_4

    .line 288
    :cond_0
    invoke-static {p1}, Lorg/pboc/fm1208/PbocEngine;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_2

    .line 290
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 291
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "--- \u9a8c\u8bc1 PIN (00 20 00 00) ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_3

    const-string v4, "hex \u7f16\u7801\uff0c\u4e0e\u4e3b\u9875\u4e00\u81f4"

    goto :goto_1

    :cond_3
    const-string v4, "ASCII \u56de\u9000"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] ---"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    .line 292
    array-length v4, v0

    const/4 v5, 0x5

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 293
    aput-byte v3, v4, v3

    const/16 v6, 0x20

    aput-byte v6, v4, v2

    const/4 v6, 0x2

    aput-byte v3, v4, v6

    const/4 v6, 0x3

    aput-byte v3, v4, v6

    .line 294
    array-length v6, v0

    int-to-byte v6, v6

    aput-byte v6, v4, v1

    .line 295
    array-length v1, v0

    invoke-static {v0, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    invoke-direct {p0, v4}, Lcom/gpjpboc/toolkit/WalletActivity;->cmd([B)[B

    move-result-object v0

    .line 297
    invoke-direct {p0, v0}, Lcom/gpjpboc/toolkit/WalletActivity;->sw([B)I

    move-result v0

    const v1, 0x9000

    if-ne v0, v1, :cond_4

    .line 299
    sput-object p1, Lcom/gpjpboc/toolkit/Config;->pin:Ljava/lang/String;

    .line 300
    invoke-static {p0}, Lcom/gpjpboc/toolkit/Config;->save(Landroid/content/Context;)V

    .line 301
    invoke-static {}, Lcom/gpjpboc/toolkit/Config;->applyEngine()V

    .line 302
    const-string p1, "PIN \u9a8c\u8bc1\u6210\u529f \u2713 \u5df2\u4fdd\u5b58\u5e76\u540c\u6b65\u5230\u4e3b\u9875/\u8bbe\u7f6e\u9875"

    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    .line 303
    const-string p1, "PIN \u9a8c\u8bc1\u6210\u529f \u2713"

    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->toast(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    shr-int/lit8 p1, v0, 0x8

    const/16 v1, 0x63

    if-ne p1, v1, :cond_6

    and-int/lit8 p1, v0, 0xf

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PIN \u9519\u8bef\uff0c\u5269\u4f59\u5c1d\u8bd5\u6b21\u6570: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_5

    const-string v1, "\uff08\u5df2\u9501\u6b7b\uff09"

    goto :goto_2

    :cond_5
    const-string v1, ""

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PIN \u9519\u8bef\uff0c\u5269\u4f59 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u6b21"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->toast(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const/16 p1, 0x6983

    if-ne v0, p1, :cond_7

    .line 309
    const-string p1, "PIN \u5df2\u9501\u6b7b\uff08\u8fde\u7eed 3 \u6b21\u9519\u8bef\uff09"

    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    .line 310
    const-string p1, "\u89e3\u9501\u65b9\u6cd5\uff1aApplet \u8bbe\u7f6e\u9875 \u2192 \u4fee\u6539 PIN \u2192 \u4fdd\u5b58\u5e76\u4e0b\u53d1\uff0880DC \u91cd\u5199 PIN \u81ea\u52a8\u89e3\u9501\uff09"

    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    .line 311
    const-string p1, "PIN \u5df2\u9501\u6b7b"

    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->toast(Ljava/lang/String;)V

    goto :goto_3

    .line 313
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "PIN \u9a8c\u8bc1\u5931\u8d25 SW="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v3

    const-string v4, "%04X"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    .line 314
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->toast(Ljava/lang/String;)V

    :goto_3
    return-void

    .line 282
    :cond_8
    :goto_4
    const-string p1, "PIN \u957f\u5ea6\u9700 4-12 \u5b57\u7b26"

    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V

    .line 283
    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->toast(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    .line 166
    sget-object v0, Lcom/gpjpboc/toolkit/WalletActivity;->H:Landroid/os/Handler;

    new-instance v1, Lcom/gpjpboc/toolkit/WalletActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity$6;-><init>(Lcom/gpjpboc/toolkit/WalletActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private masterKey()[B
    .locals 4

    .line 243
    sget-object v0, Lcom/gpjpboc/toolkit/Config;->macKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/gpjpboc/toolkit/Config;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 244
    array-length v2, v0

    if-eq v2, v1, :cond_0

    array-length v2, v0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    :cond_0
    return-object v0

    .line 245
    :cond_1
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x1et
        0x2t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
    .end array-data
.end method

.method private mkBtn(Ljava/lang/String;)Landroid/widget/Button;
    .locals 1

    .line 139
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 141
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    const/4 p1, -0x1

    .line 142
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 p1, 0x1

    .line 144
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method private static nowDT()[B
    .locals 13

    .line 494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 495
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 496
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x1

    .line 498
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    rem-int/lit8 v1, v1, 0xa

    const/4 v3, 0x4

    shl-int/2addr v1, v3

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x64

    rem-int/lit8 v4, v4, 0xa

    or-int/2addr v1, v4

    int-to-byte v1, v1

    .line 499
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    rem-int/lit8 v4, v4, 0xa

    shl-int/2addr v4, v3

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    rem-int/lit8 v5, v5, 0xa

    or-int/2addr v4, v5

    int-to-byte v4, v4

    const/4 v5, 0x2

    .line 500
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v0

    div-int/lit8 v6, v6, 0xa

    shl-int/2addr v6, v3

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v0

    rem-int/lit8 v7, v7, 0xa

    or-int/2addr v6, v7

    int-to-byte v6, v6

    const/4 v7, 0x5

    .line 501
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    div-int/lit8 v8, v8, 0xa

    shl-int/2addr v8, v3

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    rem-int/lit8 v9, v9, 0xa

    or-int/2addr v8, v9

    int-to-byte v8, v8

    const/16 v9, 0xb

    .line 502
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    div-int/lit8 v10, v10, 0xa

    shl-int/2addr v10, v3

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    rem-int/lit8 v9, v9, 0xa

    or-int/2addr v9, v10

    int-to-byte v9, v9

    const/16 v10, 0xc

    .line 503
    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    div-int/lit8 v11, v11, 0xa

    shl-int/2addr v11, v3

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    rem-int/lit8 v10, v10, 0xa

    or-int/2addr v10, v11

    int-to-byte v10, v10

    const/16 v11, 0xd

    .line 504
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    div-int/lit8 v12, v12, 0xa

    shl-int/2addr v12, v3

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    or-int/2addr v2, v12

    int-to-byte v2, v2

    const/4 v11, 0x7

    new-array v11, v11, [B

    const/4 v12, 0x0

    aput-byte v1, v11, v12

    aput-byte v4, v11, v0

    aput-byte v6, v11, v5

    const/4 v0, 0x3

    aput-byte v8, v11, v0

    aput-byte v9, v11, v3

    aput-byte v10, v11, v7

    const/4 v0, 0x6

    aput-byte v2, v11, v0

    return-object v11
.end method

.method private run(Ljava/lang/String;)V
    .locals 5

    .line 184
    iget-boolean v0, p0, Lcom/gpjpboc/toolkit/WalletActivity;->busy:Z

    if-eqz v0, :cond_0

    const-string p1, "\u5904\u7406\u4e2d..."

    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 185
    :cond_0
    sget-object v0, Lcom/gpjpboc/toolkit/PageLauncher;->main:Lorg/pboc/fm1208/MainActivity;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, v0, Lorg/pboc/fm1208/MainActivity;->isoDep:Landroid/nfc/tech/IsoDep;

    :goto_0
    iput-object v0, p0, Lcom/gpjpboc/toolkit/WalletActivity;->dep:Landroid/nfc/tech/IsoDep;

    if-eqz v0, :cond_5

    .line 187
    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 191
    :cond_2
    const-string v0, "load"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pur"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 193
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/gpjpboc/toolkit/WalletActivity;->etAmount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_4

    .line 194
    const-string p1, "\u91d1\u989d\u5fc5\u987b\u5927\u4e8e 0"

    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->toast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_4
    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lcom/gpjpboc/toolkit/WalletActivity;->busy:Z

    .line 203
    iget-object v0, p0, Lcom/gpjpboc/toolkit/WalletActivity;->tvOut:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/gpjpboc/toolkit/WalletActivity;->dep:Landroid/nfc/tech/IsoDep;

    .line 205
    new-instance v1, Lcom/gpjpboc/toolkit/WalletActivity$8;

    invoke-direct {v1, p0, p1, v0}, Lcom/gpjpboc/toolkit/WalletActivity$8;-><init>(Lcom/gpjpboc/toolkit/WalletActivity;Ljava/lang/String;Landroid/nfc/tech/IsoDep;)V

    .line 219
    invoke-virtual {v1}, Lcom/gpjpboc/toolkit/WalletActivity$8;->start()V

    return-void

    .line 198
    :catch_0
    const-string p1, "\u91d1\u989d\u683c\u5f0f\u9519\u8bef"

    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 188
    :cond_5
    :goto_1
    const-string p1, "\u8bf7\u5148\u5728\u4e3b\u9875\u8d34\u5361\u8fde\u63a5"

    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->toast(Ljava/lang/String;)V

    return-void
.end method

.method private sw([B)I
    .locals 2

    if-eqz p1, :cond_1

    .line 230
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    array-length v0, p1

    sub-int/2addr v0, v1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private termId()[B
    .locals 3

    .line 250
    sget-object v0, Lorg/pboc/fm1208/PbocEngine;->TERMINAL_ID:[B

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    .line 251
    array-length v2, v0

    if-ne v2, v1, :cond_0

    return-object v0

    .line 252
    :cond_0
    new-array v0, v1, [B

    const/4 v1, 0x4

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, -0x6a

    aput-byte v2, v0, v1

    return-object v0
.end method

.method private toast(Ljava/lang/String;)V
    .locals 2

    .line 174
    sget-object v0, Lcom/gpjpboc/toolkit/WalletActivity;->H:Landroid/os/Handler;

    new-instance v1, Lcom/gpjpboc/toolkit/WalletActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity$7;-><init>(Lcom/gpjpboc/toolkit/WalletActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private tradeType(Z)I
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/gpjpboc/toolkit/WalletActivity;->rg:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/16 v1, 0x12e

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    :goto_1
    return v2

    :cond_2
    if-eqz v0, :cond_3

    const/4 p1, 0x5

    goto :goto_2

    :cond_3
    const/4 p1, 0x6

    :goto_2
    return p1
.end method

.method private trim([B)[B
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 235
    array-length v1, p1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    array-length v1, p1

    sub-int/2addr v1, v2

    new-array v2, v1, [B

    .line 237
    invoke-static {p1, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    .line 235
    :cond_1
    :goto_0
    new-array p1, v0, [B

    return-object p1
.end method

.method private walletName()Ljava/lang/String;
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/gpjpboc/toolkit/WalletActivity;->rg:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_0

    const-string v0, "\u7535\u5b50\u5b58\u6298(ED)"

    goto :goto_0

    :cond_0
    const-string v0, "\u7535\u5b50\u94b1\u5305(EP)"

    :goto_0
    return-object v0
.end method

.method private walletP2()I
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/gpjpboc/toolkit/WalletActivity;->rg:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-static {p0}, Lcom/gpjpboc/toolkit/Config;->load(Landroid/content/Context;)V

    .line 46
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 49
    invoke-virtual {p0}, Lcom/gpjpboc/toolkit/WalletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41600000    # 14.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 50
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 51
    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 53
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 54
    const-string v3, "\u9009\u62e9\u94b1\u5305\uff08\u5355\u5361\u53cc\u4f59\u989d\uff0c\u72ec\u7acb\u8bb0\u8d26\uff09"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41700000    # 15.0f

    .line 55
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 56
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 57
    new-instance v2, Landroid/widget/RadioGroup;

    invoke-direct {v2, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/gpjpboc/toolkit/WalletActivity;->rg:Landroid/widget/RadioGroup;

    .line 58
    new-instance v2, Landroid/widget/RadioButton;

    invoke-direct {v2, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 59
    const-string v4, "\u7535\u5b50\u94b1\u5305 (EP)"

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x12d

    .line 60
    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setId(I)V

    .line 61
    new-instance v5, Landroid/widget/RadioButton;

    invoke-direct {v5, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 62
    const-string v6, "\u7535\u5b50\u5b58\u6298 (ED)"

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x12e

    .line 63
    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setId(I)V

    .line 64
    iget-object v6, p0, Lcom/gpjpboc/toolkit/WalletActivity;->rg:Landroid/widget/RadioGroup;

    invoke-virtual {v6, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 65
    iget-object v2, p0, Lcom/gpjpboc/toolkit/WalletActivity;->rg:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 66
    iget-object v2, p0, Lcom/gpjpboc/toolkit/WalletActivity;->rg:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 67
    iget-object v2, p0, Lcom/gpjpboc/toolkit/WalletActivity;->rg:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 70
    const-string v4, "\u91d1\u989d\uff08\u5206\uff09"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 72
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/gpjpboc/toolkit/WalletActivity;->etAmount:Landroid/widget/EditText;

    .line 74
    const-string v4, "100"

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v2, p0, Lcom/gpjpboc/toolkit/WalletActivity;->etAmount:Landroid/widget/EditText;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 76
    iget-object v2, p0, Lcom/gpjpboc/toolkit/WalletActivity;->etAmount:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 79
    const-string v4, "\u5bc6\u94a5\u7d22\u5f15\uff08\u5341\u516d\u8fdb\u5236\uff0c\u5982 01\uff09"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 81
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/gpjpboc/toolkit/WalletActivity;->etKeyIdx:Landroid/widget/EditText;

    .line 83
    const-string v4, "01"

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, p0, Lcom/gpjpboc/toolkit/WalletActivity;->etKeyIdx:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 85
    iget-object v2, p0, Lcom/gpjpboc/toolkit/WalletActivity;->etKeyIdx:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 88
    const-string v4, "PIN\uff08\u4e0e\u4e3b\u9875/\u8bbe\u7f6e\u9875\u5171\u7528\u540c\u4e00\u503c\uff1b\u5168\u6570\u5b57\u5076\u6570\u4f4d\u6309 hex \u7f16\u7801\uff0c\u4e0e\u4e3b\u9875\u4e00\u81f4\uff09"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 90
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 91
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/gpjpboc/toolkit/WalletActivity;->etPin:Landroid/widget/EditText;

    .line 92
    sget-object v3, Lcom/gpjpboc/toolkit/Config;->pin:Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/gpjpboc/toolkit/Config;->pin:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/gpjpboc/toolkit/Config;->pin:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v3, "123455"

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v2, p0, Lcom/gpjpboc/toolkit/WalletActivity;->etPin:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 94
    iget-object v1, p0, Lcom/gpjpboc/toolkit/WalletActivity;->etPin:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    const-string v1, "\u9009\u62e9\u5e94\u7528\uff08\u8d34\u5361\uff09"

    invoke-direct {p0, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->mkBtn(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    .line 97
    new-instance v2, Lcom/gpjpboc/toolkit/WalletActivity$1;

    invoke-direct {v2, p0}, Lcom/gpjpboc/toolkit/WalletActivity$1;-><init>(Lcom/gpjpboc/toolkit/WalletActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    const-string v1, "\u67e5\u8be2\u4f59\u989d"

    invoke-direct {p0, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->mkBtn(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    .line 103
    new-instance v2, Lcom/gpjpboc/toolkit/WalletActivity$2;

    invoke-direct {v2, p0}, Lcom/gpjpboc/toolkit/WalletActivity$2;-><init>(Lcom/gpjpboc/toolkit/WalletActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    const-string v1, "\u9a8c\u8bc1 PIN (00 20)"

    invoke-direct {p0, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->mkBtn(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    .line 109
    new-instance v2, Lcom/gpjpboc/toolkit/WalletActivity$3;

    invoke-direct {v2, p0}, Lcom/gpjpboc/toolkit/WalletActivity$3;-><init>(Lcom/gpjpboc/toolkit/WalletActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 114
    const-string v1, "\u5708\u5b58\uff08\u5145\u503c\uff09"

    invoke-direct {p0, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->mkBtn(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    .line 115
    new-instance v2, Lcom/gpjpboc/toolkit/WalletActivity$4;

    invoke-direct {v2, p0}, Lcom/gpjpboc/toolkit/WalletActivity$4;-><init>(Lcom/gpjpboc/toolkit/WalletActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    const-string v1, "\u6d88\u8d39"

    invoke-direct {p0, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->mkBtn(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    .line 121
    new-instance v2, Lcom/gpjpboc/toolkit/WalletActivity$5;

    invoke-direct {v2, p0}, Lcom/gpjpboc/toolkit/WalletActivity$5;-><init>(Lcom/gpjpboc/toolkit/WalletActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/gpjpboc/toolkit/Config;->aid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\uff08\u64cd\u4f5c\u7ed3\u679c\u4e0eAPDU\u65e5\u5fd7\uff09"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 128
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gpjpboc/toolkit/WalletActivity;->tvOut:Landroid/widget/TextView;

    .line 131
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 132
    iget-object v1, p0, Lcom/gpjpboc/toolkit/WalletActivity;->tvOut:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lcom/gpjpboc/toolkit/WalletActivity;->tvOut:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    invoke-virtual {p0, p1}, Lcom/gpjpboc/toolkit/WalletActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
