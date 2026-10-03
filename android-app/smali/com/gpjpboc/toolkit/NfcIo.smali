.class public Lcom/gpjpboc/toolkit/NfcIo;
.super Ljava/lang/Object;
.source "NfcIo.java"


# static fields
.field private static final MIN_TIMEOUT_MS:I = 0xbb8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xfer(Landroid/nfc/tech/IsoDep;[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 20
    invoke-virtual {p0}, Landroid/nfc/tech/IsoDep;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 24
    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/tech/IsoDep;->getTimeout()I

    move-result v0

    const/16 v1, 0xbb8

    if-ge v0, v1, :cond_0

    .line 25
    invoke-virtual {p0, v1}, Landroid/nfc/tech/IsoDep;->setTimeout(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :catchall_0
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_4

    if-eqz v0, :cond_4

    .line 32
    array-length v3, v0

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    goto :goto_2

    .line 33
    :cond_1
    array-length v3, v0

    sub-int/2addr v3, v4

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 34
    array-length v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v7, 0x61

    if-ne v3, v7, :cond_3

    const/4 v3, 0x5

    .line 36
    new-array v3, v3, [B

    const/16 v7, -0x40

    aput-byte v7, v3, v6

    const/4 v6, 0x4

    int-to-byte v5, v5

    aput-byte v5, v3, v6

    invoke-virtual {p0, v3}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    move-result-object v3

    if-eqz v3, :cond_4

    .line 37
    array-length v5, v3

    if-ge v5, v4, :cond_2

    goto :goto_2

    .line 38
    :cond_2
    array-length v5, v0

    sub-int/2addr v5, v4

    array-length v6, v3

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 39
    array-length v6, v0

    sub-int/2addr v6, v4

    invoke-static {v0, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    array-length v0, v0

    sub-int/2addr v0, v4

    array-length v4, v3

    invoke-static {v3, v1, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v5

    goto :goto_1

    :cond_3
    const/16 v4, 0x6c

    if-ne v3, v4, :cond_4

    .line 43
    array-length v0, p1

    new-array v3, v0, [B

    .line 44
    array-length v4, p1

    invoke-static {p1, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    int-to-byte v4, v5

    .line 45
    aput-byte v4, v3, v0

    .line 46
    invoke-virtual {p0, v3}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-object v0

    :catchall_1
    move-exception p0

    .line 55
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NFC\u901a\u4fe1\u5931\u8d25: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p0

    .line 53
    throw p0

    .line 21
    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "\u5361\u7247\u5df2\u65ad\u5f00"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
