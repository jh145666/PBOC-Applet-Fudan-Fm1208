.class public Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;
.super Ljava/lang/Object;
.source "GlobalPlatformService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SecureChannelWrapper"
.end annotation


# instance fields
.field private enc:Z

.field private icv:[B

.field private icvEnc:Z

.field private mac:Z

.field private postAPDU:Z

.field private preAPDU:Z

.field private rMac:Ljava/io/ByteArrayOutputStream;

.field private ricv:[B

.field private rmac:Z

.field private scp:I

.field private sessionKeys:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;

.field final synthetic this$0:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;


# direct methods
.method private constructor <init>(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;II[B[B)V
    .locals 1
    .param p1, "this$0"    # Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .param p2, "sessionKeys"    # Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;
    .param p3, "scp"    # I
    .param p4, "securityLevel"    # I
    .param p5, "icv"    # [B
    .param p6, "ricv"    # [B

    .line 1116
    iput-object p1, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->this$0:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1099
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->sessionKeys:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;

    .line 1101
    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->icv:[B

    .line 1103
    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->ricv:[B

    .line 1105
    const/4 v0, 0x0

    iput v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->scp:I

    .line 1113
    iput-boolean v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->mac:Z

    iput-boolean v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->enc:Z

    iput-boolean v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->rmac:Z

    .line 1117
    iput-object p2, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->sessionKeys:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;

    .line 1118
    iput-object p5, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->icv:[B

    .line 1119
    iput-object p6, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->ricv:[B

    .line 1120
    invoke-virtual {p0, p3}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->setSCPVersion(I)V

    .line 1121
    invoke-virtual {p0, p4}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->setSecurityLevel(I)V

    .line 1122
    return-void
.end method

.method synthetic constructor <init>(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;II[B[BLnet/sourceforge/gpj/cardservices/GlobalPlatformService$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
    .param p2, "x1"    # Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # [B
    .param p6, "x5"    # [B
    .param p7, "x6"    # Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1;

    .line 1097
    invoke-direct/range {p0 .. p6}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;-><init>(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;II[B[B)V

    return-void
.end method

.method static synthetic access$300(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;)[B
    .locals 1
    .param p0, "x0"    # Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;

    .line 1097
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->ricv:[B

    return-object v0
.end method

.method static synthetic access$302(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;[B)[B
    .locals 0
    .param p0, "x0"    # Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;
    .param p1, "x1"    # [B

    .line 1097
    iput-object p1, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->ricv:[B

    return-object p1
.end method

.method static synthetic access$400(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;)[B
    .locals 1
    .param p0, "x0"    # Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;

    .line 1097
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->icv:[B

    return-object v0
.end method

.method static synthetic access$600(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/CommandAPDU;
    .locals 1
    .param p0, "x0"    # Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;
    .param p1, "x1"    # Ljavax/smartcardio/CommandAPDU;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 1097
    invoke-direct {p0, p1}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->wrap(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/CommandAPDU;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;Ljavax/smartcardio/ResponseAPDU;)Ljavax/smartcardio/ResponseAPDU;
    .locals 1
    .param p0, "x0"    # Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;
    .param p1, "x1"    # Ljavax/smartcardio/ResponseAPDU;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 1097
    invoke-direct {p0, p1}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->unwrap(Ljavax/smartcardio/ResponseAPDU;)Ljavax/smartcardio/ResponseAPDU;

    move-result-object v0

    return-object v0
.end method

.method private clearBits(BB)B
    .locals 1
    .param p1, "b"    # B
    .param p2, "mask"    # B

    .line 1171
    xor-int/lit8 v0, p2, -0x1

    and-int/2addr v0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method private setBits(BB)B
    .locals 1
    .param p1, "b"    # B
    .param p2, "mask"    # B

    .line 1175
    or-int v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method private unwrap(Ljavax/smartcardio/ResponseAPDU;)Ljavax/smartcardio/ResponseAPDU;
    .locals 6
    .param p1, "response"    # Ljavax/smartcardio/ResponseAPDU;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 1307
    iget-boolean v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->rmac:Z

    if-eqz v0, :cond_2

    .line 1308
    invoke-virtual {p1}, Ljavax/smartcardio/ResponseAPDU;->getData()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 1312
    invoke-virtual {p1}, Ljavax/smartcardio/ResponseAPDU;->getData()[B

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, v1

    .line 1313
    .local v0, "respLen":I
    iget-object v2, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->rMac:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1314
    iget-object v2, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->rMac:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljavax/smartcardio/ResponseAPDU;->getData()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1315
    iget-object v2, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->rMac:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljavax/smartcardio/ResponseAPDU;->getSW1()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1316
    iget-object v2, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->rMac:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljavax/smartcardio/ResponseAPDU;->getSW2()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1318
    iget-object v2, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->sessionKeys:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;

    invoke-static {v2}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->access$100(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;)[[B

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    iget-object v3, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->rMac:Ljava/io/ByteArrayOutputStream;

    .line 1319
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lnet/sourceforge/gpj/cardservices/GPUtil;->pad80([B)[B

    move-result-object v3

    iget-object v5, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->ricv:[B

    .line 1318
    invoke-static {v2, v3, v5}, Lnet/sourceforge/gpj/cardservices/GPUtil;->mac_des_3des([B[B[B)[B

    move-result-object v2

    iput-object v2, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->ricv:[B

    .line 1321
    new-array v2, v1, [B

    .line 1322
    .local v2, "actualMac":[B
    invoke-virtual {p1}, Ljavax/smartcardio/ResponseAPDU;->getData()[B

    move-result-object v3

    invoke-static {v3, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1323
    iget-object v1, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->ricv:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1326
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1327
    .local v1, "o":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1}, Ljavax/smartcardio/ResponseAPDU;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1328
    invoke-virtual {p1}, Ljavax/smartcardio/ResponseAPDU;->getSW1()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1329
    invoke-virtual {p1}, Ljavax/smartcardio/ResponseAPDU;->getSW2()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1330
    new-instance v3, Ljavax/smartcardio/ResponseAPDU;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/smartcardio/ResponseAPDU;-><init>([B)V

    move-object p1, v3

    goto :goto_0

    .line 1324
    .end local v1    # "o":Ljava/io/ByteArrayOutputStream;
    :cond_0
    new-instance v1, Ljavax/smartcardio/CardException;

    const-string v3, "RMAC invalid."

    invoke-direct {v1, v3}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1309
    .end local v0    # "respLen":I
    .end local v2    # "actualMac":[B
    :cond_1
    new-instance v0, Ljavax/smartcardio/CardException;

    const-string v1, "Wrong response length (too short)."

    invoke-direct {v0, v1}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1332
    :cond_2
    :goto_0
    return-object p1
.end method

.method private wrap(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/CommandAPDU;
    .locals 18
    .param p1, "command"    # Ljavax/smartcardio/CommandAPDU;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 1180
    move-object/from16 v1, p0

    :try_start_0
    iget-boolean v0, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->rmac:Z

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->rMac:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1182
    iget-object v0, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->rMac:Ljava/io/ByteArrayOutputStream;

    invoke-virtual/range {p1 .. p1}, Ljavax/smartcardio/CommandAPDU;->getCLA()I

    move-result v2

    int-to-byte v2, v2

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->clearBits(BB)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1183
    iget-object v0, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->rMac:Ljava/io/ByteArrayOutputStream;

    invoke-virtual/range {p1 .. p1}, Ljavax/smartcardio/CommandAPDU;->getINS()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1184
    iget-object v0, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->rMac:Ljava/io/ByteArrayOutputStream;

    invoke-virtual/range {p1 .. p1}, Ljavax/smartcardio/CommandAPDU;->getP1()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1185
    iget-object v0, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->rMac:Ljava/io/ByteArrayOutputStream;

    invoke-virtual/range {p1 .. p1}, Ljavax/smartcardio/CommandAPDU;->getP2()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1186
    invoke-virtual/range {p1 .. p1}, Ljavax/smartcardio/CommandAPDU;->getNc()I

    move-result v0

    if-ltz v0, :cond_0

    .line 1187
    iget-object v0, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->rMac:Ljava/io/ByteArrayOutputStream;

    invoke-virtual/range {p1 .. p1}, Ljavax/smartcardio/CommandAPDU;->getNc()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1188
    iget-object v0, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->rMac:Ljava/io/ByteArrayOutputStream;

    invoke-virtual/range {p1 .. p1}, Ljavax/smartcardio/CommandAPDU;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1191
    :cond_0
    iget-boolean v0, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->mac:Z

    if-nez v0, :cond_1

    iget-boolean v0, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->enc:Z

    if-nez v0, :cond_1

    .line 1192
    return-object p1

    .line 1195
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljavax/smartcardio/CommandAPDU;->getCLA()I

    move-result v0

    .line 1196
    .local v0, "origCLA":I
    move v2, v0

    .line 1197
    .local v2, "newCLA":I
    invoke-virtual/range {p1 .. p1}, Ljavax/smartcardio/CommandAPDU;->getINS()I

    move-result v3

    .line 1198
    .local v3, "origINS":I
    invoke-virtual/range {p1 .. p1}, Ljavax/smartcardio/CommandAPDU;->getP1()I

    move-result v4

    .line 1199
    .local v4, "origP1":I
    invoke-virtual/range {p1 .. p1}, Ljavax/smartcardio/CommandAPDU;->getP2()I

    move-result v5

    .line 1200
    .local v5, "origP2":I
    invoke-virtual/range {p1 .. p1}, Ljavax/smartcardio/CommandAPDU;->getData()[B

    move-result-object v6

    .line 1201
    .local v6, "origData":[B
    invoke-virtual/range {p1 .. p1}, Ljavax/smartcardio/CommandAPDU;->getNc()I

    move-result v7

    .line 1202
    .local v7, "origLc":I
    move v8, v7

    .line 1203
    .local v8, "newLc":I
    const/4 v9, 0x0

    .line 1204
    .local v9, "newData":[B
    invoke-virtual/range {p1 .. p1}, Ljavax/smartcardio/CommandAPDU;->getNe()I

    move-result v10

    .line 1205
    .local v10, "le":I
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1207
    .local v11, "t":Ljava/io/ByteArrayOutputStream;
    const/16 v12, 0xff

    .line 1209
    .local v12, "maxLen":I
    iget-boolean v13, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->mac:Z

    if-eqz v13, :cond_2

    .line 1210
    add-int/lit8 v12, v12, -0x8

    .line 1211
    :cond_2
    iget-boolean v13, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->enc:Z

    if-eqz v13, :cond_3

    .line 1212
    add-int/lit8 v12, v12, -0x8

    .line 1214
    :cond_3
    if-gt v7, v12, :cond_11

    .line 1218
    iget-boolean v13, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->mac:Z

    const/16 v15, 0x8

    if-eqz v13, :cond_a

    .line 1220
    iget-object v13, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->icv:[B

    if-nez v13, :cond_4

    .line 1221
    new-array v13, v15, [B

    iput-object v13, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->icv:[B

    goto :goto_1

    .line 1222
    :cond_4
    iget-boolean v13, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->icvEnc:Z

    if-eqz v13, :cond_6

    .line 1223
    const/4 v13, 0x0

    .line 1224
    .local v13, "c":Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;
    iget v14, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->scp:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 1225
    iget-object v14, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->sessionKeys:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;

    .line 1227
    invoke-static {v14}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->access$100(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;)[[B

    move-result-object v14

    aget-object v14, v14, v15

    const/16 v15, 0x18

    invoke-static {v14, v15}, Lnet/sourceforge/gpj/cardservices/GPUtil;->getKey([BI)[B

    move-result-object v14

    .line 1225
    const/4 v15, 0x2

    invoke-static {v15, v14}, Lnet/sourceforge/gpj/cardservices/ciphers/ICipher$Factory;->getImplementation(I[B)Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;

    move-result-object v14

    .end local v13    # "c":Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;
    .local v14, "c":Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;
    goto :goto_0

    .line 1229
    .end local v14    # "c":Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;
    .restart local v13    # "c":Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;
    :cond_5
    iget-object v14, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->sessionKeys:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;

    .line 1231
    invoke-static {v14}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->access$100(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;)[[B

    move-result-object v14

    const/16 v16, 0x1

    aget-object v14, v14, v16

    .line 1230
    const/16 v15, 0x8

    invoke-static {v14, v15}, Lnet/sourceforge/gpj/cardservices/GPUtil;->getKey([BI)[B

    move-result-object v14

    .line 1229
    const/4 v15, 0x4

    invoke-static {v15, v14}, Lnet/sourceforge/gpj/cardservices/ciphers/ICipher$Factory;->getImplementation(I[B)Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;

    move-result-object v14

    .line 1233
    .end local v13    # "c":Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;
    .restart local v14    # "c":Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;
    :goto_0
    iget-object v13, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->icv:[B

    invoke-interface {v14, v13}, Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;->encrypt([B)[B

    move-result-object v13

    iput-object v13, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->icv:[B

    .line 1236
    .end local v14    # "c":Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;
    :cond_6
    :goto_1
    iget-boolean v13, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->preAPDU:Z

    if-eqz v13, :cond_7

    .line 1237
    int-to-byte v13, v2

    const/4 v15, 0x4

    invoke-direct {v1, v13, v15}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->setBits(BB)B

    move-result v13

    move v2, v13

    .line 1238
    add-int/lit8 v8, v8, 0x8

    .line 1240
    :cond_7
    invoke-virtual {v11, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1241
    invoke-virtual {v11, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1242
    invoke-virtual {v11, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1243
    invoke-virtual {v11, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1244
    invoke-virtual {v11, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1245
    invoke-virtual {v11, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1247
    iget v13, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->scp:I

    const/4 v15, 0x1

    if-ne v13, v15, :cond_8

    .line 1248
    iget-object v13, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->sessionKeys:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;

    invoke-static {v13}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->access$100(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;)[[B

    move-result-object v13

    aget-object v13, v13, v15

    .line 1249
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    invoke-static {v14}, Lnet/sourceforge/gpj/cardservices/GPUtil;->pad80([B)[B

    move-result-object v14

    iget-object v15, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->icv:[B

    .line 1248
    invoke-static {v13, v14, v15}, Lnet/sourceforge/gpj/cardservices/GPUtil;->mac_3des([B[B[B)[B

    move-result-object v13

    iput-object v13, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->icv:[B

    goto :goto_2

    .line 1251
    :cond_8
    iget-object v13, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->sessionKeys:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;

    invoke-static {v13}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->access$100(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;)[[B

    move-result-object v13

    const/16 v16, 0x1

    aget-object v13, v13, v16

    .line 1252
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    invoke-static {v14}, Lnet/sourceforge/gpj/cardservices/GPUtil;->pad80([B)[B

    move-result-object v14

    iget-object v15, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->icv:[B

    .line 1251
    invoke-static {v13, v14, v15}, Lnet/sourceforge/gpj/cardservices/GPUtil;->mac_des_3des([B[B[B)[B

    move-result-object v13

    iput-object v13, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->icv:[B

    .line 1255
    :goto_2
    iget-boolean v13, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->postAPDU:Z

    if-eqz v13, :cond_9

    .line 1256
    int-to-byte v13, v2

    const/4 v15, 0x4

    invoke-direct {v1, v13, v15}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->setBits(BB)B

    move-result v13

    .line 1257
    .end local v2    # "newCLA":I
    .local v13, "newCLA":I
    add-int/lit8 v8, v8, 0x8

    move v2, v13

    .line 1259
    .end local v13    # "newCLA":I
    .restart local v2    # "newCLA":I
    :cond_9
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1260
    move-object v9, v6

    .line 1263
    :cond_a
    iget-boolean v13, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->enc:Z

    if-eqz v13, :cond_d

    if-lez v7, :cond_d

    .line 1264
    iget v13, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->scp:I

    const/4 v15, 0x1

    if-ne v13, v15, :cond_b

    .line 1265
    invoke-virtual {v11, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1266
    invoke-virtual {v11, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1267
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v13

    const/16 v17, 0x8

    rem-int/lit8 v13, v13, 0x8

    if-eqz v13, :cond_c

    .line 1268
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    invoke-static {v13}, Lnet/sourceforge/gpj/cardservices/GPUtil;->pad80([B)[B

    move-result-object v13

    .line 1269
    .local v13, "x":[B
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1270
    invoke-virtual {v11, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1271
    .end local v13    # "x":[B
    goto :goto_3

    .line 1273
    :cond_b
    invoke-static {v6}, Lnet/sourceforge/gpj/cardservices/GPUtil;->pad80([B)[B

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1275
    :cond_c
    :goto_3
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v13

    array-length v14, v6

    sub-int/2addr v13, v14

    add-int/2addr v8, v13

    .line 1277
    iget-object v13, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->sessionKeys:Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;

    .line 1279
    invoke-static {v13}, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;->access$100(Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$KeySet;)[[B

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    .line 1278
    const/16 v15, 0x18

    invoke-static {v13, v15}, Lnet/sourceforge/gpj/cardservices/GPUtil;->getKey([BI)[B

    move-result-object v13

    const/16 v15, 0x8

    new-array v14, v15, [B

    .line 1277
    const/4 v15, 0x1

    invoke-static {v15, v13, v14}, Lnet/sourceforge/gpj/cardservices/ciphers/ICipher$Factory;->getImplementation(I[B[B)Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;

    move-result-object v13

    .line 1280
    .local v13, "c":Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    invoke-interface {v13, v14}, Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;->encrypt([B)[B

    move-result-object v14

    move-object v9, v14

    .line 1281
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1283
    .end local v13    # "c":Lnet/sourceforge/gpj/cardservices/ciphers/ICipher;
    :cond_d
    invoke-virtual {v11, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1284
    invoke-virtual {v11, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1285
    invoke-virtual {v11, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1286
    invoke-virtual {v11, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1287
    if-lez v8, :cond_e

    .line 1288
    invoke-virtual {v11, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1289
    invoke-virtual {v11, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1291
    :cond_e
    iget-boolean v13, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->mac:Z

    if-eqz v13, :cond_f

    .line 1292
    iget-object v13, v1, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->icv:[B

    invoke-virtual {v11, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1294
    :cond_f
    if-lez v10, :cond_10

    .line 1295
    invoke-virtual {v11, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1297
    :cond_10
    new-instance v13, Ljavax/smartcardio/CommandAPDU;

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    invoke-direct {v13, v14}, Ljavax/smartcardio/CommandAPDU;-><init>([B)V

    .line 1298
    .local v13, "wrapped":Ljavax/smartcardio/CommandAPDU;
    return-object v13

    .line 1215
    .end local v13    # "wrapped":Ljavax/smartcardio/CommandAPDU;
    :cond_11
    new-instance v13, Ljavax/smartcardio/CardException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "APDU too long for wrapping. LC: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Max"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;)V

    .end local p1    # "command":Ljavax/smartcardio/CommandAPDU;
    throw v13
    :try_end_0
    .catch Ljavax/smartcardio/CardException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1301
    .end local v0    # "origCLA":I
    .end local v2    # "newCLA":I
    .end local v3    # "origINS":I
    .end local v4    # "origP1":I
    .end local v5    # "origP2":I
    .end local v6    # "origData":[B
    .end local v7    # "origLc":I
    .end local v8    # "newLc":I
    .end local v9    # "newData":[B
    .end local v10    # "le":I
    .end local v11    # "t":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "maxLen":I
    .restart local p1    # "command":Ljavax/smartcardio/CommandAPDU;
    :catch_0
    move-exception v0

    .line 1302
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljavax/smartcardio/CardException;

    const-string v3, "APDU wrapping failed."

    invoke-direct {v2, v3, v0}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1299
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1300
    .local v0, "ce":Ljavax/smartcardio/CardException;
    throw v0
.end method


# virtual methods
.method public setSCPVersion(I)V
    .locals 8
    .param p1, "scp"    # I

    .line 1145
    const/4 v0, 0x2

    iput v0, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->scp:I

    .line 1146
    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ge p1, v2, :cond_0

    .line 1147
    iput v1, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->scp:I

    .line 1149
    :cond_0
    const/16 v3, 0xa

    const/16 v4, 0x9

    const/16 v5, 0x8

    const/4 v6, 0x7

    const/4 v7, 0x0

    if-eq p1, v0, :cond_2

    if-eq p1, v6, :cond_2

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_2

    if-ne p1, v3, :cond_1

    goto :goto_0

    .line 1153
    :cond_1
    iput-boolean v7, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->icvEnc:Z

    goto :goto_1

    .line 1151
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->icvEnc:Z

    .line 1156
    :goto_1
    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_4

    if-eq p1, v2, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    if-eq p1, v6, :cond_4

    if-ne p1, v5, :cond_3

    goto :goto_2

    .line 1160
    :cond_3
    iput-boolean v7, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->preAPDU:Z

    goto :goto_3

    .line 1158
    :cond_4
    :goto_2
    iput-boolean v1, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->preAPDU:Z

    .line 1162
    :goto_3
    const/4 v0, 0x5

    if-eq p1, v0, :cond_6

    const/4 v0, 0x6

    if-eq p1, v0, :cond_6

    if-eq p1, v4, :cond_6

    if-ne p1, v3, :cond_5

    goto :goto_4

    .line 1166
    :cond_5
    iput-boolean v7, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->postAPDU:Z

    goto :goto_5

    .line 1164
    :cond_6
    :goto_4
    iput-boolean v1, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->postAPDU:Z

    .line 1168
    :goto_5
    return-void
.end method

.method public setSecurityLevel(I)V
    .locals 3
    .param p1, "securityLevel"    # I

    .line 1125
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1126
    iput-boolean v2, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->mac:Z

    goto :goto_0

    .line 1128
    :cond_0
    iput-boolean v1, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->mac:Z

    .line 1130
    :goto_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 1131
    iput-boolean v2, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->enc:Z

    goto :goto_1

    .line 1133
    :cond_1
    iput-boolean v1, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->enc:Z

    .line 1136
    :goto_1
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_2

    .line 1137
    iput-boolean v2, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->rmac:Z

    goto :goto_2

    .line 1139
    :cond_2
    iput-boolean v1, p0, Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$SecureChannelWrapper;->rmac:Z

    .line 1142
    :goto_2
    return-void
.end method
