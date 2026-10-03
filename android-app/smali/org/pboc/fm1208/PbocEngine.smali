.class public Lorg/pboc/fm1208/PbocEngine;
.super Ljava/lang/Object;
.source "PbocEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/pboc/fm1208/PbocEngine$CardCallback;,
        Lorg/pboc/fm1208/PbocEngine$LogCallback;,
        Lorg/pboc/fm1208/PbocEngine$ApduResult;
    }
.end annotation


# static fields
.field public static DEFAULT_PIN:Ljava/lang/String; = null

.field private static final GET_BAL_ED:[B

.field private static final GET_BAL_EP:[B

.field public static MAC_ALGO_MODE:I = 0x0

.field public static MASTER_KEY:[B = null

.field public static SCAN_FULL:Z

.field private static final SELECT_APP:[B

.field private static final SELECT_DDF:[B

.field public static TERMINAL_ID:[B = null

.field private static final TYPE_LOAD_EP:I = 0x2

.field private static final TYPE_PURCH_EP:I = 0x6

.field public static terminalSeq:I


# instance fields
.field public atsInfo:Ljava/lang/String;

.field public balanceED:I

.field public balanceEP:I

.field private callback:Lorg/pboc/fm1208/PbocEngine$CardCallback;

.field public cardUid:[B

.field public lastError:Ljava/lang/String;

.field private lastPin:Ljava/lang/String;

.field public lastSW:I

.field private logCallback:Lorg/pboc/fm1208/PbocEngine$LogCallback;

.field public pinVerified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    const-string v0, "123455"

    sput-object v0, Lorg/pboc/fm1208/PbocEngine;->DEFAULT_PIN:Ljava/lang/String;

    .line 32
    const-string v0, "1E02313233343536"

    invoke-static {v0}, Lorg/pboc/fm1208/PbocEngine;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/pboc/fm1208/PbocEngine;->MASTER_KEY:[B

    .line 33
    const-string v0, "000000007396"

    invoke-static {v0}, Lorg/pboc/fm1208/PbocEngine;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/pboc/fm1208/PbocEngine;->TERMINAL_ID:[B

    .line 35
    const/4 v0, 0x1

    sput v0, Lorg/pboc/fm1208/PbocEngine;->MAC_ALGO_MODE:I

    .line 36
    sput v0, Lorg/pboc/fm1208/PbocEngine;->terminalSeq:I

    .line 39
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/pboc/fm1208/PbocEngine;->SELECT_DDF:[B

    .line 40
    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/pboc/fm1208/PbocEngine;->SELECT_APP:[B

    .line 42
    const/4 v0, 0x5

    new-array v1, v0, [B

    fill-array-data v1, :array_2

    sput-object v1, Lorg/pboc/fm1208/PbocEngine;->GET_BAL_EP:[B

    .line 43
    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/pboc/fm1208/PbocEngine;->GET_BAL_ED:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        -0x5ct
        0x0t
        0x0t
        0x2t
        0x3ft
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x9t
        -0x60t
        0x0t
        0x0t
        0x0t
        0x3t
        -0x7at
        -0x68t
        0x7t
        0x1t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        -0x80t
        0x5ct
        0x0t
        0x2t
        0x4t
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x80t
        0x5ct
        0x0t
        0x1t
        0x4t
    .end array-data
.end method

.method public constructor <init>(Lorg/pboc/fm1208/PbocEngine$CardCallback;)V
    .locals 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pboc/fm1208/PbocEngine;->pinVerified:Z

    .line 63
    const-string v1, ""

    iput-object v1, p0, Lorg/pboc/fm1208/PbocEngine;->lastPin:Ljava/lang/String;

    .line 64
    iput v0, p0, Lorg/pboc/fm1208/PbocEngine;->balanceEP:I

    .line 65
    iput v0, p0, Lorg/pboc/fm1208/PbocEngine;->balanceED:I

    .line 66
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/pboc/fm1208/PbocEngine;->cardUid:[B

    .line 67
    iput-object v1, p0, Lorg/pboc/fm1208/PbocEngine;->atsInfo:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lorg/pboc/fm1208/PbocEngine;->lastError:Ljava/lang/String;

    .line 69
    iput v0, p0, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    .line 72
    iput-object p1, p0, Lorg/pboc/fm1208/PbocEngine;->callback:Lorg/pboc/fm1208/PbocEngine$CardCallback;

    .line 73
    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6

    .line 1475
    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1476
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1477
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-byte v4, p0, v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "%02X"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1478
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bytesToHexSpaced([B)Ljava/lang/String;
    .locals 5

    .line 1482
    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1483
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1484
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 1485
    if-lez v2, :cond_1

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1486
    :cond_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-byte v4, p0, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%02X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1484
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1488
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private deriveKey([B[BI)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 184
    sget v0, Lorg/pboc/fm1208/PbocEngine;->MAC_ALGO_MODE:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 185
    goto :goto_0

    .line 186
    :cond_0
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    .line 187
    const/4 v1, 0x1

    goto :goto_0

    .line 189
    :cond_1
    if-ne p3, v2, :cond_2

    const/4 v1, 0x1

    .line 193
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    array-length p3, p1

    const/16 v0, 0x10

    if-ne p3, v0, :cond_3

    .line 194
    invoke-static {p1, p2}, Lorg/pboc/fm1208/PbocEngine;->tripleDesEnc([B[B)[B

    move-result-object p1

    goto :goto_1

    .line 196
    :cond_3
    array-length p3, p1

    const/16 v0, 0x8

    if-lt p3, v0, :cond_4

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 197
    :cond_4
    invoke-static {p1, p2}, Lorg/pboc/fm1208/PbocEngine;->desEnc([B[B)[B

    move-result-object p1

    .line 199
    :goto_1
    if-eqz v1, :cond_5

    const-string p2, "3DES"

    goto :goto_2

    :cond_5
    const-string p2, "DES"

    :goto_2
    invoke-static {p1}, Lorg/pboc/fm1208/PbocEngine;->bytesToHexSpaced([B)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8fc7\u7a0b\u5bc6\u94a5("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "): "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 200
    return-object p1
.end method

.method private deriveLoadKey([B[B[BI)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 251
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 252
    const/4 p2, 0x2

    invoke-virtual {v0, p3, v2, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 253
    const/16 p2, 0x80

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 254
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 256
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p0, p1, p2, p4}, Lorg/pboc/fm1208/PbocEngine;->deriveKey([B[BI)[B

    move-result-object p1

    return-object p1
.end method

.method private derivePurchKey([B[B[B[BI)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 265
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 266
    const/4 p2, 0x2

    invoke-virtual {v0, p3, v2, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 267
    invoke-virtual {v0, p4, v2, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 269
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p0, p1, p2, p5}, Lorg/pboc/fm1208/PbocEngine;->deriveKey([B[BI)[B

    move-result-object p1

    return-object p1
.end method

.method private static desDec([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 103
    const-string v0, "DES/ECB/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 104
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "DES"

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 105
    const/4 p0, 0x2

    invoke-virtual {v0, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 106
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0

    .line 101
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    array-length p1, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data not block size aligned ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " bytes)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static desEnc([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 92
    const-string v0, "DES/ECB/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 93
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "DES"

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 94
    const/4 p0, 0x1

    invoke-virtual {v0, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 95
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0

    .line 90
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    array-length p1, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data not block size aligned ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " bytes)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private doVerifyPin(Ljava/lang/String;)Z
    .locals 9

    .line 376
    invoke-static {p1}, Lorg/pboc/fm1208/PbocEngine;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 377
    const/4 v0, 0x5

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    const/4 v3, 0x1

    const/16 v4, 0x20

    aput-byte v4, v1, v3

    const/4 v5, 0x2

    aput-byte v2, v1, v5

    const/4 v6, 0x3

    aput-byte v2, v1, v6

    array-length v7, p1

    int-to-byte v7, v7

    const/4 v8, 0x4

    aput-byte v7, v1, v8

    invoke-direct {p0, v1}, Lorg/pboc/fm1208/PbocEngine;->send([B)Lorg/pboc/fm1208/PbocEngine$ApduResult;

    .line 379
    array-length v1, p1

    add-int/2addr v1, v0

    new-array v1, v1, [B

    .line 380
    aput-byte v2, v1, v2

    aput-byte v4, v1, v3

    aput-byte v2, v1, v5

    aput-byte v2, v1, v6

    .line 381
    array-length v4, p1

    int-to-byte v4, v4

    aput-byte v4, v1, v8

    .line 382
    array-length v4, p1

    invoke-static {p1, v2, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B

    .line 385
    iget p1, p0, Lorg/pboc/fm1208/PbocEngine;->lastSW:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0x9000

    if-ne p1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 386
    :catch_0
    move-exception p1

    .line 387
    return v2
.end method

.method public static formatBalance(I)Ljava/lang/String;
    .locals 5

    .line 1492
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    int-to-double v1, p0

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "%.2f\u5143"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hexDump([B)Ljava/lang/String;
    .locals 8

    .line 1496
    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1497
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1498
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_6

    .line 1499
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "%04X  "

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    const/4 v4, 0x0

    :goto_1
    const-string v5, " "

    const/16 v6, 0x10

    if-ge v4, v6, :cond_3

    .line 1501
    add-int v6, v2, v4

    array-length v7, p0

    if-ge v6, v7, :cond_1

    new-array v7, v3, [Ljava/lang/Object;

    aget-byte v6, p0, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v7, v1

    const-string v6, "%02X "

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1502
    :cond_1
    const-string v6, "   "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    :goto_2
    const/4 v6, 0x7

    if-ne v4, v6, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1505
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1506
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v6, :cond_5

    add-int v4, v2, v3

    array-length v5, p0

    if-ge v4, v5, :cond_5

    .line 1507
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    .line 1508
    const/16 v5, 0x20

    if-lt v4, v5, :cond_4

    const/16 v5, 0x7f

    if-ge v4, v5, :cond_4

    goto :goto_4

    :cond_4
    const/16 v4, 0x2e

    :goto_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1506
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1510
    :cond_5
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1498
    add-int/lit8 v2, v2, 0x10

    goto :goto_0

    .line 1512
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .locals 7

    .line 1464
    const-string v0, "\\s+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1465
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1466
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 1467
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1468
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 1469
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1467
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 1471
    :cond_0
    return-object v1
.end method

.method public static ibcd(II)[B
    .locals 4

    .line 210
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 211
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v1, p1, 0x2

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 212
    :cond_0
    new-array v0, p1, [B

    .line 213
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    .line 214
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 216
    :cond_1
    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/pboc/fm1208/PbocEngine;->logCallback:Lorg/pboc/fm1208/PbocEngine$LogCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/pboc/fm1208/PbocEngine$LogCallback;->onLog(Ljava/lang/String;)V

    .line 81
    :cond_0
    return-void
.end method

.method public static nowD()[B
    .locals 4

    .line 221
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 222
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 224
    :try_start_0
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v2

    add-int/lit16 v2, v2, 0x76c

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lorg/pboc/fm1208/PbocEngine;->ibcd(II)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 225
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2, v3}, Lorg/pboc/fm1208/PbocEngine;->ibcd(II)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 226
    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v0

    invoke-static {v0, v3}, Lorg/pboc/fm1208/PbocEngine;->ibcd(II)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 228
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static nowT()[B
    .locals 4

    .line 233
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 234
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 236
    :try_start_0
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/pboc/fm1208/PbocEngine;->ibcd(II)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 237
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v2

    invoke-static {v2, v3}, Lorg/pboc/fm1208/PbocEngine;->ibcd(II)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 238
    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v0

    invoke-static {v0, v3}, Lorg/pboc/fm1208/PbocEngine;->ibcd(II)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 240
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static parseAts([B)Ljava/lang/String;
    .locals 15

    .line 1328
    const-string v0, " "

    if-eqz p0, :cond_11

    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto/16 :goto_9

    .line 1329
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1331
    const/4 v3, 0x0

    :try_start_0
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    .line 1332
    const-string v5, "TL="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    const/4 v4, 0x1

    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    .line 1335
    shr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0x7

    .line 1336
    and-int/lit8 v5, v5, 0xf

    .line 1337
    const/16 v7, 0x9

    new-array v8, v7, [I

    fill-array-data v8, :array_0

    .line 1338
    if-ge v5, v7, :cond_1

    aget v7, v8, v5

    goto :goto_0

    :cond_1
    const/4 v7, -0x1

    .line 1339
    :goto_0
    const-string v8, "FSCI="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "(FSC="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "B) "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1341
    nop

    .line 1343
    and-int/lit8 v5, v6, 0x1

    const-string v7, ") "

    const/4 v8, 0x3

    const/4 v9, 0x4

    if-eqz v5, :cond_2

    :try_start_1
    array-length v5, p0

    if-ge v2, v5, :cond_2

    .line 1344
    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    .line 1345
    and-int/lit8 v10, v5, 0x7

    .line 1346
    shr-int/2addr v5, v9

    and-int/lit8 v5, v5, 0x7

    .line 1347
    const-string v11, "TA1(DR="

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",DS="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    goto :goto_1

    .line 1350
    :cond_2
    const/4 v5, 0x2

    :goto_1
    and-int/lit8 v10, v6, 0x2

    if-eqz v10, :cond_4

    array-length v10, p0

    if-ge v5, v10, :cond_4

    .line 1351
    add-int/lit8 v10, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .line 1352
    shr-int/2addr v5, v9

    and-int/lit8 v5, v5, 0xf

    .line 1353
    nop

    .line 1354
    const/16 v11, 0xe

    if-gt v5, v11, :cond_3

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    int-to-double v13, v5

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    const-wide v13, 0x3f33cbceda534419L    # 3.0206489675516226E-4

    mul-double v11, v11, v13

    const-wide v13, 0x408f400000000000L    # 1000.0

    mul-double v11, v11, v13

    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    mul-double v11, v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-double v11, v11

    div-double/2addr v11, v13

    goto :goto_2

    :cond_3
    const-wide/16 v11, 0x0

    .line 1355
    :goto_2
    const-string v13, "TB1(FWI="

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ",FWT="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "ms) "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v10

    .line 1358
    :cond_4
    and-int/2addr v6, v9

    if-eqz v6, :cond_9

    array-length v6, p0

    if-ge v5, v6, :cond_9

    .line 1359
    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .line 1360
    and-int/lit8 v10, v5, 0x2

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    .line 1361
    :goto_3
    and-int/2addr v5, v4

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    .line 1362
    :goto_4
    const-string v11, "TC1(CID="

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v12, "Y"

    const-string v13, "N"

    if-eqz v10, :cond_7

    move-object v10, v12

    goto :goto_5

    :cond_7
    move-object v10, v13

    :goto_5
    :try_start_2
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",NAD="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v5, :cond_8

    goto :goto_6

    :cond_8
    move-object v12, v13

    :goto_6
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v6

    .line 1366
    :cond_9
    array-length v6, p0

    if-ge v5, v6, :cond_10

    .line 1367
    array-length v6, p0

    sub-int/2addr v6, v5

    .line 1368
    array-length v7, p0

    invoke-static {p0, v5, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 1369
    const-string v5, "\u5386\u53f2\u5b57\u8282("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "B): "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    if-lt v6, v4, :cond_a

    .line 1372
    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    .line 1373
    const-string v7, "COS="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    shr-int/lit8 v10, v5, 0x4

    and-int/lit8 v10, v10, 0xf

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    :cond_a
    if-lt v6, v2, :cond_f

    .line 1376
    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    .line 1377
    const/16 v5, 0x90

    if-ne v2, v5, :cond_b

    const-string v2, "\u590d\u65e6\u5fae\u7535\u5b50"

    goto :goto_7

    .line 1378
    :cond_b
    const/16 v5, 0x91

    if-ne v2, v5, :cond_c

    const-string v2, "\u6e05\u534e\u540c\u65b9"

    goto :goto_7

    .line 1379
    :cond_c
    const/16 v5, 0x92

    if-ne v2, v5, :cond_d

    const-string v2, "\u534e\u8679"

    goto :goto_7

    .line 1380
    :cond_d
    const/16 v5, 0x93

    if-ne v2, v5, :cond_e

    const-string v2, "\u63e1\u5947"

    goto :goto_7

    :cond_e
    const-string v5, "%02X"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Vendor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1381
    :goto_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    :cond_f
    nop

    .line 1386
    if-lt v6, v9, :cond_10

    .line 1388
    invoke-static {p0, v8, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 1389
    const-string v0, "SN="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lorg/pboc/fm1208/PbocEngine;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1394
    :cond_10
    goto :goto_8

    .line 1392
    :catch_0
    move-exception p0

    .line 1393
    const-string v0, "(\u89e3\u6790\u9519\u8bef: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    :goto_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1328
    :cond_11
    :goto_9
    const-string p0, "\u65e0ATS"

    return-object p0

    nop

    :array_0
    .array-data 4
        0x10
        0x18
        0x20
        0x28
        0x30
        0x40
        0x60
        0x80
        0x100
    .end array-data
.end method

.method private static parseFci([B)[Ljava/lang/String;
    .locals 18

    .line 880
    move-object/from16 v0, p0

    const-string v1, ""

    const/4 v2, 0x6

    new-array v3, v2, [Ljava/lang/String;

    .line 881
    if-eqz v0, :cond_15

    array-length v4, v0

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    goto/16 :goto_a

    .line 883
    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 884
    :goto_0
    :try_start_0
    array-length v7, v0

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_14

    .line 885
    aget-byte v7, v0, v6

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v6, v6, 0x1

    .line 886
    array-length v9, v0

    if-lt v6, v9, :cond_1

    goto/16 :goto_9

    .line 887
    :cond_1
    aget-byte v9, v0, v6

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v6, v6, 0x1

    .line 888
    add-int/2addr v9, v6

    array-length v10, v0

    if-le v9, v10, :cond_2

    goto/16 :goto_9

    .line 889
    :cond_2
    invoke-static {v0, v6, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 890
    nop

    .line 892
    const/16 v10, 0x6f

    if-ne v7, v10, :cond_5

    .line 894
    invoke-static {v6}, Lorg/pboc/fm1208/PbocEngine;->parseFci([B)[Ljava/lang/String;

    move-result-object v6

    .line 895
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v2, :cond_4

    .line 896
    aget-object v8, v6, v7

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    aget-object v8, v6, v7

    aput-object v8, v3, v7

    .line 895
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 898
    :cond_4
    goto/16 :goto_8

    :cond_5
    const/16 v10, 0x62

    const/16 v11, 0x84

    const/4 v12, 0x5

    if-eq v7, v10, :cond_8

    const/16 v10, 0x64

    if-ne v7, v10, :cond_6

    goto :goto_3

    .line 931
    :cond_6
    if-ne v7, v11, :cond_7

    .line 932
    invoke-static {v6}, Lorg/pboc/fm1208/PbocEngine;->bytesToHex([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v12

    goto/16 :goto_8

    .line 931
    :cond_7
    :goto_2
    goto/16 :goto_8

    .line 900
    :cond_8
    :goto_3
    const/4 v7, 0x0

    .line 901
    :goto_4
    array-length v10, v6

    sub-int/2addr v10, v8

    if-ge v7, v10, :cond_7

    .line 902
    aget-byte v10, v6, v7

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v7, v7, 0x1

    .line 903
    array-length v13, v6

    if-lt v7, v13, :cond_9

    goto :goto_2

    .line 904
    :cond_9
    aget-byte v13, v6, v7

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v7, v7, 0x1

    .line 905
    add-int/2addr v13, v7

    array-length v14, v6

    if-le v13, v14, :cond_a

    goto :goto_2

    .line 906
    :cond_a
    invoke-static {v6, v7, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 907
    nop

    .line 909
    const/16 v14, 0x80

    if-ne v10, v14, :cond_b

    .line 911
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    const v10, 0xffff

    and-int/2addr v7, v10

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v8

    goto/16 :goto_7

    .line 912
    :cond_b
    const/16 v14, 0x82

    const/4 v15, 0x4

    const/16 v16, 0x3

    if-ne v10, v14, :cond_10

    .line 914
    array-length v10, v7

    if-lez v10, :cond_f

    .line 915
    aget-byte v7, v7, v4

    and-int/lit16 v7, v7, 0xff

    .line 916
    shr-int/lit8 v10, v7, 0x3

    const/4 v14, 0x7

    and-int/2addr v10, v14

    .line 917
    and-int/2addr v7, v14

    .line 918
    if-ne v10, v8, :cond_c

    const-string v10, "DF"

    goto :goto_5

    :cond_c
    if-nez v10, :cond_d

    const-string v10, "MF"

    goto :goto_5

    :cond_d
    const-string v10, "EF"

    :goto_5
    aput-object v10, v3, v4

    .line 919
    const/16 v10, 0x9

    new-array v11, v10, [Ljava/lang/String;

    aput-object v1, v11, v4

    aput-object v1, v11, v8

    const-string v17, "\u900f\u660eBIN"

    aput-object v17, v11, v5

    aput-object v1, v11, v16

    const-string v16, "\u7ebf\u6027\u5b9a\u957f"

    aput-object v16, v11, v15

    aput-object v1, v11, v12

    const-string v15, "\u7ebf\u6027\u53d8\u957f"

    aput-object v15, v11, v2

    aput-object v1, v11, v14

    const-string v14, "\u5faa\u73af\u8bb0\u5f55"

    const/16 v15, 0x8

    aput-object v14, v11, v15

    .line 920
    if-ge v7, v10, :cond_e

    aget-object v7, v11, v7

    aput-object v7, v3, v5

    goto :goto_6

    .line 921
    :cond_e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u7c7b\u578b"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    .line 922
    :goto_6
    const/16 v11, 0x84

    goto :goto_7

    .line 914
    :cond_f
    const/16 v11, 0x84

    goto :goto_7

    .line 923
    :cond_10
    const/16 v11, 0x83

    if-ne v10, v11, :cond_11

    array-length v11, v7

    if-lt v11, v5, :cond_11

    .line 924
    invoke-static {v7}, Lorg/pboc/fm1208/PbocEngine;->bytesToHex([B)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v15

    const/16 v11, 0x84

    goto :goto_7

    .line 925
    :cond_11
    const/16 v11, 0x84

    if-ne v10, v11, :cond_12

    .line 926
    invoke-static {v7}, Lorg/pboc/fm1208/PbocEngine;->bytesToHex([B)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v12

    goto :goto_7

    .line 927
    :cond_12
    const/16 v14, 0x8c

    if-ne v10, v14, :cond_13

    array-length v10, v7

    if-lt v10, v8, :cond_13

    .line 928
    aget-byte v7, v7, v4

    and-int/lit8 v7, v7, 0x1f

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 930
    :cond_13
    :goto_7
    move v7, v13

    goto/16 :goto_4

    .line 934
    :goto_8
    move v6, v9

    goto/16 :goto_0

    .line 935
    :catch_0
    move-exception v0

    :cond_14
    :goto_9
    nop

    .line 936
    return-object v3

    .line 881
    :cond_15
    :goto_a
    return-object v3
.end method

.method public static parseRec([B)Ljava/lang/String;
    .locals 19

    .line 819
    move-object/from16 v0, p0

    if-eqz v0, :cond_2

    array-length v1, v0

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    goto/16 :goto_1

    .line 820
    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    const v5, 0xffff

    and-int/2addr v4, v5

    .line 821
    const/4 v5, 0x5

    const/4 v6, 0x4

    invoke-static {v0, v5, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 822
    const/16 v8, 0x9

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    .line 823
    const-string v9, "?"

    const-string v10, "\u5708\u5b58ED"

    const-string v11, "\u5708\u5b58EP"

    const-string v12, "\u5708\u63d0"

    const-string v13, "\u53d6\u73b0"

    const-string v14, "\u6d88\u8d39ED"

    const-string v15, "\u6d88\u8d39EP"

    const-string v16, "\u6539\u900f\u652f"

    const-string v17, "?"

    const-string v18, "\u590d\u5408\u6d88\u8d39"

    filled-new-array/range {v9 .. v18}, [Ljava/lang/String;

    move-result-object v9

    .line 824
    const/16 v10, 0xa

    if-ge v8, v10, :cond_1

    aget-object v8, v9, v8

    goto :goto_0

    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "?"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 825
    :goto_0
    const/16 v9, 0x10

    invoke-static {v0, v10, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    invoke-static {v10}, Lorg/pboc/fm1208/PbocEngine;->bytesToHex([B)Ljava/lang/String;

    move-result-object v10

    .line 826
    const/16 v11, 0x14

    invoke-static {v0, v9, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    invoke-static {v9}, Lorg/pboc/fm1208/PbocEngine;->bytesToHex([B)Ljava/lang/String;

    move-result-object v9

    .line 827
    invoke-static {v0, v11, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lorg/pboc/fm1208/PbocEngine;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    .line 828
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    const/4 v1, 0x1

    aput-object v8, v2, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x3

    aput-object v10, v2, v1

    aput-object v9, v2, v6

    aput-object v0, v2, v5

    const-string v0, "#%d %s %s\u5206 \u7ec8\u7aef:%s \u65e5\u671f:%s \u65f6\u95f4:%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 819
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static pbocMac([B[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 150
    sget v0, Lorg/pboc/fm1208/PbocEngine;->MAC_ALGO_MODE:I

    const/4 v1, 0x2

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 151
    const/4 v4, 0x0

    goto :goto_0

    .line 152
    :cond_0
    const/4 v1, 0x3

    const/4 v4, 0x1

    if-ne v0, v1, :cond_1

    .line 153
    goto :goto_0

    .line 155
    :cond_1
    array-length v0, p0

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 159
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 160
    array-length v1, p1

    invoke-virtual {v0, p1, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 161
    const/16 p1, 0x80

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 162
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    const/16 v1, 0x8

    rem-int/2addr p1, v1

    if-eqz p1, :cond_3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 163
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 165
    new-array v0, v1, [B

    .line 166
    const/4 v5, 0x0

    :goto_2
    array-length v6, p1

    if-ge v5, v6, :cond_7

    .line 167
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v1, :cond_4

    aget-byte v7, v0, v6

    add-int v8, v5, v6

    aget-byte v8, p1, v8

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 168
    :cond_4
    if-eqz v4, :cond_5

    array-length v6, p0

    if-ne v6, v2, :cond_5

    .line 169
    invoke-static {p0, v0}, Lorg/pboc/fm1208/PbocEngine;->tripleDesEnc([B[B)[B

    move-result-object v0

    goto :goto_5

    .line 171
    :cond_5
    array-length v6, p0

    if-lt v6, v1, :cond_6

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    goto :goto_4

    :cond_6
    move-object v6, p0

    .line 172
    :goto_4
    invoke-static {v6, v0}, Lorg/pboc/fm1208/PbocEngine;->desEnc([B[B)[B

    move-result-object v0

    .line 166
    :goto_5
    add-int/lit8 v5, v5, 0x8

    goto :goto_2

    .line 175
    :cond_7
    const/4 p0, 0x4

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method

.method private readBinaryEf(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 941
    if-nez p1, :cond_0

    const/16 p1, 0x100

    .line 942
    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    const/4 v2, 0x1

    const/16 v3, -0x50

    aput-byte v3, v0, v2

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x4

    aput-byte p1, v0, v1

    .line 943
    invoke-virtual {p0, v0}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B

    move-result-object p1

    return-object p1
.end method

.method private readEfAuto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 18

    .line 956
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "BIN"

    const-string v4, "  \u2717 "

    const-string v5, "\n"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 958
    const/16 v7, 0x10

    :try_start_0
    invoke-static {v0, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 961
    const/4 v8, 0x7

    new-array v8, v8, [B

    const/4 v9, 0x0

    aput-byte v9, v8, v9

    const/16 v10, -0x5c

    const/4 v11, 0x1

    aput-byte v10, v8, v11

    const/4 v10, 0x2

    aput-byte v9, v8, v10

    const/4 v12, 0x3

    aput-byte v9, v8, v12

    const/4 v13, 0x4

    aput-byte v10, v8, v13

    shr-int/lit8 v14, v7, 0x8

    and-int/lit16 v14, v14, 0xff

    int-to-byte v14, v14

    const/4 v15, 0x5

    aput-byte v14, v8, v15

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    const/4 v14, 0x6

    aput-byte v7, v8, v14

    .line 964
    :try_start_1
    invoke-virtual {v1, v8}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B

    move-result-object v7

    .line 965
    iget v14, v1, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    .line 966
    const v15, 0x9000

    if-eq v14, v15, :cond_0

    const/16 v15, 0x6282

    if-eq v14, v15, :cond_0

    const/16 v15, 0x6283

    if-eq v14, v15, :cond_0

    .line 967
    invoke-static {v14}, Lorg/pboc/fm1208/PbocEngine;->swHint(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  \u2717 \u9009\u62e9\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 971
    :cond_0
    invoke-static {v7}, Lorg/pboc/fm1208/PbocEngine;->parseFci([B)[Ljava/lang/String;

    move-result-object v7

    .line 972
    aget-object v14, v7, v10

    if-eqz v14, :cond_1

    goto :goto_0

    :cond_1
    const-string v14, ""

    .line 973
    :goto_0
    aget-object v15, v7, v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const-string v16, "?"

    if-eqz v15, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v15, v16

    .line 974
    :goto_1
    :try_start_2
    aget-object v17, v7, v11

    if-eqz v17, :cond_3

    move-object/from16 v16, v17

    .line 975
    :cond_3
    aget-object v7, v7, v12

    if-eqz v7, :cond_4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    .line 977
    :goto_2
    const-string v12, "  \u250c\u2500 %s %s \u2500\u2510\n"

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v0, v13, v9

    aput-object p3, v13, v11

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    const-string v0, "  \u2502 \u7c7b\u578b:%s  \u5927\u5c0f:%s  \u7ed3\u6784:%s  SFI:%d\n"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v15, v12, v9

    aput-object v16, v12, v11

    aput-object v14, v12, v10

    .line 979
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v13, 0x3

    aput-object v10, v12, v13

    .line 978
    invoke-static {v0, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    const-string v0, "  \u2514\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2518\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "\u900f\u660e"

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v14, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v0, 0x1

    .line 984
    :goto_4
    const-string v3, "REC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "\u5faa\u73af"

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "\u7ebf\u6027"

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v2, 0x1

    .line 986
    :goto_6
    if-nez v0, :cond_9

    if-nez v2, :cond_9

    .line 987
    const/4 v0, 0x1

    .line 991
    :cond_9
    const-string v3, "\n  \u8bb0\u5f55%d:\n"

    const-string v10, "  \u2717 READ BINARY: "

    const/16 v12, 0xa

    if-eqz v0, :cond_e

    .line 993
    :try_start_3
    invoke-direct {v1, v9}, Lorg/pboc/fm1208/PbocEngine;->readBinaryEf(I)[B

    move-result-object v0

    .line 994
    iget v13, v1, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    const v14, 0x9000

    if-ne v13, v14, :cond_a

    if-eqz v0, :cond_a

    array-length v13, v0

    if-lez v13, :cond_a

    .line 995
    invoke-static {v0}, Lorg/pboc/fm1208/PbocEngine;->hexDump([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 997
    :cond_a
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v13, v1, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    invoke-static {v13}, Lorg/pboc/fm1208/PbocEngine;->swHint(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    const-string v0, "  \u5c1d\u8bd5READ RECORD...\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    invoke-virtual {v1, v8}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B

    .line 1001
    nop

    .line 1002
    const/4 v0, 0x1

    const/4 v13, 0x0

    :goto_7
    if-gt v0, v12, :cond_c

    .line 1003
    if-le v0, v11, :cond_b

    invoke-virtual {v1, v8}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B

    .line 1004
    :cond_b
    invoke-direct {v1, v0, v7}, Lorg/pboc/fm1208/PbocEngine;->readRecordEf(II)[B

    move-result-object v14

    .line 1005
    iget v15, v1, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    const v12, 0x9000

    if-ne v15, v12, :cond_c

    if-eqz v14, :cond_c

    array-length v12, v14

    if-lez v12, :cond_c

    .line 1006
    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-static {v14}, Lorg/pboc/fm1208/PbocEngine;->hexDump([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    nop

    .line 1002
    add-int/lit8 v0, v0, 0x1

    const/16 v12, 0xa

    const/4 v13, 0x1

    goto :goto_7

    .line 1011
    :cond_c
    if-nez v13, :cond_d

    .line 1012
    const-string v0, "  \u2717 READ RECORD\u4e5f\u5931\u8d25\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1017
    :cond_d
    :goto_8
    goto :goto_9

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    :try_start_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1020
    :cond_e
    :goto_9
    if-eqz v2, :cond_13

    .line 1021
    nop

    .line 1022
    const/4 v0, 0x1

    const/4 v2, 0x0

    :goto_a
    const/16 v12, 0xa

    if-gt v0, v12, :cond_11

    .line 1024
    if-le v0, v11, :cond_f

    :try_start_5
    invoke-virtual {v1, v8}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B

    .line 1025
    :cond_f
    invoke-direct {v1, v0, v7}, Lorg/pboc/fm1208/PbocEngine;->readRecordEf(II)[B

    move-result-object v13

    .line 1026
    iget v14, v1, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    const v15, 0x9000

    if-ne v14, v15, :cond_10

    if-eqz v13, :cond_10

    array-length v14, v13

    if-lez v14, :cond_10

    .line 1027
    new-array v14, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v9

    invoke-static {v3, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    invoke-static {v13}, Lorg/pboc/fm1208/PbocEngine;->hexDump([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1029
    add-int/lit8 v2, v2, 0x1

    .line 1031
    nop

    .line 1022
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1030
    :cond_10
    goto :goto_b

    .line 1031
    :catch_1
    move-exception v0

    .line 1033
    :cond_11
    :goto_b
    if-nez v2, :cond_13

    .line 1034
    :try_start_6
    const-string v0, "  \u2717 \u65e0\u8bb0\u5f55: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    invoke-static {v2}, Lorg/pboc/fm1208/PbocEngine;->swHint(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    const-string v0, "  \u5c1d\u8bd5READ BINARY...\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1037
    :try_start_7
    invoke-virtual {v1, v8}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B

    .line 1038
    invoke-direct {v1, v9}, Lorg/pboc/fm1208/PbocEngine;->readBinaryEf(I)[B

    move-result-object v0

    .line 1039
    iget v2, v1, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    const v3, 0x9000

    if-ne v2, v3, :cond_12

    if-eqz v0, :cond_12

    array-length v2, v0

    if-lez v2, :cond_12

    .line 1040
    invoke-static {v0}, Lorg/pboc/fm1208/PbocEngine;->hexDump([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 1042
    :cond_12
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    invoke-static {v2}, Lorg/pboc/fm1208/PbocEngine;->swHint(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 1046
    :goto_c
    goto :goto_d

    .line 1044
    :catch_2
    move-exception v0

    .line 1045
    :try_start_8
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 1051
    :cond_13
    :goto_d
    goto :goto_e

    .line 1049
    :catch_3
    move-exception v0

    .line 1050
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    :goto_e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 958
    :catch_4
    move-exception v0

    const-string v0, "  FID\u683c\u5f0f\u9519\u8bef\n"

    return-object v0
.end method

.method private readRecordEf(II)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 948
    const/4 v0, 0x3

    const/4 v1, 0x4

    if-eqz p2, :cond_0

    and-int/lit8 p2, p2, 0x1f

    shl-int/2addr p2, v0

    or-int/2addr p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    .line 949
    :goto_0
    const/4 v2, 0x5

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    const/4 v4, 0x1

    const/16 v5, -0x4e

    aput-byte v5, v2, v4

    const/4 v4, 0x2

    int-to-byte p1, p1

    aput-byte p1, v2, v4

    int-to-byte p1, p2

    aput-byte p1, v2, v0

    aput-byte v3, v2, v1

    .line 950
    invoke-virtual {p0, v2}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B

    move-result-object p1

    return-object p1
.end method

.method private send([B)Lorg/pboc/fm1208/PbocEngine$ApduResult;
    .locals 2

    .line 311
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B

    move-result-object p1

    .line 312
    new-instance v0, Lorg/pboc/fm1208/PbocEngine$ApduResult;

    iget v1, p0, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    invoke-direct {v0, p1, v1}, Lorg/pboc/fm1208/PbocEngine$ApduResult;-><init>([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 313
    :catch_0
    move-exception p1

    .line 314
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 315
    const/4 p1, 0x0

    iput p1, p0, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    .line 316
    new-instance v0, Lorg/pboc/fm1208/PbocEngine$ApduResult;

    new-array v1, p1, [B

    invoke-direct {v0, v1, p1}, Lorg/pboc/fm1208/PbocEngine$ApduResult;-><init>([BI)V

    return-object v0
.end method

.method public static swHint(I)Ljava/lang/String;
    .locals 2

    .line 327
    sparse-switch p0, :sswitch_data_0

    .line 346
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "SW=%04X"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 331
    :sswitch_0
    const-string p0, "\u4f59\u989d\u4e0d\u8db3"

    return-object p0

    .line 330
    :sswitch_1
    const-string p0, "MAC\u6821\u9a8c\u5931\u8d25(\u5bc6\u94a5?)"

    return-object p0

    .line 343
    :sswitch_2
    const-string p0, "PIN\u672a\u8ba4\u8bc1"

    return-object p0

    .line 345
    :sswitch_3
    const-string p0, "CLA\u4e0d\u652f\u6301"

    return-object p0

    .line 344
    :sswitch_4
    const-string p0, "INS\u4e0d\u652f\u6301"

    return-object p0

    .line 339
    :sswitch_5
    const-string p0, "\u504f\u79fb\u8d8a\u754c"

    return-object p0

    .line 336
    :sswitch_6
    const-string p0, "\u5bc6\u94a5\u672a\u627e\u5230"

    return-object p0

    .line 338
    :sswitch_7
    const-string p0, "P1P2\u9519"

    return-object p0

    .line 342
    :sswitch_8
    const-string p0, "\u7a7a\u95f4\u4e0d\u8db3"

    return-object p0

    .line 334
    :sswitch_9
    const-string p0, "\u8bb0\u5f55\u672a\u627e\u5230"

    return-object p0

    .line 333
    :sswitch_a
    const-string p0, "\u6587\u4ef6\u672a\u627e\u5230"

    return-object p0

    .line 332
    :sswitch_b
    const-string p0, "\u4e0d\u652f\u6301/\u5df2\u9501"

    return-object p0

    .line 329
    :sswitch_c
    const-string p0, "\u6761\u4ef6\u4e0d\u6ee1\u8db3"

    return-object p0

    .line 335
    :sswitch_d
    const-string p0, "\u5df2\u9501\u5b9a"

    return-object p0

    .line 328
    :sswitch_e
    const-string p0, "\u5b89\u5168\u72b6\u6001\u4e0d\u6ee1\u8db3(\u9700PIN\u8ba4\u8bc1)"

    return-object p0

    .line 337
    :sswitch_f
    const-string p0, "\u957f\u5ea6\u9519"

    return-object p0

    .line 341
    :sswitch_10
    const-string p0, "\u6587\u4ef6\u6821\u9a8c\u9519"

    return-object p0

    .line 340
    :sswitch_11
    const-string p0, "\u6570\u636e\u53ef\u80fd\u9519"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x6281 -> :sswitch_11
        0x6283 -> :sswitch_10
        0x6700 -> :sswitch_f
        0x6982 -> :sswitch_e
        0x6983 -> :sswitch_d
        0x6985 -> :sswitch_c
        0x6a81 -> :sswitch_b
        0x6a82 -> :sswitch_a
        0x6a83 -> :sswitch_9
        0x6a84 -> :sswitch_8
        0x6a86 -> :sswitch_7
        0x6a88 -> :sswitch_6
        0x6b00 -> :sswitch_5
        0x6d00 -> :sswitch_4
        0x6e00 -> :sswitch_3
        0x9004 -> :sswitch_2
        0x9302 -> :sswitch_1
        0x9401 -> :sswitch_0
    .end sparse-switch
.end method

.method private static tripleDesDec([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 127
    array-length v0, p1

    const/16 v2, 0x8

    rem-int/2addr v0, v2

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x0

    invoke-static {p0, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 129
    invoke-static {p0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 130
    invoke-static {v0, p1}, Lorg/pboc/fm1208/PbocEngine;->desDec([B[B)[B

    move-result-object p1

    .line 131
    invoke-static {p0, p1}, Lorg/pboc/fm1208/PbocEngine;->desEnc([B[B)[B

    move-result-object p0

    .line 132
    invoke-static {v0, p0}, Lorg/pboc/fm1208/PbocEngine;->desDec([B[B)[B

    move-result-object p0

    .line 133
    return-object p0

    .line 127
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "data not block size aligned"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 126
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "3DES key must be 16 bytes"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static tripleDesEnc([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 115
    array-length v0, p1

    const/16 v2, 0x8

    rem-int/2addr v0, v2

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x0

    invoke-static {p0, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 117
    invoke-static {p0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 118
    invoke-static {v0, p1}, Lorg/pboc/fm1208/PbocEngine;->desEnc([B[B)[B

    move-result-object p1

    .line 119
    invoke-static {p0, p1}, Lorg/pboc/fm1208/PbocEngine;->desDec([B[B)[B

    move-result-object p0

    .line 120
    invoke-static {v0, p0}, Lorg/pboc/fm1208/PbocEngine;->desEnc([B[B)[B

    move-result-object p0

    .line 121
    return-object p0

    .line 115
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "data not block size aligned"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 114
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "3DES key must be 16 bytes"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private trySelectFile(ILjava/lang/String;)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1156
    move-object/from16 v1, p0

    move/from16 v0, p1

    const/4 v2, 0x7

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    const/16 v4, -0x5c

    const/4 v5, 0x1

    aput-byte v4, v2, v5

    const/4 v4, 0x2

    aput-byte v3, v2, v4

    const/4 v6, 0x3

    aput-byte v3, v2, v6

    const/4 v7, 0x4

    aput-byte v4, v2, v7

    shr-int/lit8 v7, v0, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    const/4 v8, 0x5

    aput-byte v7, v2, v8

    and-int/lit16 v7, v0, 0xff

    int-to-byte v7, v7

    const/4 v9, 0x6

    aput-byte v7, v2, v9

    .line 1158
    invoke-virtual {v1, v2}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B

    move-result-object v2

    .line 1159
    iget v7, v1, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    .line 1161
    const/16 v9, 0x6283

    const/16 v10, 0x6282

    const v11, 0x9000

    if-eq v7, v11, :cond_0

    if-eq v7, v10, :cond_0

    if-eq v7, v9, :cond_0

    .line 1162
    const/4 v0, 0x0

    return-object v0

    .line 1165
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1166
    new-array v13, v5, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v13, v3

    const-string v0, "%04X"

    invoke-static {v0, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1167
    new-array v13, v4, [Ljava/lang/Object;

    aput-object v0, v13, v3

    aput-object p2, v13, v5

    const-string v0, "\ud83d\udcc4 %s [%s] "

    invoke-static {v0, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    invoke-static {v2}, Lorg/pboc/fm1208/PbocEngine;->parseFci([B)[Ljava/lang/String;

    move-result-object v0

    .line 1171
    aget-object v2, v0, v3

    const-string v13, "?"

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v13

    .line 1172
    :goto_0
    aget-object v14, v0, v5

    if-eqz v14, :cond_2

    goto :goto_1

    :cond_2
    move-object v14, v13

    .line 1173
    :goto_1
    aget-object v15, v0, v4

    if-eqz v15, :cond_3

    move-object v13, v15

    .line 1174
    :cond_3
    aget-object v6, v0, v6

    if-eqz v6, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    .line 1177
    :goto_2
    const-string v15, "DF"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    const-string v5, "MF"

    if-nez v16, :cond_6

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    goto :goto_3

    .line 1181
    :cond_5
    const-string v0, "\ud83d\udcc4 "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " \u5927\u5c0f:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "B"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    if-lez v6, :cond_7

    const-string v0, " SFI:"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1178
    :cond_6
    :goto_3
    const-string v14, "\ud83d\udcc1 \u76ee\u5f55(DF)"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    aget-object v14, v0, v8

    if-eqz v14, :cond_7

    const-string v14, " \u540d\u79f0:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v0, v0, v8

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    :cond_7
    :goto_4
    if-ne v7, v10, :cond_8

    const-string v0, " (\u8b66\u544a:\u6587\u4ef6\u672a\u6fc0\u6d3b)"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    :cond_8
    if-ne v7, v9, :cond_9

    const-string v0, " (\u8b66\u544a:\u6821\u9a8c\u9519)"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    :cond_9
    const-string v0, "\n"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1192
    :try_start_0
    const-string v2, "\u900f\u660e"

    invoke-virtual {v13, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "BIN"

    invoke-virtual {v13, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_6

    .line 1198
    :cond_a
    const-string v0, "\u8bb0\u5f55"

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "\u5faa\u73af"

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "\u7ebf\u6027"

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1200
    :cond_b
    const/4 v0, 0x1

    :goto_5
    if-gt v0, v4, :cond_e

    .line 1201
    invoke-direct {v1, v0, v6}, Lorg/pboc/fm1208/PbocEngine;->readRecordEf(II)[B

    move-result-object v2

    .line 1202
    iget v5, v1, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    if-ne v5, v11, :cond_e

    if-eqz v2, :cond_e

    array-length v5, v2

    if-lez v5, :cond_e

    .line 1203
    const-string v5, "  \u8bb0\u5f55%d: %s\n"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v2}, Lorg/pboc/fm1208/PbocEngine;->bytesToHexSpaced([B)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1194
    :cond_c
    :goto_6
    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lorg/pboc/fm1208/PbocEngine;->readBinaryEf(I)[B

    move-result-object v2

    .line 1195
    iget v3, v1, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    if-ne v3, v11, :cond_d

    if-eqz v2, :cond_d

    array-length v3, v2

    if-lez v3, :cond_d

    .line 1196
    const-string v3, "  \u5185\u5bb9: "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lorg/pboc/fm1208/PbocEngine;->bytesToHexSpaced([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1198
    :cond_d
    goto :goto_7

    .line 1207
    :catch_0
    move-exception v0

    :cond_e
    :goto_7
    nop

    .line 1210
    :cond_f
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static xorB([B[B)[B
    .locals 4

    .line 137
    array-length v0, p0

    new-array v0, v0, [B

    .line 138
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_0
    return-object v0
.end method


# virtual methods
.method public browseFileSystem()Ljava/lang/String;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1215
    move-object/from16 v1, p0

    const-string v2, "0018"

    const-string v3, "0016"

    const-string v4, "0015"

    const-string v5, "  \u2717 "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1216
    const-string v0, "\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1217
    const-string v0, "       FM1208 \u6587\u4ef6\u7cfb\u7edf\u6d4f\u89c8\u5668\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    const-string v0, "\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\n\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    const/4 v7, 0x7

    new-array v0, v7, [B

    fill-array-data v0, :array_0

    invoke-virtual {v1, v0}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B

    .line 1224
    const-string v0, "\ud83d\udcc2 3F00 \u4e3b\u6587\u4ef6(\u6839\u76ee\u5f55)\n\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    const/4 v8, 0x2

    new-array v9, v8, [[Ljava/lang/String;

    const-string v0, "MF\u4e0b\u8bb0\u5f55\u6587\u4ef6"

    const-string v10, "0001"

    const-string v11, "REC"

    filled-new-array {v10, v11, v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    aput-object v0, v9, v12

    const-string v0, "\u4e8c\u8fdb\u5236\u6587\u4ef6"

    const-string v13, "0005"

    const-string v14, "BIN"

    filled-new-array {v13, v14, v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x1

    aput-object v0, v9, v13

    .line 1231
    const/4 v15, 0x0

    :goto_0
    const-string v7, " "

    const-string v13, "\ud83d\udcc4 "

    const-string v12, "\n"

    if-ge v15, v8, :cond_0

    aget-object v0, v9, v15

    .line 1232
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v17, 0x0

    aget-object v8, v0, v17

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v13, v0, v8

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    aget-object v7, v0, v17

    move-object/from16 v18, v9

    const/4 v13, 0x1

    aget-object v9, v0, v13

    aget-object v0, v0, v8

    invoke-direct {v1, v7, v9, v0}, Lorg/pboc/fm1208/PbocEngine;->readEfAuto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    const/4 v7, 0x7

    :try_start_0
    new-array v0, v7, [B

    fill-array-data v0, :array_1

    invoke-virtual {v1, v0}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1231
    :goto_1
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, v18

    const/4 v7, 0x7

    const/4 v8, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_0

    .line 1240
    :cond_0
    const-string v8, "\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    const-string v0, "\ud83d\udcc2 1001 PBOC\u91d1\u878d\u5e94\u7528\u76ee\u5f55\n\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    const/4 v15, 0x5

    const/4 v9, 0x7

    :try_start_1
    new-array v0, v9, [B

    fill-array-data v0, :array_2

    invoke-virtual {v1, v0}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B

    .line 1246
    iget v0, v1, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    const v9, 0x9000

    if-eq v0, v9, :cond_1

    const/16 v9, 0x6282

    if-eq v0, v9, :cond_1

    const/16 v9, 0x6283

    if-eq v0, v9, :cond_1

    .line 1247
    const-string v0, "  \u2717 \u9009\u62e91001\u5931\u8d25: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v9, v1, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    invoke-static {v9}, Lorg/pboc/fm1208/PbocEngine;->swHint(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v7

    goto/16 :goto_4

    .line 1250
    :cond_1
    new-array v9, v15, [[Ljava/lang/String;

    const/4 v15, 0x3

    new-array v0, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v10, v0, v15

    const/4 v10, 0x1

    aput-object v11, v0, v10

    const-string v10, "ED\u6838\u5fc3\u5e94\u7528\u6570\u636e"

    const/4 v15, 0x2

    aput-object v10, v0, v15

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v15, 0x3

    new-array v0, v15, [Ljava/lang/String;

    const-string v15, "0002"

    aput-object v15, v0, v10

    const/4 v10, 0x1

    aput-object v11, v0, v10

    const-string v15, "EP\u6807\u51c6\u4ea4\u6613\u6587\u4ef6"

    const/16 v16, 0x2

    aput-object v15, v0, v16

    aput-object v0, v9, v10

    const/4 v10, 0x3

    new-array v0, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v4, v0, v10

    const/4 v10, 0x1

    aput-object v14, v0, v10

    const-string v10, "\u53d1\u5361\u539f\u59cb\u914d\u7f6e"

    const/4 v15, 0x2

    aput-object v10, v0, v15

    aput-object v0, v9, v15

    const/4 v10, 0x3

    new-array v0, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v0, v10

    const/4 v10, 0x1

    aput-object v14, v0, v10

    const-string v10, "\u6269\u5c55\u4e8c\u8fdb\u5236"

    const/4 v15, 0x2

    aput-object v10, v0, v15

    const/4 v10, 0x3

    aput-object v0, v9, v10

    new-array v0, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v0, v10

    const/4 v10, 0x1

    aput-object v11, v0, v10

    const-string v10, "\u4ea4\u6613\u6d41\u6c34(\u5faa\u73af)"

    const/4 v15, 0x2

    aput-object v10, v0, v15

    const/4 v10, 0x4

    aput-object v0, v9, v10

    .line 1257
    const/4 v10, 0x0

    :goto_2
    const/4 v15, 0x5

    if-ge v10, v15, :cond_2

    aget-object v0, v9, v10

    .line 1258
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v19, v9

    const/16 v17, 0x0

    aget-object v9, v0, v17

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v20, v7

    const/4 v15, 0x2

    :try_start_2
    aget-object v7, v0, v15

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    const/4 v7, 0x0

    aget-object v9, v0, v7

    const/4 v7, 0x1

    aget-object v15, v0, v7

    const/4 v7, 0x2

    aget-object v0, v0, v7

    invoke-direct {v1, v9, v15, v0}, Lorg/pboc/fm1208/PbocEngine;->readEfAuto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1262
    const/4 v7, 0x7

    :try_start_3
    new-array v0, v7, [B

    fill-array-data v0, :array_3

    invoke-virtual {v1, v0}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 1257
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v9, v19

    move-object/from16 v7, v20

    goto :goto_2

    .line 1265
    :catch_2
    move-exception v0

    goto :goto_5

    .line 1257
    :cond_2
    move-object/from16 v20, v7

    .line 1267
    :goto_4
    goto :goto_6

    .line 1265
    :catch_3
    move-exception v0

    move-object/from16 v20, v7

    .line 1266
    :goto_5
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    :goto_6
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    const-string v0, "\ud83d\udcc2 ADF PBOC\u5e94\u7528 (A000000386980701)\n\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1273
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lorg/pboc/fm1208/PbocEngine;->selectApp()Z

    .line 1275
    const/4 v7, 0x6

    new-array v8, v7, [[Ljava/lang/String;

    const/4 v9, 0x3

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v4, v0, v9

    const/4 v4, 0x1

    aput-object v14, v0, v4

    const-string v4, "ED/EP\u5e94\u7528\u4fe1\u606f"

    const/4 v9, 0x2

    aput-object v4, v0, v9

    const/4 v4, 0x0

    aput-object v0, v8, v4

    const/4 v9, 0x3

    new-array v0, v9, [Ljava/lang/String;

    aput-object v3, v0, v4

    const/4 v3, 0x1

    aput-object v14, v0, v3

    const-string v4, "ED/EP\u5e94\u7528\u7ef4\u62a4"

    const/4 v9, 0x2

    aput-object v4, v0, v9

    aput-object v0, v8, v3

    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "0017"

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const/4 v3, 0x1

    aput-object v14, v0, v3

    const-string v3, "ED/EP\u5e94\u7528\u5b89\u5168"

    const/4 v4, 0x2

    aput-object v3, v0, v4

    aput-object v0, v8, v4

    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object v11, v0, v2

    const-string v2, "\u4ea4\u6613\u660e\u7ec6(\u5faa\u73af)"

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/4 v2, 0x3

    aput-object v0, v8, v2

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "0019"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object v14, v0, v2

    const-string v2, "\u5185\u90e8\u6570\u636e"

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/4 v2, 0x4

    aput-object v0, v8, v2

    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "001A"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object v11, v0, v2

    const-string v2, "ED\u4ea4\u6613\u660e\u7ec6"

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/4 v2, 0x5

    aput-object v0, v8, v2

    .line 1283
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v7, :cond_3

    aget-object v0, v8, v2

    .line 1284
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v9, v0, v4

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v9, 0x2

    aget-object v10, v0, v9

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    const/4 v3, 0x0

    aget-object v9, v0, v3

    const/4 v10, 0x1

    aget-object v11, v0, v10

    const/4 v14, 0x2

    aget-object v0, v0, v14

    invoke-direct {v1, v9, v11, v0}, Lorg/pboc/fm1208/PbocEngine;->readEfAuto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 1288
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lorg/pboc/fm1208/PbocEngine;->selectApp()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    .line 1283
    :goto_8
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v20, v4

    goto :goto_7

    .line 1292
    :cond_3
    goto :goto_9

    .line 1290
    :catch_5
    move-exception v0

    .line 1291
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    :goto_9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        -0x5ct
        0x0t
        0x0t
        0x2t
        0x3ft
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        -0x5ct
        0x0t
        0x0t
        0x2t
        0x3ft
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        -0x5ct
        0x0t
        0x0t
        0x2t
        0x10t
        0x1t
    .end array-data

    :array_3
    .array-data 1
        0x0t
        -0x5ct
        0x0t
        0x0t
        0x2t
        0x10t
        0x1t
    .end array-data
.end method

.method public externalAuthenticate([BI)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 444
    const-string v0, "--- \u5916\u90e8\u8ba4\u8bc1 (EXTERNAL AUTHENTICATE) ---"

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 447
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/pboc/fm1208/PbocEngine;->getRandom(I)[B

    move-result-object v1

    .line 448
    invoke-static {v1}, Lorg/pboc/fm1208/PbocEngine;->bytesToHexSpaced([B)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5361\u7247\u968f\u673a\u6570(4B): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 451
    const/16 v2, 0x8

    new-array v3, v2, [B

    .line 452
    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    array-length v1, p1

    const/16 v5, 0x10

    const/4 v6, 0x3

    if-ne v1, v5, :cond_0

    sget v1, Lorg/pboc/fm1208/PbocEngine;->MAC_ALGO_MODE:I

    if-ne v1, v6, :cond_0

    .line 458
    invoke-static {p1, v3}, Lorg/pboc/fm1208/PbocEngine;->tripleDesEnc([B[B)[B

    move-result-object p1

    goto :goto_0

    .line 460
    :cond_0
    array-length v1, p1

    if-lt v1, v2, :cond_1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 461
    :cond_1
    invoke-static {p1, v3}, Lorg/pboc/fm1208/PbocEngine;->desEnc([B[B)[B

    move-result-object p1

    .line 463
    :goto_0
    invoke-static {p1}, Lorg/pboc/fm1208/PbocEngine;->bytesToHexSpaced([B)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u52a0\u5bc6\u6570\u636e: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 466
    const/16 v1, 0xd

    new-array v1, v1, [B

    .line 467
    aput-byte v4, v1, v4

    const/16 v3, -0x7e

    const/4 v5, 0x1

    aput-byte v3, v1, v5

    const/4 v3, 0x2

    aput-byte v4, v1, v3

    int-to-byte p2, p2

    aput-byte p2, v1, v6

    .line 468
    aput-byte v2, v1, v0

    .line 469
    const/4 p2, 0x5

    invoke-static {p1, v4, v1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    invoke-virtual {p0, v1}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B

    .line 472
    iget p1, p0, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    const p2, 0x9000

    if-ne p1, p2, :cond_2

    .line 473
    const-string p1, "\u5916\u90e8\u8ba4\u8bc1\u6210\u529f"

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 474
    return v5

    .line 476
    :cond_2
    shr-int/lit8 p2, p1, 0x8

    const/16 v0, 0x63

    if-ne p2, v0, :cond_3

    .line 477
    and-int/lit16 p1, p1, 0xff

    .line 478
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5916\u90e8\u8ba4\u8bc1\u5931\u8d25, \u5269\u4f59"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "\u6b21"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 479
    new-instance p2, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2

    .line 481
    :cond_3
    invoke-static {p1}, Lorg/pboc/fm1208/PbocEngine;->swHint(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5916\u90e8\u8ba4\u8bc1\u5931\u8d25: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 482
    new-instance p1, Ljava/lang/Exception;

    iget p2, p0, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    invoke-static {p2}, Lorg/pboc/fm1208/PbocEngine;->swHint(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBalanceED()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 541
    const-string v0, "--- \u8bfb\u53d6ED\u4f59\u989d ---"

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 542
    sget-object v0, Lorg/pboc/fm1208/PbocEngine;->GET_BAL_ED:[B

    invoke-virtual {p0, v0}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B

    move-result-object v0

    .line 543
    iget v1, p0, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    const v2, 0x9000

    if-ne v1, v2, :cond_0

    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 544
    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/pboc/fm1208/PbocEngine;->balanceED:I

    .line 545
    invoke-static {v0}, Lorg/pboc/fm1208/PbocEngine;->formatBalance(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ED\u4f59\u989d: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 546
    iget v0, p0, Lorg/pboc/fm1208/PbocEngine;->balanceED:I

    return v0

    .line 548
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    iget v1, p0, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    invoke-static {v1}, Lorg/pboc/fm1208/PbocEngine;->swHint(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bfb\u53d6ED\u4f59\u989d\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBalanceEP()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 529
    const-string v0, "--- \u8bfb\u53d6EP\u4f59\u989d ---"

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 530
    sget-object v0, Lorg/pboc/fm1208/PbocEngine;->GET_BAL_EP:[B

    invoke-virtual {p0, v0}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B

    move-result-object v0

    .line 531
    iget v1, p0, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    const v2, 0x9000

    if-ne v1, v2, :cond_0

    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 532
    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/pboc/fm1208/PbocEngine;->balanceEP:I

    .line 533
    invoke-static {v0}, Lorg/pboc/fm1208/PbocEngine;->formatBalance(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EP\u4f59\u989d: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 534
    iget v0, p0, Lorg/pboc/fm1208/PbocEngine;->balanceEP:I

    return v0

    .line 536
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    iget v1, p0, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    invoke-static {v1}, Lorg/pboc/fm1208/PbocEngine;->swHint(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bfb\u53d6EP\u4f59\u989d\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCardInfo()Ljava/lang/String;
    .locals 8

    .line 1400
    const-string v0, "\n"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1401
    const-string v2, "\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    const-string v2, "         FM1208 \u5361\u7247\u4fe1\u606f\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1403
    const-string v2, "\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1406
    const-string v2, "\u3010UID\u3011"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1407
    iget-object v2, p0, Lorg/pboc/fm1208/PbocEngine;->cardUid:[B

    const-string v3, "\u65e0"

    if-eqz v2, :cond_0

    array-length v4, v2

    if-lez v4, :cond_0

    .line 1408
    invoke-static {v2}, Lorg/pboc/fm1208/PbocEngine;->bytesToHexSpaced([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1409
    iget-object v2, p0, Lorg/pboc/fm1208/PbocEngine;->cardUid:[B

    array-length v4, v2

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 1411
    const/4 v4, 0x0

    aget-byte v5, v2, v4

    const/4 v6, 0x1

    aget-byte v7, v2, v6

    xor-int/2addr v5, v7

    const/4 v7, 0x2

    aget-byte v7, v2, v7

    xor-int/2addr v5, v7

    const/4 v7, 0x3

    aget-byte v2, v2, v7

    xor-int/2addr v2, v5

    int-to-byte v2, v2

    .line 1412
    const-string v5, " (BCC="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v6, v4

    const-string v2, "%02X"

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    goto :goto_0

    .line 1415
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1417
    :cond_1
    :goto_0
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1420
    const-string v4, "\u3010ATS\u3011\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1421
    iget-object v4, p0, Lorg/pboc/fm1208/PbocEngine;->atsInfo:Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v3, p0, Lorg/pboc/fm1208/PbocEngine;->atsInfo:Ljava/lang/String;

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1424
    const-string v2, "\u3010\u5e94\u7528\u4fe1\u606f\u3011\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1426
    :try_start_0
    invoke-virtual {p0}, Lorg/pboc/fm1208/PbocEngine;->selectApp()Z

    .line 1427
    const-string v2, "PBOC\u5e94\u7528: A000000386980701\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1428
    const-string v2, "PIN\u72b6\u6001: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/pboc/fm1208/PbocEngine;->pinVerified:Z

    if-eqz v3, :cond_3

    const-string v3, "\u5df2\u8ba4\u8bc1"

    goto :goto_1

    :cond_3
    const-string v3, "\u672a\u8ba4\u8bc1"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1432
    :try_start_1
    invoke-virtual {p0}, Lorg/pboc/fm1208/PbocEngine;->getBalanceEP()I

    .line 1433
    const-string v2, "EP\u4f59\u989d: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/pboc/fm1208/PbocEngine;->balanceEP:I

    invoke-static {v3}, Lorg/pboc/fm1208/PbocEngine;->formatBalance(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1436
    goto :goto_2

    .line 1434
    :catch_0
    move-exception v2

    .line 1435
    :try_start_2
    const-string v2, "EP\u4f59\u989d: \u8bfb\u53d6\u5931\u8d25\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1438
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lorg/pboc/fm1208/PbocEngine;->getBalanceED()I

    .line 1439
    const-string v2, "ED\u4f59\u989d: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/pboc/fm1208/PbocEngine;->balanceED:I

    invoke-static {v3}, Lorg/pboc/fm1208/PbocEngine;->formatBalance(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1442
    goto :goto_3

    .line 1440
    :catch_1
    move-exception v2

    .line 1441
    :try_start_4
    const-string v2, "ED\u4f59\u989d: \u8bfb\u53d6\u5931\u8d25\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1445
    :goto_3
    goto :goto_4

    .line 1443
    :catch_2
    move-exception v2

    .line 1444
    const-string v3, "\u5e94\u7528\u4fe1\u606f\u8bfb\u53d6\u5931\u8d25: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1447
    :goto_4
    const-string v2, "\n\u3010\u914d\u7f6e\u4fe1\u606f\u3011\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1448
    const-string v2, "\u4e3b\u5bc6\u94a5: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/pboc/fm1208/PbocEngine;->MASTER_KEY:[B

    invoke-static {v3}, Lorg/pboc/fm1208/PbocEngine;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/pboc/fm1208/PbocEngine;->MASTER_KEY:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "B)\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1449
    const-string v2, "\u7ec8\u7aef\u53f7: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/pboc/fm1208/PbocEngine;->TERMINAL_ID:[B

    invoke-static {v3}, Lorg/pboc/fm1208/PbocEngine;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1450
    const-string v2, "MAC\u7b97\u6cd5: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    sget v2, Lorg/pboc/fm1208/PbocEngine;->MAC_ALGO_MODE:I

    packed-switch v2, :pswitch_data_0

    goto :goto_5

    .line 1454
    :pswitch_0
    const-string v2, "\u5f3a\u52363DES\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1453
    :pswitch_1
    const-string v2, "\u5f3a\u5236DES\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1452
    :pswitch_2
    const-string v2, "\u81ea\u52a8(\u6309\u7b97\u6cd5\u6807\u8bc6)\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    :goto_5
    const-string v2, "\u7ec8\u7aef\u5e8f\u53f7: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/pboc/fm1208/PbocEngine;->terminalSeq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRandom()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 524
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/pboc/fm1208/PbocEngine;->getRandom(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getRandom(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 514
    const/4 v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    const/4 v2, 0x1

    const/16 v3, -0x7c

    aput-byte v3, v0, v2

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    const/4 v1, 0x4

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B

    move-result-object v0

    .line 515
    iget v1, p0, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    const v2, 0x9000

    if-ne v1, v2, :cond_0

    .line 516
    invoke-static {v0}, Lorg/pboc/fm1208/PbocEngine;->bytesToHexSpaced([B)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u968f\u673a\u6570("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "B): "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 517
    return-object v0

    .line 519
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    iget v0, p0, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    invoke-static {v0}, Lorg/pboc/fm1208/PbocEngine;->swHint(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u968f\u673a\u6570\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public internalAuthenticate(II[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 491
    const-string v0, "--- \u5185\u90e8\u8ba4\u8bc1 (INTERNAL AUTHENTICATE) ---"

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 492
    const-string v0, "\u89e3\u5bc6"

    const-string v1, "MAC"

    const-string v2, "\u52a0\u5bc6"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 493
    const/4 v1, 0x2

    if-gt p1, v1, :cond_0

    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    const-string v0, "\u672a\u77e5"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6a21\u5f0f: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", \u5bc6\u94a5\u6807\u8bc6: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 494
    invoke-static {p3}, Lorg/pboc/fm1208/PbocEngine;->bytesToHexSpaced([B)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8f93\u5165\u6570\u636e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 496
    array-length v0, p3

    const/4 v2, 0x5

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 497
    const/4 v3, 0x0

    aput-byte v3, v0, v3

    const/4 v4, 0x1

    const/16 v5, -0x78

    aput-byte v5, v0, v4

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    const/4 p1, 0x3

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    .line 498
    array-length p1, p3

    int-to-byte p1, p1

    const/4 p2, 0x4

    aput-byte p1, v0, p2

    .line 499
    array-length p1, p3

    invoke-static {p3, v3, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 501
    invoke-virtual {p0, v0}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B

    move-result-object p1

    .line 502
    iget p2, p0, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    const p3, 0x9000

    if-ne p2, p3, :cond_1

    .line 503
    invoke-static {p1}, Lorg/pboc/fm1208/PbocEngine;->bytesToHexSpaced([B)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5185\u90e8\u8ba4\u8bc1\u7ed3\u679c: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 504
    return-object p1

    .line 506
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    iget p2, p0, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    invoke-static {p2}, Lorg/pboc/fm1208/PbocEngine;->swHint(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5185\u90e8\u8ba4\u8bc1\u5931\u8d25: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadEP(II)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 563
    move-object/from16 v1, p0

    const-string v0, "=== \u5708\u5b58(\u5145\u503c) ==="

    invoke-direct {v1, v0}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 564
    invoke-static/range {p1 .. p1}, Lorg/pboc/fm1208/PbocEngine;->formatBalance(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u91d1\u989d: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 567
    const-string v0, "--- \u521d\u59cb\u5316\u5708\u5b58 (80 50 00 02) ---"

    invoke-direct {v1, v0}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 568
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    move/from16 v3, p1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 569
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 570
    move/from16 v5, p2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 571
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 572
    sget-object v6, Lorg/pboc/fm1208/PbocEngine;->TERMINAL_ID:[B

    const/4 v7, 0x6

    invoke-virtual {v0, v6, v5, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 574
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    add-int/2addr v6, v7

    const/4 v8, 0x1

    add-int/2addr v6, v8

    new-array v6, v6, [B

    .line 575
    const/16 v9, -0x80

    aput-byte v9, v6, v5

    .line 576
    const/16 v10, 0x50

    aput-byte v10, v6, v8

    .line 577
    const/4 v10, 0x2

    aput-byte v5, v6, v10

    .line 578
    const/4 v11, 0x3

    aput-byte v10, v6, v11

    .line 579
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v6, v2

    .line 580
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 581
    array-length v12, v0

    const/4 v13, 0x5

    invoke-static {v0, v5, v6, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 582
    array-length v0, v0

    add-int/2addr v0, v13

    const/16 v12, 0xf

    aput-byte v12, v6, v0

    .line 584
    invoke-virtual {v1, v6}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B

    move-result-object v0

    .line 585
    iget v6, v1, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    const v12, 0x9000

    if-ne v6, v12, :cond_6

    .line 588
    array-length v6, v0

    const/16 v14, 0xc

    if-lt v6, v14, :cond_5

    .line 593
    invoke-static {v0, v5, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v15, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v15}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 594
    invoke-static {v0, v2, v10}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v15

    sget-object v12, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v15, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v12

    const v15, 0xffff

    and-int/2addr v12, v15

    .line 595
    aget-byte v15, v0, v7

    .line 596
    const/16 v16, 0x7

    aget-byte v9, v0, v16

    .line 597
    const/16 v8, 0x8

    invoke-static {v0, v8, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 598
    array-length v13, v0

    const/16 v11, 0x10

    if-lt v13, v11, :cond_0

    invoke-static {v0, v14, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 600
    :goto_0
    invoke-static {v6}, Lorg/pboc/fm1208/PbocEngine;->formatBalance(I)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u65e7\u4f59\u989d: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 601
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u8054\u673a\u5e8f\u53f7: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 602
    and-int/lit16 v11, v15, 0xff

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u5bc6\u94a5\u7248\u672c: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 603
    and-int/lit16 v9, v9, 0xff

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u7b97\u6cd5\u6807\u8bc6: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 604
    invoke-static {v8}, Lorg/pboc/fm1208/PbocEngine;->bytesToHexSpaced([B)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u5361\u7247\u968f\u673a\u6570: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 608
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    sget-object v13, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v11

    int-to-short v12, v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    .line 609
    sget-object v12, Lorg/pboc/fm1208/PbocEngine;->MASTER_KEY:[B

    invoke-direct {v1, v12, v8, v11, v9}, Lorg/pboc/fm1208/PbocEngine;->deriveLoadKey([B[B[BI)[B

    move-result-object v8

    .line 610
    invoke-static {v8}, Lorg/pboc/fm1208/PbocEngine;->bytesToHexSpaced([B)Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u5708\u5b58\u5bc6\u94a5: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 613
    if-eqz v0, :cond_2

    .line 615
    :try_start_0
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 616
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    sget-object v12, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 617
    invoke-virtual {v9, v4, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 618
    invoke-virtual {v9, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 619
    sget-object v6, Lorg/pboc/fm1208/PbocEngine;->TERMINAL_ID:[B

    invoke-virtual {v9, v6, v5, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 620
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v8, v6}, Lorg/pboc/fm1208/PbocEngine;->pbocMac([B[B)[B

    move-result-object v6

    .line 621
    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u2713"

    goto :goto_1

    :cond_1
    const-string v0, "\u2717FAIL"

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MAC1 "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    goto :goto_2

    .line 622
    :catch_0
    move-exception v0

    .line 623
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MAC1\u9a8c\u8bc1\u5f02\u5e38: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 629
    :cond_2
    :goto_2
    invoke-static {}, Lorg/pboc/fm1208/PbocEngine;->nowD()[B

    move-result-object v0

    .line 630
    invoke-static {}, Lorg/pboc/fm1208/PbocEngine;->nowT()[B

    move-result-object v6

    .line 631
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 632
    invoke-virtual {v9, v4, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 633
    invoke-virtual {v9, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 634
    sget-object v4, Lorg/pboc/fm1208/PbocEngine;->TERMINAL_ID:[B

    invoke-virtual {v9, v4, v5, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 635
    invoke-virtual {v9, v0, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 636
    const/4 v4, 0x3

    invoke-virtual {v9, v6, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 637
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v8, v4}, Lorg/pboc/fm1208/PbocEngine;->pbocMac([B[B)[B

    move-result-object v4

    .line 638
    invoke-static {v4}, Lorg/pboc/fm1208/PbocEngine;->bytesToHexSpaced([B)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MAC2: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 643
    const-string v7, "--- \u6267\u884c\u5708\u5b58 (80 52 00 00) ---"

    invoke-direct {v1, v7}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 644
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 645
    invoke-virtual {v7, v0, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 646
    const/4 v8, 0x3

    invoke-virtual {v7, v6, v5, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 647
    invoke-virtual {v7, v4, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 650
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const/4 v4, 0x5

    add-int/2addr v0, v4

    const/4 v4, 0x1

    add-int/2addr v0, v4

    new-array v0, v0, [B

    .line 651
    const/16 v6, -0x80

    aput-byte v6, v0, v5

    .line 652
    const/16 v6, 0x52

    aput-byte v6, v0, v4

    .line 653
    aput-byte v5, v0, v10

    .line 654
    const/4 v4, 0x3

    aput-byte v5, v0, v4

    .line 655
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 656
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 657
    array-length v6, v4

    const/4 v7, 0x5

    invoke-static {v4, v5, v0, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 658
    array-length v4, v4

    add-int/2addr v4, v7

    aput-byte v2, v0, v4

    .line 660
    invoke-virtual {v1, v0}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B

    move-result-object v0

    .line 661
    iget v4, v1, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    const v6, 0x9000

    if-ne v4, v6, :cond_4

    .line 665
    array-length v4, v0

    if-lt v4, v2, :cond_3

    invoke-static {v0, v5, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_3

    :cond_3
    new-array v0, v5, [B

    .line 666
    :goto_3
    invoke-static {v0}, Lorg/pboc/fm1208/PbocEngine;->bytesToHexSpaced([B)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TAC: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 668
    sget v0, Lorg/pboc/fm1208/PbocEngine;->terminalSeq:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    sput v0, Lorg/pboc/fm1208/PbocEngine;->terminalSeq:I

    .line 671
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/pboc/fm1208/PbocEngine;->getBalanceEP()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 672
    :goto_4
    invoke-static/range {p1 .. p1}, Lorg/pboc/fm1208/PbocEngine;->formatBalance(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5708\u5b58\u6210\u529f: +"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 673
    const/4 v2, 0x1

    return v2

    .line 662
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    iget v2, v1, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    invoke-static {v2}, Lorg/pboc/fm1208/PbocEngine;->swHint(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5708\u5b58\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_5
    new-instance v2, Ljava/lang/Exception;

    array-length v0, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5708\u5b58\u54cd\u5e94\u4e0d\u8db3("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "B)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 586
    :cond_6
    new-instance v0, Ljava/lang/Exception;

    iget v2, v1, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    invoke-static {v2}, Lorg/pboc/fm1208/PbocEngine;->swHint(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u521d\u59cb\u5316\u5708\u5b58\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public purchaseEP(II)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 688
    move-object/from16 v7, p0

    move/from16 v8, p1

    const-string v9, " MAC2: "

    const-string v10, "TAC: "

    const-string v0, "=== \u6d88\u8d39 ==="

    invoke-direct {v7, v0}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 689
    invoke-static/range {p1 .. p1}, Lorg/pboc/fm1208/PbocEngine;->formatBalance(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u91d1\u989d: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 692
    const-string v0, "--- \u521d\u59cb\u5316\u6d88\u8d39 (80 50 01 02) ---"

    invoke-direct {v7, v0}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 693
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    .line 694
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 695
    move/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 696
    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 697
    sget-object v2, Lorg/pboc/fm1208/PbocEngine;->TERMINAL_ID:[B

    const/4 v13, 0x6

    invoke-virtual {v1, v2, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 699
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    add-int/2addr v2, v13

    const/4 v14, 0x1

    add-int/2addr v2, v14

    new-array v2, v2, [B

    .line 700
    const/16 v15, -0x80

    aput-byte v15, v2, v12

    .line 701
    const/16 v3, 0x50

    aput-byte v3, v2, v14

    .line 702
    const/4 v6, 0x2

    aput-byte v14, v2, v6

    .line 703
    const/4 v5, 0x3

    aput-byte v6, v2, v5

    .line 704
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 705
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 706
    array-length v3, v1

    const/4 v4, 0x5

    invoke-static {v1, v12, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 707
    array-length v1, v1

    add-int/2addr v1, v4

    const/16 v3, 0xf

    aput-byte v3, v2, v1

    .line 709
    invoke-virtual {v7, v2}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B

    move-result-object v1

    .line 710
    iget v2, v7, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    const v15, 0x9000

    if-ne v2, v15, :cond_5

    .line 713
    array-length v2, v1

    if-lt v2, v3, :cond_4

    .line 718
    invoke-static {v1, v12, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 719
    invoke-static {v1, v0, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    const v5, 0xffff

    and-int/2addr v4, v5

    .line 720
    const/16 v5, 0x9

    invoke-static {v1, v13, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v17

    .line 721
    aget-byte v5, v1, v5

    .line 722
    const/16 v5, 0xa

    aget-byte v5, v1, v5

    .line 723
    const/16 v15, 0xb

    invoke-static {v1, v15, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 725
    invoke-static {v2}, Lorg/pboc/fm1208/PbocEngine;->formatBalance(I)Ljava/lang/String;

    move-result-object v1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u65e7\u4f59\u989d: "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u4ea4\u6613\u5e8f\u53f7: "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 727
    invoke-static/range {v17 .. v17}, Lorg/pboc/fm1208/PbocEngine;->bytesToHexSpaced([B)Ljava/lang/String;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u65e7\u5bc6\u6587: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 728
    invoke-static {v3}, Lorg/pboc/fm1208/PbocEngine;->bytesToHexSpaced([B)Ljava/lang/String;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u5361\u7247\u968f\u673a\u6570: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 730
    if-lt v2, v8, :cond_3

    .line 736
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    int-to-short v2, v4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 737
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget v2, Lorg/pboc/fm1208/PbocEngine;->terminalSeq:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    .line 738
    invoke-static {v14, v6, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    .line 739
    sget-object v2, Lorg/pboc/fm1208/PbocEngine;->MASTER_KEY:[B

    and-int/lit16 v5, v5, 0xff

    move-object/from16 v1, p0

    move/from16 v16, v5

    move-object v5, v15

    const/4 v15, 0x2

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lorg/pboc/fm1208/PbocEngine;->derivePurchKey([B[B[B[BI)[B

    move-result-object v1

    .line 740
    invoke-static {v1}, Lorg/pboc/fm1208/PbocEngine;->bytesToHexSpaced([B)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6d88\u8d39\u5bc6\u94a5: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 744
    invoke-static {}, Lorg/pboc/fm1208/PbocEngine;->nowD()[B

    move-result-object v2

    .line 745
    invoke-static {}, Lorg/pboc/fm1208/PbocEngine;->nowT()[B

    move-result-object v3

    .line 746
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 747
    invoke-virtual {v4, v11, v12, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 748
    invoke-virtual {v4, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 749
    sget-object v5, Lorg/pboc/fm1208/PbocEngine;->TERMINAL_ID:[B

    invoke-virtual {v4, v5, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 750
    invoke-virtual {v4, v2, v12, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 751
    const/4 v5, 0x3

    invoke-virtual {v4, v3, v12, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 752
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v1, v4}, Lorg/pboc/fm1208/PbocEngine;->pbocMac([B[B)[B

    move-result-object v4

    .line 753
    invoke-static {v4}, Lorg/pboc/fm1208/PbocEngine;->bytesToHexSpaced([B)Ljava/lang/String;

    move-result-object v6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MAC1: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 758
    const-string v6, "--- \u6267\u884c\u6d88\u8d39 (80 54 01 00) ---"

    invoke-direct {v7, v6}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 759
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 760
    invoke-virtual {v6, v14, v12, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 761
    invoke-virtual {v6, v2, v12, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 762
    invoke-virtual {v6, v3, v12, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 763
    invoke-virtual {v6, v4, v12, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 766
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    const/4 v3, 0x5

    add-int/2addr v2, v3

    const/4 v4, 0x1

    add-int/2addr v2, v4

    new-array v2, v2, [B

    .line 767
    const/16 v13, -0x80

    aput-byte v13, v2, v12

    .line 768
    const/16 v13, 0x54

    aput-byte v13, v2, v4

    .line 769
    const/4 v13, 0x2

    aput-byte v4, v2, v13

    .line 770
    aput-byte v12, v2, v5

    .line 771
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 772
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 773
    array-length v5, v4

    invoke-static {v4, v12, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 774
    array-length v4, v4

    add-int/2addr v4, v3

    const/16 v3, 0x8

    aput-byte v3, v2, v4

    .line 776
    invoke-virtual {v7, v2}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B

    move-result-object v2

    .line 777
    iget v4, v7, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    const v5, 0x9000

    if-ne v4, v5, :cond_2

    .line 780
    array-length v4, v2

    if-lt v4, v3, :cond_1

    .line 784
    invoke-static {v2, v12, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 785
    invoke-static {v2, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 787
    :try_start_0
    invoke-static {v1, v11}, Lorg/pboc/fm1208/PbocEngine;->pbocMac([B[B)[B

    move-result-object v0

    .line 788
    invoke-static {v4}, Lorg/pboc/fm1208/PbocEngine;->bytesToHexSpaced([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lorg/pboc/fm1208/PbocEngine;->bytesToHexSpaced([B)Ljava/lang/String;

    move-result-object v3

    .line 789
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u2713"

    goto :goto_0

    :cond_0
    const-string v0, "\u2717FAIL"

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 788
    invoke-direct {v7, v0}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    goto :goto_1

    .line 790
    :catch_0
    move-exception v0

    .line 791
    invoke-static {v4}, Lorg/pboc/fm1208/PbocEngine;->bytesToHexSpaced([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lorg/pboc/fm1208/PbocEngine;->bytesToHexSpaced([B)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 794
    :goto_1
    sget v0, Lorg/pboc/fm1208/PbocEngine;->terminalSeq:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lorg/pboc/fm1208/PbocEngine;->terminalSeq:I

    .line 797
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/pboc/fm1208/PbocEngine;->getBalanceEP()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 798
    :goto_2
    invoke-static/range {p1 .. p1}, Lorg/pboc/fm1208/PbocEngine;->formatBalance(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6d88\u8d39\u6210\u529f: -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 799
    const/4 v1, 0x1

    return v1

    .line 781
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u6d88\u8d39\u54cd\u5e94\u4e0d\u8db3"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    iget v1, v7, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    invoke-static {v1}, Lorg/pboc/fm1208/PbocEngine;->swHint(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6d88\u8d39\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 731
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u4f59\u989d\u4e0d\u8db3!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    array-length v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6d88\u8d39\u54cd\u5e94\u4e0d\u8db3("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "B)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 711
    :cond_5
    new-instance v0, Ljava/lang/Exception;

    iget v1, v7, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    invoke-static {v1}, Lorg/pboc/fm1208/PbocEngine;->swHint(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u521d\u59cb\u5316\u6d88\u8d39\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readAllRecords()[Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 833
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 836
    const/4 v1, 0x7

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 838
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const-string v5, "\u6761"

    const/16 v6, 0xa

    const/4 v7, 0x1

    if-ge v4, v1, :cond_4

    aget v8, v2, v4

    .line 839
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 840
    nop

    .line 841
    const/4 v9, 0x1

    const/4 v10, 0x0

    :goto_1
    if-gt v9, v6, :cond_2

    .line 843
    :try_start_0
    invoke-virtual {p0, v9, v8}, Lorg/pboc/fm1208/PbocEngine;->readRec(II)[B

    move-result-object v11

    .line 844
    if-nez v11, :cond_0

    goto :goto_2

    .line 845
    :cond_0
    invoke-static {v11}, Lorg/pboc/fm1208/PbocEngine;->parseRec([B)Ljava/lang/String;

    move-result-object v11

    .line 846
    if-eqz v11, :cond_1

    .line 847
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    const/4 v10, 0x1

    .line 850
    :cond_1
    nop

    .line 841
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 850
    :catch_0
    move-exception v6

    .line 852
    :cond_2
    :goto_2
    if-eqz v10, :cond_3

    .line 853
    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "0x%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4ea4\u6613\u8bb0\u5f55SFI="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", \u8bfb\u53d6\u5230"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 854
    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 838
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 859
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 860
    nop

    :goto_3
    if-gt v7, v6, :cond_7

    .line 862
    :try_start_1
    invoke-virtual {p0, v7, v3}, Lorg/pboc/fm1208/PbocEngine;->readRec(II)[B

    move-result-object v1

    .line 863
    if-nez v1, :cond_5

    goto :goto_4

    .line 864
    :cond_5
    invoke-static {v1}, Lorg/pboc/fm1208/PbocEngine;->parseRec([B)Ljava/lang/String;

    move-result-object v1

    .line 865
    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 866
    :cond_6
    nop

    .line 860
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 866
    :catch_1
    move-exception v1

    .line 868
    :cond_7
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 869
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4ea4\u6613\u8bb0\u5f55(\u65e0SFI), \u8bfb\u53d6\u5230"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 871
    :cond_8
    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :array_0
    .array-data 4
        0x18
        0x17
        0x16
        0x15
        0x19
        0x1a
        0x0
    .end array-data
.end method

.method public readBinary(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1306
    const/4 v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    const/4 v2, 0x1

    const/16 v3, -0x50

    aput-byte v3, v0, v2

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x4

    aput-byte p1, v0, v1

    .line 1307
    invoke-virtual {p0, v0}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B

    move-result-object p1

    return-object p1
.end method

.method public readRec(II)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 810
    and-int/lit8 p2, p2, 0x1f

    const/4 v0, 0x3

    shl-int/2addr p2, v0

    const/4 v1, 0x4

    or-int/2addr p2, v1

    .line 811
    const/4 v2, 0x5

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    const/4 v4, 0x1

    const/16 v5, -0x4e

    aput-byte v5, v2, v4

    const/4 v4, 0x2

    int-to-byte p1, p1

    aput-byte p1, v2, v4

    int-to-byte p1, p2

    aput-byte p1, v2, v0

    aput-byte v3, v2, v1

    .line 812
    invoke-virtual {p0, v2}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B

    move-result-object p1

    .line 813
    iget p2, p0, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    const v0, 0x9000

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 814
    :cond_0
    return-object p1
.end method

.method public readRecord(II)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1312
    and-int/lit8 p2, p2, 0x1f

    const/4 v0, 0x3

    shl-int/2addr p2, v0

    const/4 v1, 0x4

    or-int/2addr p2, v1

    .line 1313
    const/4 v2, 0x5

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    const/4 v4, 0x1

    const/16 v5, -0x4e

    aput-byte v5, v2, v4

    const/4 v4, 0x2

    int-to-byte p1, p1

    aput-byte p1, v2, v4

    int-to-byte p1, p2

    aput-byte p1, v2, v0

    aput-byte v3, v2, v1

    .line 1314
    invoke-virtual {p0, v2}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B

    move-result-object p1

    return-object p1
.end method

.method public scanFileSystem()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1062
    const-string v1, "\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    const-string v1, "       FM1208 \u6587\u4ef6\u7cfb\u7edf\u626b\u63cf\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    const-string v1, "\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    const/4 v1, 0x7

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    invoke-virtual {p0, v2}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B

    .line 1069
    const-string v2, "\u3010MF(3F00)\u4e0b\u626b\u63cf\u3011\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    nop

    .line 1072
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0xff

    if-gt v3, v5, :cond_1

    .line 1073
    const-string v5, "MF"

    invoke-direct {p0, v3, v5}, Lorg/pboc/fm1208/PbocEngine;->trySelectFile(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1074
    if-eqz v5, :cond_0

    .line 1075
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    add-int/lit8 v4, v4, 0x1

    .line 1078
    :try_start_0
    new-array v5, v1, [B

    fill-array-data v5, :array_1

    invoke-virtual {p0, v5}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 1072
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1081
    :cond_1
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    const-string v4, "MF\u4e0b\u5171\u627e\u5230 %d \u4e2a\u6587\u4ef6\n\n"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    const-string v4, "\u3010PBOC\u5e94\u7528(ADF)\u4e0b\u626b\u63cf\u3011\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    invoke-virtual {p0}, Lorg/pboc/fm1208/PbocEngine;->selectApp()Z

    move-result v4

    .line 1086
    if-eqz v4, :cond_4

    .line 1087
    nop

    .line 1089
    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_2
    if-gt v4, v5, :cond_3

    .line 1090
    const-string v7, "ADF"

    invoke-direct {p0, v4, v7}, Lorg/pboc/fm1208/PbocEngine;->trySelectFile(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1091
    if-eqz v7, :cond_2

    .line 1092
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    add-int/lit8 v6, v6, 0x1

    .line 1095
    :try_start_1
    invoke-virtual {p0}, Lorg/pboc/fm1208/PbocEngine;->selectApp()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v7

    .line 1089
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1098
    :cond_3
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    const-string v6, "ADF\u4e0b\u5171\u627e\u5230 %d \u4e2a\u6587\u4ef6\n\n"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    goto :goto_4

    .line 1100
    :cond_4
    const-string v4, "\u9009\u62e9PBOC\u5e94\u7528\u5931\u8d25\n\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    :goto_4
    const-string v4, "\u30101001\u76ee\u5f55\u4e0b\u626b\u63cf\u3011\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    :try_start_2
    new-array v4, v1, [B

    fill-array-data v4, :array_2

    invoke-virtual {p0, v4}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B

    .line 1107
    iget v4, p0, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    const v6, 0x9000

    if-eq v4, v6, :cond_6

    const/16 v6, 0x6282

    if-eq v4, v6, :cond_6

    const/16 v6, 0x6283

    if-ne v4, v6, :cond_5

    goto :goto_5

    .line 1120
    :cond_5
    const-string v4, "1001\u76ee\u5f55\u4e0d\u5b58\u5728\n\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1108
    :cond_6
    :goto_5
    nop

    .line 1109
    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_6
    if-gt v4, v5, :cond_8

    .line 1110
    const-string v7, "1001"

    invoke-direct {p0, v4, v7}, Lorg/pboc/fm1208/PbocEngine;->trySelectFile(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1111
    if-eqz v7, :cond_7

    .line 1112
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1113
    add-int/lit8 v6, v6, 0x1

    .line 1115
    :try_start_3
    new-array v7, v1, [B

    fill-array-data v7, :array_3

    invoke-virtual {p0, v7}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    :catch_2
    move-exception v7

    .line 1109
    :cond_7
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1118
    :cond_8
    :try_start_4
    const-string v4, "1001\u76ee\u5f55\u4e0b\u5171\u627e\u5230 %d \u4e2a\u6587\u4ef6\n\n"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v2

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1119
    nop

    .line 1124
    :goto_8
    goto :goto_9

    .line 1122
    :catch_3
    move-exception v4

    .line 1123
    const-string v6, "1001\u76ee\u5f55\u626b\u63cf\u5931\u8d25: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    :goto_9
    const-string v4, "\u3010\u5168\u8303\u56f4\u626b\u63cf\u3011\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    const-string v4, "(\u5feb\u901f\u6a21\u5f0f\u4e0b\u81ea\u52a8\u8df3\u8fc7)\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    nop

    .line 1130
    new-array v4, v1, [B

    fill-array-data v4, :array_4

    invoke-virtual {p0, v4}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B

    .line 1131
    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_a
    sget-boolean v7, Lorg/pboc/fm1208/PbocEngine;->SCAN_FULL:Z

    if-eqz v7, :scan_quick_bound

    const v7, 0xffff

    goto :scan_bound_set

    :scan_quick_bound
    const/16 v7, 0xff

    :scan_bound_set
    if-gt v4, v7, :cond_d

    .line 1133
    if-ltz v4, :cond_9

    if-gt v4, v5, :cond_9

    goto :goto_c

    .line 1135
    :cond_9
    const/16 v7, 0x3f00

    if-ne v4, v7, :cond_a

    goto :goto_c

    .line 1137
    :cond_a
    const-string v7, "\u5168\u626b\u63cf"

    invoke-direct {p0, v4, v7}, Lorg/pboc/fm1208/PbocEngine;->trySelectFile(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1138
    if-eqz v7, :cond_b

    .line 1139
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    add-int/lit8 v6, v6, 0x1

    .line 1142
    :try_start_5
    new-array v7, v1, [B

    fill-array-data v7, :array_5

    invoke-virtual {p0, v7}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_b

    :catch_4
    move-exception v7

    .line 1145
    :cond_b
    :goto_b
    rem-int/lit16 v7, v4, 0x1000

    if-nez v7, :cond_c

    if-lez v4, :cond_c

    .line 1146
    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v8, "%04X"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u626b\u63cf\u8fdb\u5ea6: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/FFFF"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 1131
    :cond_c
    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 1149
    :cond_d
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "\u5168\u8303\u56f4\u626b\u63cf\u5171\u627e\u5230 %d \u4e2a\u6587\u4ef6\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        -0x5ct
        0x0t
        0x0t
        0x2t
        0x3ft
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        -0x5ct
        0x0t
        0x0t
        0x2t
        0x3ft
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        -0x5ct
        0x0t
        0x0t
        0x2t
        0x10t
        0x1t
    .end array-data

    :array_3
    .array-data 1
        0x0t
        -0x5ct
        0x0t
        0x0t
        0x2t
        0x10t
        0x1t
    .end array-data

    :array_4
    .array-data 1
        0x0t
        -0x5ct
        0x0t
        0x0t
        0x2t
        0x3ft
        0x0t
    .end array-data

    :array_5
    .array-data 1
        0x0t
        -0x5ct
        0x0t
        0x0t
        0x2t
        0x3ft
        0x0t
    .end array-data
.end method

.method public selectApp()Z
    .locals 4

    .line 354
    const-string v0, "--- \u9009\u62e9PBOC\u5e94\u7528 ---"

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 355
    sget-object v0, Lorg/pboc/fm1208/PbocEngine;->SELECT_DDF:[B

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/PbocEngine;->send([B)Lorg/pboc/fm1208/PbocEngine$ApduResult;

    .line 356
    sget-object v0, Lorg/pboc/fm1208/PbocEngine;->SELECT_APP:[B

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/PbocEngine;->send([B)Lorg/pboc/fm1208/PbocEngine$ApduResult;

    move-result-object v0

    .line 357
    iget v1, v0, Lorg/pboc/fm1208/PbocEngine$ApduResult;->sw:I

    const v2, 0x9000

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 358
    iget v0, v0, Lorg/pboc/fm1208/PbocEngine$ApduResult;->sw:I

    invoke-static {v0}, Lorg/pboc/fm1208/PbocEngine;->swHint(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9009\u62e9\u5e94\u7528\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 359
    return v3

    .line 363
    :cond_0
    iget-boolean v0, p0, Lorg/pboc/fm1208/PbocEngine;->pinVerified:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/pboc/fm1208/PbocEngine;->lastPin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 364
    const-string v0, "SELECT\u91cd\u7f6e\u5b89\u5168\u72b6\u6001, \u81ea\u52a8\u91cdPIN..."

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lorg/pboc/fm1208/PbocEngine;->lastPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/PbocEngine;->doVerifyPin(Ljava/lang/String;)Z

    move-result v0

    .line 366
    if-nez v0, :cond_1

    .line 367
    iput-boolean v3, p0, Lorg/pboc/fm1208/PbocEngine;->pinVerified:Z

    .line 368
    const-string v0, "\u26a0 PIN\u81ea\u52a8\u91cd\u8ba4\u8bc1\u5931\u8d25, \u8bf7\u91cd\u65b0\u8ba4\u8bc1"

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 371
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public selectFile(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1299
    const/4 v0, 0x7

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    const/4 v2, 0x1

    const/16 v3, -0x5c

    aput-byte v3, v0, v2

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    const/4 v3, 0x3

    aput-byte v1, v0, v3

    const/4 v1, 0x4

    aput-byte v2, v0, v1

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x6

    aput-byte p1, v0, v1

    .line 1301
    invoke-virtual {p0, v0}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B

    move-result-object p1

    return-object p1
.end method

.method public sendRaw([B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 276
    invoke-static {p1}, Lorg/pboc/fm1208/PbocEngine;->bytesToHexSpaced([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lorg/pboc/fm1208/PbocEngine;->callback:Lorg/pboc/fm1208/PbocEngine$CardCallback;

    invoke-interface {v0, p1}, Lorg/pboc/fm1208/PbocEngine$CardCallback;->transceive([B)[B

    move-result-object p1

    .line 278
    if-eqz p1, :cond_3

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 282
    array-length v0, p1

    sub-int/2addr v0, v1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    array-length v3, p1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    .line 283
    array-length v3, p1

    sub-int/2addr v3, v1

    const/4 v5, 0x0

    invoke-static {p1, v5, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 286
    const v3, 0xff00

    and-int/2addr v3, v0

    const/16 v6, 0x6100

    if-ne v3, v6, :cond_0

    .line 287
    and-int/lit16 v3, v0, 0xff

    .line 288
    const/4 v6, 0x5

    new-array v6, v6, [B

    aput-byte v5, v6, v5

    const/16 v7, -0x40

    aput-byte v7, v6, v4

    aput-byte v5, v6, v1

    const/4 v7, 0x3

    aput-byte v5, v6, v7

    const/4 v7, 0x4

    int-to-byte v3, v3

    aput-byte v3, v6, v7

    .line 289
    invoke-static {v6}, Lorg/pboc/fm1208/PbocEngine;->bytesToHexSpaced([B)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " [GET RESPONSE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 290
    iget-object v2, p0, Lorg/pboc/fm1208/PbocEngine;->callback:Lorg/pboc/fm1208/PbocEngine$CardCallback;

    invoke-interface {v2, v6}, Lorg/pboc/fm1208/PbocEngine$CardCallback;->transceive([B)[B

    move-result-object v2

    .line 291
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lt v3, v1, :cond_0

    .line 292
    array-length p1, v2

    sub-int/2addr p1, v1

    aget-byte p1, v2, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    array-length v0, v2

    sub-int/2addr v0, v4

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, p1

    .line 293
    array-length p1, v2

    sub-int/2addr p1, v1

    invoke-static {v2, v5, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 294
    nop

    .line 298
    :cond_0
    iput v0, p0, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    .line 299
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "SW=%04X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-static {p1}, Lorg/pboc/fm1208/PbocEngine;->bytesToHexSpaced([B)Ljava/lang/String;

    move-result-object v2

    array-length v3, p1

    if-lez v3, :cond_1

    array-length v3, p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "B)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<< "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 302
    const v1, 0x9000

    if-eq v0, v1, :cond_2

    .line 303
    invoke-static {v0}, Lorg/pboc/fm1208/PbocEngine;->swHint(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/pboc/fm1208/PbocEngine;->lastError:Ljava/lang/String;

    .line 305
    :cond_2
    return-object p1

    .line 279
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "APDU\u54cd\u5e94\u65e0\u6548"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLogCallback(Lorg/pboc/fm1208/PbocEngine$LogCallback;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lorg/pboc/fm1208/PbocEngine;->logCallback:Lorg/pboc/fm1208/PbocEngine$LogCallback;

    .line 77
    return-void
.end method

.method public verifyPin(Ljava/lang/String;)Z
    .locals 1

    .line 398
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/pboc/fm1208/PbocEngine;->verifyPin(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public verifyPin(Ljava/lang/String;I)Z
    .locals 6

    .line 402
    const-string v0, "--- PIN\u8ba4\u8bc1 (VERIFY PIN) ---"

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    # ==== gpjpboc-v1.4.4: PIN 优先按 hex 编码（真 FMCOS 规范 12 34 55），
    #      非法 hex 字符串回退 ASCII（applet v2.3 双格式均接受） ====
    invoke-static {p1}, Lorg/pboc/fm1208/PbocEngine;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :gpjpboc_hex_ok

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :gpjpboc_hex_ok

    .line 404
    array-length v1, v0

    const/4 v2, 0x5

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 405
    const/4 v3, 0x0

    aput-byte v3, v1, v3

    const/16 v4, 0x20

    const/4 v5, 0x1

    aput-byte v4, v1, v5

    const/4 v4, 0x2

    aput-byte v3, v1, v4

    const/4 v4, 0x3

    int-to-byte p2, p2

    aput-byte p2, v1, v4

    .line 406
    array-length p2, v0

    int-to-byte p2, p2

    const/4 v4, 0x4

    aput-byte p2, v1, v4

    .line 407
    array-length p2, v0

    invoke-static {v0, v3, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    nop

    .line 416
    iget p2, p0, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    const v0, 0x9000

    if-ne p2, v0, :cond_0

    .line 417
    iput-boolean v5, p0, Lorg/pboc/fm1208/PbocEngine;->pinVerified:Z

    .line 418
    iput-object p1, p0, Lorg/pboc/fm1208/PbocEngine;->lastPin:Ljava/lang/String;

    .line 419
    const-string p1, "PIN\u8ba4\u8bc1\u6210\u529f"

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 420
    return v5

    .line 422
    :cond_0
    const-string p1, ""

    iput-object p1, p0, Lorg/pboc/fm1208/PbocEngine;->lastPin:Ljava/lang/String;

    .line 423
    iput-boolean v3, p0, Lorg/pboc/fm1208/PbocEngine;->pinVerified:Z

    .line 425
    shr-int/lit8 p1, p2, 0x8

    const/16 v0, 0x63

    if-ne p1, v0, :cond_1

    .line 426
    and-int/lit8 p1, p2, 0xf

    .line 427
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PIN\u8ba4\u8bc1\u5931\u8d25, \u5269\u4f59"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\u6b21"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 428
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PIN\u9519\u8bef, \u5269\u4f59"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/pboc/fm1208/PbocEngine;->lastError:Ljava/lang/String;

    .line 429
    goto :goto_0

    .line 430
    :cond_1
    invoke-static {p2}, Lorg/pboc/fm1208/PbocEngine;->swHint(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PIN\u8ba4\u8bc1\u5931\u8d25: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/PbocEngine;->log(Ljava/lang/String;)V

    .line 431
    iget p1, p0, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    invoke-static {p1}, Lorg/pboc/fm1208/PbocEngine;->swHint(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/pboc/fm1208/PbocEngine;->lastError:Ljava/lang/String;

    .line 433
    :goto_0
    return v3

    .line 411
    :catch_0
    move-exception p1

    .line 412
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/pboc/fm1208/PbocEngine;->lastError:Ljava/lang/String;

    .line 413
    return v3
.end method
