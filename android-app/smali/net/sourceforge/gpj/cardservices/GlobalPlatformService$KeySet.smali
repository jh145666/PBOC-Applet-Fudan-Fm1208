.class Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;
.super Ljava/lang/Object;
.source "GlobalPlatformService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeySet"
.end annotation


# instance fields
.field private diversification:I

.field private diversified:Z

.field private keys:[[B

.field final synthetic this$0:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;


# direct methods
.method private constructor <init>(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;)V
    .locals 2

    .line 1014
    iput-object p1, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->this$0:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1008
    const/4 p1, 0x0

    iput p1, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->diversification:I

    .line 1010
    iput-boolean p1, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->diversified:Z

    .line 1012
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->keys:[[B

    .line 1015
    const/4 v1, 0x4

    new-array v1, v1, [[B

    aput-object v0, v1, p1

    const/4 p1, 0x1

    aput-object v0, v1, p1

    const/4 p1, 0x2

    aput-object v0, v1, p1

    const/4 p1, 0x3

    aput-object v0, v1, p1

    iput-object v1, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->keys:[[B

    .line 1016
    return-void
.end method

.method synthetic constructor <init>(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .param p2, "x1"    # Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1;

    .line 1006
    invoke-direct {p0, p1}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;-><init>(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;)V

    return-void
.end method

.method private constructor <init>(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;[B)V
    .locals 0
    .param p2, "masterKey"    # [B

    .line 1022
    invoke-direct {p0, p1, p2, p2, p2}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;-><init>(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;[B[B[B)V

    return-void
.end method

.method private constructor <init>(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;[BI)V
    .locals 6
    .param p2, "masterKey"    # [B
    .param p3, "diversification"    # I

    .line 1025
    move-object v3, p2

    move-object v4, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .end local p2    # "masterKey":[B
    .end local p3    # "diversification":I
    .local v2, "masterKey":[B
    .local v5, "diversification":I
    invoke-direct/range {v0 .. v5}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;-><init>(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;[B[B[BI)V

    return-void
.end method

.method private constructor <init>(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;[B[B[B)V
    .locals 1
    .param p2, "encKey"    # [B
    .param p3, "macKey"    # [B
    .param p4, "kekKey"    # [B

    .line 1018
    iput-object p1, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->this$0:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1008
    const/4 p1, 0x0

    iput p1, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->diversification:I

    .line 1010
    iput-boolean p1, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->diversified:Z

    .line 1012
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->keys:[[B

    .line 1019
    const/4 v0, 0x3

    new-array v0, v0, [[B

    aput-object p2, v0, p1

    const/4 p1, 0x1

    aput-object p3, v0, p1

    const/4 p1, 0x2

    aput-object p4, v0, p1

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->keys:[[B

    .line 1020
    return-void
.end method

.method private constructor <init>(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;[B[B[BI)V
    .locals 0
    .param p2, "encKey"    # [B
    .param p3, "macKey"    # [B
    .param p4, "kekKey"    # [B
    .param p5, "diversification"    # I

    .line 1030
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;-><init>(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;[B[B[B)V

    .line 1031
    iput p5, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->diversification:I

    .line 1032
    return-void
.end method

.method synthetic constructor <init>(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;[B[B[BILnet/sourceforge/gpj/cardservices/GlobalPlatformService$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .param p2, "x1"    # [B
    .param p3, "x2"    # [B
    .param p4, "x3"    # [B
    .param p5, "x4"    # I
    .param p6, "x5"    # Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1;

    .line 1006
    invoke-direct/range {p0 .. p5}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;-><init>(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;[B[B[BI)V

    return-void
.end method

.method static synthetic access$000(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;[B)V
    .locals 0
    .param p0, "x0"    # Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;
    .param p1, "x1"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 1006
    invoke-direct {p0, p1}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->diversify([B)V

    return-void
.end method

.method static synthetic access$100(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;)[[B
    .locals 1
    .param p0, "x0"    # Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;

    .line 1006
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->keys:[[B

    return-object v0
.end method

.method private diversify([B)V
    .locals 5
    .param p1, "diverData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 1035
    iget-boolean v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->diversified:Z

    if-nez v0, :cond_2

    iget v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->diversification:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 1039
    :cond_0
    nop

    .line 1040
    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lnet/sourceforge/gpj/cardservices/ciphers/ICipher$Factory;->getImplementation(I)Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;

    move-result-object v0

    .line 1041
    .local v0, "cipher":Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 1042
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 1043
    add-int/lit8 v3, v2, 0x1

    invoke-direct {p0, v1, p1, v3}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->fillData([B[BI)V

    .line 1044
    iget-object v3, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->keys:[[B

    aget-object v3, v3, v2

    const/16 v4, 0x18

    invoke-static {v3, v4}, Lnet/sourceforge/gpj/cardservices/GPUtil;->getKey([BI)[B

    move-result-object v3

    invoke-interface {v0, v3}, Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;->setKey([B)V

    .line 1045
    iget-object v3, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->keys:[[B

    invoke-interface {v0, v1}, Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;->encrypt([B)[B

    move-result-object v4

    aput-object v4, v3, v2

    .line 1042
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1047
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->diversified:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1051
    .end local v0    # "cipher":Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;
    .end local v1    # "data":[B
    nop

    .line 1052
    return-void

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->diversified:Z

    .line 1050
    new-instance v1, Ljavax/smartcardio/CardException;

    const-string v2, "Diversification failed."

    invoke-direct {v1, v2, v0}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1036
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method private fillData([B[BI)V
    .locals 20
    .param p1, "data"    # [B
    .param p2, "res"    # [B
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 1056
    move/from16 v0, p3

    move-object/from16 v1, p0

    iget v2, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->diversification:I

    const/16 v4, 0xd

    const/16 v5, 0xc

    const/16 v6, 0xb

    const/16 v7, 0xa

    const/16 v8, -0x10

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/16 v11, 0xf

    const/16 v12, 0x9

    const/16 v13, 0x8

    const/4 v14, 0x0

    const/4 v15, 0x7

    const/16 v16, 0x6

    const/16 v17, 0x5

    const/16 v18, 0x4

    const/16 v19, 0xe

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1058
    aget-byte v2, p2, v14

    aput-byte v2, p1, v14

    .line 1059
    aget-byte v2, p2, v3

    aput-byte v2, p1, v3

    .line 1060
    aget-byte v2, p2, v18

    aput-byte v2, p1, v10

    .line 1061
    aget-byte v2, p2, v17

    aput-byte v2, p1, v9

    .line 1062
    aget-byte v2, p2, v16

    aput-byte v2, p1, v18

    .line 1063
    aget-byte v2, p2, v15

    aput-byte v2, p1, v17

    .line 1064
    aput-byte v8, p1, v16

    .line 1065
    int-to-byte v2, v0

    aput-byte v2, p1, v15

    .line 1066
    aget-byte v2, p2, v14

    aput-byte v2, p1, v13

    .line 1067
    aget-byte v2, p2, v3

    aput-byte v2, p1, v12

    .line 1068
    aget-byte v2, p2, v18

    aput-byte v2, p1, v7

    .line 1069
    aget-byte v2, p2, v17

    aput-byte v2, p1, v6

    .line 1070
    aget-byte v2, p2, v16

    aput-byte v2, p1, v5

    .line 1071
    aget-byte v2, p2, v15

    aput-byte v2, p1, v4

    .line 1072
    aput-byte v11, p1, v19

    .line 1073
    int-to-byte v2, v0

    aput-byte v2, p1, v11

    goto :goto_0

    .line 1076
    :cond_0
    aget-byte v2, p2, v18

    aput-byte v2, p1, v14

    .line 1077
    aget-byte v2, p2, v17

    aput-byte v2, p1, v3

    .line 1078
    aget-byte v2, p2, v16

    aput-byte v2, p1, v10

    .line 1079
    aget-byte v2, p2, v15

    aput-byte v2, p1, v9

    .line 1080
    aget-byte v2, p2, v13

    aput-byte v2, p1, v18

    .line 1081
    aget-byte v2, p2, v12

    aput-byte v2, p1, v17

    .line 1082
    aput-byte v8, p1, v16

    .line 1083
    int-to-byte v2, v0

    aput-byte v2, p1, v15

    .line 1084
    aget-byte v2, p2, v18

    aput-byte v2, p1, v13

    .line 1085
    aget-byte v2, p2, v17

    aput-byte v2, p1, v12

    .line 1086
    aget-byte v2, p2, v16

    aput-byte v2, p1, v7

    .line 1087
    aget-byte v2, p2, v15

    aput-byte v2, p1, v6

    .line 1088
    aget-byte v2, p2, v13

    aput-byte v2, p1, v5

    .line 1089
    aget-byte v2, p2, v12

    aput-byte v2, p1, v4

    .line 1090
    aput-byte v11, p1, v19

    .line 1091
    int-to-byte v2, v0

    aput-byte v2, p1, v11

    .line 1093
    :goto_0
    return-void
.end method
