.class public final Ljavax/smartcardio/CommandAPDU;
.super Ljava/lang/Object;
.source "CommandAPDU.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MAX_APDU_SIZE:I = 0x10008

.field private static final serialVersionUID:J = 0x58875fe1cbe621dL


# instance fields
.field private apdu:[B

.field private transient dataOffset:I

.field private transient nc:I

.field private transient ne:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 9
    .param p1, "cla"    # I
    .param p2, "ins"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I

    .line 177
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "cla":I
    .end local p2    # "ins":I
    .end local p3    # "p1":I
    .end local p4    # "p2":I
    .local v1, "cla":I
    .local v2, "ins":I
    .local v3, "p1":I
    .local v4, "p2":I
    invoke-direct/range {v0 .. v8}, Ljavax/smartcardio/CommandAPDU;-><init>(IIII[BIII)V

    .line 178
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 9
    .param p1, "cla"    # I
    .param p2, "ins"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "ne"    # I

    .line 196
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v8, p5

    .end local p1    # "cla":I
    .end local p2    # "ins":I
    .end local p3    # "p1":I
    .end local p4    # "p2":I
    .end local p5    # "ne":I
    .local v1, "cla":I
    .local v2, "ins":I
    .local v3, "p1":I
    .local v4, "p2":I
    .local v8, "ne":I
    invoke-direct/range {v0 .. v8}, Ljavax/smartcardio/CommandAPDU;-><init>(IIII[BIII)V

    .line 197
    return-void
.end method

.method public constructor <init>(IIII[B)V
    .locals 9
    .param p1, "cla"    # I
    .param p2, "ins"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "data"    # [B

    .line 217
    invoke-static {p5}, Ljavax/smartcardio/CommandAPDU;->arrayLength([B)I

    move-result v7

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .end local p1    # "cla":I
    .end local p2    # "ins":I
    .end local p3    # "p1":I
    .end local p4    # "p2":I
    .end local p5    # "data":[B
    .local v1, "cla":I
    .local v2, "ins":I
    .local v3, "p1":I
    .local v4, "p2":I
    .local v5, "data":[B
    invoke-direct/range {v0 .. v8}, Ljavax/smartcardio/CommandAPDU;-><init>(IIII[BIII)V

    .line 218
    return-void
.end method

.method public constructor <init>(IIII[BI)V
    .locals 9
    .param p1, "cla"    # I
    .param p2, "ins"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "data"    # [B
    .param p6, "ne"    # I

    .line 269
    const/4 v6, 0x0

    invoke-static {p5}, Ljavax/smartcardio/CommandAPDU;->arrayLength([B)I

    move-result v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v8, p6

    .end local p1    # "cla":I
    .end local p2    # "ins":I
    .end local p3    # "p1":I
    .end local p4    # "p2":I
    .end local p5    # "data":[B
    .end local p6    # "ne":I
    .local v1, "cla":I
    .local v2, "ins":I
    .local v3, "p1":I
    .local v4, "p2":I
    .local v5, "data":[B
    .local v8, "ne":I
    invoke-direct/range {v0 .. v8}, Ljavax/smartcardio/CommandAPDU;-><init>(IIII[BIII)V

    .line 270
    return-void
.end method

.method public constructor <init>(IIII[BII)V
    .locals 9
    .param p1, "cla"    # I
    .param p2, "ins"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "data"    # [B
    .param p6, "dataOffset"    # I
    .param p7, "dataLength"    # I

    .line 245
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Ljavax/smartcardio/CommandAPDU;-><init>(IIII[BIII)V

    .line 246
    return-void
.end method

.method public constructor <init>(IIII[BIII)V
    .locals 12
    .param p1, "cla"    # I
    .param p2, "ins"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "data"    # [B
    .param p6, "dataOffset"    # I
    .param p7, "dataLength"    # I
    .param p8, "ne"    # I

    .line 382
    move-object/from16 v0, p5

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    invoke-direct {p0, v0, v1, v2}, Ljavax/smartcardio/CommandAPDU;->checkArrayBounds([BII)V

    .line 384
    const v4, 0xffff

    if-gt v2, v4, :cond_c

    .line 387
    if-ltz v3, :cond_b

    .line 390
    const/high16 v4, 0x10000

    if-gt v3, v4, :cond_a

    .line 393
    iput v3, p0, Ljavax/smartcardio/CommandAPDU;->ne:I

    .line 394
    iput v2, p0, Ljavax/smartcardio/CommandAPDU;->nc:I

    .line 395
    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v7, 0x100

    const/4 v8, 0x7

    const/4 v9, 0x4

    const/4 v10, 0x5

    if-nez v2, :cond_4

    .line 396
    if-nez v3, :cond_0

    .line 398
    new-array v4, v9, [B

    iput-object v4, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    .line 399
    invoke-direct/range {p0 .. p4}, Ljavax/smartcardio/CommandAPDU;->setHeader(IIII)V

    goto/16 :goto_1

    .line 402
    :cond_0
    if-gt v3, v7, :cond_2

    .line 405
    if-eq v3, v7, :cond_1

    int-to-byte v6, v3

    .line 406
    .local v6, "len":B
    :cond_1
    new-array v4, v10, [B

    iput-object v4, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    .line 407
    invoke-direct/range {p0 .. p4}, Ljavax/smartcardio/CommandAPDU;->setHeader(IIII)V

    .line 408
    iget-object v4, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    aput-byte v6, v4, v9

    .line 409
    .end local v6    # "len":B
    goto/16 :goto_1

    .line 413
    :cond_2
    if-ne v3, v4, :cond_3

    .line 414
    const/4 v4, 0x0

    .line 415
    .local v4, "l1":B
    const/4 v6, 0x0

    .local v6, "l2":B
    goto :goto_0

    .line 417
    .end local v4    # "l1":B
    .end local v6    # "l2":B
    :cond_3
    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    .line 418
    .restart local v4    # "l1":B
    int-to-byte v6, v3

    .line 420
    .restart local v6    # "l2":B
    :goto_0
    new-array v7, v8, [B

    iput-object v7, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    .line 421
    invoke-direct/range {p0 .. p4}, Ljavax/smartcardio/CommandAPDU;->setHeader(IIII)V

    .line 422
    iget-object v7, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    aput-byte v4, v7, v10

    .line 423
    iget-object v7, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    aput-byte v6, v7, v5

    .line 424
    .end local v4    # "l1":B
    .end local v6    # "l2":B
    goto/16 :goto_1

    .line 427
    :cond_4
    const/16 v11, 0xff

    if-nez v3, :cond_6

    .line 429
    if-gt v2, v11, :cond_5

    .line 431
    add-int/lit8 v4, v2, 0x5

    new-array v4, v4, [B

    iput-object v4, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    .line 432
    invoke-direct/range {p0 .. p4}, Ljavax/smartcardio/CommandAPDU;->setHeader(IIII)V

    .line 433
    iget-object v4, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    int-to-byte v5, v2

    aput-byte v5, v4, v9

    .line 434
    iput v10, p0, Ljavax/smartcardio/CommandAPDU;->dataOffset:I

    .line 435
    iget-object v4, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    invoke-static {v0, v1, v4, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    .line 438
    :cond_5
    add-int/lit8 v4, v2, 0x7

    new-array v4, v4, [B

    iput-object v4, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    .line 439
    invoke-direct/range {p0 .. p4}, Ljavax/smartcardio/CommandAPDU;->setHeader(IIII)V

    .line 440
    iget-object v4, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    aput-byte v6, v4, v9

    .line 441
    iget-object v4, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    shr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v10

    .line 442
    iget-object v4, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    int-to-byte v6, v2

    aput-byte v6, v4, v5

    .line 443
    iput v8, p0, Ljavax/smartcardio/CommandAPDU;->dataOffset:I

    .line 444
    iget-object v4, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    invoke-static {v0, v1, v4, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 448
    :cond_6
    if-gt v2, v11, :cond_8

    if-gt v3, v7, :cond_8

    .line 450
    add-int/lit8 v4, v2, 0x6

    new-array v4, v4, [B

    iput-object v4, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    .line 451
    invoke-direct/range {p0 .. p4}, Ljavax/smartcardio/CommandAPDU;->setHeader(IIII)V

    .line 452
    iget-object v4, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    int-to-byte v5, v2

    aput-byte v5, v4, v9

    .line 453
    iput v10, p0, Ljavax/smartcardio/CommandAPDU;->dataOffset:I

    .line 454
    iget-object v4, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    invoke-static {v0, v1, v4, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 455
    iget-object v4, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    iget-object v5, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v7, :cond_7

    int-to-byte v6, v3

    :cond_7
    aput-byte v6, v4, v5

    goto :goto_1

    .line 458
    :cond_8
    add-int/lit8 v7, v2, 0x9

    new-array v7, v7, [B

    iput-object v7, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    .line 459
    invoke-direct/range {p0 .. p4}, Ljavax/smartcardio/CommandAPDU;->setHeader(IIII)V

    .line 460
    iget-object v7, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    aput-byte v6, v7, v9

    .line 461
    iget-object v6, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    shr-int/lit8 v7, v2, 0x8

    int-to-byte v7, v7

    aput-byte v7, v6, v10

    .line 462
    iget-object v6, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    int-to-byte v7, v2

    aput-byte v7, v6, v5

    .line 463
    iput v8, p0, Ljavax/smartcardio/CommandAPDU;->dataOffset:I

    .line 464
    iget-object v5, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    invoke-static {v0, v1, v5, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 465
    if-eq v3, v4, :cond_9

    .line 466
    iget-object v4, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    array-length v4, v4

    add-int/lit8 v4, v4, -0x2

    .line 467
    .local v4, "leOfs":I
    iget-object v5, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    shr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    .line 468
    iget-object v5, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    add-int/lit8 v6, v4, 0x1

    int-to-byte v7, v3

    aput-byte v7, v5, v6

    .line 473
    .end local v4    # "leOfs":I
    :cond_9
    :goto_1
    return-void

    .line 391
    :cond_a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "ne is too large"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 388
    :cond_b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "ne must not be negative"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 385
    :cond_c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "dataLength is too large"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "apdu"    # Ljava/nio/ByteBuffer;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    .line 163
    iget-object v0, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 164
    invoke-direct {p0}, Ljavax/smartcardio/CommandAPDU;->parse()V

    .line 165
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "apdu"    # [B

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    .line 98
    invoke-direct {p0}, Ljavax/smartcardio/CommandAPDU;->parse()V

    .line 99
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "apdu"    # [B
    .param p2, "apduOffset"    # I
    .param p3, "apduLength"    # I

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-direct {p0, p1, p2, p3}, Ljavax/smartcardio/CommandAPDU;->checkArrayBounds([BII)V

    .line 122
    new-array v0, p3, [B

    iput-object v0, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    .line 123
    iget-object v0, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    invoke-direct {p0}, Ljavax/smartcardio/CommandAPDU;->parse()V

    .line 125
    return-void
.end method

.method private static arrayLength([B)I
    .locals 1
    .param p0, "b"    # [B

    .line 273
    if-eqz p0, :cond_0

    array-length v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkArrayBounds([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "ofs"    # I
    .param p3, "len"    # I

    .line 128
    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    .line 132
    if-nez p1, :cond_1

    .line 133
    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset and length must be 0 if array is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_1
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_3

    .line 143
    :cond_2
    :goto_0
    return-void

    .line 139
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Offset plus length exceed array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Offset and length must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parse()V
    .locals 9

    .line 291
    iget-object v0, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    array-length v0, v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_e

    .line 294
    iget-object v0, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    array-length v0, v0

    if-ne v0, v1, :cond_0

    .line 296
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 299
    .local v0, "l1":I
    iget-object v1, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    array-length v1, v1

    const/16 v2, 0x100

    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    .line 301
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    iput v2, p0, Ljavax/smartcardio/CommandAPDU;->ne:I

    .line 302
    return-void

    .line 304
    :cond_2
    const-string v1, ", b1="

    const-string v4, "Invalid APDU: length="

    if-eqz v0, :cond_6

    .line 305
    iget-object v5, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    array-length v5, v5

    add-int/lit8 v6, v0, 0x5

    if-ne v5, v6, :cond_3

    .line 307
    iput v0, p0, Ljavax/smartcardio/CommandAPDU;->nc:I

    .line 308
    iput v3, p0, Ljavax/smartcardio/CommandAPDU;->dataOffset:I

    .line 309
    return-void

    .line 310
    :cond_3
    iget-object v5, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    array-length v5, v5

    add-int/lit8 v6, v0, 0x6

    if-ne v5, v6, :cond_5

    .line 312
    iput v0, p0, Ljavax/smartcardio/CommandAPDU;->nc:I

    .line 313
    iput v3, p0, Ljavax/smartcardio/CommandAPDU;->dataOffset:I

    .line 314
    iget-object v1, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    iget-object v3, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    .line 315
    .local v1, "l2":I
    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    iput v2, p0, Ljavax/smartcardio/CommandAPDU;->ne:I

    .line 316
    return-void

    .line 318
    .end local v1    # "l2":I
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 322
    :cond_6
    iget-object v2, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    array-length v2, v2

    const/4 v5, 0x7

    if-lt v2, v5, :cond_d

    .line 326
    iget-object v2, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    const/4 v6, 0x6

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 327
    .local v2, "l2":I
    iget-object v3, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    array-length v3, v3

    const/high16 v6, 0x10000

    if-ne v3, v5, :cond_8

    .line 329
    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    move v6, v2

    :goto_2
    iput v6, p0, Ljavax/smartcardio/CommandAPDU;->ne:I

    .line 330
    return-void

    .line 332
    :cond_8
    const-string v3, ", b2||b3="

    if-eqz v2, :cond_c

    .line 336
    iget-object v7, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    array-length v7, v7

    add-int/lit8 v8, v2, 0x7

    if-ne v7, v8, :cond_9

    .line 338
    iput v2, p0, Ljavax/smartcardio/CommandAPDU;->nc:I

    .line 339
    iput v5, p0, Ljavax/smartcardio/CommandAPDU;->dataOffset:I

    .line 340
    return-void

    .line 341
    :cond_9
    iget-object v7, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    array-length v7, v7

    add-int/lit8 v8, v2, 0x9

    if-ne v7, v8, :cond_b

    .line 343
    iput v2, p0, Ljavax/smartcardio/CommandAPDU;->nc:I

    .line 344
    iput v5, p0, Ljavax/smartcardio/CommandAPDU;->dataOffset:I

    .line 345
    iget-object v1, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    .line 346
    .local v1, "leOfs":I
    iget-object v3, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    .line 347
    .local v3, "l3":I
    if-nez v3, :cond_a

    goto :goto_3

    :cond_a
    move v6, v3

    :goto_3
    iput v6, p0, Ljavax/smartcardio/CommandAPDU;->ne:I

    .line 348
    .end local v1    # "leOfs":I
    .end local v3    # "l3":I
    nop

    .line 352
    return-void

    .line 349
    :cond_b
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    array-length v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 333
    :cond_c
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    array-length v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 323
    .end local v2    # "l2":I
    :cond_d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 292
    .end local v0    # "l1":I
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "apdu must be at least 4 bytes long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 601
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUnshared()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    .line 603
    invoke-direct {p0}, Ljavax/smartcardio/CommandAPDU;->parse()V

    .line 604
    return-void
.end method

.method private setHeader(IIII)V
    .locals 3
    .param p1, "cla"    # I
    .param p2, "ins"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I

    .line 476
    iget-object v0, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 477
    iget-object v0, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 478
    iget-object v0, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    const/4 v1, 0x2

    int-to-byte v2, p3

    aput-byte v2, v0, v1

    .line 479
    iget-object v0, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    const/4 v1, 0x3

    int-to-byte v2, p4

    aput-byte v2, v0, v1

    .line 480
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 580
    if-ne p0, p1, :cond_0

    .line 581
    const/4 v0, 0x1

    return v0

    .line 583
    :cond_0
    instance-of v0, p1, Ljavax/smartcardio/CommandAPDU;

    if-nez v0, :cond_1

    .line 584
    const/4 v0, 0x0

    return v0

    .line 586
    :cond_1
    move-object v0, p1

    check-cast v0, Ljavax/smartcardio/CommandAPDU;

    .line 587
    .local v0, "other":Ljavax/smartcardio/CommandAPDU;
    iget-object v1, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    iget-object v2, v0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public getBytes()[B
    .locals 1

    .line 559
    iget-object v0, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getCLA()I
    .locals 2

    .line 488
    iget-object v0, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getData()[B
    .locals 5

    .line 538
    iget v0, p0, Ljavax/smartcardio/CommandAPDU;->nc:I

    new-array v0, v0, [B

    .line 539
    .local v0, "data":[B
    iget-object v1, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    iget v2, p0, Ljavax/smartcardio/CommandAPDU;->dataOffset:I

    const/4 v3, 0x0

    iget v4, p0, Ljavax/smartcardio/CommandAPDU;->nc:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    return-object v0
.end method

.method public getINS()I
    .locals 2

    .line 497
    iget-object v0, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getNc()I
    .locals 1

    .line 527
    iget v0, p0, Ljavax/smartcardio/CommandAPDU;->nc:I

    return v0
.end method

.method public getNe()I
    .locals 1

    .line 550
    iget v0, p0, Ljavax/smartcardio/CommandAPDU;->ne:I

    return v0
.end method

.method public getP1()I
    .locals 2

    .line 506
    iget-object v0, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getP2()I
    .locals 2

    .line 515
    iget-object v0, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 596
    iget-object v0, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommmandAPDU: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/smartcardio/CommandAPDU;->apdu:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes, nc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavax/smartcardio/CommandAPDU;->nc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ne="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavax/smartcardio/CommandAPDU;->ne:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
