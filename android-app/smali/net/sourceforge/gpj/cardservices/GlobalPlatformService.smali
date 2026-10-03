.class public Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
.super Ljava/lang/Object;
.source "GlobalPlatformService.java"

# interfaces
.implements Lnet/sourceforge/gpj/cardservices/ISO7816;
.implements Lnet/sourceforge/gpj/cardservices/APDUListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;,
        Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;
    }
.end annotation


# static fields
.field public static final APDU_CLR:I = 0x0

.field public static final APDU_ENC:I = 0x2

.field public static final APDU_MAC:I = 0x1

.field public static final APDU_RMAC:I = 0x10

.field public static final CLA_GP:B = -0x80t

.field public static final CLA_MAC:B = -0x7ct

.field public static final DELETE:B = -0x1ct

.field public static final DIVER_EMV:I = 0x2

.field public static final DIVER_NONE:I = 0x0

.field public static final DIVER_VISA2:I = 0x1

.field public static final EXT_AUTH:B = -0x7et

.field public static final GET_DATA:B = -0x36t

.field public static final GET_STATUS:B = -0xet

.field public static final INIT_UPDATE:B = 0x50t

.field public static final INSTALL:B = -0x1at

.field public static final LOAD:B = -0x18t

.field public static final SCP_01_05:I = 0x1

.field public static final SCP_01_15:I = 0x2

.field public static final SCP_02_04:I = 0x3

.field public static final SCP_02_05:I = 0x4

.field public static final SCP_02_0A:I = 0x5

.field public static final SCP_02_0B:I = 0x6

.field public static final SCP_02_14:I = 0x7

.field public static final SCP_02_15:I = 0x8

.field public static final SCP_02_1A:I = 0x9

.field public static final SCP_02_1B:I = 0xa

.field public static final SCP_ANY:I = 0x0

