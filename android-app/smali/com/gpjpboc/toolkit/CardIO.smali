.class public Lcom/gpjpboc/toolkit/CardIO;
.super Ljava/lang/Object;
.source "CardIO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpjpboc/toolkit/CardIO$Tlv;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static balToFen([B)Ljava/lang/String;
    .locals 7

    if-eqz p0, :cond_1

    .line 113
    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 114
    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x18

    shl-long/2addr v0, v4

    const/4 v4, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x3

    aget-byte p0, p0, v4

    int-to-long v4, p0

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 115
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 113
    :cond_1
    :goto_0
    const-string p0, "?"

    return-object p0
.end method

.method public static deriveSession([B[B[B[B)[B
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    array-length v1, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    array-length v1, p2

    const/4 v3, 0x2

    if-lt v1, v3, :cond_2

    array-length v1, p3

    if-ge v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 57
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 58
    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    invoke-static {p2, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x6

    .line 60
    invoke-static {p3, v1, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    .line 61
    invoke-static {p0, v0, p1}, Lcom/gpjpboc/toolkit/CardIO;->des([B[BZ)[B

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static des([B[BZ)[B
    .locals 3

    const-string v0, "/ECB/NoPadding"

    .line 67
    :try_start_0
    array-length v1, p0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const-string v1, "DES"

    goto :goto_0

    :cond_0
    const-string v1, "DESede"

    .line 68
    :goto_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/gpjpboc/toolkit/CardIO;->fixKey([B)[B

    move-result-object p0

    invoke-direct {v2, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x2

    .line 70
    :goto_1
    invoke-virtual {p0, p2, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 71
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static find(Ljava/util/ArrayList;I)Lcom/gpjpboc/toolkit/CardIO$Tlv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/gpjpboc/toolkit/CardIO$Tlv;",
            ">;I)",
            "Lcom/gpjpboc/toolkit/CardIO$Tlv;"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpjpboc/toolkit/CardIO$Tlv;

    .line 46
    iget v1, v0, Lcom/gpjpboc/toolkit/CardIO$Tlv;->tag:I

    if-ne v1, p1, :cond_0

    return-object v0
.end method

.method private static fixKey([B)[B
    .locals 4

    .line 78
    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/16 v0, 0x18

    .line 79
    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 80
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x8

    .line 81
    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static macPboc([B[B)[B
    .locals 9

    .line 92
    :try_start_0
    array-length v0, p1

    const/16 v1, 0x8

    div-int/2addr v0, v1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x8

    .line 93
    new-array v3, v0, [B

    .line 94
    array-length v4, p1

    const/4 v5, 0x0

    invoke-static {p1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    array-length p1, p1

    const/16 v4, -0x80

    aput-byte v4, v3, p1

    .line 96
    new-array p1, v1, [B

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v0, :cond_0

    const/4 p0, 0x4

    .line 103
    new-array v0, p0, [B

    .line 104
    invoke-static {p1, v5, v0, v5, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-lt v6, v1, :cond_1

    .line 101
    invoke-static {p0, p1, v2}, Lcom/gpjpboc/toolkit/CardIO;->des([B[BZ)[B

    move-result-object p1

    add-int/lit8 v4, v4, 0x8

    goto :goto_0

    .line 99
    :cond_1
    aget-byte v7, p1, v6

    add-int v8, v4, v6

    aget-byte v8, v3, v8

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p1, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseTlv([B)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Lcom/gpjpboc/toolkit/CardIO$Tlv;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x2

    .line 18
    array-length v4, p0

    if-le v3, v4, :cond_1

    goto :goto_3

    .line 19
    :cond_1
    aget-byte v3, p0, v2

    and-int/lit16 v4, v3, 0xff

    add-int/lit8 v5, v2, 0x1

    const/16 v6, 0x1f

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_3

    .line 21
    array-length v3, p0

    if-lt v5, v3, :cond_2

    goto :goto_3

    :cond_2
    shl-int/lit8 v3, v4, 0x8

    .line 22
    aget-byte v4, p0, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v3

    add-int/lit8 v5, v2, 0x2

    .line 24
    :cond_3
    array-length v2, p0

    if-lt v5, v2, :cond_4

    goto :goto_3

    .line 25
    :cond_4
    aget-byte v2, p0, v5

    and-int/lit16 v3, v2, 0xff

    add-int/lit8 v5, v5, 0x1

    and-int/lit16 v6, v2, 0x80

    if-eqz v6, :cond_7

    and-int/lit8 v2, v2, 0x7f

    add-int v6, v5, v2

    .line 28
    array-length v3, p0

    if-le v6, v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_1
    if-lt v7, v2, :cond_6

    move v5, v6

    goto :goto_2

    :cond_6
    shl-int/lit8 v3, v3, 0x8

    add-int v8, v5, v7

    .line 30
    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v3, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    add-int v2, v5, v3

    .line 33
    array-length v6, p0

    if-le v2, v6, :cond_8

    :goto_3
    return-object v0

    .line 34
    :cond_8
    new-instance v6, Lcom/gpjpboc/toolkit/CardIO$Tlv;

    invoke-direct {v6}, Lcom/gpjpboc/toolkit/CardIO$Tlv;-><init>()V

    .line 35
    iput v4, v6, Lcom/gpjpboc/toolkit/CardIO$Tlv;->tag:I

    .line 36
    new-array v4, v3, [B

    iput-object v4, v6, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    .line 37
    iget-object v4, v6, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    invoke-static {p0, v5, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static transceive(Ljavax/smartcardio/CardChannel;[B)Ljavax/smartcardio/ResponseAPDU;
    .locals 1

    .line 120
    :try_start_0
    new-instance v0, Ljavax/smartcardio/CommandAPDU;

    invoke-direct {v0, p1}, Ljavax/smartcardio/CommandAPDU;-><init>([B)V

    invoke-interface {p0, v0}, Ljavax/smartcardio/CardChannel;->transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method
