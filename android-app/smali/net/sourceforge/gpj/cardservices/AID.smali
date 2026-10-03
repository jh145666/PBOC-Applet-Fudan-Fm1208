.class public Lnet/sourceforge/gpj/cardservices/AID;
.super Ljava/lang/Object;
.source "AID.java"


# static fields
.field public static final GEMALTO:Ljava/lang/String; = "GemaltoXpressPro"

.field public static final GEMALTO_UICC:Ljava/lang/String; = "GemaltoXpressProUicc"

.field public static SD_AIDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sourceforge/gpj/cardservices/AID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aidBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 34
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lnet/sourceforge/gpj/cardservices/AID;->SD_AIDS:Ljava/util/Map;

    .line 37
    sget-object v0, Lnet/sourceforge/gpj/cardservices/AID;->SD_AIDS:Ljava/util/Map;

    new-instance v1, Lnet/sourceforge/gpj/cardservices/AID;

    const/16 v2, 0x8

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    invoke-direct {v1, v3}, Lnet/sourceforge/gpj/cardservices/AID;-><init>([B)V

    const-string v3, "OP201a"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lnet/sourceforge/gpj/cardservices/AID;->SD_AIDS:Ljava/util/Map;

    new-instance v1, Lnet/sourceforge/gpj/cardservices/AID;

    const/4 v3, 0x7

    new-array v4, v3, [B

    fill-array-data v4, :array_1

    invoke-direct {v1, v4}, Lnet/sourceforge/gpj/cardservices/AID;-><init>([B)V

    const-string v4, "OP201b"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lnet/sourceforge/gpj/cardservices/AID;->SD_AIDS:Ljava/util/Map;

    new-instance v1, Lnet/sourceforge/gpj/cardservices/AID;

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    invoke-direct {v1, v3}, Lnet/sourceforge/gpj/cardservices/AID;-><init>([B)V

    const-string v3, "GP211"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lnet/sourceforge/gpj/cardservices/AID;->SD_AIDS:Ljava/util/Map;

    new-instance v1, Lnet/sourceforge/gpj/cardservices/AID;

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    invoke-direct {v1, v2}, Lnet/sourceforge/gpj/cardservices/AID;-><init>([B)V

    const-string v2, "GemaltoXpressPro"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lnet/sourceforge/gpj/cardservices/AID;->SD_AIDS:Ljava/util/Map;

    new-instance v1, Lnet/sourceforge/gpj/cardservices/AID;

    const/16 v2, 0xf

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    invoke-direct {v1, v2}, Lnet/sourceforge/gpj/cardservices/AID;-><init>([B)V

    const-string v2, "GemaltoXpressProUicc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void

    :array_0
    .array-data 1
        -0x60t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        -0x60t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        -0x60t
        0x0t
        0x0t
        0x1t
        0x51t
        0x0t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        -0x60t
        0x0t
        0x0t
        0x0t
        0x18t
        0x43t
        0x4dt
        0x0t
    .end array-data

    :array_4
    .array-data 1
        -0x60t
        0x0t
        0x0t
        0x0t
        0x18t
        0x43t
        0x4dt
        -0x1t
        0x33t
        -0x1t
        -0x1t
        -0x77t
        -0x40t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .line 56
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lnet/sourceforge/gpj/cardservices/AID;-><init>([BII)V

    .line 57
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 72
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/sourceforge/gpj/cardservices/AID;-><init>([BIIZ)V

    .line 73
    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "checkLength"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/AID;->aidBytes:[B

    .line 96
    if-eqz p4, :cond_1

    const/4 v0, 0x5

    if-lt p3, v0, :cond_0

    const/16 v0, 0x10

    if-gt p3, v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AID\'s are between 5 and 16 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    :goto_0
    new-array v0, p3, [B

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/AID;->aidBytes:[B

    .line 100
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/AID;->aidBytes:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 116
    instance-of v0, p1, Lnet/sourceforge/gpj/cardservices/AID;

    if-eqz v0, :cond_0

    .line 117
    move-object v0, p1

    check-cast v0, Lnet/sourceforge/gpj/cardservices/AID;

    iget-object v0, v0, Lnet/sourceforge/gpj/cardservices/AID;->aidBytes:[B

    iget-object v1, p0, Lnet/sourceforge/gpj/cardservices/AID;->aidBytes:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 119
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBytes()[B
    .locals 1

    .line 104
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/AID;->aidBytes:[B

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 108
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/AID;->aidBytes:[B

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/AID;->aidBytes:[B

    invoke-static {v0}, Lnet/sourceforge/gpj/cardservices/GPUtil;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
