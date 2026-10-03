.class public Lat/fhooe/usmile/gpjshell/MifareTest;
.super Landroid/os/AsyncTask;
.source "MifareTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/fhooe/usmile/gpjshell/MifareTest$Log;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final FIRST_SECTOR:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "MF Test"

.field private static final nRuns:I = 0x3e8

.field private static final sectorKeys:[[B


# instance fields
.field private mContext:Lat/fhooe/usmile/gpjshell/MainActivity;

.field private mLog:Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

.field private mRunning:Z

.field private mTag:Landroid/nfc/tech/MifareClassic;

.field private mTestLog:Lat/fhooe/usmile/gpjshell/MifareTest$Log;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    const/4 v0, 0x6

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const/4 v2, 0x2

    new-array v2, v2, [[B

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    sput-object v2, Lat/fhooe/usmile/gpjshell/MifareTest;->sectorKeys:[[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x5bt
        -0x5bt
        -0x5bt
        -0x5bt
        -0x5bt
        -0x5bt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
    .end array-data
.end method

.method public constructor <init>(Landroid/nfc/tech/MifareClassic;Landroid/content/Context;Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;)V
    .locals 1
    .param p1, "tag"    # Landroid/nfc/tech/MifareClassic;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "log"    # Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    .line 34
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mTag:Landroid/nfc/tech/MifareClassic;

    .line 22
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mContext:Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 23
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mLog:Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mRunning:Z

    .line 35
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mTag:Landroid/nfc/tech/MifareClassic;

    .line 36
    move-object v0, p2

    check-cast v0, Lat/fhooe/usmile/gpjshell/MainActivity;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mContext:Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 37
    iput-object p3, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mLog:Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    .line 38
    new-instance v0, Lat/fhooe/usmile/gpjshell/MifareTest$Log;

    invoke-direct {v0, p0}, Lat/fhooe/usmile/gpjshell/MifareTest$Log;-><init>(Lat/fhooe/usmile/gpjshell/MifareTest;)V

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mTestLog:Lat/fhooe/usmile/gpjshell/MifareTest$Log;

    .line 39
    return-void
.end method

.method private authenticateA(I[B)V
    .locals 3
    .param p1, "sector"    # I
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mTag:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v0, p1, p2}, Landroid/nfc/tech/MifareClassic;->authenticateSectorWithKeyA(I[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mTag:Landroid/nfc/tech/MifareClassic;

    sget-object v1, Landroid/nfc/tech/MifareClassic;->KEY_DEFAULT:[B

    invoke-virtual {v0, p1, v1}, Landroid/nfc/tech/MifareClassic;->authenticateSectorWithKeyA(I[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    return-void

    .line 257
    :cond_1
    array-length v0, p2

    new-array v0, v0, [B

    .line 258
    .local v0, "inverted":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 259
    aget-byte v2, p2, v1

    xor-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mTag:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v1, p1, v0}, Landroid/nfc/tech/MifareClassic;->authenticateSectorWithKeyA(I[B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 261
    const-string v1, "authenticated with inverted sector key"

    invoke-direct {p0, v1}, Lat/fhooe/usmile/gpjshell/MifareTest;->log(Ljava/lang/String;)V

    .line 262
    return-void

    .line 265
    :cond_3
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Authentication error"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private authenticateB(I[B)V
    .locals 3
    .param p1, "sector"    # I
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mTag:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v0, p1, p2}, Landroid/nfc/tech/MifareClassic;->authenticateSectorWithKeyB(I[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mTag:Landroid/nfc/tech/MifareClassic;

    sget-object v1, Landroid/nfc/tech/MifareClassic;->KEY_DEFAULT:[B

    invoke-virtual {v0, p1, v1}, Landroid/nfc/tech/MifareClassic;->authenticateSectorWithKeyB(I[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    const-string v0, "authenticated with default key"

    invoke-direct {p0, v0}, Lat/fhooe/usmile/gpjshell/MifareTest;->log(Ljava/lang/String;)V

    .line 277
    return-void

    .line 279
    :cond_1
    array-length v0, p2

    new-array v0, v0, [B

    .line 280
    .local v0, "inverted":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 281
    aget-byte v2, p2, v1

    xor-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mTag:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v1, p1, v0}, Landroid/nfc/tech/MifareClassic;->authenticateSectorWithKeyB(I[B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 283
    const-string v1, "authenticated with inverted sector key"

    invoke-direct {p0, v1}, Lat/fhooe/usmile/gpjshell/MifareTest;->log(Ljava/lang/String;)V

    .line 284
    return-void

    .line 287
    :cond_3
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Authentication error"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private buildTrailer([B[B)[B
    .locals 4
    .param p1, "keyA"    # [B
    .param p2, "keyB"    # [B

    .line 174
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 176
    .local v0, "trailer":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 177
    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x6

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 180
    const/4 v1, 0x7

    aput-byte v1, v0, v1

    .line 181
    const/16 v1, 0x8

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    .line 184
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 185
    add-int/lit8 v2, v1, 0xa

    aget-byte v3, p2, v1

    aput-byte v3, v0, v2

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 187
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private fillSector(IILjava/util/Random;)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "sector"    # I
    .param p3, "rnd"    # Ljava/util/Random;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mTag:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v0, p2}, Landroid/nfc/tech/MifareClassic;->getBlockCountInSector(I)I

    move-result v0

    .line 193
    .local v0, "blocksToWrite":I
    sget-object v1, Lat/fhooe/usmile/gpjshell/MifareTest;->sectorKeys:[[B

    and-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    .line 195
    .local v1, "key":[B
    invoke-direct {p0, p2, v1}, Lat/fhooe/usmile/gpjshell/MifareTest;->authenticateA(I[B)V

    .line 197
    sget-object v2, Lat/fhooe/usmile/gpjshell/MifareTest;->sectorKeys:[[B

    xor-int/lit8 v3, p1, 0x1

    and-int/lit8 v3, v3, 0x1

    aget-object v1, v2, v3

    .line 200
    const/4 v2, 0x0

    .local v2, "b":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 202
    iget-object v3, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mTag:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v3, p2}, Landroid/nfc/tech/MifareClassic;->sectorToBlock(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 204
    .local v3, "blockIndex":I
    add-int/lit8 v4, v0, -0x1

    if-ne v2, v4, :cond_0

    .line 205
    invoke-direct {p0, v1, v1}, Lat/fhooe/usmile/gpjshell/MifareTest;->buildTrailer([B[B)[B

    move-result-object v4

    .local v4, "data":[B
    goto :goto_1

    .line 207
    .end local v4    # "data":[B
    :cond_0
    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 208
    .restart local v4    # "data":[B
    invoke-virtual {p3, v4}, Ljava/util/Random;->nextBytes([B)V

    .line 210
    :goto_1
    iget-object v5, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mTag:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v5, v3, v4}, Landroid/nfc/tech/MifareClassic;->writeBlock(I[B)V

    .line 200
    .end local v3    # "blockIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    .end local v2    # "b":I
    .end local v4    # "data":[B
    :cond_1
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 328
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/MifareTest;->publishProgress([Ljava/lang/Object;)V

    .line 329
    return-void
.end method

.method private resetKeys()V
    .locals 7

    .line 74
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mTag:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getSectorCount()I

    move-result v0

    .line 76
    .local v0, "nSectors":I
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mTag:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v1}, Landroid/nfc/tech/MifareClassic;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    :try_start_0
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mTag:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v1}, Landroid/nfc/tech/MifareClassic;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e1":Ljava/io/IOException;
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mLog:Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    const-string v3, "MF Test"

    const-string v4, "Error connecting to tag"

    invoke-virtual {v2, v3, v4}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void

    .line 85
    .end local v1    # "e1":Ljava/io/IOException;
    :cond_0
    :goto_0
    sget-object v1, Landroid/nfc/tech/MifareClassic;->KEY_DEFAULT:[B

    sget-object v2, Landroid/nfc/tech/MifareClassic;->KEY_DEFAULT:[B

    invoke-direct {p0, v1, v2}, Lat/fhooe/usmile/gpjshell/MifareTest;->buildTrailer([B[B)[B

    move-result-object v1

    .line 88
    .local v1, "trailer":[B
    const/4 v2, 0x1

    .local v2, "s":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 90
    iget-object v3, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mTag:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v3, v2}, Landroid/nfc/tech/MifareClassic;->sectorToBlock(I)I

    move-result v3

    iget-object v4, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mTag:Landroid/nfc/tech/MifareClassic;

    .line 91
    invoke-virtual {v4, v2}, Landroid/nfc/tech/MifareClassic;->getBlockCountInSector(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    .line 93
    .local v3, "blockIdx":I
    const/4 v4, 0x0

    :try_start_1
    sget-object v5, Lat/fhooe/usmile/gpjshell/MifareTest;->sectorKeys:[[B

    aget-object v5, v5, v4

    invoke-direct {p0, v2, v5}, Lat/fhooe/usmile/gpjshell/MifareTest;->authenticateA(I[B)V

    .line 94
    iget-object v5, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mTag:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v5, v3, v1}, Landroid/nfc/tech/MifareClassic;->writeBlock(I[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    goto :goto_2

    .line 96
    :catch_1
    move-exception v5

    .line 97
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "Error writing to sector, trying keyB"

    invoke-direct {p0, v6}, Lat/fhooe/usmile/gpjshell/MifareTest;->log(Ljava/lang/String;)V

    .line 100
    .end local v5    # "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v5, Lat/fhooe/usmile/gpjshell/MifareTest;->sectorKeys:[[B

    aget-object v4, v5, v4

    invoke-direct {p0, v2, v4}, Lat/fhooe/usmile/gpjshell/MifareTest;->authenticateB(I[B)V

    .line 101
    iget-object v4, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mTag:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v4, v3, v1}, Landroid/nfc/tech/MifareClassic;->writeBlock(I[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 104
    goto :goto_2

    .line 102
    :catch_2
    move-exception v4

    .line 103
    .local v4, "e":Ljava/lang/Exception;
    invoke-direct {p0, v6}, Lat/fhooe/usmile/gpjshell/MifareTest;->log(Ljava/lang/String;)V

    .line 88
    .end local v3    # "blockIdx":I
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 107
    .end local v2    # "s":I
    :cond_1
    return-void
.end method

.method private runSingle(I)V
    .locals 11
    .param p1, "index"    # I

    .line 130
    new-instance v0, Ljava/util/Random;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 132
    .local v0, "rnd":Ljava/util/Random;
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mTag:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v1}, Landroid/nfc/tech/MifareClassic;->getSectorCount()I

    move-result v1

    .line 133
    .local v1, "nSectors":I
    const/4 v2, 0x0

    .line 134
    .local v2, "nBlocksWritten":I
    iget-object v3, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mTag:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v3}, Landroid/nfc/tech/MifareClassic;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 136
    :try_start_0
    iget-object v3, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mTag:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v3}, Landroid/nfc/tech/MifareClassic;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_0

    .line 137
    :catch_0
    move-exception v3

    .line 138
    .local v3, "e1":Ljava/io/IOException;
    const-string v4, "Error connecting to tag"

    invoke-direct {p0, v4}, Lat/fhooe/usmile/gpjshell/MifareTest;->log(Ljava/lang/String;)V

    .line 139
    return-void

    .line 143
    .end local v3    # "e1":Ljava/io/IOException;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 145
    .local v3, "start":J
    const/4 v5, 0x1

    .local v5, "s":I
    :goto_1
    const-string v6, ": "

    if-ge v5, v1, :cond_1

    .line 147
    :try_start_1
    invoke-direct {p0, p1, v5, v0}, Lat/fhooe/usmile/gpjshell/MifareTest;->fillSector(IILjava/util/Random;)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/2addr v2, v6

    .line 151
    nop

    .line 145
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 148
    :catch_1
    move-exception v7

    .line 149
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error writing to sector "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lat/fhooe/usmile/gpjshell/MifareTest;->log(Ljava/lang/String;)V

    .line 150
    return-void

    .line 154
    .end local v5    # "s":I
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    int-to-long v7, p1

    invoke-virtual {v0, v7, v8}, Ljava/util/Random;->setSeed(J)V

    .line 156
    const/4 v5, 0x1

    .restart local v5    # "s":I
    :goto_2
    if-ge v5, v1, :cond_2

    .line 158
    :try_start_2
    invoke-direct {p0, v5, p1, v0}, Lat/fhooe/usmile/gpjshell/MifareTest;->verifySector(IILjava/util/Random;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 162
    nop

    .line 156
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 159
    :catch_2
    move-exception v7

    .line 160
    .restart local v7    # "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error verifying sector "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lat/fhooe/usmile/gpjshell/MifareTest;->log(Ljava/lang/String;)V

    .line 161
    return-void

    .line 165
    .end local v5    # "s":I
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 167
    .local v7, "stop":J
    iget-object v5, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mTestLog:Lat/fhooe/usmile/gpjshell/MifareTest$Log;

    sub-long v9, v7, v3

    long-to-int v10, v9

    invoke-virtual {v5, v2, v10}, Lat/fhooe/usmile/gpjshell/MifareTest$Log;->addEntry(II)V

    .line 168
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Duration of run "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v9, v7, v3

    long-to-int v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 170
    .local v5, "status":Ljava/lang/String;
    invoke-direct {p0, v5}, Lat/fhooe/usmile/gpjshell/MifareTest;->log(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method private verifySector(IILjava/util/Random;)V
    .locals 8
    .param p1, "sector"    # I
    .param p2, "index"    # I
    .param p3, "rnd"    # Ljava/util/Random;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mTag:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v0, p1}, Landroid/nfc/tech/MifareClassic;->getBlockCountInSector(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 222
    .local v0, "blocksToWrite":I
    sget-object v1, Lat/fhooe/usmile/gpjshell/MifareTest;->sectorKeys:[[B

    xor-int/lit8 v2, p2, 0x1

    and-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    .line 225
    .local v1, "key":[B
    invoke-direct {p0, p1, v1}, Lat/fhooe/usmile/gpjshell/MifareTest;->authenticateA(I[B)V

    .line 227
    const/4 v2, 0x0

    .local v2, "b":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 229
    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 230
    .local v3, "ref":[B
    invoke-virtual {p3, v3}, Ljava/util/Random;->nextBytes([B)V

    .line 232
    iget-object v4, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mTag:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v4, p1}, Landroid/nfc/tech/MifareClassic;->sectorToBlock(I)I

    move-result v4

    add-int/2addr v4, v2

    .line 234
    .local v4, "blockIndex":I
    iget-object v5, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mTag:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v5, v4}, Landroid/nfc/tech/MifareClassic;->readBlock(I)[B

    move-result-object v5

    .line 236
    .local v5, "data":[B
    invoke-static {v5, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 227
    .end local v3    # "ref":[B
    .end local v4    # "blockIndex":I
    .end local v5    # "data":[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    .restart local v3    # "ref":[B
    .restart local v4    # "blockIndex":I
    .restart local v5    # "data":[B
    :cond_0
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "R/W data mismatch"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 242
    .end local v2    # "b":I
    .end local v3    # "ref":[B
    .end local v4    # "blockIndex":I
    .end local v5    # "data":[B
    :cond_1
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lat/fhooe/usmile/gpjshell/MifareTest;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "v"    # [Ljava/lang/Void;

    .line 43
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mTag:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mTag:Landroid/nfc/tech/MifareClassic;

    .line 44
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getSize()I

    move-result v0

    const/16 v2, 0x400

    if-eq v0, v2, :cond_0

    goto :goto_3

    .line 49
    :cond_0
    const-string v0, "Preparing tag..."

    invoke-direct {p0, v0}, Lat/fhooe/usmile/gpjshell/MifareTest;->log(Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Lat/fhooe/usmile/gpjshell/MifareTest;->resetKeys()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mRunning:Z

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_2

    .line 55
    invoke-virtual {p0}, Lat/fhooe/usmile/gpjshell/MifareTest;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    invoke-direct {p0, v0}, Lat/fhooe/usmile/gpjshell/MifareTest;->runSingle(I)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "i":I
    :cond_2
    :goto_1
    :try_start_0
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mTestLog:Lat/fhooe/usmile/gpjshell/MifareTest$Log;

    const-string v2, "/storage/sdcard0/mifare_test.log"

    invoke-virtual {v0, v2}, Lat/fhooe/usmile/gpjshell/MifareTest$Log;->writeToFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_2

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Error writing to log file"

    invoke-direct {p0, v2}, Lat/fhooe/usmile/gpjshell/MifareTest;->log(Ljava/lang/String;)V

    .line 66
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    const-string v0, "Restoring default keys"

    invoke-direct {p0, v0}, Lat/fhooe/usmile/gpjshell/MifareTest;->log(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lat/fhooe/usmile/gpjshell/MifareTest;->resetKeys()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mRunning:Z

    .line 70
    return-object v1

    .line 45
    :cond_3
    :goto_3
    const-string v0, "Invalid card type, only supporting Mifare Classic 1k"

    invoke-direct {p0, v0}, Lat/fhooe/usmile/gpjshell/MifareTest;->log(Ljava/lang/String;)V

    .line 46
    return-object v1
.end method

.method public isRunning()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mRunning:Z

    return v0
.end method

.method protected onCancelled()V
    .locals 3

    .line 119
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mLog:Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    const-string v1, "MF Test"

    const-string v2, "Test cancelled"

    invoke-virtual {v0, v1, v2}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mContext:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->mifareTestFinished()V

    .line 122
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lat/fhooe/usmile/gpjshell/MifareTest;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .line 114
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mLog:Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    const-string v1, "MF Test"

    const-string v2, "Test finished"

    invoke-virtual {v0, v1, v2}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mContext:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->mifareTestFinished()V

    .line 116
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lat/fhooe/usmile/gpjshell/MifareTest;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 3
    .param p1, "status"    # [Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MifareTest;->mLog:Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-string v2, "MF Test"

    invoke-virtual {v0, v2, v1}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method
