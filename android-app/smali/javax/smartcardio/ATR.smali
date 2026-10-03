.class public final Ljavax/smartcardio/ATR;
.super Ljava/lang/Object;
.source "ATR.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5ceac81588633aadL


# instance fields
.field private atr:[B

.field private transient nHistorical:I

.field private transient startHistorical:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "atr"    # [B

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/smartcardio/ATR;->atr:[B

    .line 61
    invoke-direct {p0}, Ljavax/smartcardio/ATR;->parse()V

    .line 62
    return-void
.end method

.method private parse()V
    .locals 6

    .line 65
    iget-object v0, p0, Ljavax/smartcardio/ATR;->atr:[B

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 66
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Ljavax/smartcardio/ATR;->atr:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v2, 0x3b

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Ljavax/smartcardio/ATR;->atr:[B

    aget-byte v0, v0, v1

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_1

    .line 69
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Ljavax/smartcardio/ATR;->atr:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    .line 72
    .local v0, "t0":I
    iget-object v2, p0, Ljavax/smartcardio/ATR;->atr:[B

    aget-byte v2, v2, v1

    and-int/lit8 v2, v2, 0xf

    .line 73
    .local v2, "n":I
    const/4 v3, 0x2

    .line 74
    .local v3, "i":I
    :goto_0
    if-eqz v0, :cond_7

    iget-object v4, p0, Ljavax/smartcardio/ATR;->atr:[B

    array-length v4, v4

    if-ge v3, v4, :cond_7

    .line 75
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_2

    .line 76
    add-int/lit8 v3, v3, 0x1

    .line 78
    :cond_2
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_3

    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 81
    :cond_3
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_4

    .line 82
    add-int/lit8 v3, v3, 0x1

    .line 84
    :cond_4
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_6

    .line 85
    iget-object v4, p0, Ljavax/smartcardio/ATR;->atr:[B

    array-length v4, v4

    if-lt v3, v4, :cond_5

    .line 86
    return-void

    .line 88
    :cond_5
    iget-object v4, p0, Ljavax/smartcardio/ATR;->atr:[B

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v0, v3, 0x4

    move v3, v5

    goto :goto_0

    .line 90
    .end local v5    # "i":I
    .restart local v3    # "i":I
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 93
    :cond_7
    add-int v4, v3, v2

    .line 94
    .local v4, "k":I
    iget-object v5, p0, Ljavax/smartcardio/ATR;->atr:[B

    array-length v5, v5

    if-eq v4, v5, :cond_8

    iget-object v5, p0, Ljavax/smartcardio/ATR;->atr:[B

    array-length v5, v5

    sub-int/2addr v5, v1

    if-ne v4, v5, :cond_9

    .line 95
    :cond_8
    iput v3, p0, Ljavax/smartcardio/ATR;->startHistorical:I

    .line 96
    iput v2, p0, Ljavax/smartcardio/ATR;->nHistorical:I

    .line 98
    :cond_9
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 161
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUnshared()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/smartcardio/ATR;->atr:[B

    .line 162
    invoke-direct {p0}, Ljavax/smartcardio/ATR;->parse()V

    .line 163
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 140
    if-ne p0, p1, :cond_0

    .line 141
    const/4 v0, 0x1

    return v0

    .line 143
    :cond_0
    instance-of v0, p1, Ljavax/smartcardio/ATR;

    if-nez v0, :cond_1

    .line 144
    const/4 v0, 0x0

    return v0

    .line 146
    :cond_1
    move-object v0, p1

    check-cast v0, Ljavax/smartcardio/ATR;

    .line 147
    .local v0, "other":Ljavax/smartcardio/ATR;
    iget-object v1, p0, Ljavax/smartcardio/ATR;->atr:[B

    iget-object v2, v0, Ljavax/smartcardio/ATR;->atr:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public getBytes()[B
    .locals 1

    .line 106
    iget-object v0, p0, Ljavax/smartcardio/ATR;->atr:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getHistoricalBytes()[B
    .locals 5

    .line 117
    iget v0, p0, Ljavax/smartcardio/ATR;->nHistorical:I

    new-array v0, v0, [B

    .line 118
    .local v0, "b":[B
    iget-object v1, p0, Ljavax/smartcardio/ATR;->atr:[B

    iget v2, p0, Ljavax/smartcardio/ATR;->startHistorical:I

    const/4 v3, 0x0

    iget v4, p0, Ljavax/smartcardio/ATR;->nHistorical:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 156
    iget-object v0, p0, Ljavax/smartcardio/ATR;->atr:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ATR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/smartcardio/ATR;->atr:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