.field public static SPECIAL_MOTHER_KEYS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field public static final defaultEncKey:[B

.field public static final defaultKekKey:[B

.field public static final defaultLoadSize:I = 0xff

.field public static final defaultMacKey:[B


# instance fields
.field private apduListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnet/sourceforge/gpj/cardservices/APDUListener;",
            ">;"
        }
    .end annotation
.end field

.field protected channel:Ljavax/smartcardio/CardChannel;

.field private keys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;",
            ">;"
        }
    .end annotation
.end field

.field protected scpVersion:I

.field protected sdAID:Lnet/sourceforge/gpj/cardservices/AID;

.field protected wrapper:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 119
    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->defaultEncKey:[B

    .line 122
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->defaultMacKey:[B

    .line 125
    new-array v1, v0, [B

    fill-array-data v1, :array_2

    sput-object v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->defaultKekKey:[B

    .line 128
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    sput-object v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->SPECIAL_MOTHER_KEYS:Ljava/util/Map;

    .line 131
    sget-object v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->SPECIAL_MOTHER_KEYS:Ljava/util/Map;

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v2, "GemaltoXpressPro"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void

    nop

    :array_0
    .array-data 1
        0x40t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
    .end array-data

    :array_1
    .array-data 1
        0x40t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
    .end array-data

    :array_2
    .array-data 1
        0x40t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
    .end array-data

    :array_3
    .array-data 1
        0x47t
        0x45t
        0x4dt
        0x58t
        0x50t
        0x52t
        0x45t
        0x53t
        0x53t
        0x4ft
        0x53t
        0x41t
        0x4dt
        0x50t
        0x4ct
        0x45t
    .end array-data
.end method

.method public constructor <init>(Ljavax/smartcardio/CardChannel;)V
    .locals 1
    .param p1, "channel"    # Ljavax/smartcardio/CardChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;-><init>(Ljavax/smartcardio/CardChannel;I)V

    .line 191
    return-void
.end method

.method public constructor <init>(Ljavax/smartcardio/CardChannel;I)V
    .locals 2
    .param p1, "channel"    # Ljavax/smartcardio/CardChannel;
    .param p2, "scpVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->sdAID:Lnet/sourceforge/gpj/cardservices/AID;

    .line 136
    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->wrapper:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;

    .line 138
    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->channel:Ljavax/smartcardio/CardChannel;

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->scpVersion:I

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->keys:Ljava/util/HashMap;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->apduListeners:Ljava/util/ArrayList;

    .line 206
    if-eqz p2, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    const/16 v0, 0x9

    if-eq p2, v0, :cond_1

    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only implicit secure channels can be set through the constructor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 215
    iput-object p1, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->channel:Ljavax/smartcardio/CardChannel;

    .line 216
    iput p2, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->scpVersion:I

    .line 217
    return-void

    .line 213
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "channel is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lnet/sourceforge/gpj/cardservices/AID;Ljavax/smartcardio/CardChannel;)V
    .locals 1
    .param p1, "aid"    # Lnet/sourceforge/gpj/cardservices/AID;
    .param p2, "channel"    # Ljavax/smartcardio/CardChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;-><init>(Lnet/sourceforge/gpj/cardservices/AID;Ljavax/smartcardio/CardChannel;I)V

    .line 159
    return-void
.end method

.method public constructor <init>(Lnet/sourceforge/gpj/cardservices/AID;Ljavax/smartcardio/CardChannel;I)V
    .locals 0
    .param p1, "aid"    # Lnet/sourceforge/gpj/cardservices/AID;
    .param p2, "channel"    # Ljavax/smartcardio/CardChannel;
    .param p3, "scpVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 176
    invoke-direct {p0, p2, p3}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;-><init>(Ljavax/smartcardio/CardChannel;I)V

    .line 177
    iput-object p1, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->sdAID:Lnet/sourceforge/gpj/cardservices/AID;

    .line 178
    return-void
.end method

.method private deriveSessionKeysSCP01(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;[B[B)Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;
    .locals 7
    .param p1, "staticKeys"    # Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;
    .param p2, "hostRandom"    # [B
    .param p3, "cardResponse"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 473
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 475
    .local v1, "derivationData":[B
    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {p3, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    invoke-static {p2, v2, v1, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 477
    const/16 v0, 0x8

    const/16 v2, 0xc

    invoke-static {p3, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 478
    invoke-static {p2, v3, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 479
    new-instance v0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;-><init>(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1;)V

    .line 482
    .local v0, "sessionKeys":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;
    nop

    .line 483
    const/4 v2, 0x2

    :try_start_0
    invoke-static {v2}, Lnet/sourceforge/gpj/cardservices/ciphers/ICipher$Factory;->getImplementation(I)Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;

    move-result-object v3

    .line 485
    .local v3, "cipher":Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;
    const/4 v4, 0x0

    .local v4, "keyIndex":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 486
    invoke-static {p1}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->access$100(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;)[[B

    move-result-object v5

    aget-object v5, v5, v4

    const/16 v6, 0x18

    invoke-static {v5, v6}, Lnet/sourceforge/gpj/cardservices/GPUtil;->getKey([BI)[B

    move-result-object v5

    invoke-interface {v3, v5}, Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;->setKey([B)V

    .line 487
    invoke-static {v0}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->access$100(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;)[[B

    move-result-object v5

    invoke-interface {v3, v1}, Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;->encrypt([B)[B

    move-result-object v6

    aput-object v6, v5, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 491
    .end local v3    # "cipher":Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;
    .end local v4    # "keyIndex":I
    :cond_0
    nop

    .line 492
    invoke-static {v0}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->access$100(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;)[[B

    move-result-object v3

    invoke-static {p1}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->access$100(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;)[[B

    move-result-object v4

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    .line 493
    return-object v0

    .line 489
    :catch_0
    move-exception v2

    .line 490
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljavax/smartcardio/CardException;

    const-string v4, "Session key derivation failed."

    invoke-direct {v3, v4, v2}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v3

    :goto_2
    goto :goto_1
.end method

.method private deriveSessionKeysSCP02(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;BBZ)Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;
    .locals 11
    .param p1, "staticKeys"    # Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;
    .param p2, "seq1"    # B
    .param p3, "seq2"    # B
    .param p4, "implicitChannel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 498
    new-instance v0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;-><init>(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1;)V

    .line 501
    .local v0, "sessionKeys":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;
    const/16 v1, 0x10

    :try_start_0
    new-array v1, v1, [B

    .line 502
    .local v1, "derivationData":[B
    const/4 v2, 0x2

    aput-byte p2, v1, v2

    .line 503
    const/4 v3, 0x3

    aput-byte p3, v1, v3

    .line 505
    new-array v4, v2, [B

    fill-array-data v4, :array_0

    .line 506
    .local v4, "constantMAC":[B
    const/4 v5, 0x0

    invoke-static {v4, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 508
    nop

    .line 510
    invoke-static {p1}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->access$100(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;)[[B

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    .line 509
    const/16 v8, 0x18

    invoke-static {v6, v8}, Lnet/sourceforge/gpj/cardservices/GPUtil;->getKey([BI)[B

    move-result-object v6

    const/16 v9, 0x8

    new-array v9, v9, [B

    .line 508
    invoke-static {v7, v6, v9}, Lnet/sourceforge/gpj/cardservices/ciphers/ICipher$Factory;->getImplementation(I[B[B)Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;

    move-result-object v6

    .line 511
    .local v6, "cipher":Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;
    invoke-static {v0}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->access$100(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;)[[B

    move-result-object v9

    invoke-interface {v6, v1}, Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;->encrypt([B)[B

    move-result-object v10

    aput-object v10, v9, v7

    .line 514
    if-eqz p4, :cond_1

    .line 515
    const/4 v9, -0x1

    if-ne p3, v9, :cond_0

    .line 516
    const/4 p3, 0x0

    .line 517
    add-int/lit8 v9, p2, 0x1

    int-to-byte p2, v9

    goto :goto_0

    .line 519
    :cond_0
    add-int/lit8 v9, p3, 0x1

    int-to-byte p3, v9

    .line 521
    :goto_0
    aput-byte p2, v1, v2

    .line 522
    aput-byte p3, v1, v3

    .line 525
    :cond_1
    new-array v9, v2, [B

    fill-array-data v9, :array_1

    .line 526
    .local v9, "constantRMAC":[B
    invoke-static {v9, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 528
    invoke-static {p1}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->access$100(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;)[[B

    move-result-object v10

    aget-object v7, v10, v7

    invoke-static {v7, v8}, Lnet/sourceforge/gpj/cardservices/GPUtil;->getKey([BI)[B

    move-result-object v7

    invoke-interface {v6, v7}, Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;->setKey([B)V

    .line 529
    invoke-static {v0}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->access$100(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;)[[B

    move-result-object v7

    invoke-interface {v6, v1}, Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;->encrypt([B)[B

    move-result-object v10

    aput-object v10, v7, v3

    .line 531
    new-array v3, v2, [B

    fill-array-data v3, :array_2

    .line 532
    .local v3, "constantENC":[B
    invoke-static {v3, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 534
    invoke-static {p1}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->access$100(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;)[[B

    move-result-object v7

    aget-object v7, v7, v5

    invoke-static {v7, v8}, Lnet/sourceforge/gpj/cardservices/GPUtil;->getKey([BI)[B

    move-result-object v7

    invoke-interface {v6, v7}, Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;->setKey([B)V

    .line 535
    invoke-static {v0}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->access$100(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;)[[B

    move-result-object v7

    invoke-interface {v6, v1}, Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;->encrypt([B)[B

    move-result-object v10

    aput-object v10, v7, v5

    .line 537
    new-array v7, v2, [B

    fill-array-data v7, :array_3

    .line 538
    .local v7, "constantDEK":[B
    invoke-static {v7, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 539
    invoke-static {p1}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->access$100(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;)[[B

    move-result-object v5

    aget-object v5, v5, v2

    invoke-static {v5, v8}, Lnet/sourceforge/gpj/cardservices/GPUtil;->getKey([BI)[B

    move-result-object v5

    invoke-interface {v6, v5}, Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;->setKey([B)V

    .line 540
    invoke-static {v0}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->access$100(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;)[[B

    move-result-object v5

    invoke-interface {v6, v1}, Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;->encrypt([B)[B

    move-result-object v8

    aput-object v8, v5, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    .end local v1    # "derivationData":[B
    .end local v3    # "constantENC":[B
    .end local v4    # "constantMAC":[B
    .end local v6    # "cipher":Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;
    .end local v7    # "constantDEK":[B
    .end local v9    # "constantRMAC":[B
    nop

    .line 544
    return-object v0

    .line 541
    :catch_0
    move-exception v1

    .line 542
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljavax/smartcardio/CardException;

    const-string v3, "Key derivation failed."

    invoke-direct {v2, v3, v1}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x2t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x1t
        -0x7et
    .end array-data

    nop

    :array_3
    .array-data 1
        0x1t
        -0x7ft
    .end array-data
.end method

.method private getInstalledApplets()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sourceforge/gpj/cardservices/AID;",
            ">;"
        }
    .end annotation

    .line 972
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 974
    .local v1, "aids":Ljava/util/List;, "Ljava/util/List<Lnet/sourceforge/gpj/cardservices/AID;>;"
    new-instance v2, Ljavax/smartcardio/CommandAPDU;

    const/4 v0, 0x2

    new-array v7, v0, [B

    fill-array-data v7, :array_0

    const/16 v3, -0x80

    const/16 v4, -0xe

    const/16 v5, 0x40

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Ljavax/smartcardio/CommandAPDU;-><init>(IIII[B)V

    .line 975
    .local v2, "getStatus":Ljavax/smartcardio/CommandAPDU;
    const/4 v3, 0x0

    .line 978
    .local v3, "response":Ljavax/smartcardio/ResponseAPDU;
    :try_start_0
    invoke-virtual {p0, v2}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;

    move-result-object v0

    move-object v3, v0

    .line 979
    invoke-virtual {p0, v2, v3}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->notifyExchangedAPDU(Ljavax/smartcardio/CommandAPDU;Ljavax/smartcardio/ResponseAPDU;)V

    .line 980
    invoke-virtual {v3}, Ljavax/smartcardio/ResponseAPDU;->getSW()I

    move-result v0

    int-to-short v0, v0

    .line 981
    .local v0, "sw":S
    const/16 v4, -0x7000

    if-eq v0, v4, :cond_0

    const/16 v4, 0x6310

    if-eq v0, v4, :cond_0

    .line 982
    const-string v4, "gps"

    const-string v5, "error retrieving installed applets"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/smartcardio/CardException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 987
    .end local v0    # "sw":S
    :catch_0
    move-exception v0

    .line 989
    .local v0, "e":Ljavax/smartcardio/CardException;
    invoke-virtual {v0}, Ljavax/smartcardio/CardException;->printStackTrace()V

    goto :goto_1

    .line 984
    .end local v0    # "e":Ljavax/smartcardio/CardException;
    :catch_1
    move-exception v0

    .line 986
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 990
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    :goto_0
    nop

    .line 992
    :goto_1
    const/4 v0, 0x0

    .line 993
    .local v0, "index":I
    invoke-virtual {v3}, Ljavax/smartcardio/ResponseAPDU;->getData()[B

    move-result-object v4

    .line 995
    .local v4, "data":[B
    :goto_2
    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 996
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "index":I
    .local v5, "index":I
    aget-byte v0, v4, v0

    .line 997
    .local v0, "len":I
    new-instance v6, Lnet/sourceforge/gpj/cardservices/AID;

    invoke-direct {v6, v4, v5, v0}, Lnet/sourceforge/gpj/cardservices/AID;-><init>([BII)V

    .line 998
    .local v6, "aid":Lnet/sourceforge/gpj/cardservices/AID;
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 999
    add-int/2addr v5, v0

    .line 1000
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "index":I
    .local v7, "index":I
    aget-byte v5, v4, v5

    .line 1001
    .local v5, "life_cycle":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "index":I
    .local v8, "index":I
    aget-byte v7, v4, v7

    .line 1002
    .end local v0    # "len":I
    .end local v5    # "life_cycle":I
    .end local v6    # "aid":Lnet/sourceforge/gpj/cardservices/AID;
    move v0, v8

    goto :goto_2

    .line 1003
    .end local v8    # "index":I
    .local v0, "index":I
    :cond_1
    return-object v1

    :array_0
    .array-data 1
        0x4ft
        0x0t
    .end array-data
.end method

.method public static openService([Ljava/lang/String;Ljavax/smartcardio/CardTerminal;)Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .locals 50
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "terminal"    # Ljavax/smartcardio/CardTerminal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1437
    move-object/from16 v1, p0

    const-string v2, ""

    const/4 v0, 0x0

    .line 1439
    .local v0, "listApplets":Z
    const/4 v3, 0x0

    .line 1441
    .local v3, "use_jcop_emulator":Z
    const/4 v4, 0x0

    .line 1442
    .local v4, "keySet":I
    const/4 v5, 0x3

    new-array v6, v5, [[B

    sget-object v7, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->defaultEncKey:[B

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->defaultMacKey:[B

    const/4 v9, 0x1

    aput-object v7, v6, v9

    sget-object v7, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->defaultKekKey:[B

    const/4 v10, 0x2

    aput-object v7, v6, v10

    .line 1443
    .local v6, "keys":[[B
    const/4 v7, 0x0

    .line 1444
    .local v7, "sdAID":Lnet/sourceforge/gpj/cardservices/AID;
    const/4 v11, 0x0

    .line 1445
    .local v11, "diver":I
    const/4 v12, 0x0

    .line 1447
    .local v12, "gemalto":Z
    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    .line 1448
    .local v13, "deleteAID":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/AID;>;"
    const/4 v14, 0x0

    .line 1450
    .local v14, "deleteDeps":Z
    const/4 v15, 0x0

    .line 1451
    .local v15, "capFileUrl":Ljava/net/URL;
    const/16 v16, 0xff

    .line 1452
    .local v16, "loadSize":I
    const/16 v17, 0x0

    .line 1453
    .local v17, "loadCompSep":Z
    const/16 v18, 0x0

    .line 1454
    .local v18, "loadDebug":Z
    const/16 v19, 0x0

    .line 1455
    .local v19, "loadParam":Z
    const/16 v20, 0x0

    .line 1456
    .local v20, "useHash":Z
    const/16 v21, 0x0

    .line 1458
    .local v21, "apduMode":I
    new-instance v22, Ljava/util/Vector;

    invoke-direct/range {v22 .. v22}, Ljava/util/Vector;-><init>()V

    move-object/from16 v23, v22

    .line 1461
    .local v23, "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    const/16 v22, 0x0

    move/from16 v30, v12

    move v12, v14

    move/from16 v34, v17

    move/from16 v33, v18

    move/from16 v36, v19

    move/from16 v37, v20

    move/from16 v29, v21

    move/from16 v19, v11

    move-object v11, v7

    move-object v7, v6

    move v6, v4

    move v4, v0

    move/from16 v0, v22

    .end local v14    # "deleteDeps":Z
    .end local v17    # "loadCompSep":Z
    .end local v18    # "loadDebug":Z
    .end local v20    # "useHash":Z
    .end local v21    # "apduMode":I
    .local v0, "i":I
    .local v4, "listApplets":Z
    .local v6, "keySet":I
    .local v7, "keys":[[B
    .local v11, "sdAID":Lnet/sourceforge/gpj/cardservices/AID;
    .local v12, "deleteDeps":Z
    .local v19, "diver":I
    .local v29, "apduMode":I
    .local v30, "gemalto":Z
    .local v33, "loadDebug":Z
    .local v34, "loadCompSep":Z
    .local v36, "loadParam":Z
    .local v37, "useHash":Z
    :goto_0
    const/16 v20, 0x0

    const/16 v21, 0x2

    :try_start_0
    array-length v10, v1

    if-ge v0, v10, :cond_2b

    .line 1463
    aget-object v10, v1, v0

    const/16 v22, 0x1

    const-string v9, "-h"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    if-nez v9, :cond_0

    :try_start_1
    aget-object v9, v1, v0

    const-string v10, "-help"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    aget-object v9, v1, v0

    const-string v10, "--help"

    .line 1464
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v9, :cond_1

    goto :goto_1

    .line 1645
    .end local v0    # "i":I
    :catch_0
    move-exception v0

    move-object/from16 v39, v2

    move/from16 v40, v3

    move/from16 v41, v4

    move-object/from16 v1, v23

    const/16 v9, 0x10

    goto/16 :goto_6

    .line 1465
    .restart local v0    # "i":I
    :cond_0
    :goto_1
    :try_start_2
    invoke-static {}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->usage()V

    .line 1466
    invoke-static/range {v20 .. v20}, Ljava/lang/System;->exit(I)V

    .line 1468
    :cond_1
    aget-object v9, v1, v0

    const-string v10, "-list"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1469
    const/4 v4, 0x1

    move-object/from16 v39, v2

    move/from16 v40, v3

    move-object/from16 v1, v23

    goto/16 :goto_5

    .line 1470
    :cond_2
    aget-object v9, v1, v0

    const-string v10, "-keyset"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    const-string v10, " out of range."

    if-eqz v9, :cond_4

    .line 1471
    add-int/lit8 v0, v0, 0x1

    .line 1472
    :try_start_3
    aget-object v9, v1, v0

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1473
    .end local v6    # "keySet":I
    .local v9, "keySet":I
    if-lez v9, :cond_3

    const/16 v6, 0x7f

    if-gt v9, v6, :cond_3

    move-object/from16 v39, v2

    move/from16 v40, v3

    move v6, v9

    move-object/from16 v1, v23

    goto/16 :goto_5

    .line 1474
    :cond_3
    :try_start_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Key set number "

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "use_jcop_emulator":Z
    .end local v4    # "listApplets":Z
    .end local v7    # "keys":[[B
    .end local v9    # "keySet":I
    .end local v11    # "sdAID":Lnet/sourceforge/gpj/cardservices/AID;
    .end local v12    # "deleteDeps":Z
    .end local v13    # "deleteAID":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/AID;>;"
    .end local v15    # "capFileUrl":Ljava/net/URL;
    .end local v16    # "loadSize":I
    .end local v19    # "diver":I
    .end local v23    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .end local v29    # "apduMode":I
    .end local v30    # "gemalto":Z
    .end local v33    # "loadDebug":Z
    .end local v34    # "loadCompSep":Z
    .end local v36    # "loadParam":Z
    .end local v37    # "useHash":Z
    .end local p0    # "args":[Ljava/lang/String;
    .end local p1    # "terminal":Ljavax/smartcardio/CardTerminal;
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1645
    .end local v0    # "i":I
    .restart local v3    # "use_jcop_emulator":Z
    .restart local v4    # "listApplets":Z
    .restart local v7    # "keys":[[B
    .restart local v9    # "keySet":I
    .restart local v11    # "sdAID":Lnet/sourceforge/gpj/cardservices/AID;
    .restart local v12    # "deleteDeps":Z
    .restart local v13    # "deleteAID":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/AID;>;"
    .restart local v15    # "capFileUrl":Ljava/net/URL;
    .restart local v16    # "loadSize":I
    .restart local v19    # "diver":I
    .restart local v23    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v29    # "apduMode":I
    .restart local v30    # "gemalto":Z
    .restart local v33    # "loadDebug":Z
    .restart local v34    # "loadCompSep":Z
    .restart local v36    # "loadParam":Z
    .restart local v37    # "useHash":Z
    .restart local p0    # "args":[Ljava/lang/String;
    .restart local p1    # "terminal":Ljavax/smartcardio/CardTerminal;
    :catch_1
    move-exception v0

    move-object/from16 v39, v2

    move/from16 v40, v3

    move/from16 v41, v4

    move v6, v9

    move-object/from16 v1, v23

    const/16 v9, 0x10

    goto/16 :goto_6

    .line 1477
    .end local v9    # "keySet":I
    .restart local v0    # "i":I
    .restart local v6    # "keySet":I
    :cond_4
    :try_start_5
    aget-object v8, v1, v0

    const-string v9, "-sdaid"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    if-eqz v8, :cond_7

    .line 1478
    add-int/lit8 v0, v0, 0x1

    .line 1479
    :try_start_6
    aget-object v8, v1, v0

    invoke-static {v8}, Lnet/sourceforge/gpj/cardservices/GPUtil;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v8

    .line 1480
    .local v8, "aid":[B
    if-nez v8, :cond_5

    .line 1481
    aget-object v9, v1, v0

    invoke-static {v9}, Lnet/sourceforge/gpj/cardservices/GPUtil;->readableStringToByteArray(Ljava/lang/String;)[B

    move-result-object v9

    move-object v8, v9

    .line 1483
    :cond_5
    if-eqz v8, :cond_6

    .line 1487
    new-instance v9, Lnet/sourceforge/gpj/cardservices/AID;

    invoke-direct {v9, v8}, Lnet/sourceforge/gpj/cardservices/AID;-><init>([B)V

    .line 1488
    .end local v8    # "aid":[B
    .end local v11    # "sdAID":Lnet/sourceforge/gpj/cardservices/AID;
    .local v9, "sdAID":Lnet/sourceforge/gpj/cardservices/AID;
    move-object/from16 v39, v2

    move/from16 v40, v3

    move-object v11, v9

    move-object/from16 v1, v23

    goto/16 :goto_5

    .line 1484
    .end local v9    # "sdAID":Lnet/sourceforge/gpj/cardservices/AID;
    .restart local v8    # "aid":[B
    .restart local v11    # "sdAID":Lnet/sourceforge/gpj/cardservices/AID;
    :cond_6
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Malformed SD AID: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v14, v1, v0

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "use_jcop_emulator":Z
    .end local v4    # "listApplets":Z
    .end local v6    # "keySet":I
    .end local v7    # "keys":[[B
    .end local v11    # "sdAID":Lnet/sourceforge/gpj/cardservices/AID;
    .end local v12    # "deleteDeps":Z
    .end local v13    # "deleteAID":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/AID;>;"
    .end local v15    # "capFileUrl":Ljava/net/URL;
    .end local v16    # "loadSize":I
    .end local v19    # "diver":I
    .end local v23    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .end local v29    # "apduMode":I
    .end local v30    # "gemalto":Z
    .end local v33    # "loadDebug":Z
    .end local v34    # "loadCompSep":Z
    .end local v36    # "loadParam":Z
    .end local v37    # "useHash":Z
    .end local p0    # "args":[Ljava/lang/String;
    .end local p1    # "terminal":Ljavax/smartcardio/CardTerminal;
    throw v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1488
    .end local v8    # "aid":[B
    .restart local v3    # "use_jcop_emulator":Z
    .restart local v4    # "listApplets":Z
    .restart local v6    # "keySet":I
    .restart local v7    # "keys":[[B
    .restart local v11    # "sdAID":Lnet/sourceforge/gpj/cardservices/AID;
    .restart local v12    # "deleteDeps":Z
    .restart local v13    # "deleteAID":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/AID;>;"
    .restart local v15    # "capFileUrl":Ljava/net/URL;
    .restart local v16    # "loadSize":I
    .restart local v19    # "diver":I
    .restart local v23    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v29    # "apduMode":I
    .restart local v30    # "gemalto":Z
    .restart local v33    # "loadDebug":Z
    .restart local v34    # "loadCompSep":Z
    .restart local v36    # "loadParam":Z
    .restart local v37    # "useHash":Z
    .restart local p0    # "args":[Ljava/lang/String;
    .restart local p1    # "terminal":Ljavax/smartcardio/CardTerminal;
    :cond_7
    :try_start_7
    aget-object v8, v1, v0

    const-string v9, "-GemaltoXpressPro"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b

    if-eqz v8, :cond_8

    .line 1489
    :try_start_8
    sget-object v8, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->SPECIAL_MOTHER_KEYS:Ljava/util/Map;

    const-string v9, "GemaltoXpressPro"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 1490
    .local v8, "gemMotherKey":[B
    :try_start_9
    new-array v9, v5, [[B

    aput-object v8, v9, v20

    aput-object v8, v9, v22

    aput-object v8, v9, v21
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 1491
    .end local v7    # "keys":[[B
    .local v9, "keys":[[B
    const/4 v7, 0x1

    .line 1492
    .end local v30    # "gemalto":Z
    .local v7, "gemalto":Z
    const/4 v8, 0x1

    .line 1493
    .end local v19    # "diver":I
    .local v8, "diver":I
    move-object/from16 v39, v2

    move/from16 v40, v3

    move/from16 v30, v7

    move/from16 v19, v8

    move-object v7, v9

    move-object/from16 v1, v23

    goto/16 :goto_5

    .line 1645
    .end local v0    # "i":I
    .end local v8    # "diver":I
    .end local v9    # "keys":[[B
    .local v7, "keys":[[B
    .restart local v19    # "diver":I
    .restart local v30    # "gemalto":Z
    :catch_2
    move-exception v0

    move-object/from16 v39, v2

    move/from16 v40, v3

    move/from16 v41, v4

    move-object/from16 v1, v23

    const/16 v9, 0x10

    goto/16 :goto_6

    .line 1493
    .restart local v0    # "i":I
    :cond_8
    :try_start_a
    aget-object v8, v1, v0

    const-string v9, "-visa2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1494
    const/4 v8, 0x1

    move-object/from16 v39, v2

    move/from16 v40, v3

    move/from16 v19, v8

    move-object/from16 v1, v23

    .end local v19    # "diver":I
    .restart local v8    # "diver":I
    goto/16 :goto_5

    .line 1495
    .end local v8    # "diver":I
    .restart local v19    # "diver":I
    :cond_9
    aget-object v8, v1, v0

    const-string v9, "-emv"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1496
    const/4 v8, 0x2

    move-object/from16 v39, v2

    move/from16 v40, v3

    move/from16 v19, v8

    move-object/from16 v1, v23

    .end local v19    # "diver":I
    .restart local v8    # "diver":I
    goto/16 :goto_5

    .line 1497
    .end local v8    # "diver":I
    .restart local v19    # "diver":I
    :cond_a
    aget-object v8, v1, v0

    const-string v9, "-mode"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    if-eqz v8, :cond_e

    .line 1498
    add-int/lit8 v0, v0, 0x1

    .line 1500
    :try_start_b
    const-string v8, "CLR"

    aget-object v9, v1, v0

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1501
    const/4 v8, 0x0

    move-object/from16 v39, v2

    move/from16 v40, v3

    move/from16 v29, v8

    move-object/from16 v1, v23

    .end local v29    # "apduMode":I
    .local v8, "apduMode":I
    goto/16 :goto_5

    .line 1502
    .end local v8    # "apduMode":I
    .restart local v29    # "apduMode":I
    :cond_b
    const-string v8, "MAC"

    aget-object v9, v1, v0

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1503
    const/4 v8, 0x1

    move-object/from16 v39, v2

    move/from16 v40, v3

    move/from16 v29, v8

    move-object/from16 v1, v23

    .end local v29    # "apduMode":I
    .restart local v8    # "apduMode":I
    goto/16 :goto_5

    .line 1504
    .end local v8    # "apduMode":I
    .restart local v29    # "apduMode":I
    :cond_c
    const-string v8, "ENC"

    aget-object v9, v1, v0

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1505
    const/4 v8, 0x2

    move-object/from16 v39, v2

    move/from16 v40, v3

    move/from16 v29, v8

    move-object/from16 v1, v23

    .end local v29    # "apduMode":I
    .restart local v8    # "apduMode":I
    goto/16 :goto_5

    .line 1507
    .end local v8    # "apduMode":I
    .restart local v29    # "apduMode":I
    :cond_d
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid APDU mode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v1, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "use_jcop_emulator":Z
    .end local v4    # "listApplets":Z
    .end local v6    # "keySet":I
    .end local v7    # "keys":[[B
    .end local v11    # "sdAID":Lnet/sourceforge/gpj/cardservices/AID;
    .end local v12    # "deleteDeps":Z
    .end local v13    # "deleteAID":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/AID;>;"
    .end local v15    # "capFileUrl":Ljava/net/URL;
    .end local v16    # "loadSize":I
    .end local v19    # "diver":I
    .end local v23    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .end local v29    # "apduMode":I
    .end local v30    # "gemalto":Z
    .end local v33    # "loadDebug":Z
    .end local v34    # "loadCompSep":Z
    .end local v36    # "loadParam":Z
    .end local v37    # "useHash":Z
    .end local p0    # "args":[Ljava/lang/String;
    .end local p1    # "terminal":Ljavax/smartcardio/CardTerminal;
    throw v8
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 1509
    .restart local v3    # "use_jcop_emulator":Z
    .restart local v4    # "listApplets":Z
    .restart local v6    # "keySet":I
    .restart local v7    # "keys":[[B
    .restart local v11    # "sdAID":Lnet/sourceforge/gpj/cardservices/AID;
    .restart local v12    # "deleteDeps":Z
    .restart local v13    # "deleteAID":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/AID;>;"
    .restart local v15    # "capFileUrl":Ljava/net/URL;
    .restart local v16    # "loadSize":I
    .restart local v19    # "diver":I
    .restart local v23    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v29    # "apduMode":I
    .restart local v30    # "gemalto":Z
    .restart local v33    # "loadDebug":Z
    .restart local v34    # "loadCompSep":Z
    .restart local v36    # "loadParam":Z
    .restart local v37    # "useHash":Z
    .restart local p0    # "args":[Ljava/lang/String;
    .restart local p1    # "terminal":Ljavax/smartcardio/CardTerminal;
    :cond_e
    :try_start_c
    aget-object v8, v1, v0

    const-string v9, "-delete"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    const-string v9, "Malformed AID: "

    if-eqz v8, :cond_11

    .line 1510
    add-int/lit8 v0, v0, 0x1

    .line 1511
    :try_start_d
    aget-object v8, v1, v0

    invoke-static {v8}, Lnet/sourceforge/gpj/cardservices/GPUtil;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v8

    .line 1512
    .local v8, "aid":[B
    if-nez v8, :cond_f

    .line 1513
    aget-object v10, v1, v0

    invoke-static {v10}, Lnet/sourceforge/gpj/cardservices/GPUtil;->readableStringToByteArray(Ljava/lang/String;)[B

    move-result-object v10

    move-object v8, v10

    .line 1515
    :cond_f
    if-eqz v8, :cond_10

    .line 1519
    new-instance v9, Lnet/sourceforge/gpj/cardservices/AID;

    invoke-direct {v9, v8}, Lnet/sourceforge/gpj/cardservices/AID;-><init>([B)V

    invoke-virtual {v13, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1520
    move-object/from16 v39, v2

    move/from16 v40, v3

    move-object/from16 v1, v23

    .end local v8    # "aid":[B
    goto/16 :goto_5

    .line 1516
    .restart local v8    # "aid":[B
    :cond_10
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v14, v1, v0

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "use_jcop_emulator":Z
    .end local v4    # "listApplets":Z
    .end local v6    # "keySet":I
    .end local v7    # "keys":[[B
    .end local v11    # "sdAID":Lnet/sourceforge/gpj/cardservices/AID;
    .end local v12    # "deleteDeps":Z
    .end local v13    # "deleteAID":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/AID;>;"
    .end local v15    # "capFileUrl":Ljava/net/URL;
    .end local v16    # "loadSize":I
    .end local v19    # "diver":I
    .end local v23    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .end local v29    # "apduMode":I
    .end local v30    # "gemalto":Z
    .end local v33    # "loadDebug":Z
    .end local v34    # "loadCompSep":Z
    .end local v36    # "loadParam":Z
    .end local v37    # "useHash":Z
    .end local p0    # "args":[Ljava/lang/String;
    .end local p1    # "terminal":Ljavax/smartcardio/CardTerminal;
    throw v10
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 1520
    .end local v8    # "aid":[B
    .restart local v3    # "use_jcop_emulator":Z
    .restart local v4    # "listApplets":Z
    .restart local v6    # "keySet":I
    .restart local v7    # "keys":[[B
    .restart local v11    # "sdAID":Lnet/sourceforge/gpj/cardservices/AID;
    .restart local v12    # "deleteDeps":Z
    .restart local v13    # "deleteAID":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/AID;>;"
    .restart local v15    # "capFileUrl":Ljava/net/URL;
    .restart local v16    # "loadSize":I
    .restart local v19    # "diver":I
    .restart local v23    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v29    # "apduMode":I
    .restart local v30    # "gemalto":Z
    .restart local v33    # "loadDebug":Z
    .restart local v34    # "loadCompSep":Z
    .restart local v36    # "loadParam":Z
    .restart local v37    # "useHash":Z
    .restart local p0    # "args":[Ljava/lang/String;
    .restart local p1    # "terminal":Ljavax/smartcardio/CardTerminal;
    :cond_11
    :try_start_e
    aget-object v8, v1, v0

    const-string v14, "-deletedeps"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 1521
    const/4 v8, 0x1

    move-object/from16 v39, v2

    move/from16 v40, v3

    move v12, v8

    move-object/from16 v1, v23

    .end local v12    # "deleteDeps":Z
    .local v8, "deleteDeps":Z
    goto/16 :goto_5

    .line 1522
    .end local v8    # "deleteDeps":Z
    .restart local v12    # "deleteDeps":Z
    :cond_12
    aget-object v8, v1, v0

    const-string v14, "-loadsize"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    if-eqz v8, :cond_15

    .line 1523
    add-int/lit8 v0, v0, 0x1

    .line 1524
    :try_start_f
    aget-object v8, v1, v0

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    .line 1525
    .end local v16    # "loadSize":I
    .local v8, "loadSize":I
    const/16 v9, 0x10

    if-le v8, v9, :cond_13

    const/16 v14, 0xff

    if-gt v8, v14, :cond_14

    move-object/from16 v39, v2

    move/from16 v40, v3

    move/from16 v16, v8

    move-object/from16 v1, v23

    goto/16 :goto_5

    :cond_13
    const/16 v14, 0xff

    .line 1526
    :cond_14
    :try_start_10
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load size "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "use_jcop_emulator":Z
    .end local v4    # "listApplets":Z
    .end local v6    # "keySet":I
    .end local v7    # "keys":[[B
    .end local v8    # "loadSize":I
    .end local v11    # "sdAID":Lnet/sourceforge/gpj/cardservices/AID;
    .end local v12    # "deleteDeps":Z
    .end local v13    # "deleteAID":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/AID;>;"
    .end local v15    # "capFileUrl":Ljava/net/URL;
    .end local v19    # "diver":I
    .end local v23    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .end local v29    # "apduMode":I
    .end local v30    # "gemalto":Z
    .end local v33    # "loadDebug":Z
    .end local v34    # "loadCompSep":Z
    .end local v36    # "loadParam":Z
    .end local v37    # "useHash":Z
    .end local p0    # "args":[Ljava/lang/String;
    .end local p1    # "terminal":Ljavax/smartcardio/CardTerminal;
    throw v9
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    .line 1645
    .end local v0    # "i":I
    .restart local v3    # "use_jcop_emulator":Z
    .restart local v4    # "listApplets":Z
    .restart local v6    # "keySet":I
    .restart local v7    # "keys":[[B
    .restart local v8    # "loadSize":I
    .restart local v11    # "sdAID":Lnet/sourceforge/gpj/cardservices/AID;
    .restart local v12    # "deleteDeps":Z
    .restart local v13    # "deleteAID":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/AID;>;"
    .restart local v15    # "capFileUrl":Ljava/net/URL;
    .restart local v19    # "diver":I
    .restart local v23    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v29    # "apduMode":I
    .restart local v30    # "gemalto":Z
    .restart local v33    # "loadDebug":Z
    .restart local v34    # "loadCompSep":Z
    .restart local v36    # "loadParam":Z
    .restart local v37    # "useHash":Z
    .restart local p0    # "args":[Ljava/lang/String;
    .restart local p1    # "terminal":Ljavax/smartcardio/CardTerminal;
    :catch_3
    move-exception v0

    move-object/from16 v39, v2

    move/from16 v40, v3

    move/from16 v41, v4

    move/from16 v16, v8

    move-object/from16 v1, v23

    const/16 v9, 0x10

    goto/16 :goto_6

    .line 1529
    .end local v8    # "loadSize":I
    .restart local v0    # "i":I
    .restart local v16    # "loadSize":I
    :cond_15
    :try_start_11
    aget-object v5, v1, v0

    const-string v8, "-loadsep"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1530
    const/4 v5, 0x1

    move-object/from16 v39, v2

    move/from16 v40, v3

    move/from16 v34, v5

    move-object/from16 v1, v23

    .end local v34    # "loadCompSep":Z
    .local v5, "loadCompSep":Z
    goto/16 :goto_5

    .line 1531
    .end local v5    # "loadCompSep":Z
    .restart local v34    # "loadCompSep":Z
    :cond_16
    aget-object v5, v1, v0

    const-string v8, "-loaddebug"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1532
    const/4 v5, 0x1

    move-object/from16 v39, v2

    move/from16 v40, v3

    move/from16 v33, v5

    move-object/from16 v1, v23

    .end local v33    # "loadDebug":Z
    .local v5, "loadDebug":Z
    goto/16 :goto_5

    .line 1533
    .end local v5    # "loadDebug":Z
    .restart local v33    # "loadDebug":Z
    :cond_17
    aget-object v5, v1, v0

    const-string v8, "-loadparam"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1534
    const/4 v5, 0x1

    move-object/from16 v39, v2

    move/from16 v40, v3

    move/from16 v36, v5

    move-object/from16 v1, v23

    .end local v36    # "loadParam":Z
    .local v5, "loadParam":Z
    goto/16 :goto_5

    .line 1535
    .end local v5    # "loadParam":Z
    .restart local v36    # "loadParam":Z
    :cond_18
    aget-object v5, v1, v0

    const-string v8, "-loadhash"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1536
    const/4 v5, 0x1

    move-object/from16 v39, v2

    move/from16 v40, v3

    move/from16 v37, v5

    move-object/from16 v1, v23

    .end local v37    # "useHash":Z
    .local v5, "useHash":Z
    goto/16 :goto_5

    .line 1537
    .end local v5    # "useHash":Z
    .restart local v37    # "useHash":Z
    :cond_19
    aget-object v5, v1, v0

    const-string v8, "-load"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    if-eqz v5, :cond_1a

    .line 1538
    add-int/lit8 v5, v0, 0x1

    .line 1540
    .end local v0    # "i":I
    .local v5, "i":I
    :try_start_12
    new-instance v0, Ljava/net/URL;

    aget-object v8, v1, v5

    invoke-direct {v0, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/net/MalformedURLException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    .line 1544
    .end local v15    # "capFileUrl":Ljava/net/URL;
    .local v0, "capFileUrl":Ljava/net/URL;
    move-object v8, v0

    goto :goto_2

    .line 1541
    .end local v0    # "capFileUrl":Ljava/net/URL;
    .restart local v15    # "capFileUrl":Ljava/net/URL;
    :catch_4
    move-exception v0

    .line 1543
    .local v0, "e":Ljava/net/MalformedURLException;
    :try_start_13
    new-instance v8, Ljava/net/URL;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v1, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    .line 1546
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .end local v15    # "capFileUrl":Ljava/net/URL;
    .local v8, "capFileUrl":Ljava/net/URL;
    :goto_2
    :try_start_14
    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1547
    .local v0, "in":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_6
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5

    .line 1551
    .end local v0    # "in":Ljava/io/InputStream;
    move-object/from16 v39, v2

    move/from16 v40, v3

    move v0, v5

    move-object v15, v8

    move-object/from16 v1, v23

    goto/16 :goto_5

    .line 1645
    .end local v5    # "i":I
    :catch_5
    move-exception v0

    move-object/from16 v39, v2

    move/from16 v40, v3

    move/from16 v41, v4

    move-object v15, v8

    move-object/from16 v1, v23

    const/16 v9, 0x10

    goto/16 :goto_6

    .line 1548
    .restart local v5    # "i":I
    :catch_6
    move-exception v0

    .line 1549
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_15
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CAP file "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, " does not seem to exist."

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "use_jcop_emulator":Z
    .end local v4    # "listApplets":Z
    .end local v6    # "keySet":I
    .end local v7    # "keys":[[B
    .end local v8    # "capFileUrl":Ljava/net/URL;
    .end local v11    # "sdAID":Lnet/sourceforge/gpj/cardservices/AID;
    .end local v12    # "deleteDeps":Z
    .end local v13    # "deleteAID":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/AID;>;"
    .end local v16    # "loadSize":I
    .end local v19    # "diver":I
    .end local v23    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .end local v29    # "apduMode":I
    .end local v30    # "gemalto":Z
    .end local v33    # "loadDebug":Z
    .end local v34    # "loadCompSep":Z
    .end local v36    # "loadParam":Z
    .end local v37    # "useHash":Z
    .end local p0    # "args":[Ljava/lang/String;
    .end local p1    # "terminal":Ljavax/smartcardio/CardTerminal;
    throw v9
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5

    .line 1552
    .end local v5    # "i":I
    .local v0, "i":I
    .restart local v3    # "use_jcop_emulator":Z
    .restart local v4    # "listApplets":Z
    .restart local v6    # "keySet":I
    .restart local v7    # "keys":[[B
    .restart local v11    # "sdAID":Lnet/sourceforge/gpj/cardservices/AID;
    .restart local v12    # "deleteDeps":Z
    .restart local v13    # "deleteAID":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/AID;>;"
    .restart local v15    # "capFileUrl":Ljava/net/URL;
    .restart local v16    # "loadSize":I
    .restart local v19    # "diver":I
    .restart local v23    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v29    # "apduMode":I
    .restart local v30    # "gemalto":Z
    .restart local v33    # "loadDebug":Z
    .restart local v34    # "loadCompSep":Z
    .restart local v36    # "loadParam":Z
    .restart local v37    # "useHash":Z
    .restart local p0    # "args":[Ljava/lang/String;
    .restart local p1    # "terminal":Ljavax/smartcardio/CardTerminal;
    :cond_1a
    :try_start_16
    aget-object v5, v1, v0

    const-string v8, "-install"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_b

    if-eqz v5, :cond_25

    .line 1553
    add-int/lit8 v0, v0, 0x1

    .line 1554
    const/4 v5, 0x4

    .line 1555
    .local v5, "totalOpts":I
    const/4 v8, 0x0

    .line 1556
    .local v8, "current":I
    const/4 v10, 0x0

    .line 1557
    .local v10, "appletAID":Lnet/sourceforge/gpj/cardservices/AID;
    const/4 v14, 0x0

    .line 1558
    .local v14, "packageAID":Lnet/sourceforge/gpj/cardservices/AID;
    const/16 v18, 0x0

    .line 1559
    .local v18, "priv":I
    const/16 v25, 0x0

    move-object/from16 v39, v2

    move/from16 v40, v3

    move/from16 v2, v18

    move-object/from16 v3, v25

    .line 1560
    .end local v18    # "priv":I
    .local v2, "priv":I
    .local v3, "param":[B
    .local v40, "use_jcop_emulator":Z
    :goto_3
    move/from16 v41, v4

    .end local v4    # "listApplets":Z
    .local v41, "listApplets":Z
    :try_start_17
    array-length v4, v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_8

    if-ge v0, v4, :cond_24

    if-ge v8, v5, :cond_24

    .line 1561
    :try_start_18
    aget-object v4, v1, v0

    move/from16 v18, v0

    .end local v0    # "i":I
    .local v18, "i":I
    const-string v0, "-applet"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1562
    add-int/lit8 v0, v18, 0x1

    .line 1563
    .end local v18    # "i":I
    .restart local v0    # "i":I
    aget-object v4, v1, v0

    invoke-static {v4}, Lnet/sourceforge/gpj/cardservices/GPUtil;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 1564
    .local v4, "aid":[B
    if-nez v4, :cond_1b

    .line 1565
    aget-object v18, v1, v0

    invoke-static/range {v18 .. v18}, Lnet/sourceforge/gpj/cardservices/GPUtil;->readableStringToByteArray(Ljava/lang/String;)[B

    move-result-object v18

    move-object/from16 v4, v18

    .line 1567
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    .line 1568
    if-eqz v4, :cond_1c

    .line 1572
    move/from16 v18, v0

    .end local v0    # "i":I
    .restart local v18    # "i":I
    new-instance v0, Lnet/sourceforge/gpj/cardservices/AID;

    invoke-direct {v0, v4}, Lnet/sourceforge/gpj/cardservices/AID;-><init>([B)V

    move-object v10, v0

    .line 1573
    const/4 v8, 0x1

    .line 1574
    .end local v4    # "aid":[B
    move/from16 v0, v18

    move/from16 v4, v41

    goto :goto_3

    .line 1569
    .end local v18    # "i":I
    .restart local v0    # "i":I
    .restart local v4    # "aid":[B
    :cond_1c
    move/from16 v18, v0

    .end local v0    # "i":I
    .restart local v18    # "i":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v9, p0, v18

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v6    # "keySet":I
    .end local v7    # "keys":[[B
    .end local v11    # "sdAID":Lnet/sourceforge/gpj/cardservices/AID;
    .end local v12    # "deleteDeps":Z
    .end local v13    # "deleteAID":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/AID;>;"
    .end local v15    # "capFileUrl":Ljava/net/URL;
    .end local v16    # "loadSize":I
    .end local v19    # "diver":I
    .end local v23    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .end local v29    # "apduMode":I
    .end local v30    # "gemalto":Z
    .end local v33    # "loadDebug":Z
    .end local v34    # "loadCompSep":Z
    .end local v36    # "loadParam":Z
    .end local v37    # "useHash":Z
    .end local v40    # "use_jcop_emulator":Z
    .end local v41    # "listApplets":Z
    .end local p0    # "args":[Ljava/lang/String;
    .end local p1    # "terminal":Ljavax/smartcardio/CardTerminal;
    throw v0

    .line 1574
    .end local v4    # "aid":[B
    .restart local v6    # "keySet":I
    .restart local v7    # "keys":[[B
    .restart local v11    # "sdAID":Lnet/sourceforge/gpj/cardservices/AID;
    .restart local v12    # "deleteDeps":Z
    .restart local v13    # "deleteAID":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/AID;>;"
    .restart local v15    # "capFileUrl":Ljava/net/URL;
    .restart local v16    # "loadSize":I
    .restart local v19    # "diver":I
    .restart local v23    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v29    # "apduMode":I
    .restart local v30    # "gemalto":Z
    .restart local v33    # "loadDebug":Z
    .restart local v34    # "loadCompSep":Z
    .restart local v36    # "loadParam":Z
    .restart local v37    # "useHash":Z
    .restart local v40    # "use_jcop_emulator":Z
    .restart local v41    # "listApplets":Z
    .restart local p0    # "args":[Ljava/lang/String;
    .restart local p1    # "terminal":Ljavax/smartcardio/CardTerminal;
    :cond_1d
    aget-object v0, p0, v18

    const-string v1, "-package"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1575
    add-int/lit8 v0, v18, 0x1

    .line 1576
    .end local v18    # "i":I
    .restart local v0    # "i":I
    aget-object v1, p0, v0

    invoke-static {v1}, Lnet/sourceforge/gpj/cardservices/GPUtil;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 1577
    .local v1, "aid":[B
    if-nez v1, :cond_1e

    .line 1578
    aget-object v4, p0, v0

    invoke-static {v4}, Lnet/sourceforge/gpj/cardservices/GPUtil;->readableStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    move-object v1, v4

    .line 1580
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    .line 1581
    if-eqz v1, :cond_1f

    .line 1585
    new-instance v4, Lnet/sourceforge/gpj/cardservices/AID;

    invoke-direct {v4, v1}, Lnet/sourceforge/gpj/cardservices/AID;-><init>([B)V

    move-object v14, v4

    .line 1586
    const/4 v8, 0x2

    .line 1587
    .end local v1    # "aid":[B
    move-object/from16 v1, p0

    move/from16 v4, v41

    goto :goto_3

    .line 1582
    .restart local v1    # "aid":[B
    :cond_1f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move/from16 v18, v0

    .end local v0    # "i":I
    .restart local v18    # "i":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v9, p0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v6    # "keySet":I
    .end local v7    # "keys":[[B
    .end local v11    # "sdAID":Lnet/sourceforge/gpj/cardservices/AID;
    .end local v12    # "deleteDeps":Z
    .end local v13    # "deleteAID":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/AID;>;"
    .end local v15    # "capFileUrl":Ljava/net/URL;
    .end local v16    # "loadSize":I
    .end local v19    # "diver":I
    .end local v23    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .end local v29    # "apduMode":I
    .end local v30    # "gemalto":Z
    .end local v33    # "loadDebug":Z
    .end local v34    # "loadCompSep":Z
    .end local v36    # "loadParam":Z
    .end local v37    # "useHash":Z
    .end local v40    # "use_jcop_emulator":Z
    .end local v41    # "listApplets":Z
    .end local p0    # "args":[Ljava/lang/String;
    .end local p1    # "terminal":Ljavax/smartcardio/CardTerminal;
    throw v4

    .line 1587
    .end local v1    # "aid":[B
    .restart local v6    # "keySet":I
    .restart local v7    # "keys":[[B
    .restart local v11    # "sdAID":Lnet/sourceforge/gpj/cardservices/AID;
    .restart local v12    # "deleteDeps":Z
    .restart local v13    # "deleteAID":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/AID;>;"
    .restart local v15    # "capFileUrl":Ljava/net/URL;
    .restart local v16    # "loadSize":I
    .restart local v19    # "diver":I
    .restart local v23    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v29    # "apduMode":I
    .restart local v30    # "gemalto":Z
    .restart local v33    # "loadDebug":Z
    .restart local v34    # "loadCompSep":Z
    .restart local v36    # "loadParam":Z
    .restart local v37    # "useHash":Z
    .restart local v40    # "use_jcop_emulator":Z
    .restart local v41    # "listApplets":Z
    .restart local p0    # "args":[Ljava/lang/String;
    .restart local p1    # "terminal":Ljavax/smartcardio/CardTerminal;
    :cond_20
    aget-object v0, p0, v18

    const-string v1, "-priv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1588
    add-int/lit8 v0, v18, 0x1

    .line 1589
    .end local v18    # "i":I
    .restart local v0    # "i":I
    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v2, v1

    .line 1590
    add-int/lit8 v0, v0, 0x1

    .line 1591
    const/4 v8, 0x3

    move-object/from16 v1, p0

    move/from16 v4, v41

    goto/16 :goto_3

    .line 1592
    .end local v0    # "i":I
    .restart local v18    # "i":I
    :cond_21
    aget-object v0, p0, v18

    const-string v1, "-param"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1593
    add-int/lit8 v0, v18, 0x1

    .line 1594
    .end local v18    # "i":I
    .restart local v0    # "i":I
    aget-object v1, p0, v0

    invoke-static {v1}, Lnet/sourceforge/gpj/cardservices/GPUtil;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    move-object v3, v1

    .line 1595
    add-int/lit8 v0, v0, 0x1

    .line 1596
    if-eqz v3, :cond_22

    .line 1600
    const/4 v8, 0x4

    move-object/from16 v1, p0

    move/from16 v4, v41

    goto/16 :goto_3

    .line 1597
    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Malformed params: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v9, p0, v0

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v6    # "keySet":I
    .end local v7    # "keys":[[B
    .end local v11    # "sdAID":Lnet/sourceforge/gpj/cardservices/AID;
    .end local v12    # "deleteDeps":Z
    .end local v13    # "deleteAID":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/AID;>;"
    .end local v15    # "capFileUrl":Ljava/net/URL;
    .end local v16    # "loadSize":I
    .end local v19    # "diver":I
    .end local v23    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .end local v29    # "apduMode":I
    .end local v30    # "gemalto":Z
    .end local v33    # "loadDebug":Z
    .end local v34    # "loadCompSep":Z
    .end local v36    # "loadParam":Z
    .end local v37    # "useHash":Z
    .end local v40    # "use_jcop_emulator":Z
    .end local v41    # "listApplets":Z
    .end local p0    # "args":[Ljava/lang/String;
    .end local p1    # "terminal":Ljavax/smartcardio/CardTerminal;
    throw v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_7

    .line 1602
    .end local v0    # "i":I
    .restart local v6    # "keySet":I
    .restart local v7    # "keys":[[B
    .restart local v11    # "sdAID":Lnet/sourceforge/gpj/cardservices/AID;
    .restart local v12    # "deleteDeps":Z
    .restart local v13    # "deleteAID":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/AID;>;"
    .restart local v15    # "capFileUrl":Ljava/net/URL;
    .restart local v16    # "loadSize":I
    .restart local v18    # "i":I
    .restart local v19    # "diver":I
    .restart local v23    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v29    # "apduMode":I
    .restart local v30    # "gemalto":Z
    .restart local v33    # "loadDebug":Z
    .restart local v34    # "loadCompSep":Z
    .restart local v36    # "loadParam":Z
    .restart local v37    # "useHash":Z
    .restart local v40    # "use_jcop_emulator":Z
    .restart local v41    # "listApplets":Z
    .restart local p0    # "args":[Ljava/lang/String;
    .restart local p1    # "terminal":Ljavax/smartcardio/CardTerminal;
    :cond_23
    const/4 v8, 0x4

    .line 1603
    add-int/lit8 v0, v18, -0x1

    move-object/from16 v1, p0

    move/from16 v4, v41

    .end local v18    # "i":I
    .restart local v0    # "i":I
    goto/16 :goto_3

    .line 1645
    .end local v0    # "i":I
    .end local v2    # "priv":I
    .end local v3    # "param":[B
    .end local v5    # "totalOpts":I
    .end local v8    # "current":I
    .end local v10    # "appletAID":Lnet/sourceforge/gpj/cardservices/AID;
    .end local v14    # "packageAID":Lnet/sourceforge/gpj/cardservices/AID;
    :catch_7
    move-exception v0

    move-object/from16 v1, v23

    const/16 v9, 0x10

    goto/16 :goto_6

    .line 1560
    .restart local v0    # "i":I
    .restart local v2    # "priv":I
    .restart local v3    # "param":[B
    .restart local v5    # "totalOpts":I
    .restart local v8    # "current":I
    .restart local v10    # "appletAID":Lnet/sourceforge/gpj/cardservices/AID;
    .restart local v14    # "packageAID":Lnet/sourceforge/gpj/cardservices/AID;
    :cond_24
    move/from16 v18, v0

    .line 1606
    .end local v0    # "i":I
    .restart local v18    # "i":I
    :try_start_19
    new-instance v0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;

    invoke-direct {v0}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;-><init>()V

    .line 1607
    .local v0, "inst":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;
    iput-object v10, v0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;->appletAID:Lnet/sourceforge/gpj/cardservices/AID;

    .line 1608
    iput-object v14, v0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;->packageAID:Lnet/sourceforge/gpj/cardservices/AID;

    .line 1609
    iput v2, v0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;->priv:I

    .line 1610
    iput-object v3, v0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;->params:[B
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_8

    .line 1611
    move-object/from16 v1, v23

    .end local v23    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .local v1, "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    :try_start_1a
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1624
    move/from16 v0, v18

    move/from16 v4, v41

    .end local v0    # "inst":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;
    .end local v2    # "priv":I
    .end local v3    # "param":[B
    .end local v5    # "totalOpts":I
    .end local v8    # "current":I
    .end local v10    # "appletAID":Lnet/sourceforge/gpj/cardservices/AID;
    .end local v14    # "packageAID":Lnet/sourceforge/gpj/cardservices/AID;
    goto :goto_5

    .line 1645
    .end local v1    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .end local v18    # "i":I
    .restart local v23    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    :catch_8
    move-exception v0

    move-object/from16 v1, v23

    const/16 v9, 0x10

    .end local v23    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v1    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    goto/16 :goto_6

    .line 1625
    .end local v1    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .end local v40    # "use_jcop_emulator":Z
    .end local v41    # "listApplets":Z
    .local v0, "i":I
    .local v3, "use_jcop_emulator":Z
    .local v4, "listApplets":Z
    .restart local v23    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    :cond_25
    move-object/from16 v39, v2

    move/from16 v40, v3

    move/from16 v41, v4

    move-object/from16 v1, v23

    .end local v3    # "use_jcop_emulator":Z
    .end local v4    # "listApplets":Z
    .end local v23    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v1    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v40    # "use_jcop_emulator":Z
    .restart local v41    # "listApplets":Z
    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "-enc"

    aput-object v2, v3, v20

    const-string v2, "-mac"

    aput-object v2, v3, v22

    const-string v2, "-kek"

    aput-object v2, v3, v21

    .line 1626
    .local v3, "keysOpt":[Ljava/lang/String;
    const/4 v2, -0x1

    .line 1627
    .local v2, "index":I
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_4
    array-length v5, v3

    if-ge v4, v5, :cond_27

    .line 1628
    aget-object v5, p0, v0

    aget-object v8, v3, v4

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 1629
    move v2, v4

    .line 1627
    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1631
    .end local v4    # "k":I
    :cond_27
    if-ltz v2, :cond_2a

    .line 1632
    add-int/lit8 v0, v0, 0x1

    .line 1633
    aget-object v4, p0, v0

    invoke-static {v4}, Lnet/sourceforge/gpj/cardservices/GPUtil;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v7, v2

    .line 1634
    aget-object v4, v7, v2

    if-eqz v4, :cond_28

    aget-object v4, v7, v2

    array-length v4, v4
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_a

    const/16 v9, 0x10

    if-ne v4, v9, :cond_29

    move/from16 v4, v41

    .line 1461
    .end local v2    # "index":I
    .end local v3    # "keysOpt":[Ljava/lang/String;
    .end local v41    # "listApplets":Z
    .local v4, "listApplets":Z
    :goto_5
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v23, v1

    move-object/from16 v2, v39

    move/from16 v3, v40

    const/4 v5, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x2

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 1634
    .end local v4    # "listApplets":Z
    .restart local v2    # "index":I
    .restart local v3    # "keysOpt":[Ljava/lang/String;
    .restart local v41    # "listApplets":Z
    :cond_28
    const/16 v9, 0x10

    .line 1635
    :cond_29
    :try_start_1b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wrong "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v8, v3, v2

    .line 1636
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " key: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v8, p0, v0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .end local v6    # "keySet":I
    .end local v7    # "keys":[[B
    .end local v11    # "sdAID":Lnet/sourceforge/gpj/cardservices/AID;
    .end local v12    # "deleteDeps":Z
    .end local v13    # "deleteAID":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/AID;>;"
    .end local v15    # "capFileUrl":Ljava/net/URL;
    .end local v16    # "loadSize":I
    .end local v19    # "diver":I
    .end local v29    # "apduMode":I
    .end local v30    # "gemalto":Z
    .end local v33    # "loadDebug":Z
    .end local v34    # "loadCompSep":Z
    .end local v36    # "loadParam":Z
    .end local v37    # "useHash":Z
    .end local v40    # "use_jcop_emulator":Z
    .end local v41    # "listApplets":Z
    .end local p0    # "args":[Ljava/lang/String;
    .end local p1    # "terminal":Ljavax/smartcardio/CardTerminal;
    throw v4

    .line 1640
    .restart local v1    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v6    # "keySet":I
    .restart local v7    # "keys":[[B
    .restart local v11    # "sdAID":Lnet/sourceforge/gpj/cardservices/AID;
    .restart local v12    # "deleteDeps":Z
    .restart local v13    # "deleteAID":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/AID;>;"
    .restart local v15    # "capFileUrl":Ljava/net/URL;
    .restart local v16    # "loadSize":I
    .restart local v19    # "diver":I
    .restart local v29    # "apduMode":I
    .restart local v30    # "gemalto":Z
    .restart local v33    # "loadDebug":Z
    .restart local v34    # "loadCompSep":Z
    .restart local v36    # "loadParam":Z
    .restart local v37    # "useHash":Z
    .restart local v40    # "use_jcop_emulator":Z
    .restart local v41    # "listApplets":Z
    .restart local p0    # "args":[Ljava/lang/String;
    .restart local p1    # "terminal":Ljavax/smartcardio/CardTerminal;
    :cond_2a
    const/16 v9, 0x10

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown option: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v8, p0, v0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .end local v6    # "keySet":I
    .end local v7    # "keys":[[B
    .end local v11    # "sdAID":Lnet/sourceforge/gpj/cardservices/AID;
    .end local v12    # "deleteDeps":Z
    .end local v13    # "deleteAID":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/AID;>;"
    .end local v15    # "capFileUrl":Ljava/net/URL;
    .end local v16    # "loadSize":I
    .end local v19    # "diver":I
    .end local v29    # "apduMode":I
    .end local v30    # "gemalto":Z
    .end local v33    # "loadDebug":Z
    .end local v34    # "loadCompSep":Z
    .end local v36    # "loadParam":Z
    .end local v37    # "useHash":Z
    .end local v40    # "use_jcop_emulator":Z
    .end local v41    # "listApplets":Z
    .end local p0    # "args":[Ljava/lang/String;
    .end local p1    # "terminal":Ljavax/smartcardio/CardTerminal;
    throw v4
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_9

    .line 1645
    .end local v0    # "i":I
    .end local v2    # "index":I
    .end local v3    # "keysOpt":[Ljava/lang/String;
    .restart local v1    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v6    # "keySet":I
    .restart local v7    # "keys":[[B
    .restart local v11    # "sdAID":Lnet/sourceforge/gpj/cardservices/AID;
    .restart local v12    # "deleteDeps":Z
    .restart local v13    # "deleteAID":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/AID;>;"
    .restart local v15    # "capFileUrl":Ljava/net/URL;
    .restart local v16    # "loadSize":I
    .restart local v19    # "diver":I
    .restart local v29    # "apduMode":I
    .restart local v30    # "gemalto":Z
    .restart local v33    # "loadDebug":Z
    .restart local v34    # "loadCompSep":Z
    .restart local v36    # "loadParam":Z
    .restart local v37    # "useHash":Z
    .restart local v40    # "use_jcop_emulator":Z
    .restart local v41    # "listApplets":Z
    .restart local p0    # "args":[Ljava/lang/String;
    .restart local p1    # "terminal":Ljavax/smartcardio/CardTerminal;
    :catch_9
    move-exception v0

    goto :goto_6

    :catch_a
    move-exception v0

    const/16 v9, 0x10

    goto :goto_6

    .line 1461
    .end local v1    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .end local v40    # "use_jcop_emulator":Z
    .end local v41    # "listApplets":Z
    .restart local v0    # "i":I
    .local v3, "use_jcop_emulator":Z
    .restart local v4    # "listApplets":Z
    .restart local v23    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    :cond_2b
    move-object/from16 v39, v2

    move/from16 v40, v3

    move/from16 v41, v4

    move-object/from16 v1, v23

    const/16 v9, 0x10

    .line 1649
    .end local v0    # "i":I
    .end local v3    # "use_jcop_emulator":Z
    .end local v4    # "listApplets":Z
    .end local v23    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v1    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v40    # "use_jcop_emulator":Z
    .restart local v41    # "listApplets":Z
    move-object v2, v15

    move/from16 v3, v16

    move v15, v6

    goto :goto_7

    .line 1645
    .end local v1    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .end local v40    # "use_jcop_emulator":Z
    .end local v41    # "listApplets":Z
    .restart local v3    # "use_jcop_emulator":Z
    .restart local v4    # "listApplets":Z
    .restart local v23    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    :catch_b
    move-exception v0

    move-object/from16 v39, v2

    move/from16 v40, v3

    move/from16 v41, v4

    move-object/from16 v1, v23

    const/16 v9, 0x10

    .line 1646
    .end local v3    # "use_jcop_emulator":Z
    .end local v4    # "listApplets":Z
    .end local v23    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v40    # "use_jcop_emulator":Z
    .restart local v41    # "listApplets":Z
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1647
    invoke-static {}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->usage()V

    .line 1648
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/System;->exit(I)V

    move-object v2, v15

    move/from16 v3, v16

    move v15, v6

    .line 1650
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "keySet":I
    .end local v16    # "loadSize":I
    .local v2, "capFileUrl":Ljava/net/URL;
    .local v3, "loadSize":I
    .local v15, "keySet":I
    :goto_7
    const/4 v4, 0x0

    .line 1654
    .local v4, "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    const/4 v5, 0x0

    .line 1656
    .local v5, "c":Ljavax/smartcardio/Card;
    :try_start_1c
    const-string v0, "*"
    :try_end_1c
    .catch Ljavax/smartcardio/CardException; {:try_start_1c .. :try_end_1c} :catch_f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_e

    move-object/from16 v6, p1

    :try_start_1d
    invoke-virtual {v6, v0}, Ljavax/smartcardio/CardTerminal;->connect(Ljava/lang/String;)Ljavax/smartcardio/Card;

    move-result-object v0
    :try_end_1d
    .catch Ljavax/smartcardio/CardException; {:try_start_1d .. :try_end_1d} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_c

    move-object v5, v0

    .line 1663
    goto :goto_a

    .line 1764
    .end local v5    # "c":Ljavax/smartcardio/Card;
    :catch_c
    move-exception v0

    goto :goto_8

    .line 1657
    .restart local v5    # "c":Ljavax/smartcardio/Card;
    :catch_d
    move-exception v0

    goto :goto_9

    .line 1764
    .end local v5    # "c":Ljavax/smartcardio/Card;
    :catch_e
    move-exception v0

    move-object/from16 v6, p1

    :goto_8
    move-object/from16 v17, v1

    move-object/from16 v24, v2

    goto/16 :goto_1b

    .line 1657
    .restart local v5    # "c":Ljavax/smartcardio/Card;
    :catch_f
    move-exception v0

    move-object/from16 v6, p1

    .line 1658
    .local v0, "e":Ljavax/smartcardio/CardException;
    :goto_9
    :try_start_1e
    invoke-virtual {v0}, Ljavax/smartcardio/CardException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    const-string v10, "SCARD_E_NO_SMARTCARD"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1e

    if-eqz v8, :cond_2c

    .line 1659
    :try_start_1f
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No card in reader "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljavax/smartcardio/CardTerminal;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_c

    goto :goto_a

    .line 1662
    :cond_2c
    :try_start_20
    invoke-virtual {v0}, Ljavax/smartcardio/CardException;->printStackTrace()V

    .line 1665
    .end local v0    # "e":Ljavax/smartcardio/CardException;
    :goto_a
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found card in terminal: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1666
    invoke-virtual {v6}, Ljavax/smartcardio/CardTerminal;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1665
    invoke-virtual {v0, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1667
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ATR: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1668
    invoke-virtual {v5}, Ljavax/smartcardio/Card;->getATR()Ljavax/smartcardio/ATR;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/smartcardio/ATR;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lnet/sourceforge/gpj/cardservices/GPUtil;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1667
    invoke-virtual {v0, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1669
    invoke-virtual {v5}, Ljavax/smartcardio/Card;->getBasicChannel()Ljavax/smartcardio/CardChannel;

    move-result-object v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1e

    move-object v8, v0

    .line 1670
    .local v8, "channel":Ljavax/smartcardio/CardChannel;
    if-nez v11, :cond_2d

    :try_start_21
    new-instance v0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;

    invoke-direct {v0, v8}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;-><init>(Ljavax/smartcardio/CardChannel;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_c

    move-object v14, v0

    goto :goto_b

    .line 1672
    :cond_2d
    :try_start_22
    new-instance v0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;

    invoke-direct {v0, v11, v8}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;-><init>(Lnet/sourceforge/gpj/cardservices/AID;Ljavax/smartcardio/CardChannel;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_1e

    move-object v14, v0

    :goto_b
    nop

    .line 1673
    .end local v4    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .local v14, "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    :try_start_23
    invoke-virtual {v14, v14}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->addAPDUListener(Lnet/sourceforge/gpj/cardservices/APDUListener;)V

    .line 1674
    invoke-virtual {v14}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->open()V

    .line 1675
    aget-object v16, v7, v20

    const/16 v4, 0xff

    const/16 v22, 0x1

    aget-object v17, v7, v22

    aget-object v18, v7, v21
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_1d

    move/from16 v4, v29

    const/16 v10, 0xff

    .end local v29    # "apduMode":I
    .local v4, "apduMode":I
    :try_start_24
    invoke-virtual/range {v14 .. v19}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->setKeys(I[B[B[BI)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_1c

    move-object/from16 v42, v14

    .line 1678
    .end local v14    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .local v42, "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    if-nez v4, :cond_2e

    const/4 v0, 0x0

    goto :goto_c

    .line 1679
    :cond_2e
    const/4 v14, 0x1

    if-ne v4, v14, :cond_2f

    const/16 v0, 0x8

    goto :goto_c

    :cond_2f
    const/16 v0, 0x10

    :goto_c
    move v9, v0

    .line 1680
    .local v9, "neededExtraSize":I
    add-int v0, v3, v9

    if-le v0, v10, :cond_30

    .line 1681
    sub-int/2addr v3, v9

    move/from16 v35, v3

    goto :goto_d

    .line 1680
    :cond_30
    move/from16 v35, v3

    .line 1683
    .end local v3    # "loadSize":I
    .local v35, "loadSize":I
    :goto_d
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v26, 0x0

    move/from16 v29, v4

    move/from16 v25, v15

    move-object/from16 v24, v42

    .end local v4    # "apduMode":I
    .end local v15    # "keySet":I
    .end local v42    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .local v24, "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .local v25, "keySet":I
    .restart local v29    # "apduMode":I
    :try_start_25
    invoke-virtual/range {v24 .. v30}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->openSecureChannel(IIIIIZ)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_1b

    move-object/from16 v14, v24

    .line 1687
    .end local v24    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .end local v25    # "keySet":I
    .restart local v14    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .restart local v15    # "keySet":I
    :try_start_26
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_1a

    if-lez v0, :cond_32

    .line 1688
    :try_start_27
    invoke-virtual {v13}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/gpj/cardservices/AID;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_13

    move-object v4, v0

    .line 1690
    .local v4, "aid":Lnet/sourceforge/gpj/cardservices/AID;
    :try_start_28
    invoke-virtual {v14, v4, v12}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->deleteAID(Lnet/sourceforge/gpj/cardservices/AID;Z)V
    :try_end_28
    .catch Ljavax/smartcardio/CardException; {:try_start_28 .. :try_end_28} :catch_11
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_10

    .line 1695
    move-object/from16 v17, v1

    goto :goto_f

    .line 1764
    .end local v4    # "aid":Lnet/sourceforge/gpj/cardservices/AID;
    .end local v5    # "c":Ljavax/smartcardio/Card;
    .end local v8    # "channel":Ljavax/smartcardio/CardChannel;
    .end local v9    # "neededExtraSize":I
    :catch_10
    move-exception v0

    move-object/from16 v17, v1

    move-object/from16 v24, v2

    move-object v4, v14

    move/from16 v3, v35

    goto/16 :goto_1b

    .line 1691
    .restart local v4    # "aid":Lnet/sourceforge/gpj/cardservices/AID;
    .restart local v5    # "c":Ljavax/smartcardio/Card;
    .restart local v8    # "channel":Ljavax/smartcardio/CardChannel;
    .restart local v9    # "neededExtraSize":I
    :catch_11
    move-exception v0

    .line 1692
    .local v0, "ce":Ljavax/smartcardio/CardException;
    :try_start_29
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v16, v0

    .end local v0    # "ce":Ljavax/smartcardio/CardException;
    .local v16, "ce":Ljavax/smartcardio/CardException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_13

    move-object/from16 v17, v1

    .end local v1    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .local v17, "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    :try_start_2a
    const-string v1, "Could not delete AID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_12

    .line 1696
    .end local v4    # "aid":Lnet/sourceforge/gpj/cardservices/AID;
    .end local v16    # "ce":Ljavax/smartcardio/CardException;
    :goto_f
    move-object/from16 v1, v17

    goto :goto_e

    .line 1764
    .end local v5    # "c":Ljavax/smartcardio/Card;
    .end local v8    # "channel":Ljavax/smartcardio/CardChannel;
    .end local v9    # "neededExtraSize":I
    :catch_12
    move-exception v0

    move-object/from16 v24, v2

    move-object v4, v14

    move/from16 v3, v35

    goto/16 :goto_1b

    .line 1688
    .end local v17    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v1    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v5    # "c":Ljavax/smartcardio/Card;
    .restart local v8    # "channel":Ljavax/smartcardio/CardChannel;
    .restart local v9    # "neededExtraSize":I
    :cond_31
    move-object/from16 v17, v1

    .end local v1    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v17    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    goto :goto_10

    .line 1764
    .end local v5    # "c":Ljavax/smartcardio/Card;
    .end local v8    # "channel":Ljavax/smartcardio/CardChannel;
    .end local v9    # "neededExtraSize":I
    .end local v17    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v1    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    :catch_13
    move-exception v0

    move-object/from16 v17, v1

    move-object/from16 v24, v2

    move-object v4, v14

    move/from16 v3, v35

    .end local v1    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v17    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    goto/16 :goto_1b

    .line 1687
    .end local v17    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v1    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v5    # "c":Ljavax/smartcardio/Card;
    .restart local v8    # "channel":Ljavax/smartcardio/CardChannel;
    .restart local v9    # "neededExtraSize":I
    :cond_32
    move-object/from16 v17, v1

    .line 1698
    .end local v1    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v17    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    :goto_10
    const/4 v0, 0x0

    .line 1700
    .local v0, "cap":Lnet/sourceforge/gpj/cardservices/CapFile;
    if-eqz v2, :cond_33

    .line 1701
    :try_start_2b
    new-instance v1, Lnet/sourceforge/gpj/cardservices/CapFile;

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Lnet/sourceforge/gpj/cardservices/CapFile;-><init>(Ljava/io/InputStream;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_15

    move-object/from16 v32, v1

    .line 1702
    .end local v0    # "cap":Lnet/sourceforge/gpj/cardservices/CapFile;
    .local v32, "cap":Lnet/sourceforge/gpj/cardservices/CapFile;
    move-object/from16 v31, v14

    .end local v14    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .local v31, "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    :try_start_2c
    invoke-virtual/range {v31 .. v37}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->loadCapFile(Lnet/sourceforge/gpj/cardservices/CapFile;ZZIZZ)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_14

    move-object/from16 v42, v31

    .end local v31    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .restart local v42    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    move-object/from16 v0, v32

    goto :goto_11

    .line 1764
    .end local v5    # "c":Ljavax/smartcardio/Card;
    .end local v8    # "channel":Ljavax/smartcardio/CardChannel;
    .end local v9    # "neededExtraSize":I
    .end local v32    # "cap":Lnet/sourceforge/gpj/cardservices/CapFile;
    .end local v42    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .restart local v31    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    :catch_14
    move-exception v0

    move-object/from16 v42, v31

    move-object/from16 v24, v2

    move/from16 v3, v35

    move-object/from16 v4, v42

    .end local v31    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .restart local v42    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    goto/16 :goto_1b

    .end local v42    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .restart local v14    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    :catch_15
    move-exception v0

    move-object/from16 v42, v14

    move-object/from16 v24, v2

    move/from16 v3, v35

    move-object/from16 v4, v42

    .end local v14    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .restart local v42    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    goto/16 :goto_1b

    .line 1700
    .end local v42    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .restart local v0    # "cap":Lnet/sourceforge/gpj/cardservices/CapFile;
    .restart local v5    # "c":Ljavax/smartcardio/Card;
    .restart local v8    # "channel":Ljavax/smartcardio/CardChannel;
    .restart local v9    # "neededExtraSize":I
    .restart local v14    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    :cond_33
    move-object/from16 v42, v14

    .line 1706
    .end local v14    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .restart local v42    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    :goto_11
    :try_start_2d
    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v1
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_19

    if-lez v1, :cond_37

    .line 1707
    :try_start_2e
    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;

    .line 1708
    .local v3, "install":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;
    iget-object v4, v3, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;->appletAID:Lnet/sourceforge/gpj/cardservices/AID;

    if-nez v4, :cond_35

    .line 1709
    invoke-virtual {v0}, Lnet/sourceforge/gpj/cardservices/CapFile;->getPackageAID()Lnet/sourceforge/gpj/cardservices/AID;

    move-result-object v43

    .line 1710
    .local v43, "p":Lnet/sourceforge/gpj/cardservices/AID;
    invoke-virtual {v0}, Lnet/sourceforge/gpj/cardservices/CapFile;->getAppletAIDs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v44, v10

    check-cast v44, Lnet/sourceforge/gpj/cardservices/AID;

    .line 1711
    .local v44, "a":Lnet/sourceforge/gpj/cardservices/AID;
    iget v10, v3, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;->priv:I

    int-to-byte v10, v10

    iget-object v14, v3, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;->params:[B

    const/16 v48, 0x0

    const/16 v45, 0x0

    move/from16 v46, v10

    move-object/from16 v47, v14

    invoke-virtual/range {v42 .. v48}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->installAndMakeSelecatable(Lnet/sourceforge/gpj/cardservices/AID;Lnet/sourceforge/gpj/cardservices/AID;Lnet/sourceforge/gpj/cardservices/AID;B[B[B)V

    .line 1714
    .end local v44    # "a":Lnet/sourceforge/gpj/cardservices/AID;
    goto :goto_13

    .line 1715
    .end local v43    # "p":Lnet/sourceforge/gpj/cardservices/AID;
    :cond_34
    move-object/from16 v16, v0

    goto :goto_14

    .line 1716
    :cond_35
    iget-object v4, v3, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;->packageAID:Lnet/sourceforge/gpj/cardservices/AID;

    iget-object v10, v3, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;->appletAID:Lnet/sourceforge/gpj/cardservices/AID;

    iget v14, v3, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;->priv:I

    int-to-byte v14, v14

    move-object/from16 v16, v0

    .end local v0    # "cap":Lnet/sourceforge/gpj/cardservices/CapFile;
    .local v16, "cap":Lnet/sourceforge/gpj/cardservices/CapFile;
    iget-object v0, v3, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;->params:[B

    const/16 v48, 0x0

    const/16 v45, 0x0

    move-object/from16 v47, v0

    move-object/from16 v43, v4

    move-object/from16 v44, v10

    move/from16 v46, v14

    invoke-virtual/range {v42 .. v48}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->installAndMakeSelecatable(Lnet/sourceforge/gpj/cardservices/AID;Lnet/sourceforge/gpj/cardservices/AID;Lnet/sourceforge/gpj/cardservices/AID;B[B[B)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_16

    .line 1722
    .end local v3    # "install":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;
    :goto_14
    move-object/from16 v0, v16

    goto :goto_12

    .line 1707
    .end local v16    # "cap":Lnet/sourceforge/gpj/cardservices/CapFile;
    .restart local v0    # "cap":Lnet/sourceforge/gpj/cardservices/CapFile;
    :cond_36
    move-object/from16 v16, v0

    .end local v0    # "cap":Lnet/sourceforge/gpj/cardservices/CapFile;
    .restart local v16    # "cap":Lnet/sourceforge/gpj/cardservices/CapFile;
    goto :goto_15

    .line 1764
    .end local v5    # "c":Ljavax/smartcardio/Card;
    .end local v8    # "channel":Ljavax/smartcardio/CardChannel;
    .end local v9    # "neededExtraSize":I
    .end local v16    # "cap":Lnet/sourceforge/gpj/cardservices/CapFile;
    :catch_16
    move-exception v0

    move-object/from16 v24, v2

    move/from16 v3, v35

    move-object/from16 v4, v42

    goto/16 :goto_1b

    .line 1706
    .restart local v0    # "cap":Lnet/sourceforge/gpj/cardservices/CapFile;
    .restart local v5    # "c":Ljavax/smartcardio/Card;
    .restart local v8    # "channel":Ljavax/smartcardio/CardChannel;
    .restart local v9    # "neededExtraSize":I
    :cond_37
    move-object/from16 v16, v0

    .line 1725
    .end local v0    # "cap":Lnet/sourceforge/gpj/cardservices/CapFile;
    .restart local v16    # "cap":Lnet/sourceforge/gpj/cardservices/CapFile;
    :goto_15
    if-eqz v41, :cond_3c

    .line 1726
    :try_start_2f
    invoke-virtual/range {v42 .. v42}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->getStatus()Lnet/sourceforge/gpj/cardservices/AIDRegistry;

    move-result-object v0

    .line 1727
    .local v0, "registry":Lnet/sourceforge/gpj/cardservices/AIDRegistry;
    invoke-virtual {v0}, Lnet/sourceforge/gpj/cardservices/AIDRegistry;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;

    .line 1728
    .local v3, "e":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    invoke-virtual {v3}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getAID()Lnet/sourceforge/gpj/cardservices/AID;

    move-result-object v4

    .line 1729
    .restart local v4    # "aid":Lnet/sourceforge/gpj/cardservices/AID;
    invoke-virtual {v4}, Lnet/sourceforge/gpj/cardservices/AID;->getLength()I

    move-result v10
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_19

    rsub-int/lit8 v10, v10, 0xf

    .line 1730
    .local v10, "numSpaces":I
    move-object/from16 v14, v39

    .line 1731
    .local v14, "spaces":Ljava/lang/String;
    move-object/from16 v18, v39

    .line 1732
    .local v18, "spaces2":Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v49, v18

    move-object/from16 v18, v0

    move-object/from16 v0, v49

    move/from16 v49, v23

    move-object/from16 v23, v1

    move/from16 v1, v49

    .local v0, "spaces2":Ljava/lang/String;
    .local v1, "i":I
    .local v18, "registry":Lnet/sourceforge/gpj/cardservices/AIDRegistry;
    :goto_17
    move-object/from16 v24, v2

    .end local v2    # "capFileUrl":Ljava/net/URL;
    .local v24, "capFileUrl":Ljava/net/URL;
    const-string v2, " "

    if-ge v1, v10, :cond_38

    .line 1733
    move/from16 v25, v1

    .end local v1    # "i":I
    .local v25, "i":I
    :try_start_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v26, v3

    .end local v3    # "e":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    .local v26, "e":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    const-string v3, "   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    .line 1734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1732
    add-int/lit8 v1, v25, 0x1

    move-object/from16 v2, v24

    move-object/from16 v3, v26

    .end local v25    # "i":I
    .restart local v1    # "i":I
    goto :goto_17

    .end local v26    # "e":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    .restart local v3    # "e":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    :cond_38
    move/from16 v25, v1

    move-object/from16 v26, v3

    .line 1736
    .end local v1    # "i":I
    .end local v3    # "e":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    .restart local v26    # "e":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v4

    .end local v4    # "aid":Lnet/sourceforge/gpj/cardservices/AID;
    .local v25, "aid":Lnet/sourceforge/gpj/cardservices/AID;
    const-string v4, "AID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1737
    invoke-virtual/range {v25 .. v25}, Lnet/sourceforge/gpj/cardservices/AID;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lnet/sourceforge/gpj/cardservices/GPUtil;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1741
    invoke-virtual/range {v25 .. v25}, Lnet/sourceforge/gpj/cardservices/AID;->getBytes()[B

    move-result-object v4

    .line 1740
    invoke-static {v4}, Lnet/sourceforge/gpj/cardservices/GPUtil;->byteArrayToReadableString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1736
    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1742
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " %s LC: %d PR: 0x%02X\n"

    .line 1743
    invoke-virtual/range {v26 .. v26}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getKind()Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->toShortString()Ljava/lang/String;

    move-result-object v4

    .line 1744
    invoke-virtual/range {v26 .. v26}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getLifeCycleState()I

    move-result v27

    .line 1743
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 1744
    invoke-virtual/range {v26 .. v26}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getPrivileges()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_18

    move-object/from16 v32, v0

    move-object/from16 v31, v4

    const/4 v4, 0x3

    .end local v0    # "spaces2":Ljava/lang/String;
    .local v32, "spaces2":Ljava/lang/String;
    :try_start_31
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v31, v0, v20

    const/16 v22, 0x1

    aput-object v27, v0, v22

    aput-object v28, v0, v21
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_17

    .line 1742
    :try_start_32
    invoke-virtual {v1, v3, v0}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1745
    invoke-virtual/range {v26 .. v26}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getExecutableAIDs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sourceforge/gpj/cardservices/AID;

    .line 1746
    .local v1, "a":Lnet/sourceforge/gpj/cardservices/AID;
    invoke-virtual {v1}, Lnet/sourceforge/gpj/cardservices/AID;->getLength()I

    move-result v3

    rsub-int/lit8 v3, v3, 0xf

    const/16 v38, 0x3

    mul-int/lit8 v10, v3, 0x3

    .line 1747
    move-object/from16 v3, v39

    .line 1748
    .end local v14    # "spaces":Ljava/lang/String;
    .local v3, "spaces":Ljava/lang/String;
    const/4 v4, 0x0

    move-object v14, v3

    .end local v3    # "spaces":Ljava/lang/String;
    .local v4, "i":I
    .restart local v14    # "spaces":Ljava/lang/String;
    :goto_19
    if-ge v4, v10, :cond_39

    .line 1749
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    .line 1748
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 1750
    .end local v4    # "i":I
    :cond_39
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v0

    const-string v0, "     "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1753
    invoke-virtual {v1}, Lnet/sourceforge/gpj/cardservices/AID;->getBytes()[B

    move-result-object v4

    .line 1752
    invoke-static {v4}, Lnet/sourceforge/gpj/cardservices/GPUtil;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1758
    invoke-virtual {v1}, Lnet/sourceforge/gpj/cardservices/AID;->getBytes()[B

    move-result-object v4

    .line 1757
    invoke-static {v4}, Lnet/sourceforge/gpj/cardservices/GPUtil;->byteArrayToReadableString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1751
    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1759
    .end local v1    # "a":Lnet/sourceforge/gpj/cardservices/AID;
    move-object/from16 v0, v27

    goto :goto_18

    .line 1760
    :cond_3a
    const/16 v38, 0x3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_18

    .line 1761
    .end local v10    # "numSpaces":I
    .end local v14    # "spaces":Ljava/lang/String;
    .end local v25    # "aid":Lnet/sourceforge/gpj/cardservices/AID;
    .end local v26    # "e":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    .end local v32    # "spaces2":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    goto/16 :goto_16

    .line 1764
    .end local v5    # "c":Ljavax/smartcardio/Card;
    .end local v8    # "channel":Ljavax/smartcardio/CardChannel;
    .end local v9    # "neededExtraSize":I
    .end local v16    # "cap":Lnet/sourceforge/gpj/cardservices/CapFile;
    .end local v18    # "registry":Lnet/sourceforge/gpj/cardservices/AIDRegistry;
    :catch_17
    move-exception v0

    move/from16 v3, v35

    move-object/from16 v4, v42

    goto :goto_1b

    :catch_18
    move-exception v0

    move/from16 v3, v35

    move-object/from16 v4, v42

    goto :goto_1b

    .line 1727
    .end local v24    # "capFileUrl":Ljava/net/URL;
    .local v0, "registry":Lnet/sourceforge/gpj/cardservices/AIDRegistry;
    .restart local v2    # "capFileUrl":Ljava/net/URL;
    .restart local v5    # "c":Ljavax/smartcardio/Card;
    .restart local v8    # "channel":Ljavax/smartcardio/CardChannel;
    .restart local v9    # "neededExtraSize":I
    .restart local v16    # "cap":Lnet/sourceforge/gpj/cardservices/CapFile;
    :cond_3b
    move-object/from16 v18, v0

    move-object/from16 v24, v2

    .end local v0    # "registry":Lnet/sourceforge/gpj/cardservices/AIDRegistry;
    .end local v2    # "capFileUrl":Ljava/net/URL;
    .restart local v18    # "registry":Lnet/sourceforge/gpj/cardservices/AIDRegistry;
    .restart local v24    # "capFileUrl":Ljava/net/URL;
    goto :goto_1a

    .line 1725
    .end local v18    # "registry":Lnet/sourceforge/gpj/cardservices/AIDRegistry;
    .end local v24    # "capFileUrl":Ljava/net/URL;
    .restart local v2    # "capFileUrl":Ljava/net/URL;
    :cond_3c
    move-object/from16 v24, v2

    .line 1766
    .end local v2    # "capFileUrl":Ljava/net/URL;
    .end local v5    # "c":Ljavax/smartcardio/Card;
    .end local v8    # "channel":Ljavax/smartcardio/CardChannel;
    .end local v9    # "neededExtraSize":I
    .end local v16    # "cap":Lnet/sourceforge/gpj/cardservices/CapFile;
    .restart local v24    # "capFileUrl":Ljava/net/URL;
    :goto_1a
    move-object/from16 v14, v42

    goto :goto_1c

    .line 1764
    .end local v24    # "capFileUrl":Ljava/net/URL;
    .restart local v2    # "capFileUrl":Ljava/net/URL;
    :catch_19
    move-exception v0

    move-object/from16 v24, v2

    move/from16 v3, v35

    move-object/from16 v4, v42

    .end local v2    # "capFileUrl":Ljava/net/URL;
    .restart local v24    # "capFileUrl":Ljava/net/URL;
    goto :goto_1b

    .end local v17    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .end local v24    # "capFileUrl":Ljava/net/URL;
    .end local v42    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .local v1, "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v2    # "capFileUrl":Ljava/net/URL;
    .local v14, "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    :catch_1a
    move-exception v0

    move-object/from16 v17, v1

    move-object/from16 v24, v2

    move-object/from16 v42, v14

    move/from16 v3, v35

    move-object/from16 v4, v42

    .end local v1    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .end local v2    # "capFileUrl":Ljava/net/URL;
    .end local v14    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .restart local v17    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v24    # "capFileUrl":Ljava/net/URL;
    .restart local v42    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    goto :goto_1b

    .end local v15    # "keySet":I
    .end local v17    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .end local v42    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .restart local v1    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v2    # "capFileUrl":Ljava/net/URL;
    .local v24, "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .local v25, "keySet":I
    :catch_1b
    move-exception v0

    move-object/from16 v17, v1

    move-object/from16 v42, v24

    move/from16 v15, v25

    move-object/from16 v24, v2

    move/from16 v3, v35

    move-object/from16 v4, v42

    .end local v1    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .end local v2    # "capFileUrl":Ljava/net/URL;
    .end local v25    # "keySet":I
    .restart local v15    # "keySet":I
    .restart local v17    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .local v24, "capFileUrl":Ljava/net/URL;
    .restart local v42    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    goto :goto_1b

    .end local v17    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .end local v24    # "capFileUrl":Ljava/net/URL;
    .end local v29    # "apduMode":I
    .end local v35    # "loadSize":I
    .end local v42    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .restart local v1    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v2    # "capFileUrl":Ljava/net/URL;
    .local v3, "loadSize":I
    .local v4, "apduMode":I
    .restart local v14    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    :catch_1c
    move-exception v0

    move-object/from16 v17, v1

    move-object/from16 v24, v2

    move/from16 v29, v4

    move-object/from16 v42, v14

    move-object/from16 v4, v42

    .end local v1    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .end local v2    # "capFileUrl":Ljava/net/URL;
    .end local v4    # "apduMode":I
    .end local v14    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .restart local v17    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v24    # "capFileUrl":Ljava/net/URL;
    .restart local v29    # "apduMode":I
    .restart local v42    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    goto :goto_1b

    .end local v17    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .end local v24    # "capFileUrl":Ljava/net/URL;
    .end local v42    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .restart local v1    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v2    # "capFileUrl":Ljava/net/URL;
    .restart local v14    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    :catch_1d
    move-exception v0

    move-object/from16 v17, v1

    move-object/from16 v24, v2

    move-object/from16 v42, v14

    move-object/from16 v4, v42

    .end local v1    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .end local v2    # "capFileUrl":Ljava/net/URL;
    .end local v14    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .restart local v17    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v24    # "capFileUrl":Ljava/net/URL;
    .restart local v42    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    goto :goto_1b

    .end local v17    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .end local v24    # "capFileUrl":Ljava/net/URL;
    .end local v42    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .restart local v1    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v2    # "capFileUrl":Ljava/net/URL;
    .local v4, "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    :catch_1e
    move-exception v0

    move-object/from16 v17, v1

    move-object/from16 v24, v2

    .line 1765
    .end local v1    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .end local v2    # "capFileUrl":Ljava/net/URL;
    .local v0, "ce":Ljava/lang/Exception;
    .restart local v17    # "installs":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;>;"
    .restart local v24    # "capFileUrl":Ljava/net/URL;
    :goto_1b
    :try_start_33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_1f

    move/from16 v35, v3

    move-object v14, v4

    .line 1772
    .end local v0    # "ce":Ljava/lang/Exception;
    .end local v3    # "loadSize":I
    .end local v4    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .restart local v14    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .restart local v35    # "loadSize":I
    :goto_1c
    move-object v4, v14

    move/from16 v3, v35

    goto :goto_1d

    .line 1768
    .end local v14    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .end local v35    # "loadSize":I
    .restart local v3    # "loadSize":I
    .restart local v4    # "service":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    :catch_1f
    move-exception v0

    .line 1769
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1770
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x1

    new-array v5, v14, [Ljava/lang/Object;

    aput-object v2, v5, v20

    .line 1769
    const-string v2, "Terminated by escaping exception %s\n"

    invoke-virtual {v1, v2, v5}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1771
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1773
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1d
    return-object v4
.end method

.method public static usage()V
    .locals 3

    .line 1352
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Usage:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1353
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1354
    const-string v1, "  java cardservices.GlobalPlatformService <options>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1355
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1356
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Options:\n"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1357
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1358
    const-string v2, " -sdaid <aid>      Security Domain AID, default a000000003000000"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1359
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " -keyset <num>     use key set <num>, default 0"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1360
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " -mode <apduMode>  use APDU mode, CLR, MAC, or ENC, default CLR"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1361
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1362
    const-string v2, " -enc <key>        define ENC key, default: 40..4F"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1363
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1364
    const-string v2, " -mac <key>        define MAC key, default: 40..4F"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1365
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1366
    const-string v2, " -kek <key>        define KEK key, default: 40..4F"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1367
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1368
    const-string v2, " -GemaltoXpressPro use special VISA2 key diversification for GemaltoXpressPro cards"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1369
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1370
    const-string v2, "                   uses predifined Gemalto mother key if not stated otherwise"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1371
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1372
    const-string v2, "                   with -enc/-mac/-kek AFTER this option"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1373
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1374
    const-string v2, " -visa2            use VISA2 key diversification (only key set 0), default off"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1375
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1376
    const-string v2, " -emv              use EMV key diversification (only key set 0), default off"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1377
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1378
    const-string v2, " -deletedeps       also delete depending packages/applets, default off"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1379
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " -delete <aid>     delete package/applet"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1380
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " -load <cap>       load <cap> file to the card, <cap> can be file name or URL"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1381
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " -loadsize <num>   load block size, default 255"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1383
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1384
    const-string v2, " -loadsep          load CAP components separately, default off"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1385
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1386
    const-string v2, " -loaddebug        load the Debug & Descriptor component, default off"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1387
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1388
    const-string v2, " -loadparam        set install for load code size parameter"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1389
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1390
    const-string v2, "                      (e.g. for CyberFlex cards), default off"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1391
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " -loadhash         check code hash during loading"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1392
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " -install          install applet:"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1393
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1394
    const-string v2, "   -applet <aid>   applet AID, default: take all AIDs from the CAP file"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1395
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1396
    const-string v2, "   -package <aid>  package AID, default: take from the CAP file"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1397
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "   -priv <num>     privileges, default 0"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1398
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1399
    const-string v2, "   -param <bytes>  install parameters, default: C900"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1400
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " -list             list card registry"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1401
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1402
    const-string v2, " -jcop             connect to the jcop emulator on port 8015"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1403
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " -h|-help|--help   print this usage info"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1404
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1405
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1406
    const-string v2, "Multiple -load/-install/-delete and -list take the following precedence:"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1407
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "  delete(s), load, install(s), list\n"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1408
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1409
    const-string v2, "All -load/-install/-delete/-list actions will be performed on\nthe basic logical channel of all cards currently connected.\nBy default all connected PC/SC terminals are searched.\n\nOption -jcop requires jcopio.jar and offcard.jar on the class path.\n"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1413
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1414
    const-string v2, "<aid> can be of the byte form 0A00000003... or the string form \"|applet.app|\"\n"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1415
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Examples:\n"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1416
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " [prog] -list"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1417
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " [prog] -load applet.cap -install -list "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1418
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1419
    const-string v2, " [prog] -deletedeps -delete 360000000001 -load applet.cap -install -list"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1420
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1421
    const-string v2, " [prog] -emv -keyset 0 -enc 404142434445464748494A4B4C4D4E4F -list"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1422
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1423
    return-void
.end method


# virtual methods
.method public addAPDUListener(Lnet/sourceforge/gpj/cardservices/APDUListener;)V
    .locals 1
    .param p1, "l"    # Lnet/sourceforge/gpj/cardservices/APDUListener;

    .line 220
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->apduListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method public deleteAID(Lnet/sourceforge/gpj/cardservices/AID;Z)V
    .locals 8
    .param p1, "aid"    # Lnet/sourceforge/gpj/cardservices/AID;
    .param p2, "deleteDeps"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/GPDeleteException;,
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 810
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v1, v0

    .line 812
    .local v1, "bo":Ljava/io/ByteArrayOutputStream;
    const/16 v0, 0x4f

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 813
    invoke-virtual {p1}, Lnet/sourceforge/gpj/cardservices/AID;->getLength()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 814
    invoke-virtual {p1}, Lnet/sourceforge/gpj/cardservices/AID;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    goto :goto_0

    .line 815
    :catch_0
    move-exception v0

    .line 818
    :goto_0
    new-instance v2, Ljavax/smartcardio/CommandAPDU;

    .line 819
    if-eqz p2, :cond_0

    const/16 v0, 0x80

    const/16 v6, 0x80

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const/16 v3, -0x80

    const/16 v4, -0x1c

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Ljavax/smartcardio/CommandAPDU;-><init>(IIII[B)V

    .line 820
    .local v2, "delete":Ljavax/smartcardio/CommandAPDU;
    invoke-virtual {p0, v2}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;

    move-result-object v0

    .line 821
    .local v0, "response":Ljavax/smartcardio/ResponseAPDU;
    invoke-virtual {p0, v2, v0}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->notifyExchangedAPDU(Ljavax/smartcardio/CommandAPDU;Ljavax/smartcardio/ResponseAPDU;)V

    .line 822
    invoke-virtual {v0}, Ljavax/smartcardio/ResponseAPDU;->getSW()I

    move-result v3

    int-to-short v3, v3

    .line 823
    .local v3, "sw":S
    const/16 v4, -0x7000

    if-ne v3, v4, :cond_1

    .line 827
    return-void

    .line 824
    :cond_1
    new-instance v4, Lnet/sourceforge/gpj/cardservices/exceptions/GPDeleteException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deletion failed, SW: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 825
    invoke-static {v3}, Lnet/sourceforge/gpj/cardservices/GPUtil;->swToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lnet/sourceforge/gpj/cardservices/exceptions/GPDeleteException;-><init>(SLjava/lang/String;)V

    throw v4
.end method

.method public exchangedAPDU(Ljavax/smartcardio/CommandAPDU;Ljavax/smartcardio/ResponseAPDU;)V
    .locals 2
    .param p1, "c"    # Ljavax/smartcardio/CommandAPDU;
    .param p2, "r"    # Ljavax/smartcardio/ResponseAPDU;

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command  APDU: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 236
    invoke-virtual {p1}, Ljavax/smartcardio/CommandAPDU;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lnet/sourceforge/gpj/cardservices/GPUtil;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {v0}, Lnet/sourceforge/gpj/cardservices/GPUtil;->debug(Ljava/lang/Object;)V

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response APDU: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 239
    invoke-virtual {p2}, Ljavax/smartcardio/ResponseAPDU;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lnet/sourceforge/gpj/cardservices/GPUtil;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v0}, Lnet/sourceforge/gpj/cardservices/GPUtil;->debug(Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method public getStatus()Lnet/sourceforge/gpj/cardservices/AIDRegistry;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 838
    move-object/from16 v1, p0

    new-instance v0, Lnet/sourceforge/gpj/cardservices/AIDRegistry;

    invoke-direct {v0}, Lnet/sourceforge/gpj/cardservices/AIDRegistry;-><init>()V

    move-object v2, v0

    .line 839
    .local v2, "registry":Lnet/sourceforge/gpj/cardservices/AIDRegistry;
    const/16 v0, 0x80

    const/16 v3, 0x40

    filled-new-array {v0, v3}, [I

    move-result-object v0

    move-object v4, v0

    .line 840
    .local v4, "p1s":[I
    array-length v5, v4

    const/4 v7, 0x0

    :goto_0
    const-string v8, "Get Status failed, SW: "

    const/16 v9, -0x7000

    const/4 v10, 0x2

    const/16 v11, 0x6310

    if-ge v7, v5, :cond_9

    aget v15, v4, v7

    .line 841
    .local v15, "p1":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v12, v0

    .line 842
    .local v12, "bo":Ljava/io/ByteArrayOutputStream;
    move-object v13, v12

    .end local v12    # "bo":Ljava/io/ByteArrayOutputStream;
    .local v13, "bo":Ljava/io/ByteArrayOutputStream;
    new-instance v12, Ljavax/smartcardio/CommandAPDU;

    new-array v0, v10, [B

    fill-array-data v0, :array_0

    move-object v14, v13

    .end local v13    # "bo":Ljava/io/ByteArrayOutputStream;
    .local v14, "bo":Ljava/io/ByteArrayOutputStream;
    const/16 v13, -0x80

    move-object/from16 v16, v14

    .end local v14    # "bo":Ljava/io/ByteArrayOutputStream;
    .local v16, "bo":Ljava/io/ByteArrayOutputStream;
    const/16 v14, -0xe

    move-object/from16 v17, v16

    .end local v16    # "bo":Ljava/io/ByteArrayOutputStream;
    .local v17, "bo":Ljava/io/ByteArrayOutputStream;
    const/16 v16, 0x0

    move-object/from16 v6, v17

    move-object/from16 v17, v0

    .end local v17    # "bo":Ljava/io/ByteArrayOutputStream;
    .local v6, "bo":Ljava/io/ByteArrayOutputStream;
    invoke-direct/range {v12 .. v17}, Ljavax/smartcardio/CommandAPDU;-><init>(IIII[B)V

    .line 844
    .local v12, "getStatus":Ljavax/smartcardio/CommandAPDU;
    invoke-virtual {v1, v12}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;

    move-result-object v13

    .line 845
    .local v13, "response":Ljavax/smartcardio/ResponseAPDU;
    invoke-virtual {v1, v12, v13}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->notifyExchangedAPDU(Ljavax/smartcardio/CommandAPDU;Ljavax/smartcardio/ResponseAPDU;)V

    .line 846
    invoke-virtual {v13}, Ljavax/smartcardio/ResponseAPDU;->getSW()I

    move-result v0

    int-to-short v14, v0

    .line 847
    .local v14, "sw":S
    if-eq v14, v9, :cond_0

    if-eq v14, v11, :cond_0

    .line 848
    goto/16 :goto_9

    .line 851
    :cond_0
    :try_start_0
    invoke-virtual {v13}, Ljavax/smartcardio/ResponseAPDU;->getData()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    goto :goto_1

    .line 852
    :catch_0
    move-exception v0

    .line 855
    :goto_1
    move/from16 v20, v14

    move-object v0, v12

    move-object/from16 v19, v13

    .end local v12    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    .end local v13    # "response":Ljavax/smartcardio/ResponseAPDU;
    .end local v14    # "sw":S
    .local v0, "getStatus":Ljavax/smartcardio/CommandAPDU;
    .local v19, "response":Ljavax/smartcardio/ResponseAPDU;
    .local v20, "sw":S
    :goto_2
    invoke-virtual/range {v19 .. v19}, Ljavax/smartcardio/ResponseAPDU;->getSW()I

    move-result v12

    if-ne v12, v11, :cond_3

    .line 856
    new-instance v12, Ljavax/smartcardio/CommandAPDU;

    new-array v13, v10, [B

    fill-array-data v13, :array_1

    move-object/from16 v17, v13

    const/16 v13, -0x80

    const/16 v14, -0xe

    const/16 v16, 0x1

    invoke-direct/range {v12 .. v17}, Ljavax/smartcardio/CommandAPDU;-><init>(IIII[B)V

    .line 858
    .end local v0    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    .restart local v12    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    invoke-virtual {v1, v12}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;

    move-result-object v13

    .line 859
    .end local v19    # "response":Ljavax/smartcardio/ResponseAPDU;
    .restart local v13    # "response":Ljavax/smartcardio/ResponseAPDU;
    invoke-virtual {v1, v12, v13}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->notifyExchangedAPDU(Ljavax/smartcardio/CommandAPDU;Ljavax/smartcardio/ResponseAPDU;)V

    .line 861
    :try_start_1
    invoke-virtual {v13}, Ljavax/smartcardio/ResponseAPDU;->getData()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 864
    goto :goto_3

    .line 862
    :catch_1
    move-exception v0

    .line 865
    :goto_3
    invoke-virtual {v13}, Ljavax/smartcardio/ResponseAPDU;->getSW()I

    move-result v0

    int-to-short v0, v0

    .line 866
    .end local v20    # "sw":S
    .local v0, "sw":S
    if-eq v0, v9, :cond_2

    if-ne v0, v11, :cond_1

    goto :goto_4

    .line 867
    :cond_1
    new-instance v3, Ljavax/smartcardio/CardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 868
    invoke-static {v0}, Lnet/sourceforge/gpj/cardservices/GPUtil;->swToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 855
    :cond_2
    :goto_4
    move/from16 v20, v0

    move-object v0, v12

    move-object/from16 v19, v13

    goto :goto_2

    .line 872
    .end local v12    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    .end local v13    # "response":Ljavax/smartcardio/ResponseAPDU;
    .local v0, "getStatus":Ljavax/smartcardio/CommandAPDU;
    .restart local v19    # "response":Ljavax/smartcardio/ResponseAPDU;
    .restart local v20    # "sw":S
    :cond_3
    const/4 v8, 0x0

    .line 873
    .local v8, "index":I
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 874
    .local v9, "data":[B
    :goto_5
    array-length v10, v9

    if-ge v8, v10, :cond_8

    .line 875
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "index":I
    .local v10, "index":I
    aget-byte v8, v9, v8

    .line 876
    .local v8, "len":I
    new-instance v11, Lnet/sourceforge/gpj/cardservices/AID;

    invoke-direct {v11, v9, v10, v8}, Lnet/sourceforge/gpj/cardservices/AID;-><init>([BII)V

    .line 877
    .local v11, "aid":Lnet/sourceforge/gpj/cardservices/AID;
    add-int/2addr v10, v8

    .line 878
    add-int/lit8 v12, v10, 0x1

    .end local v10    # "index":I
    .local v12, "index":I
    aget-byte v10, v9, v10

    .line 879
    .local v10, "life_cycle":I
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "index":I
    .local v13, "index":I
    aget-byte v12, v9, v12

    .line 881
    .local v12, "privileges":I
    sget-object v14, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->IssuerSecurityDomain:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    .line 882
    .local v14, "kind":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;
    if-ne v15, v3, :cond_5

    .line 883
    and-int/lit16 v3, v12, 0x80

    if-nez v3, :cond_4

    .line 884
    sget-object v14, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->Application:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    goto :goto_6

    .line 886
    :cond_4
    sget-object v14, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->SecurityDomain:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    .line 889
    :cond_5
    :goto_6
    new-instance v3, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;

    invoke-direct {v3, v11, v10, v12, v14}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;-><init>(Lnet/sourceforge/gpj/cardservices/AID;IILnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;)V

    .line 893
    .local v3, "entry":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    invoke-virtual {v3}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->isSecurityDomain()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 894
    invoke-direct {v1}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->getInstalledApplets()Ljava/util/List;

    move-result-object v17

    .line 896
    .local v17, "installed":Ljava/util/List;, "Ljava/util/List<Lnet/sourceforge/gpj/cardservices/AID;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v23, v0

    .end local v0    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    .local v23, "getStatus":Ljavax/smartcardio/CommandAPDU;
    move-object/from16 v0, v22

    check-cast v0, Lnet/sourceforge/gpj/cardservices/AID;

    .line 897
    .local v0, "a":Lnet/sourceforge/gpj/cardservices/AID;
    invoke-virtual {v3, v0}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->addExecutableAID(Lnet/sourceforge/gpj/cardservices/AID;)V

    .line 898
    .end local v0    # "a":Lnet/sourceforge/gpj/cardservices/AID;
    move-object/from16 v0, v23

    goto :goto_7

    .line 896
    .end local v23    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    .local v0, "getStatus":Ljavax/smartcardio/CommandAPDU;
    :cond_6
    move-object/from16 v23, v0

    .end local v0    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    .restart local v23    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    goto :goto_8

    .line 893
    .end local v17    # "installed":Ljava/util/List;, "Ljava/util/List<Lnet/sourceforge/gpj/cardservices/AID;>;"
    .end local v23    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    .restart local v0    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    :cond_7
    move-object/from16 v23, v0

    .line 901
    .end local v0    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    .restart local v23    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    :goto_8
    invoke-virtual {v2, v3}, Lnet/sourceforge/gpj/cardservices/AIDRegistry;->add(Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;)V

    .line 902
    .end local v3    # "entry":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    .end local v8    # "len":I
    .end local v10    # "life_cycle":I
    .end local v11    # "aid":Lnet/sourceforge/gpj/cardservices/AID;
    .end local v12    # "privileges":I
    .end local v14    # "kind":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;
    move v8, v13

    move-object/from16 v0, v23

    const/16 v3, 0x40

    goto :goto_5

    .line 874
    .end local v13    # "index":I
    .end local v23    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    .restart local v0    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    .local v8, "index":I
    :cond_8
    move-object/from16 v23, v0

    .line 840
    .end local v0    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    .end local v6    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "index":I
    .end local v9    # "data":[B
    .end local v15    # "p1":I
    .end local v19    # "response":Ljavax/smartcardio/ResponseAPDU;
    .end local v20    # "sw":S
    :goto_9
    add-int/lit8 v7, v7, 0x1

    const/16 v3, 0x40

    goto/16 :goto_0

    .line 904
    :cond_9
    const/16 v0, 0x20

    const/16 v3, 0x10

    filled-new-array {v3, v0}, [I

    move-result-object v0

    move-object v4, v0

    .line 905
    const/4 v0, 0x0

    .line 906
    .local v0, "succ10":Z
    array-length v5, v4

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v5, :cond_14

    aget v15, v4, v6

    .line 907
    .restart local v15    # "p1":I
    if-eqz v0, :cond_a

    .line 908
    goto/16 :goto_14

    .line 909
    :cond_a
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 910
    .local v7, "bo":Ljava/io/ByteArrayOutputStream;
    new-instance v12, Ljavax/smartcardio/CommandAPDU;

    new-array v13, v10, [B

    fill-array-data v13, :array_2

    move-object/from16 v17, v13

    const/16 v13, -0x80

    const/16 v14, -0xe

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v17}, Ljavax/smartcardio/CommandAPDU;-><init>(IIII[B)V

    .line 912
    .local v12, "getStatus":Ljavax/smartcardio/CommandAPDU;
    invoke-virtual {v1, v12}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;

    move-result-object v13

    .line 913
    .local v13, "response":Ljavax/smartcardio/ResponseAPDU;
    invoke-virtual {v1, v12, v13}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->notifyExchangedAPDU(Ljavax/smartcardio/CommandAPDU;Ljavax/smartcardio/ResponseAPDU;)V

    .line 914
    invoke-virtual {v13}, Ljavax/smartcardio/ResponseAPDU;->getSW()I

    move-result v14

    int-to-short v14, v14

    .line 915
    .local v14, "sw":S
    if-eq v14, v9, :cond_b

    if-eq v14, v11, :cond_b

    .line 916
    goto/16 :goto_14

    .line 918
    :cond_b
    if-ne v15, v3, :cond_c

    .line 919
    const/4 v0, 0x1

    move/from16 v18, v0

    goto :goto_b

    .line 918
    :cond_c
    move/from16 v18, v0

    .line 922
    .end local v0    # "succ10":Z
    .local v18, "succ10":Z
    :goto_b
    :try_start_2
    invoke-virtual {v13}, Ljavax/smartcardio/ResponseAPDU;->getData()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 925
    goto :goto_c

    .line 923
    :catch_2
    move-exception v0

    .line 927
    :goto_c
    move/from16 v20, v14

    move-object v0, v12

    move-object/from16 v19, v13

    .end local v12    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    .end local v13    # "response":Ljavax/smartcardio/ResponseAPDU;
    .end local v14    # "sw":S
    .local v0, "getStatus":Ljavax/smartcardio/CommandAPDU;
    .restart local v19    # "response":Ljavax/smartcardio/ResponseAPDU;
    .restart local v20    # "sw":S
    :goto_d
    invoke-virtual/range {v19 .. v19}, Ljavax/smartcardio/ResponseAPDU;->getSW()I

    move-result v12

    if-ne v12, v11, :cond_f

    .line 928
    new-instance v12, Ljavax/smartcardio/CommandAPDU;

    new-array v13, v10, [B

    fill-array-data v13, :array_3

    move-object/from16 v17, v13

    const/16 v13, -0x80

    const/16 v14, -0xe

    const/16 v16, 0x1

    invoke-direct/range {v12 .. v17}, Ljavax/smartcardio/CommandAPDU;-><init>(IIII[B)V

    .line 930
    .end local v0    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    .restart local v12    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    invoke-virtual {v1, v12}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;

    move-result-object v13

    .line 931
    .end local v19    # "response":Ljavax/smartcardio/ResponseAPDU;
    .restart local v13    # "response":Ljavax/smartcardio/ResponseAPDU;
    invoke-virtual {v1, v12, v13}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->notifyExchangedAPDU(Ljavax/smartcardio/CommandAPDU;Ljavax/smartcardio/ResponseAPDU;)V

    .line 933
    :try_start_3
    invoke-virtual {v13}, Ljavax/smartcardio/ResponseAPDU;->getData()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 936
    goto :goto_e

    .line 934
    :catch_3
    move-exception v0

    .line 937
    :goto_e
    invoke-virtual {v13}, Ljavax/smartcardio/ResponseAPDU;->getSW()I

    move-result v0

    int-to-short v0, v0

    .line 938
    .end local v20    # "sw":S
    .local v0, "sw":S
    if-eq v0, v9, :cond_e

    if-ne v0, v11, :cond_d

    goto :goto_f

    .line 939
    :cond_d
    new-instance v3, Ljavax/smartcardio/CardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 940
    invoke-static {v0}, Lnet/sourceforge/gpj/cardservices/GPUtil;->swToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 927
    :cond_e
    :goto_f
    move/from16 v20, v0

    move-object v0, v12

    move-object/from16 v19, v13

    goto :goto_d

    .line 944
    .end local v12    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    .end local v13    # "response":Ljavax/smartcardio/ResponseAPDU;
    .local v0, "getStatus":Ljavax/smartcardio/CommandAPDU;
    .restart local v19    # "response":Ljavax/smartcardio/ResponseAPDU;
    .restart local v20    # "sw":S
    :cond_f
    const/4 v12, 0x0

    .line 945
    .local v12, "index":I
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 946
    .local v13, "data":[B
    :goto_10
    array-length v14, v13

    if-ge v12, v14, :cond_13

    .line 947
    add-int/lit8 v14, v12, 0x1

    .end local v12    # "index":I
    .local v14, "index":I
    aget-byte v12, v13, v12

    .line 948
    .local v12, "len":I
    new-instance v9, Lnet/sourceforge/gpj/cardservices/AID;

    invoke-direct {v9, v13, v14, v12}, Lnet/sourceforge/gpj/cardservices/AID;-><init>([BII)V

    .line 949
    .local v9, "aid":Lnet/sourceforge/gpj/cardservices/AID;
    add-int/2addr v14, v12

    .line 950
    new-instance v10, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;

    add-int/lit8 v21, v14, 0x1

    .end local v14    # "index":I
    .local v21, "index":I
    aget-byte v14, v13, v14

    add-int/lit8 v22, v21, 0x1

    .end local v21    # "index":I
    .local v22, "index":I
    aget-byte v11, v13, v21

    .line 954
    if-ne v15, v3, :cond_10

    sget-object v21, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->ExecutableLoadFilesAndModules:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    move-object/from16 v3, v21

    goto :goto_11

    .line 955
    :cond_10
    sget-object v21, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->ExecutableLoadFiles:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    move-object/from16 v3, v21

    :goto_11
    invoke-direct {v10, v9, v14, v11, v3}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;-><init>(Lnet/sourceforge/gpj/cardservices/AID;IILnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;)V

    .line 956
    .local v10, "entry":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    const/16 v3, 0x10

    if-ne v15, v3, :cond_12

    .line 957
    add-int/lit8 v11, v22, 0x1

    .end local v22    # "index":I
    .local v11, "index":I
    aget-byte v14, v13, v22

    .line 958
    .local v14, "num":I
    const/16 v21, 0x0

    move/from16 v3, v21

    .local v3, "i":I
    :goto_12
    if-ge v3, v14, :cond_11

    .line 959
    move-object/from16 v21, v0

    .end local v0    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    .local v21, "getStatus":Ljavax/smartcardio/CommandAPDU;
    add-int/lit8 v0, v11, 0x1

    .end local v11    # "index":I
    .local v0, "index":I
    aget-byte v12, v13, v11

    .line 960
    new-instance v11, Lnet/sourceforge/gpj/cardservices/AID;

    invoke-direct {v11, v13, v0, v12}, Lnet/sourceforge/gpj/cardservices/AID;-><init>([BII)V

    move-object v9, v11

    .line 961
    add-int v11, v0, v12

    .line 962
    .end local v0    # "index":I
    .restart local v11    # "index":I
    invoke-virtual {v10, v9}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->addExecutableAID(Lnet/sourceforge/gpj/cardservices/AID;)V

    .line 958
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v21

    goto :goto_12

    .end local v21    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    .local v0, "getStatus":Ljavax/smartcardio/CommandAPDU;
    :cond_11
    move-object/from16 v21, v0

    .end local v0    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    .restart local v21    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    move/from16 v22, v11

    goto :goto_13

    .line 956
    .end local v3    # "i":I
    .end local v11    # "index":I
    .end local v14    # "num":I
    .end local v21    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    .restart local v0    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    .restart local v22    # "index":I
    :cond_12
    move-object/from16 v21, v0

    .line 965
    .end local v0    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    .restart local v21    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    :goto_13
    invoke-virtual {v2, v10}, Lnet/sourceforge/gpj/cardservices/AIDRegistry;->add(Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;)V

    .line 966
    .end local v9    # "aid":Lnet/sourceforge/gpj/cardservices/AID;
    .end local v10    # "entry":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    .end local v12    # "len":I
    move-object/from16 v0, v21

    move/from16 v12, v22

    const/16 v3, 0x10

    const/16 v9, -0x7000

    const/4 v10, 0x2

    const/16 v11, 0x6310

    goto :goto_10

    .line 946
    .end local v21    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    .end local v22    # "index":I
    .restart local v0    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    .local v12, "index":I
    :cond_13
    move-object/from16 v21, v0

    .end local v0    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    .restart local v21    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    move/from16 v0, v18

    .line 906
    .end local v7    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "index":I
    .end local v13    # "data":[B
    .end local v15    # "p1":I
    .end local v18    # "succ10":Z
    .end local v19    # "response":Ljavax/smartcardio/ResponseAPDU;
    .end local v20    # "sw":S
    .end local v21    # "getStatus":Ljavax/smartcardio/CommandAPDU;
    .local v0, "succ10":Z
    :goto_14
    add-int/lit8 v6, v6, 0x1

    const/16 v3, 0x10

    const/16 v9, -0x7000

    const/4 v10, 0x2

    const/16 v11, 0x6310

    goto/16 :goto_a

    .line 968
    :cond_14
    return-object v2

    nop

    :array_0
    .array-data 1
        0x4ft
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4ft
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x4ft
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x4ft
        0x0t
    .end array-data
.end method

.method public installAndMakeSelecatable(Lnet/sourceforge/gpj/cardservices/AID;Lnet/sourceforge/gpj/cardservices/AID;Lnet/sourceforge/gpj/cardservices/AID;B[B[B)V
    .locals 8
    .param p1, "packageAID"    # Lnet/sourceforge/gpj/cardservices/AID;
    .param p2, "appletAID"    # Lnet/sourceforge/gpj/cardservices/AID;
    .param p3, "instanceAID"    # Lnet/sourceforge/gpj/cardservices/AID;
    .param p4, "privileges"    # B
    .param p5, "installParams"    # [B
    .param p6, "installToken"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/GPMakeSelectableException;,
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 752
    if-nez p5, :cond_0

    .line 753
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    move-object p5, v0

    .line 755
    :cond_0
    if-nez p3, :cond_1

    .line 756
    move-object p3, p2

    .line 758
    :cond_1
    if-nez p6, :cond_2

    .line 759
    const/4 v0, 0x0

    new-array p6, v0, [B

    .line 761
    :cond_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v1, v0

    .line 763
    .local v1, "bo":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p1}, Lnet/sourceforge/gpj/cardservices/AID;->getLength()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 764
    invoke-virtual {p1}, Lnet/sourceforge/gpj/cardservices/AID;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 766
    invoke-virtual {p2}, Lnet/sourceforge/gpj/cardservices/AID;->getLength()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 767
    invoke-virtual {p2}, Lnet/sourceforge/gpj/cardservices/AID;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 769
    invoke-virtual {p3}, Lnet/sourceforge/gpj/cardservices/AID;->getLength()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 770
    invoke-virtual {p3}, Lnet/sourceforge/gpj/cardservices/AID;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 772
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 773
    invoke-virtual {v1, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 774
    array-length v0, p5

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 775
    invoke-virtual {v1, p5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 777
    array-length v0, p6

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 778
    invoke-virtual {v1, p6}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    goto :goto_0

    .line 779
    :catch_0
    move-exception v0

    .line 782
    :goto_0
    new-instance v2, Ljavax/smartcardio/CommandAPDU;

    .line 783
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const/16 v3, -0x80

    const/16 v4, -0x1a

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Ljavax/smartcardio/CommandAPDU;-><init>(IIII[B)V

    .line 784
    .local v2, "install":Ljavax/smartcardio/CommandAPDU;
    invoke-virtual {p0, v2}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;

    move-result-object v0

    .line 785
    .local v0, "response":Ljavax/smartcardio/ResponseAPDU;
    invoke-virtual {p0, v2, v0}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->notifyExchangedAPDU(Ljavax/smartcardio/CommandAPDU;Ljavax/smartcardio/ResponseAPDU;)V

    .line 786
    invoke-virtual {v0}, Ljavax/smartcardio/ResponseAPDU;->getSW()I

    move-result v3

    int-to-short v3, v3

    .line 787
    .local v3, "sw":S
    const/16 v4, -0x7000

    if-ne v3, v4, :cond_3

    .line 793
    return-void

    .line 788
    :cond_3
    new-instance v4, Lnet/sourceforge/gpj/cardservices/exceptions/GPMakeSelectableException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Install for Install and make selectable failed, SW: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 790
    invoke-static {v3}, Lnet/sourceforge/gpj/cardservices/GPUtil;->swToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lnet/sourceforge/gpj/cardservices/exceptions/GPMakeSelectableException;-><init>(SLjava/lang/String;)V

    throw v4

    :array_0
    .array-data 1
        -0x37t
        0x0t
    .end array-data
.end method

.method public isSecureChannelOpen()Z
    .locals 1

    .line 468
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->wrapper:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadCapFile(Ljava/net/URL;ZZIZZ)V
    .locals 11
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "includeDebug"    # Z
    .param p3, "separateComponents"    # Z
    .param p4, "blockSize"    # I
    .param p5, "loadParam"    # Z
    .param p6, "useHash"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/sourceforge/gpj/cardservices/exceptions/GPInstallForLoadException;,
            Lnet/sourceforge/gpj/cardservices/exceptions/GPLoadException;,
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 637
    const/4 v0, 0x0

    .line 638
    .local v0, "cap":Lnet/sourceforge/gpj/cardservices/CapFile;
    new-instance v1, Lnet/sourceforge/gpj/cardservices/CapFile;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lnet/sourceforge/gpj/cardservices/CapFile;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v5, v1

    .line 639
    .end local v0    # "cap":Lnet/sourceforge/gpj/cardservices/CapFile;
    .local v5, "cap":Lnet/sourceforge/gpj/cardservices/CapFile;
    move-object v4, p0

    move v6, p2

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->loadCapFile(Lnet/sourceforge/gpj/cardservices/CapFile;ZZIZZ)V

    .line 641
    return-void
.end method

.method public loadCapFile(Lnet/sourceforge/gpj/cardservices/CapFile;ZZIZZ)V
    .locals 20
    .param p1, "cap"    # Lnet/sourceforge/gpj/cardservices/CapFile;
    .param p2, "includeDebug"    # Z
    .param p3, "separateComponents"    # Z
    .param p4, "blockSize"    # I
    .param p5, "loadParam"    # Z
    .param p6, "useHash"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/GPInstallForLoadException;,
            Lnet/sourceforge/gpj/cardservices/exceptions/GPLoadException;,
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 667
    move-object/from16 v1, p0

    const/4 v2, 0x0

    if-eqz p6, :cond_0

    invoke-virtual/range {p1 .. p2}, Lnet/sourceforge/gpj/cardservices/CapFile;->getLoadFileDataHash(Z)[B

    move-result-object v0

    goto :goto_0

    .line 668
    :cond_0
    new-array v0, v2, [B

    :goto_0
    move-object v3, v0

    .line 669
    .local v3, "hash":[B
    invoke-virtual/range {p1 .. p2}, Lnet/sourceforge/gpj/cardservices/CapFile;->getCodeLength(Z)I

    move-result v4

    .line 670
    .local v4, "len":I
    const/4 v5, 0x1

    if-eqz p5, :cond_1

    const/4 v0, 0x6

    new-array v0, v0, [B

    const/16 v6, -0x11

    aput-byte v6, v0, v2

    const/4 v6, 0x4

    aput-byte v6, v0, v5

    const/16 v7, -0x3a

    const/4 v8, 0x2

    aput-byte v7, v0, v8

    const/4 v7, 0x3

    aput-byte v8, v0, v7

    const v7, 0xff00

    and-int/2addr v7, v4

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    and-int/lit16 v6, v4, 0xff

    int-to-byte v6, v6

    const/4 v7, 0x5

    aput-byte v6, v0, v7

    goto :goto_1

    .line 672
    :cond_1
    new-array v0, v2, [B

    :goto_1
    move-object v6, v0

    .line 674
    .local v6, "loadParams":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v7, v0

    .line 677
    .local v7, "bo":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/gpj/cardservices/CapFile;->getPackageAID()Lnet/sourceforge/gpj/cardservices/AID;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/gpj/cardservices/AID;->getLength()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 678
    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/gpj/cardservices/CapFile;->getPackageAID()Lnet/sourceforge/gpj/cardservices/AID;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/gpj/cardservices/AID;->getBytes()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 680
    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 682
    array-length v0, v3

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 683
    invoke-virtual {v7, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 685
    array-length v0, v6

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 686
    invoke-virtual {v7, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 687
    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    goto :goto_2

    .line 688
    :catch_0
    move-exception v0

    .line 691
    :goto_2
    new-instance v8, Ljavax/smartcardio/CommandAPDU;

    .line 692
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    const/16 v9, -0x80

    const/16 v10, -0x1a

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-direct/range {v8 .. v13}, Ljavax/smartcardio/CommandAPDU;-><init>(IIII[B)V

    .line 693
    .local v8, "installForLoad":Ljavax/smartcardio/CommandAPDU;
    invoke-virtual {v1, v8}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;

    move-result-object v0

    .line 694
    .local v0, "response":Ljavax/smartcardio/ResponseAPDU;
    invoke-virtual {v1, v8, v0}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->notifyExchangedAPDU(Ljavax/smartcardio/CommandAPDU;Ljavax/smartcardio/ResponseAPDU;)V

    .line 695
    invoke-virtual {v0}, Ljavax/smartcardio/ResponseAPDU;->getSW()I

    move-result v9

    int-to-short v9, v9

    .line 696
    .local v9, "sw":S
    const/16 v10, -0x7000

    if-ne v9, v10, :cond_5

    .line 700
    invoke-virtual/range {p1 .. p4}, Lnet/sourceforge/gpj/cardservices/CapFile;->getLoadBlocks(ZZI)Ljava/util/List;

    move-result-object v11

    .line 702
    .local v11, "blocks":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_4

    .line 703
    new-instance v14, Ljavax/smartcardio/CommandAPDU;

    .line 704
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v5

    if-ne v12, v13, :cond_2

    const/16 v13, 0x80

    const/16 v17, 0x80

    goto :goto_4

    :cond_2
    const/16 v17, 0x0

    :goto_4
    int-to-byte v13, v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v19, v15

    check-cast v19, [B

    const/16 v15, -0x80

    const/16 v16, -0x18

    move/from16 v18, v13

    invoke-direct/range {v14 .. v19}, Ljavax/smartcardio/CommandAPDU;-><init>(IIII[B)V

    .line 705
    .local v14, "load":Ljavax/smartcardio/CommandAPDU;
    invoke-virtual {v1, v14}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;

    move-result-object v0

    .line 706
    invoke-virtual {v1, v14, v0}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->notifyExchangedAPDU(Ljavax/smartcardio/CommandAPDU;Ljavax/smartcardio/ResponseAPDU;)V

    .line 707
    invoke-virtual {v0}, Ljavax/smartcardio/ResponseAPDU;->getSW()I

    move-result v13

    int-to-short v9, v13

    .line 708
    if-ne v9, v10, :cond_3

    .line 702
    .end local v14    # "load":Ljavax/smartcardio/CommandAPDU;
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 709
    .restart local v14    # "load":Ljavax/smartcardio/CommandAPDU;
    :cond_3
    new-instance v2, Lnet/sourceforge/gpj/cardservices/exceptions/GPLoadException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Load failed, SW: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 710
    invoke-static {v9}, Lnet/sourceforge/gpj/cardservices/GPUtil;->swToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v9, v5}, Lnet/sourceforge/gpj/cardservices/exceptions/GPLoadException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 714
    .end local v12    # "i":I
    .end local v14    # "load":Ljavax/smartcardio/CommandAPDU;
    :cond_4
    return-void

    .line 697
    .end local v11    # "blocks":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_5
    new-instance v2, Lnet/sourceforge/gpj/cardservices/exceptions/GPInstallForLoadException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Install for Load failed, SW: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 698
    invoke-static {v9}, Lnet/sourceforge/gpj/cardservices/GPUtil;->swToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v9, v5}, Lnet/sourceforge/gpj/cardservices/exceptions/GPInstallForLoadException;-><init>(SLjava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v2

    :goto_6
    goto :goto_5
.end method

.method public notifyExchangedAPDU(Ljavax/smartcardio/CommandAPDU;Ljavax/smartcardio/ResponseAPDU;)V
    .locals 2
    .param p1, "c"    # Ljavax/smartcardio/CommandAPDU;
    .param p2, "r"    # Ljavax/smartcardio/ResponseAPDU;

    .line 228
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->apduListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sourceforge/gpj/cardservices/APDUListener;

    .line 229
    .local v1, "l":Lnet/sourceforge/gpj/cardservices/APDUListener;
    invoke-interface {v1, p1, p2}, Lnet/sourceforge/gpj/cardservices/APDUListener;->exchangedAPDU(Ljavax/smartcardio/CommandAPDU;Ljavax/smartcardio/ResponseAPDU;)V

    .line 230
    .end local v1    # "l":Lnet/sourceforge/gpj/cardservices/APDUListener;
    goto :goto_0

    .line 231
    :cond_0
    return-void
.end method

.method public open()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/gpj/cardservices/exceptions/GPSecurityDomainSelectionException;,
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->sdAID:Lnet/sourceforge/gpj/cardservices/AID;

    const-string v1, ", SW: "

    const/16 v2, -0x7000

    if-nez v0, :cond_3

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "sw":S
    sget-object v3, Lnet/sourceforge/gpj/cardservices/AID;->SD_AIDS:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 258
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lnet/sourceforge/gpj/cardservices/AID;>;"
    new-instance v5, Ljavax/smartcardio/CommandAPDU;

    .line 259
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sourceforge/gpj/cardservices/AID;

    invoke-virtual {v6}, Lnet/sourceforge/gpj/cardservices/AID;->getBytes()[B

    move-result-object v10

    const/4 v6, 0x0

    const/16 v7, -0x5c

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v10}, Ljavax/smartcardio/CommandAPDU;-><init>(IIII[B)V

    .line 260
    .local v5, "command":Ljavax/smartcardio/CommandAPDU;
    iget-object v6, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->channel:Ljavax/smartcardio/CardChannel;

    invoke-virtual {v6, v5}, Ljavax/smartcardio/CardChannel;->transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;

    move-result-object v6

    .line 261
    .local v6, "resp":Ljavax/smartcardio/ResponseAPDU;
    invoke-virtual {p0, v5, v6}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->notifyExchangedAPDU(Ljavax/smartcardio/CommandAPDU;Ljavax/smartcardio/ResponseAPDU;)V

    .line 262
    invoke-virtual {v6}, Ljavax/smartcardio/ResponseAPDU;->getSW()I

    move-result v7

    int-to-short v0, v7

    .line 263
    const-string v7, " "

    if-ne v0, v2, :cond_0

    .line 264
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sourceforge/gpj/cardservices/AID;

    iput-object v1, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->sdAID:Lnet/sourceforge/gpj/cardservices/AID;

    .line 265
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully selected Security Domain "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 266
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sourceforge/gpj/cardservices/AID;

    invoke-virtual {v3}, Lnet/sourceforge/gpj/cardservices/AID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 267
    goto :goto_1

    .line 269
    :cond_0
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to select Security Domain "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 270
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/sourceforge/gpj/cardservices/AID;

    invoke-virtual {v9}, Lnet/sourceforge/gpj/cardservices/AID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lnet/sourceforge/gpj/cardservices/GPUtil;->swToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 269
    invoke-virtual {v8, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 271
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lnet/sourceforge/gpj/cardservices/AID;>;"
    .end local v5    # "command":Ljavax/smartcardio/CommandAPDU;
    .end local v6    # "resp":Ljavax/smartcardio/ResponseAPDU;
    goto/16 :goto_0

    .line 272
    :cond_1
    :goto_1
    iget-object v1, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->sdAID:Lnet/sourceforge/gpj/cardservices/AID;

    if-eqz v1, :cond_2

    .line 277
    .end local v0    # "sw":S
    goto :goto_2

    .line 273
    .restart local v0    # "sw":S
    :cond_2
    new-instance v1, Lnet/sourceforge/gpj/cardservices/exceptions/GPSecurityDomainSelectionException;

    const-string v2, "Could not select any of the known Security Domains!"

    invoke-direct {v1, v0, v2}, Lnet/sourceforge/gpj/cardservices/exceptions/GPSecurityDomainSelectionException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 278
    .end local v0    # "sw":S
    :cond_3
    new-instance v3, Ljavax/smartcardio/CommandAPDU;

    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->sdAID:Lnet/sourceforge/gpj/cardservices/AID;

    .line 279
    invoke-virtual {v0}, Lnet/sourceforge/gpj/cardservices/AID;->getBytes()[B

    move-result-object v8

    const/4 v4, 0x0

    const/16 v5, -0x5c

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v8}, Ljavax/smartcardio/CommandAPDU;-><init>(IIII[B)V

    .line 280
    .local v3, "command":Ljavax/smartcardio/CommandAPDU;
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->channel:Ljavax/smartcardio/CardChannel;

    invoke-virtual {v0, v3}, Ljavax/smartcardio/CardChannel;->transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;

    move-result-object v0

    .line 281
    .local v0, "resp":Ljavax/smartcardio/ResponseAPDU;
    invoke-virtual {p0, v3, v0}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->notifyExchangedAPDU(Ljavax/smartcardio/CommandAPDU;Ljavax/smartcardio/ResponseAPDU;)V

    .line 282
    invoke-virtual {v0}, Ljavax/smartcardio/ResponseAPDU;->getSW()I

    move-result v4

    int-to-short v4, v4

    .line 283
    .local v4, "sw":S
    if-ne v4, v2, :cond_4

    .line 289
    .end local v0    # "resp":Ljavax/smartcardio/ResponseAPDU;
    .end local v3    # "command":Ljavax/smartcardio/CommandAPDU;
    .end local v4    # "sw":S
    :goto_2
    return-void

    .line 284
    .restart local v0    # "resp":Ljavax/smartcardio/ResponseAPDU;
    .restart local v3    # "command":Ljavax/smartcardio/CommandAPDU;
    .restart local v4    # "sw":S
    :cond_4
    new-instance v2, Lnet/sourceforge/gpj/cardservices/exceptions/GPSecurityDomainSelectionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not select custom sdAID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->sdAID:Lnet/sourceforge/gpj/cardservices/AID;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 286
    invoke-static {v4}, Lnet/sourceforge/gpj/cardservices/GPUtil;->swToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Lnet/sourceforge/gpj/cardservices/exceptions/GPSecurityDomainSelectionException;-><init>(SLjava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3
.end method

.method public openSecureChannel(IIIIIZ)V
    .locals 25
    .param p1, "keySet"    # I
    .param p2, "keyId"    # I
    .param p3, "keyVersion"    # I
    .param p4, "scpVersion"    # I
    .param p5, "securityLevel"    # I
    .param p6, "gemalto"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 304
    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p4

    if-ltz v2, :cond_16

    const/16 v3, 0xa

    if-gt v2, v3, :cond_16

    .line 308
    const/4 v4, 0x5

    if-eq v2, v4, :cond_15

    const/4 v4, 0x6

    if-eq v2, v4, :cond_15

    const/16 v4, 0x9

    if-eq v2, v4, :cond_15

    if-eq v2, v3, :cond_15

    .line 314
    if-ltz v0, :cond_14

    const/16 v4, 0x7f

    if-gt v0, v4, :cond_14

    .line 318
    const/16 v8, -0x14

    .line 320
    .local v8, "mask":I
    and-int v4, p5, v8

    if-nez v4, :cond_13

    .line 324
    and-int/lit8 v4, p5, 0x2

    if-eqz v4, :cond_0

    .line 325
    or-int/lit8 v4, p5, 0x1

    move v12, v4

    .end local p5    # "securityLevel":I
    .local v4, "securityLevel":I
    goto :goto_0

    .line 324
    .end local v4    # "securityLevel":I
    .restart local p5    # "securityLevel":I
    :cond_0
    move/from16 v12, p5

    .line 328
    .end local p5    # "securityLevel":I
    .local v12, "securityLevel":I
    :goto_0
    iget-object v4, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->keys:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;

    .line 329
    .local v15, "staticKeys":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;
    if-eqz v15, :cond_12

    .line 334
    const/16 v9, -0x7000

    const/4 v4, 0x2

    const/4 v10, 0x0

    const/4 v5, 0x1

    if-eqz p6, :cond_2

    sget-object v6, Lnet/sourceforge/gpj/cardservices/AID;->SD_AIDS:Ljava/util/Map;

    const-string v7, "GemaltoXpressPro"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sourceforge/gpj/cardservices/AID;

    iget-object v7, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->sdAID:Lnet/sourceforge/gpj/cardservices/AID;

    invoke-virtual {v6, v7}, Lnet/sourceforge/gpj/cardservices/AID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 336
    new-instance v16, Ljavax/smartcardio/CommandAPDU;

    const/16 v20, 0x7f

    const/16 v21, 0x100

    const/16 v17, -0x80

    const/16 v18, -0x36

    const/16 v19, 0x9f

    invoke-direct/range {v16 .. v21}, Ljavax/smartcardio/CommandAPDU;-><init>(IIIII)V

    move-object/from16 v6, v16

    .line 340
    .local v6, "c":Ljavax/smartcardio/CommandAPDU;
    iget-object v7, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->channel:Ljavax/smartcardio/CardChannel;

    invoke-virtual {v7, v6}, Ljavax/smartcardio/CardChannel;->transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;

    move-result-object v7

    .line 341
    .local v7, "r":Ljavax/smartcardio/ResponseAPDU;
    invoke-virtual {v1, v6, v7}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->notifyExchangedAPDU(Ljavax/smartcardio/CommandAPDU;Ljavax/smartcardio/ResponseAPDU;)V

    .line 342
    invoke-virtual {v7}, Ljavax/smartcardio/ResponseAPDU;->getSW()I

    move-result v11

    int-to-short v11, v11

    .line 343
    .local v11, "sw":S
    if-ne v11, v9, :cond_1

    .line 346
    const/16 v13, 0x10

    new-array v13, v13, [B

    .line 347
    .local v13, "diverData":[B
    iget-object v14, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->sdAID:Lnet/sourceforge/gpj/cardservices/AID;

    invoke-virtual {v14}, Lnet/sourceforge/gpj/cardservices/AID;->getBytes()[B

    move-result-object v14

    .line 348
    .local v14, "t":[B
    const/16 v16, 0xa

    array-length v3, v14

    sub-int/2addr v3, v4

    aget-byte v3, v14, v3

    aput-byte v3, v13, v10

    .line 349
    array-length v3, v14

    sub-int/2addr v3, v5

    aget-byte v3, v14, v3

    aput-byte v3, v13, v5

    .line 350
    invoke-virtual {v7}, Ljavax/smartcardio/ResponseAPDU;->getData()[B

    move-result-object v3

    const/16 v10, 0xf

    const/4 v5, 0x4

    invoke-static {v3, v10, v13, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    invoke-static {v15, v13}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->access$000(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;[B)V

    goto :goto_1

    .line 344
    .end local v13    # "diverData":[B
    .end local v14    # "t":[B
    :cond_1
    new-instance v3, Ljavax/smartcardio/CardException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong GemaltoXpressPro get CPLC data, SW: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v11}, Lnet/sourceforge/gpj/cardservices/GPUtil;->swToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 334
    .end local v6    # "c":Ljavax/smartcardio/CommandAPDU;
    .end local v7    # "r":Ljavax/smartcardio/ResponseAPDU;
    .end local v11    # "sw":S
    :cond_2
    const/16 v16, 0xa

    .line 355
    :goto_1
    const/16 v10, 0x8

    new-array v3, v10, [B

    .line 356
    .local v3, "rand":[B
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-virtual {v5, v3}, Ljava/util/Random;->nextBytes([B)V

    .line 358
    new-instance v18, Ljavax/smartcardio/CommandAPDU;

    const/16 v19, -0x80

    const/16 v20, 0x50

    move/from16 v22, p2

    move/from16 v21, p3

    move-object/from16 v23, v3

    .end local v3    # "rand":[B
    .local v23, "rand":[B
    invoke-direct/range {v18 .. v23}, Ljavax/smartcardio/CommandAPDU;-><init>(IIII[B)V

    move-object/from16 v11, v23

    .end local v23    # "rand":[B
    .local v11, "rand":[B
    move-object/from16 v13, v18

    .line 361
    .local v13, "initUpdate":Ljavax/smartcardio/CommandAPDU;
    iget-object v3, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->channel:Ljavax/smartcardio/CardChannel;

    invoke-virtual {v3, v13}, Ljavax/smartcardio/CardChannel;->transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;

    move-result-object v14

    .line 362
    .local v14, "response":Ljavax/smartcardio/ResponseAPDU;
    invoke-virtual {v1, v13, v14}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->notifyExchangedAPDU(Ljavax/smartcardio/CommandAPDU;Ljavax/smartcardio/ResponseAPDU;)V

    .line 363
    invoke-virtual {v14}, Ljavax/smartcardio/ResponseAPDU;->getSW()I

    move-result v3

    int-to-short v3, v3

    .line 364
    .local v3, "sw":S
    if-ne v3, v9, :cond_11

    .line 368
    invoke-virtual {v14}, Ljavax/smartcardio/ResponseAPDU;->getData()[B

    move-result-object v5

    .line 369
    .local v5, "result":[B
    array-length v6, v5

    const/16 v7, 0x1c

    if-ne v6, v7, :cond_10

    .line 372
    const/16 v6, 0xb

    if-nez v2, :cond_4

    .line 373
    aget-byte v7, v5, v6

    if-ne v7, v4, :cond_3

    const/16 v7, 0x8

    goto :goto_2

    :cond_3
    const/4 v7, 0x1

    :goto_2
    move v2, v7

    .line 375
    .end local p4    # "scpVersion":I
    .local v2, "scpVersion":I
    :cond_4
    const/4 v7, 0x3

    if-ge v2, v7, :cond_5

    const/4 v4, 0x1

    .line 376
    .local v4, "scp":I
    :cond_5
    aget-byte v6, v5, v6

    if-ne v4, v6, :cond_f

    .line 379
    const/4 v6, 0x1

    if-ne v4, v6, :cond_6

    and-int/lit8 v6, v2, 0x10

    if-eqz v6, :cond_6

    .line 380
    and-int/lit8 v2, v2, -0x11

    .line 384
    :cond_6
    const/16 v6, 0xff

    if-eqz v0, :cond_7

    if-ne v0, v6, :cond_8

    .line 385
    :cond_7
    invoke-static {v15, v5}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->access$000(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;[B)V

    .line 388
    :cond_8
    if-lez v0, :cond_a

    aget-byte v7, v5, v16

    int-to-byte v9, v0

    if-ne v7, v9, :cond_9

    goto :goto_3

    .line 389
    :cond_9
    new-instance v6, Ljavax/smartcardio/CardException;

    const-string v7, "Key set mismatch."

    invoke-direct {v6, v7}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 391
    :cond_a
    :goto_3
    aget-byte v7, v5, v16

    and-int/lit16 v9, v7, 0xff

    .line 394
    .end local p1    # "keySet":I
    .local v9, "keySet":I
    const/4 v0, 0x0

    .line 396
    .local v0, "sessionKeys":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;
    const/16 v6, 0xc

    const/4 v7, 0x1

    if-ne v4, v7, :cond_b

    .line 397
    invoke-direct {v1, v15, v11, v5}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->deriveSessionKeysSCP01(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;[B[B)Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;

    move-result-object v0

    move-object v6, v0

    goto :goto_4

    .line 399
    :cond_b
    aget-byte v7, v5, v6

    const/16 v16, 0xd

    aget-byte v6, v5, v16

    const/4 v10, 0x0

    invoke-direct {v1, v15, v7, v6, v10}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->deriveSessionKeysSCP02(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;BBZ)Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;

    move-result-object v0

    move-object v6, v0

    .line 403
    .end local v0    # "sessionKeys":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;
    .local v6, "sessionKeys":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;
    :goto_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v10, v0

    .line 406
    .local v10, "bo":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {v10, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 407
    const/16 v1, 0x8

    const/16 v7, 0xc

    invoke-virtual {v10, v5, v7, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    goto :goto_5

    .line 408
    :catch_0
    move-exception v0

    .line 412
    :goto_5
    invoke-static {v6}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->access$100(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;)[[B

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 413
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v7}, Lnet/sourceforge/gpj/cardservices/GPUtil;->pad80([B)[B

    move-result-object v7

    move/from16 p4, v2

    const/16 v1, 0x8

    .end local v2    # "scpVersion":I
    .restart local p4    # "scpVersion":I
    new-array v2, v1, [B

    .line 412
    invoke-static {v0, v7, v2}, Lnet/sourceforge/gpj/cardservices/GPUtil;->mac_3des([B[B[B)[B

    move-result-object v2

    .line 415
    .local v2, "myCryptogram":[B
    new-array v7, v1, [B

    .line 416
    .local v7, "cardCryptogram":[B
    const/16 v0, 0x14

    move/from16 v17, v3

    const/4 v3, 0x0

    .end local v3    # "sw":S
    .local v17, "sw":S
    invoke-static {v5, v0, v7, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    invoke-static {v7, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 422
    :try_start_1
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 423
    const/16 v3, 0xc

    invoke-virtual {v10, v5, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 424
    invoke-virtual {v10, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 427
    goto :goto_6

    .line 425
    :catch_1
    move-exception v0

    .line 429
    :goto_6
    invoke-static {v6}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->access$100(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;)[[B

    move-result-object v0

    const/16 v19, 0x0

    aget-object v0, v0, v19

    .line 430
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 429
    invoke-static {v1}, Lnet/sourceforge/gpj/cardservices/GPUtil;->pad80([B)[B

    move-result-object v1

    move-object/from16 p1, v2

    const/16 v3, 0x8

    .end local v2    # "myCryptogram":[B
    .local p1, "myCryptogram":[B
    new-array v2, v3, [B

    invoke-static {v0, v1, v2}, Lnet/sourceforge/gpj/cardservices/GPUtil;->mac_3des([B[B[B)[B

    move-result-object v16

    .line 432
    .local v16, "authData":[B
    new-instance v0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;

    move-object v2, v6

    .end local v6    # "sessionKeys":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;
    .local v2, "sessionKeys":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;
    const/4 v6, 0x0

    move-object v1, v7

    .end local v7    # "cardCryptogram":[B
    .local v1, "cardCryptogram":[B
    const/4 v7, 0x0

    move/from16 v20, v4

    .end local v4    # "scp":I
    .local v20, "scp":I
    const/4 v4, 0x1

    move-object/from16 v21, v5

    .end local v5    # "result":[B
    .local v21, "result":[B
    const/4 v5, 0x0

    const/16 v24, 0x8

    move-object/from16 v22, p1

    move/from16 v3, p4

    move-object/from16 v23, v1

    move-object/from16 v1, p0

    .end local v1    # "cardCryptogram":[B
    .end local p1    # "myCryptogram":[B
    .end local p4    # "scpVersion":I
    .local v3, "scpVersion":I
    .local v22, "myCryptogram":[B
    .local v23, "cardCryptogram":[B
    invoke-direct/range {v0 .. v7}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;-><init>(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;II[B[BLnet/sourceforge/gpj/cardservices/GlobalPlatformService$1;)V

    iput-object v0, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->wrapper:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;

    .line 434
    move v4, v9

    .end local v9    # "keySet":I
    .local v4, "keySet":I
    new-instance v9, Ljavax/smartcardio/CommandAPDU;

    move-object v5, v11

    .end local v11    # "rand":[B
    .local v5, "rand":[B
    const/16 v11, -0x7e

    move-object v6, v13

    .end local v13    # "initUpdate":Ljavax/smartcardio/CommandAPDU;
    .local v6, "initUpdate":Ljavax/smartcardio/CommandAPDU;
    const/4 v13, 0x0

    move-object v7, v10

    .end local v10    # "bo":Ljava/io/ByteArrayOutputStream;
    .local v7, "bo":Ljava/io/ByteArrayOutputStream;
    const/16 v10, -0x7c

    move-object/from16 p1, v7

    move v7, v4

    move-object v4, v14

    move-object/from16 v14, v16

    move-object/from16 v16, p1

    move-object/from16 p1, v2

    const/16 v2, -0x7000

    .end local v2    # "sessionKeys":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;
    .local v4, "response":Ljavax/smartcardio/ResponseAPDU;
    .local v7, "keySet":I
    .local v14, "authData":[B
    .local v16, "bo":Ljava/io/ByteArrayOutputStream;
    .local p1, "sessionKeys":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;
    invoke-direct/range {v9 .. v14}, Ljavax/smartcardio/CommandAPDU;-><init>(IIII[B)V

    .line 436
    .local v9, "externalAuthenticate":Ljavax/smartcardio/CommandAPDU;
    invoke-virtual {v1, v9}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;

    move-result-object v0

    .line 437
    .end local v4    # "response":Ljavax/smartcardio/ResponseAPDU;
    .local v0, "response":Ljavax/smartcardio/ResponseAPDU;
    invoke-virtual {v1, v9, v0}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->notifyExchangedAPDU(Ljavax/smartcardio/CommandAPDU;Ljavax/smartcardio/ResponseAPDU;)V

    .line 438
    invoke-virtual {v0}, Ljavax/smartcardio/ResponseAPDU;->getSW()I

    move-result v4

    int-to-short v4, v4

    .line 439
    .end local v17    # "sw":S
    .local v4, "sw":S
    if-ne v4, v2, :cond_d

    .line 443
    iget-object v2, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->wrapper:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;

    invoke-virtual {v2, v12}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->setSecurityLevel(I)V

    .line 444
    and-int/lit8 v2, v12, 0x10

    if-eqz v2, :cond_c

    .line 445
    iget-object v2, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->wrapper:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;

    const/16 v10, 0x8

    new-array v11, v10, [B

    invoke-static {v2, v11}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->access$302(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;[B)[B

    .line 446
    iget-object v2, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->wrapper:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;

    invoke-static {v2}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->access$400(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;)[B

    move-result-object v2

    iget-object v11, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->wrapper:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;

    invoke-static {v11}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->access$300(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;)[B

    move-result-object v11

    const/4 v13, 0x0

    invoke-static {v2, v13, v11, v13, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    :cond_c
    iput v3, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->scpVersion:I

    .line 449
    return-void

    .line 440
    :cond_d
    new-instance v2, Ljavax/smartcardio/CardException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "External authenticate failed. SW: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 441
    invoke-static {v4}, Lnet/sourceforge/gpj/cardservices/GPUtil;->swToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 418
    .end local v0    # "response":Ljavax/smartcardio/ResponseAPDU;
    .end local v3    # "scpVersion":I
    .end local v16    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v20    # "scp":I
    .end local v21    # "result":[B
    .end local v22    # "myCryptogram":[B
    .end local v23    # "cardCryptogram":[B
    .end local p1    # "sessionKeys":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;
    .local v2, "myCryptogram":[B
    .local v4, "scp":I
    .local v5, "result":[B
    .local v6, "sessionKeys":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;
    .local v7, "cardCryptogram":[B
    .local v9, "keySet":I
    .restart local v10    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "rand":[B
    .restart local v13    # "initUpdate":Ljavax/smartcardio/CommandAPDU;
    .local v14, "response":Ljavax/smartcardio/ResponseAPDU;
    .restart local v17    # "sw":S
    .restart local p4    # "scpVersion":I
    :cond_e
    move-object/from16 v22, v2

    .end local v2    # "myCryptogram":[B
    .restart local v22    # "myCryptogram":[B
    new-instance v0, Ljavax/smartcardio/CardException;

    const-string v2, "Card cryptogram invalid."

    invoke-direct {v0, v2}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    .end local v6    # "sessionKeys":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;
    .end local v7    # "cardCryptogram":[B
    .end local v9    # "keySet":I
    .end local v10    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "sw":S
    .end local v22    # "myCryptogram":[B
    .end local p4    # "scpVersion":I
    .local v2, "scpVersion":I
    .local v3, "sw":S
    .local p1, "keySet":I
    :cond_f
    move/from16 v17, v3

    .end local v3    # "sw":S
    .restart local v17    # "sw":S
    new-instance v3, Ljavax/smartcardio/CardException;

    const-string v7, "Secure Channel Protocol version mismatch."

    invoke-direct {v3, v7}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 370
    .end local v2    # "scpVersion":I
    .end local v4    # "scp":I
    .end local v17    # "sw":S
    .restart local v3    # "sw":S
    .restart local p4    # "scpVersion":I
    :cond_10
    move/from16 v17, v3

    move-object/from16 v21, v5

    .end local v3    # "sw":S
    .end local v5    # "result":[B
    .restart local v17    # "sw":S
    .restart local v21    # "result":[B
    new-instance v3, Ljavax/smartcardio/CardException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wrong initialize update response length."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v21 .. v21}, Lnet/sourceforge/gpj/cardservices/GPUtil;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 365
    .end local v17    # "sw":S
    .end local v21    # "result":[B
    .restart local v3    # "sw":S
    :cond_11
    move/from16 v17, v3

    .end local v3    # "sw":S
    .restart local v17    # "sw":S
    new-instance v3, Ljavax/smartcardio/CardException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wrong initialize update, SW: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 366
    invoke-static/range {v17 .. v17}, Lnet/sourceforge/gpj/cardservices/GPUtil;->swToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 330
    .end local v11    # "rand":[B
    .end local v13    # "initUpdate":Ljavax/smartcardio/CommandAPDU;
    .end local v14    # "response":Ljavax/smartcardio/ResponseAPDU;
    .end local v17    # "sw":S
    :cond_12
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Key set "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not defined."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 321
    .end local v12    # "securityLevel":I
    .end local v15    # "staticKeys":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;
    .restart local p5    # "securityLevel":I
    :cond_13
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Wrong security level specification"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 315
    .end local v8    # "mask":I
    :cond_14
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Wrong key set."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 310
    :cond_15
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Implicit secure channels cannot be initialized explicitly (use the constructor)."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 305
    :cond_16
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid SCP version."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public openWithDefaultKeys()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 461
    invoke-virtual {p0}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->open()V

    .line 462
    const/4 v1, 0x0

    .line 463
    .local v1, "keySet":I
    sget-object v0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->defaultEncKey:[B

    sget-object v2, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->defaultMacKey:[B

    sget-object v3, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->defaultKekKey:[B

    invoke-virtual {p0, v1, v0, v2, v3}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->setKeys(I[B[B[B)V

    .line 464
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->openSecureChannel(IIIIIZ)V

    .line 465
    return-void
.end method

.method public removeAPDUListener(Lnet/sourceforge/gpj/cardservices/APDUListener;)V
    .locals 1
    .param p1, "l"    # Lnet/sourceforge/gpj/cardservices/APDUListener;

    .line 224
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->apduListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 225
    return-void
.end method

.method public setKeys(I[B[B[B)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "encKey"    # [B
    .param p3, "macKey"    # [B
    .param p4, "kekKey"    # [B

    .line 606
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "index":I
    .end local p2    # "encKey":[B
    .end local p3    # "macKey":[B
    .end local p4    # "kekKey":[B
    .local v1, "index":I
    .local v2, "encKey":[B
    .local v3, "macKey":[B
    .local v4, "kekKey":[B
    invoke-virtual/range {v0 .. v5}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->setKeys(I[B[B[BI)V

    .line 607
    return-void
.end method

.method public setKeys(I[B[B[BI)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "encKey"    # [B
    .param p3, "macKey"    # [B
    .param p4, "kekKey"    # [B
    .param p5, "diversification"    # I

    .line 602
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->keys:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .end local p2    # "encKey":[B
    .end local p3    # "macKey":[B
    .end local p4    # "kekKey":[B
    .end local p5    # "diversification":I
    .local v4, "encKey":[B
    .local v5, "macKey":[B
    .local v6, "kekKey":[B
    .local v7, "diversification":I
    invoke-direct/range {v2 .. v8}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;-><init>(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;[B[B[BILnet/sourceforge/gpj/cardservices/GlobalPlatformService$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    return-void
.end method

.method public transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;
    .locals 17
    .param p1, "command"    # Ljavax/smartcardio/CommandAPDU;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 550
    move-object/from16 v1, p0

    iget-object v0, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->wrapper:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;

    if-nez v0, :cond_5

    iget v0, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->scpVersion:I

    const/4 v2, 0x5

    const/4 v3, 0x6

    if-eq v0, v2, :cond_0

    iget v0, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->scpVersion:I

    if-eq v0, v3, :cond_0

    iget v0, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->scpVersion:I

    const/16 v4, 0x9

    if-eq v0, v4, :cond_0

    iget v0, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->scpVersion:I

    const/16 v4, 0xa

    if-ne v0, v4, :cond_5

    .line 553
    :cond_0
    new-instance v0, Ljavax/smartcardio/CommandAPDU;

    const/16 v4, 0xe0

    const/16 v5, -0x80

    const/16 v6, -0x36

    const/4 v7, 0x0

    invoke-direct {v0, v5, v6, v7, v4}, Ljavax/smartcardio/CommandAPDU;-><init>(IIII)V

    move-object v8, v0

    .line 554
    .local v8, "getData":Ljavax/smartcardio/CommandAPDU;
    iget-object v0, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->channel:Ljavax/smartcardio/CardChannel;

    invoke-virtual {v0, v8}, Ljavax/smartcardio/CardChannel;->transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;

    move-result-object v9

    .line 555
    .local v9, "data":Ljavax/smartcardio/ResponseAPDU;
    invoke-virtual {v1, v8, v9}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->notifyExchangedAPDU(Ljavax/smartcardio/CommandAPDU;Ljavax/smartcardio/ResponseAPDU;)V

    .line 557
    invoke-virtual {v9}, Ljavax/smartcardio/ResponseAPDU;->getBytes()[B

    move-result-object v0

    .line 558
    .local v0, "result":[B
    const/4 v4, 0x0

    .line 559
    .local v4, "keySet":I
    array-length v10, v0

    if-le v10, v3, :cond_2

    .line 560
    aget-byte v10, v0, v7

    if-eqz v10, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    :goto_0
    aget-byte v4, v0, v2

    move v10, v4

    goto :goto_1

    .line 559
    :cond_2
    move v10, v4

    .line 562
    .end local v4    # "keySet":I
    .local v10, "keySet":I
    :goto_1
    iget-object v2, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->keys:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;

    .line 563
    .local v11, "staticKeys":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;
    if-eqz v11, :cond_4

    .line 568
    new-instance v2, Ljavax/smartcardio/CommandAPDU;

    const/16 v3, 0xc1

    invoke-direct {v2, v5, v6, v7, v3}, Ljavax/smartcardio/CommandAPDU;-><init>(IIII)V

    move-object v12, v2

    .line 569
    .local v12, "getSeq":Ljavax/smartcardio/CommandAPDU;
    iget-object v2, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->channel:Ljavax/smartcardio/CardChannel;

    invoke-virtual {v2, v12}, Ljavax/smartcardio/CardChannel;->transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;

    move-result-object v13

    .line 570
    .local v13, "seq":Ljavax/smartcardio/ResponseAPDU;
    invoke-virtual {v1, v12, v13}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->notifyExchangedAPDU(Ljavax/smartcardio/CommandAPDU;Ljavax/smartcardio/ResponseAPDU;)V

    .line 571
    invoke-virtual {v13}, Ljavax/smartcardio/ResponseAPDU;->getBytes()[B

    move-result-object v14

    .line 572
    .end local v0    # "result":[B
    .local v14, "result":[B
    invoke-virtual {v13}, Ljavax/smartcardio/ResponseAPDU;->getSW()I

    move-result v0

    int-to-short v15, v0

    .line 573
    .local v15, "sw":S
    const/16 v0, -0x7000

    if-ne v15, v0, :cond_3

    .line 579
    const/4 v0, 0x2

    :try_start_0
    aget-byte v0, v14, v0

    const/4 v2, 0x3

    aget-byte v3, v14, v2

    const/4 v4, 0x1

    invoke-direct {v1, v11, v0, v3, v4}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->deriveSessionKeysSCP02(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;BBZ)Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;

    move-result-object v0

    .line 581
    .local v0, "sessionKeys":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;
    iget-object v3, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->sdAID:Lnet/sourceforge/gpj/cardservices/AID;

    invoke-virtual {v3}, Lnet/sourceforge/gpj/cardservices/AID;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lnet/sourceforge/gpj/cardservices/GPUtil;->pad80([B)[B

    move-result-object v3

    .line 583
    .local v3, "temp":[B
    invoke-static {v0}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->access$100(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;)[[B

    move-result-object v5

    aget-object v4, v5, v4

    const/16 v5, 0x8

    new-array v6, v5, [B

    invoke-static {v4, v3, v6}, Lnet/sourceforge/gpj/cardservices/GPUtil;->mac_des_3des([B[B[B)[B

    move-result-object v4

    .line 585
    .local v4, "icv":[B
    invoke-static {v0}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->access$100(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;)[[B

    move-result-object v6

    aget-object v2, v6, v2

    new-array v5, v5, [B

    invoke-static {v2, v3, v5}, Lnet/sourceforge/gpj/cardservices/GPUtil;->mac_des_3des([B[B[B)[B

    move-result-object v6

    .line 587
    .local v6, "ricv":[B
    move-object v2, v0

    .end local v0    # "sessionKeys":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;
    .local v2, "sessionKeys":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;
    new-instance v0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;

    move-object v5, v3

    .end local v3    # "temp":[B
    .local v5, "temp":[B
    iget v3, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->scpVersion:I

    move-object v7, v5

    move-object v5, v4

    .end local v4    # "icv":[B
    .local v5, "icv":[B
    .local v7, "temp":[B
    const/4 v4, 0x1

    move-object/from16 v16, v7

    .end local v7    # "temp":[B
    .local v16, "temp":[B
    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;-><init>(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;II[B[BLnet/sourceforge/gpj/cardservices/GlobalPlatformService$1;)V

    iput-object v0, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->wrapper:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    .end local v2    # "sessionKeys":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;
    .end local v5    # "icv":[B
    .end local v6    # "ricv":[B
    .end local v16    # "temp":[B
    goto :goto_2

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljavax/smartcardio/CardException;

    const-string v3, "Implicit secure channel initialization failed."

    invoke-direct {v2, v3, v0}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 574
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v0, Ljavax/smartcardio/CardException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading sequence counter failed. SW: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 575
    invoke-static {v15}, Lnet/sourceforge/gpj/cardservices/GPUtil;->swToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    .end local v12    # "getSeq":Ljavax/smartcardio/CommandAPDU;
    .end local v13    # "seq":Ljavax/smartcardio/ResponseAPDU;
    .end local v14    # "result":[B
    .end local v15    # "sw":S
    .local v0, "result":[B
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not defined."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 594
    .end local v0    # "result":[B
    .end local v8    # "getData":Ljavax/smartcardio/CommandAPDU;
    .end local v9    # "data":Ljavax/smartcardio/ResponseAPDU;
    .end local v10    # "keySet":I
    .end local v11    # "staticKeys":Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;
    :cond_5
    :goto_2
    iget-object v0, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->wrapper:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;

    move-object/from16 v2, p1

    invoke-static {v0, v2}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->access$600(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/CommandAPDU;

    move-result-object v0

    .line 595
    .local v0, "wc":Ljavax/smartcardio/CommandAPDU;
    iget-object v3, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->channel:Ljavax/smartcardio/CardChannel;

    invoke-virtual {v3, v0}, Ljavax/smartcardio/CardChannel;->transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;

    move-result-object v3

    .line 596
    .local v3, "wr":Ljavax/smartcardio/ResponseAPDU;
    invoke-virtual {v1, v0, v3}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->notifyExchangedAPDU(Ljavax/smartcardio/CommandAPDU;Ljavax/smartcardio/ResponseAPDU;)V

    .line 597
    iget-object v4, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->wrapper:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;

    invoke-static {v4, v3}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->access$700(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;Ljavax/smartcardio/ResponseAPDU;)Ljavax/smartcardio/ResponseAPDU;

    move-result-object v4

    return-object v4
.end method
