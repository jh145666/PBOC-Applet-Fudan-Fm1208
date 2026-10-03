.class public Lnet/sourceforge/gpj/cardservices/GPUtil;
.super Ljava/lang/Object;
.source "GPUtil.java"


# static fields
.field public static debug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lnet/sourceforge/gpj/cardservices/GPUtil;->debug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToReadableString([B)Ljava/lang/String;
    .locals 5
    .param p0, "array"    # [B

    .line 40
    if-nez p0, :cond_0

    .line 41
    const-string v0, "NULL"

    return-object v0

    .line 43
    :cond_0
    const-string v0, ""

    .line 44
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 45
    aget-byte v2, p0, v1

    int-to-char v2, v2

    .line 46
    .local v2, "c":C
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    if-lt v2, v4, :cond_1

    const/16 v4, 0x7f

    if-ge v2, v4, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v4, "."

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static byteArrayToString([B)Ljava/lang/String;
    .locals 5
    .param p0, "a"    # [B

    .line 59
    const-string v0, ""

    .line 60
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 61
    .local v1, "onebyte":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 62
    aget-byte v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 66
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public static debug(Ljava/lang/Object;)V
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .line 34
    sget-boolean v0, Lnet/sourceforge/gpj/cardservices/GPUtil;->debug:Z

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEBUG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method

.method public static getKey([BI)[B
    .locals 4
    .param p0, "key"    # [B
    .param p1, "length"    # I

    .line 201
    const/16 v0, 0x8

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-ne p1, v2, :cond_0

    .line 202
    new-array v2, v2, [B

    .line 203
    .local v2, "key24":[B
    const/16 v3, 0x10

    invoke-static {p0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    invoke-static {p0, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    return-object v2

    .line 207
    .end local v2    # "key24":[B
    :cond_0
    new-array v2, v0, [B

    .line 208
    .local v2, "key8":[B
    invoke-static {p0, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    return-object v2
.end method

.method public static mac_3des([B[BII[B)[B
    .locals 6
    .param p0, "key"    # [B
    .param p1, "text"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "cv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 152
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 153
    array-length v0, p1

    sub-int p3, v0, p2

    .line 156
    :cond_0
    nop

    .line 157
    const/16 v0, 0x18

    :try_start_0
    invoke-static {p0, v0}, Lnet/sourceforge/gpj/cardservices/GPUtil;->getKey([BI)[B

    move-result-object v0

    .line 156
    const/4 v1, 0x1

    invoke-static {v1, v0, p4}, Lnet/sourceforge/gpj/cardservices/ciphers/ICipher$Factory;->getImplementation(I[B[B)Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;

    move-result-object v0

    .line 158
    .local v0, "cipher":Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;
    const/16 v1, 0x8

    new-array v2, v1, [B

    .line 159
    .local v2, "result":[B
    invoke-interface {v0, p1, p2, p3}, Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;->encrypt([BII)[B

    move-result-object v3

    .line 160
    .local v3, "res":[B
    array-length v4, v3

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    return-object v2

    .line 162
    .end local v0    # "cipher":Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;
    .end local v2    # "result":[B
    .end local v3    # "res":[B
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljavax/smartcardio/CardException;

    const-string v2, "MAC computation failed."

    invoke-direct {v1, v2}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static mac_3des([B[B[B)[B
    .locals 2
    .param p0, "key"    # [B
    .param p1, "text"    # [B
    .param p2, "cv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 147
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1, p2}, Lnet/sourceforge/gpj/cardservices/GPUtil;->mac_3des([B[BII[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static mac_des_3des([B[BII[B)[B
    .locals 7
    .param p0, "key"    # [B
    .param p1, "text"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "cv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 174
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 175
    array-length v0, p1

    sub-int p3, v0, p2

    .line 178
    :cond_0
    nop

    .line 179
    const/16 v0, 0x8

    :try_start_0
    invoke-static {p0, v0}, Lnet/sourceforge/gpj/cardservices/GPUtil;->getKey([BI)[B

    move-result-object v1

    .line 178
    const/4 v2, 0x3

    invoke-static {v2, v1, p4}, Lnet/sourceforge/gpj/cardservices/ciphers/ICipher$Factory;->getImplementation(I[B[B)Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;

    move-result-object v1

    .line 180
    .local v1, "cipher1":Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;
    nop

    .line 181
    const/16 v2, 0x18

    invoke-static {p0, v2}, Lnet/sourceforge/gpj/cardservices/GPUtil;->getKey([BI)[B

    move-result-object v2

    .line 180
    const/4 v3, 0x1

    invoke-static {v3, v2, p4}, Lnet/sourceforge/gpj/cardservices/ciphers/ICipher$Factory;->getImplementation(I[B[B)Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;

    move-result-object v2

    .line 183
    .local v2, "cipher2":Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;
    new-array v3, v0, [B

    .line 186
    .local v3, "result":[B
    const/4 v4, 0x0

    if-le p3, v0, :cond_1

    .line 187
    add-int/lit8 v5, p3, -0x8

    invoke-interface {v1, p1, p2, v5}, Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;->encrypt([BII)[B

    move-result-object v5

    .line 188
    .local v5, "temp":[B
    array-length v6, v5

    sub-int/2addr v6, v0

    invoke-static {v5, v6, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    invoke-interface {v2, v3}, Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;->setIV([B)V

    .line 191
    .end local v5    # "temp":[B
    :cond_1
    add-int v5, p2, p3

    sub-int/2addr v5, v0

    invoke-interface {v2, p1, v5, v0}, Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;->encrypt([BII)[B

    move-result-object v5

    .line 192
    .restart local v5    # "temp":[B
    array-length v6, v5

    sub-int/2addr v6, v0

    invoke-static {v5, v6, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    return-object v3

    .line 194
    .end local v1    # "cipher1":Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;
    .end local v2    # "cipher2":Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;
    .end local v3    # "result":[B
    .end local v5    # "temp":[B
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    new-instance v1, Ljavax/smartcardio/CardException;

    const-string v2, "MAC computation failed."

    invoke-direct {v1, v2}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static mac_des_3des([B[B[B)[B
    .locals 2
    .param p0, "key"    # [B
    .param p1, "text"    # [B
    .param p2, "cv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 169
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1, p2}, Lnet/sourceforge/gpj/cardservices/GPUtil;->mac_des_3des([B[BII[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static pad80([B)[B
    .locals 2
    .param p0, "text"    # [B

    .line 142
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lnet/sourceforge/gpj/cardservices/GPUtil;->pad80([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static pad80([BII)[B
    .locals 6
    .param p0, "text"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 127
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 128
    array-length v0, p0

    sub-int p2, v0, p1

    .line 129
    :cond_0
    move v0, p2

    .line 130
    .local v0, "totalLength":I
    :goto_0
    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    goto :goto_0

    .line 132
    :cond_1
    sub-int v1, v0, p2

    .line 133
    .local v1, "padlength":I
    new-array v2, v0, [B

    .line 134
    .local v2, "result":[B
    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    const/16 v4, -0x80

    aput-byte v4, v2, p2

    .line 136
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 137
    add-int v5, p2, v4

    aput-byte v3, v2, v5

    .line 136
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 138
    .end local v4    # "i":I
    :cond_2
    return-object v2
.end method

.method public static readableStringToByteArray(Ljava/lang/String;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 52
    const-string v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToByteArray(Ljava/lang/String;)[B
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 74
    .local v0, "v":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, "operate":Ljava/lang/String;
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    const-string v2, "\t"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    const-string v2, "\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 80
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x2

    rem-int/2addr v2, v4

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 81
    return-object v5

    .line 82
    :cond_1
    const/4 v2, 0x0

    .line 83
    .local v2, "num":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 85
    :try_start_0
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v6

    .line 88
    nop

    .line 89
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 86
    :catch_0
    move-exception v3

    .line 87
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    return-object v5

    .line 92
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [B

    .line 93
    .local v3, "result":[B
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 94
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 95
    .local v5, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 96
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->byteValue()B

    move-result v7

    aput-byte v7, v3, v5

    move v5, v6

    goto :goto_1

    .line 97
    .end local v6    # "i":I
    .restart local v5    # "i":I
    :cond_3
    return-object v3
.end method

.method public static swToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "sw"    # I

    .line 121
    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    .line 122
    .local v0, "sw1":I
    and-int/lit16 v1, p0, 0xff

    .line 123
    .local v1, "sw2":I
    invoke-static {v0, v1}, Lnet/sourceforge/gpj/cardservices/GPUtil;->swToString(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static swToString(II)Ljava/lang/String;
    .locals 6
    .param p0, "sw1"    # I
    .param p1, "sw2"    # I

    .line 101
    const-string v0, ""

    .line 102
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 103
    .local v1, "onebyte":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "0"

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 116
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    return-object v0
.end method
