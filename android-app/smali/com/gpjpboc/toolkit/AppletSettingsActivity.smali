.class public Lcom/gpjpboc/toolkit/AppletSettingsActivity;
.super Landroid/app/Activity;
.source "AppletSettingsActivity.java"


# static fields
.field private static final H:Landroid/os/Handler;


# instance fields
.field private cbAuth:Landroid/widget/CheckBox;

.field private cbRecords:Landroid/widget/CheckBox;

.field private dep:Landroid/nfc/tech/IsoDep;

.field private etAid:Landroid/widget/EditText;

.field private etAtc:Landroid/widget/EditText;

.field private etExt:Landroid/widget/EditText;

.field private etFci:Landroid/widget/EditText;

.field private etFciMf:Landroid/widget/EditText;

.field private etInt:Landroid/widget/EditText;

.field private etMac:Landroid/widget/EditText;

.field private etPin:Landroid/widget/EditText;

.field private rgAtc:Landroid/widget/RadioGroup;

.field private rgWallet:Landroid/widget/RadioGroup;

.field private tvDetect:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->H:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/gpjpboc/toolkit/AppletSettingsActivity;)V
    .locals 0

    .line 206
    invoke-direct {p0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->detect()V

    return-void
.end method

.method static synthetic access$1(Lcom/gpjpboc/toolkit/AppletSettingsActivity;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->save()V

    return-void
.end method

.method static synthetic access$10(Ljava/io/ByteArrayOutputStream;I[B)V
    .locals 0

    .line 390
    invoke-static {p0, p1, p2}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->addTlv(Ljava/io/ByteArrayOutputStream;I[B)V

    return-void
.end method

.method static synthetic access$2([B)I
    .locals 0

    .line 397
    invoke-static {p0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->sw([B)I

    move-result p0

    return p0
.end method

.method static synthetic access$3(I)Ljava/lang/String;
    .locals 0

    .line 409
    invoke-static {p0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->hex4(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4([B)[B
    .locals 0

    .line 402
    invoke-static {p0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->trim([B)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5(Lcom/gpjpboc/toolkit/AppletSettingsActivity;[B)V
    .locals 0

    .line 362
    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->parseConfig([B)V

    return-void
.end method

.method static synthetic access$6()Landroid/os/Handler;
    .locals 1

    .line 26
    sget-object v0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->H:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/gpjpboc/toolkit/AppletSettingsActivity;)V
    .locals 0

    .line 348
    invoke-direct {p0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->fillUI()V

    return-void
.end method

.method static synthetic access$8(Lcom/gpjpboc/toolkit/AppletSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->tvDetect:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$9(Lcom/gpjpboc/toolkit/AppletSettingsActivity;)V
    .locals 0

    .line 417
    invoke-direct {p0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->done()V

    return-void
.end method

.method private static addTlv(Ljava/io/ByteArrayOutputStream;I[B)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 392
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 393
    array-length p1, p2

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 p1, 0x0

    .line 394
    array-length v0, p2

    invoke-virtual {p0, p2, p1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method private busy()V
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->tvDetect:Landroid/widget/TextView;

    const-string v1, "\u5904\u7406\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private detect()V
    .locals 3

    .line 207
    sget-object v0, Lcom/gpjpboc/toolkit/PageLauncher;->main:Lorg/pboc/fm1208/MainActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, v0, Lorg/pboc/fm1208/MainActivity;->isoDep:Landroid/nfc/tech/IsoDep;

    :goto_0
    iput-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->dep:Landroid/nfc/tech/IsoDep;

    if-eqz v0, :cond_3

    .line 209
    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etAid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gpjpboc/toolkit/Config;->aid:Ljava/lang/String;

    .line 214
    sget-object v0, Lcom/gpjpboc/toolkit/Config;->aid:Ljava/lang/String;

    invoke-static {v0}, Lcom/gpjpboc/toolkit/Config;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_2

    .line 216
    const-string v0, "AID\u683c\u5f0f\u9519\u8bef"

    invoke-direct {p0, v0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 219
    :cond_2
    invoke-direct {p0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->busy()V

    .line 220
    iget-object v1, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->dep:Landroid/nfc/tech/IsoDep;

    .line 221
    new-instance v2, Lcom/gpjpboc/toolkit/AppletSettingsActivity$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/gpjpboc/toolkit/AppletSettingsActivity$4;-><init>(Lcom/gpjpboc/toolkit/AppletSettingsActivity;[BLandroid/nfc/tech/IsoDep;)V

    .line 259
    invoke-virtual {v2}, Lcom/gpjpboc/toolkit/AppletSettingsActivity$4;->start()V

    return-void

    .line 210
    :cond_3
    :goto_1
    const-string v0, "\u8bf7\u5148\u5728\u4e3b\u9875\u8d34\u5361\u8fde\u63a5"

    invoke-direct {p0, v0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->toast(Ljava/lang/String;)V

    return-void
.end method

.method private done()V
    .locals 0

    return-void
.end method

.method private field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;
    .locals 1

    .line 180
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 181
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 183
    new-instance p2, Landroid/widget/EditText;

    invoke-direct {p2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 184
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 185
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method private fillUI()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etMac:Landroid/widget/EditText;

    sget-object v1, Lcom/gpjpboc/toolkit/Config;->macKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etExt:Landroid/widget/EditText;

    sget-object v1, Lcom/gpjpboc/toolkit/Config;->extKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etInt:Landroid/widget/EditText;

    sget-object v1, Lcom/gpjpboc/toolkit/Config;->intKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etPin:Landroid/widget/EditText;

    sget-object v1, Lcom/gpjpboc/toolkit/Config;->pin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->cbAuth:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/gpjpboc/toolkit/Config;->authOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 354
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->rgAtc:Landroid/widget/RadioGroup;

    sget v1, Lcom/gpjpboc/toolkit/Config;->atcMode:I

    if-nez v1, :cond_0

    const/16 v1, 0x65

    goto :goto_0

    :cond_0
    const/16 v1, 0x66

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 355
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etAtc:Landroid/widget/EditText;

    sget v1, Lcom/gpjpboc/toolkit/Config;->atcVal:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->rgWallet:Landroid/widget/RadioGroup;

    sget v1, Lcom/gpjpboc/toolkit/Config;->walletMode:I

    if-nez v1, :cond_1

    const/16 v1, 0xc9

    goto :goto_1

    :cond_1
    const/16 v1, 0xca

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 357
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->cbRecords:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/gpjpboc/toolkit/Config;->recordsOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 358
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etFci:Landroid/widget/EditText;

    sget-object v1, Lcom/gpjpboc/toolkit/Config;->fci:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etFciMf:Landroid/widget/EditText;

    sget-object v1, Lcom/gpjpboc/toolkit/Config;->fciMf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static hex4(I)Ljava/lang/String;
    .locals 2

    const v0, 0xffff

    and-int/2addr p0, v0

    .line 410
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "%04X"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private mkBtn(Ljava/lang/String;)Landroid/widget/Button;
    .locals 1

    .line 191
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 192
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 193
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    const/4 p1, -0x1

    .line 194
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 p1, 0x1

    .line 196
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method private parseConfig([B)V
    .locals 8

    .line 364
    invoke-static {p1}, Lcom/gpjpboc/toolkit/CardIO;->parseTlv([B)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    if-ltz v0, :cond_2

    .line 380
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\nPIN \u5269\u4f59\u5c1d\u8bd5\u6b21\u6570: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_1

    .line 381
    const-string v0, "0\uff08\u5df2\u9501\u6b7b\uff0c\u4fdd\u5b58\u4e0b\u53d1\u65b0 PIN \u89e3\u9501\uff09"

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 380
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 382
    sget-object v0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->H:Landroid/os/Handler;

    new-instance v1, Lcom/gpjpboc/toolkit/AppletSettingsActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/gpjpboc/toolkit/AppletSettingsActivity$6;-><init>(Lcom/gpjpboc/toolkit/AppletSettingsActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    .line 364
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;

    .line 365
    iget v2, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->tag:I

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    iget-object v2, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    array-length v2, v2

    if-lt v2, v3, :cond_4

    iget-object v1, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    invoke-static {v1}, Lcom/gpjpboc/toolkit/Config;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gpjpboc/toolkit/Config;->macKey:Ljava/lang/String;

    goto :goto_0

    .line 366
    :cond_4
    iget v2, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->tag:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_5

    iget-object v2, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    array-length v2, v2

    if-lt v2, v3, :cond_5

    iget-object v1, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    invoke-static {v1}, Lcom/gpjpboc/toolkit/Config;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gpjpboc/toolkit/Config;->extKey:Ljava/lang/String;

    goto :goto_0

    .line 367
    :cond_5
    iget v2, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->tag:I

    const/4 v6, 0x3

    if-ne v2, v6, :cond_6

    iget-object v2, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    array-length v2, v2

    if-lt v2, v3, :cond_6

    iget-object v1, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    invoke-static {v1}, Lcom/gpjpboc/toolkit/Config;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gpjpboc/toolkit/Config;->intKey:Ljava/lang/String;

    goto :goto_0

    .line 368
    :cond_6
    iget v2, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->tag:I

    const/4 v6, 0x4

    if-ne v2, v6, :cond_7

    new-instance v2, Ljava/lang/String;

    iget-object v1, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v2, Lcom/gpjpboc/toolkit/Config;->pin:Ljava/lang/String;

    goto :goto_0

    .line 369
    :cond_7
    iget v2, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->tag:I

    const/16 v7, 0xa

    if-ne v2, v7, :cond_8

    iget-object v2, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    array-length v2, v2

    if-lt v2, v6, :cond_8

    iget-object v1, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    invoke-static {v1}, Lcom/gpjpboc/toolkit/Config;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gpjpboc/toolkit/Config;->fci:Ljava/lang/String;

    goto/16 :goto_0

    .line 370
    :cond_8
    iget v2, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->tag:I

    const/16 v7, 0xb

    if-ne v2, v7, :cond_9

    iget-object v2, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    array-length v2, v2

    if-lt v2, v6, :cond_9

    iget-object v1, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    invoke-static {v1}, Lcom/gpjpboc/toolkit/Config;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gpjpboc/toolkit/Config;->fciMf:Ljava/lang/String;

    goto/16 :goto_0

    .line 371
    :cond_9
    iget v2, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->tag:I

    const/4 v6, 0x5

    const/4 v7, 0x0

    if-ne v2, v6, :cond_b

    iget-object v2, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    array-length v2, v2

    if-lt v2, v4, :cond_b

    iget-object v1, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    aget-byte v1, v1, v7

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    const/4 v4, 0x0

    :goto_2
    sput-boolean v4, Lcom/gpjpboc/toolkit/Config;->authOn:Z

    goto/16 :goto_0

    .line 372
    :cond_b
    iget v2, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->tag:I

    const/4 v6, 0x6

    if-ne v2, v6, :cond_c

    iget-object v2, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    array-length v2, v2

    if-lt v2, v4, :cond_c

    iget-object v1, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    aget-byte v1, v1, v7

    and-int/lit16 v1, v1, 0xff

    sput v1, Lcom/gpjpboc/toolkit/Config;->atcMode:I

    goto/16 :goto_0

    .line 373
    :cond_c
    iget v2, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->tag:I

    const/4 v6, 0x7

    if-ne v2, v6, :cond_d

    iget-object v2, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    array-length v2, v2

    if-lt v2, v5, :cond_d

    iget-object v2, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    aget-byte v2, v2, v7

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v3

    iget-object v1, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    sput v1, Lcom/gpjpboc/toolkit/Config;->atcVal:I

    goto/16 :goto_0

    .line 374
    :cond_d
    iget v2, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->tag:I

    if-ne v2, v3, :cond_e

    iget-object v2, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    array-length v2, v2

    if-lt v2, v4, :cond_e

    iget-object v1, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    aget-byte v1, v1, v7

    and-int/lit16 v1, v1, 0xff

    sput v1, Lcom/gpjpboc/toolkit/Config;->walletMode:I

    goto/16 :goto_0

    .line 375
    :cond_e
    iget v2, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->tag:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_10

    iget-object v2, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    array-length v2, v2

    if-lt v2, v4, :cond_10

    iget-object v1, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    aget-byte v1, v1, v7

    if-eqz v1, :cond_f

    goto :goto_3

    :cond_f
    const/4 v4, 0x0

    :goto_3
    sput-boolean v4, Lcom/gpjpboc/toolkit/Config;->recordsOn:Z

    goto/16 :goto_0

    .line 376
    :cond_10
    iget v2, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->tag:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    array-length v2, v2

    if-lt v2, v4, :cond_0

    iget-object v0, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    goto/16 :goto_0
.end method

.method private pushToApplet()V
    .locals 2

    .line 287
    sget-object v0, Lcom/gpjpboc/toolkit/PageLauncher;->main:Lorg/pboc/fm1208/MainActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 288
    :cond_0
    iget-object v0, v0, Lorg/pboc/fm1208/MainActivity;->isoDep:Landroid/nfc/tech/IsoDep;

    :goto_0
    if-eqz v0, :cond_2

    .line 289
    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 292
    :cond_1
    invoke-direct {p0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->busy()V

    .line 293
    new-instance v1, Lcom/gpjpboc/toolkit/AppletSettingsActivity$5;

    invoke-direct {v1, p0, v0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity$5;-><init>(Lcom/gpjpboc/toolkit/AppletSettingsActivity;Landroid/nfc/tech/IsoDep;)V

    .line 345
    invoke-virtual {v1}, Lcom/gpjpboc/toolkit/AppletSettingsActivity$5;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method private save()V
    .locals 4

    .line 263
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etAid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gpjpboc/toolkit/Config;->aid:Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etMac:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gpjpboc/toolkit/Config;->macKey:Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etExt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gpjpboc/toolkit/Config;->extKey:Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etInt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gpjpboc/toolkit/Config;->intKey:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etPin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gpjpboc/toolkit/Config;->pin:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->cbAuth:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/gpjpboc/toolkit/Config;->authOn:Z

    .line 269
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->rgAtc:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/16 v1, 0x66

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/gpjpboc/toolkit/Config;->atcMode:I

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etAtc:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gpjpboc/toolkit/Config;->atcVal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 273
    :catchall_0
    sput v3, Lcom/gpjpboc/toolkit/Config;->atcVal:I

    .line 275
    :goto_1
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->rgWallet:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/16 v1, 0xca

    if-ne v0, v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    sput v2, Lcom/gpjpboc/toolkit/Config;->walletMode:I

    .line 276
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->cbRecords:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/gpjpboc/toolkit/Config;->recordsOn:Z

    .line 277
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etFci:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-static {v0}, Lcom/gpjpboc/toolkit/Config;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_2
    move-object v0, v2

    :goto_3
    sput-object v0, Lcom/gpjpboc/toolkit/Config;->fci:Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etFciMf:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-static {v0}, Lcom/gpjpboc/toolkit/Config;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    :cond_3
    sput-object v2, Lcom/gpjpboc/toolkit/Config;->fciMf:Ljava/lang/String;

    .line 281
    invoke-static {p0}, Lcom/gpjpboc/toolkit/Config;->save(Landroid/content/Context;)V

    .line 282
    const-string v0, "\u5df2\u4fdd\u5b58\u5230\u672c\u5730\uff08\u91cd\u542f\u540e\u65e0\u9700\u91cd\u8f93\uff09"

    invoke-direct {p0, v0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->toast(Ljava/lang/String;)V

    .line 283
    invoke-direct {p0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->pushToApplet()V

    return-void
.end method

.method private static sw([B)I
    .locals 2

    if-eqz p0, :cond_1

    .line 398
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    array-length v0, p0

    sub-int/2addr v0, v1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private toast(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 203
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static trim([B)[B
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 403
    array-length v1, p0

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 404
    :cond_0
    array-length v1, p0

    sub-int/2addr v1, v2

    new-array v2, v1, [B

    .line 405
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    .line 403
    :cond_1
    :goto_0
    new-array p0, v0, [B

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-static {p0}, Lcom/gpjpboc/toolkit/Config;->load(Landroid/content/Context;)V

    .line 40
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 43
    invoke-virtual {p0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41600000    # 14.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 44
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 45
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    .line 46
    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 45
    invoke-virtual {p1, v0, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 49
    const-string v3, "\u3010\u68c0\u6d4b\u5f53\u524dApplet\u914d\u7f6e\u3011"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41700000    # 15.0f

    .line 50
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 51
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 53
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 54
    const-string v4, "Applet AID (HEX):"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 56
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etAid:Landroid/widget/EditText;

    .line 57
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 58
    iget-object v2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etAid:Landroid/widget/EditText;

    sget-object v4, Lcom/gpjpboc/toolkit/Config;->aid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etAid:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 61
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 62
    const-string v4, "\u94b1\u5305\u5e94\u7528\u5e94\u7b54 FCI (HEX, \u7a7a=applet\u9ed8\u8ba4):"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etFci:Landroid/widget/EditText;

    .line 65
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 66
    iget-object v2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etFci:Landroid/widget/EditText;

    sget-object v4, Lcom/gpjpboc/toolkit/Config;->fci:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etFci:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 70
    const-string v4, "3F00/PSE \u5e94\u7b54 FCI (HEX, \u7a7a=applet\u9ed8\u8ba4):"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 72
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etFciMf:Landroid/widget/EditText;

    .line 73
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 74
    iget-object v2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etFciMf:Landroid/widget/EditText;

    sget-object v4, Lcom/gpjpboc/toolkit/Config;->fciMf:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etFciMf:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    const-string v2, "\u68c0\u6d4bApplet\u914d\u7f6e"

    invoke-direct {p0, v2}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->mkBtn(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    .line 78
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    new-instance v4, Lcom/gpjpboc/toolkit/AppletSettingsActivity$1;

    invoke-direct {v4, p0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity$1;-><init>(Lcom/gpjpboc/toolkit/AppletSettingsActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->tvDetect:Landroid/widget/TextView;

    const/high16 v4, 0x41300000    # 11.0f

    .line 85
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 86
    iget-object v2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->tvDetect:Landroid/widget/TextView;

    const-string v4, "\uff08\u68c0\u6d4b\u4ec5\u5728\u8d34\u5361\u4e14\u5361\u4e0a\u88c5\u6709 JavaPboc applet \u65f6\u53ef\u7528\uff1b\u672a\u68c0\u6d4b\u5230\u65f6\u4ee5\u4e0b\u4fee\u6539\u4fdd\u5b58\u5230\u672c\u5730\u5e76\u7528\u4e8e\u4ea4\u6613\u8ba1\u7b97\uff09"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->tvDetect:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 90
    const-string v4, "\u3010\u5bc6\u94a5\u8bbe\u7f6e\u3011(DES/3DES\u6309\u5bc6\u94a5\u957f\u5ea6\u81ea\u52a8\u9009\u62e9, 16\u4f4dHEX=DES 32\u4f4dHEX=3DES)"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 92
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    const-string v2, "MAC \u8ba1\u7b97\u5bc6\u94a5 (HEX):"

    sget-object v4, Lcom/gpjpboc/toolkit/Config;->macKey:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v4}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v2

    iput-object v2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etMac:Landroid/widget/EditText;

    .line 95
    const-string v2, "\u5916\u90e8\u8ba4\u8bc1\u5bc6\u94a5 (HEX):"

    sget-object v4, Lcom/gpjpboc/toolkit/Config;->extKey:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v4}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v2

    iput-object v2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etExt:Landroid/widget/EditText;

    .line 96
    const-string v2, "\u5185\u90e8\u8ba4\u8bc1\u5bc6\u94a5 (HEX):"

    sget-object v4, Lcom/gpjpboc/toolkit/Config;->intKey:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v4}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v2

    iput-object v2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etInt:Landroid/widget/EditText;

    .line 97
    const-string v2, "PIN (4-12\u4f4d, 3\u6b21\u9519\u8bef\u9501\u5361, \u91cd\u5199\u81ea\u52a8\u89e3\u9501):"

    sget-object v4, Lcom/gpjpboc/toolkit/Config;->pin:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v4}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v2

    iput-object v2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etPin:Landroid/widget/EditText;

    .line 99
    new-instance v2, Landroid/widget/CheckBox;

    invoke-direct {v2, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->cbAuth:Landroid/widget/CheckBox;

    .line 100
    const-string v4, "\u542f\u7528\u8ba4\u8bc1\uff08\u9ed8\u8ba4\u5173\u95ed\uff1a\u4e0d\u542f\u7528\u65f6\u5bc6\u94a5\u4ec5\u7528\u4e8eMAC\u8ba1\u7b97\u4e0e\u968f\u673a\u6570\u7b49\uff09"

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->cbAuth:Landroid/widget/CheckBox;

    sget-boolean v4, Lcom/gpjpboc/toolkit/Config;->authOn:Z

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 102
    iget-object v2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->cbAuth:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 104
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 105
    const-string v4, "\u3010ATC \u8bbe\u7f6e\u3011"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 107
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    new-instance v2, Landroid/widget/RadioGroup;

    invoke-direct {v2, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->rgAtc:Landroid/widget/RadioGroup;

    .line 110
    new-instance v2, Landroid/widget/RadioButton;

    invoke-direct {v2, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 111
    const-string v4, "\u81ea\u52a8\u9012\u589e\uff08\u9ed8\u8ba4\u4ece0\uff09"

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x65

    .line 112
    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setId(I)V

    .line 113
    new-instance v5, Landroid/widget/RadioButton;

    invoke-direct {v5, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 114
    const-string v6, "\u56fa\u5b9a\u503c"

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x66

    .line 115
    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setId(I)V

    .line 116
    iget-object v7, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->rgAtc:Landroid/widget/RadioGroup;

    invoke-virtual {v7, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 117
    iget-object v2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->rgAtc:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 118
    iget-object v2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->rgAtc:Landroid/widget/RadioGroup;

    sget v5, Lcom/gpjpboc/toolkit/Config;->atcMode:I

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x66

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 119
    iget-object v2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->rgAtc:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etAtc:Landroid/widget/EditText;

    .line 121
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 122
    iget-object v1, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etAtc:Landroid/widget/EditText;

    const-string v2, "\u8d77\u59cb\u503c/\u56fa\u5b9a\u503c\uff08\u9ed8\u8ba40\uff09"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etAtc:Landroid/widget/EditText;

    sget v2, Lcom/gpjpboc/toolkit/Config;->atcVal:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v1, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->etAtc:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 127
    const-string v2, "\u3010\u94b1\u5305\u8bbe\u7f6e\u3011"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    new-instance v1, Landroid/widget/RadioGroup;

    invoke-direct {v1, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->rgWallet:Landroid/widget/RadioGroup;

    .line 132
    new-instance v1, Landroid/widget/RadioButton;

    invoke-direct {v1, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 133
    const-string v2, "\u4ec5\u5355\u94b1\u5305\uff08\u7535\u5b50\u94b1\u5305\uff09"

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0xc9

    .line 134
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setId(I)V

    .line 135
    new-instance v4, Landroid/widget/RadioButton;

    invoke-direct {v4, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 136
    const-string v5, "\u53cc\u94b1\u5305\uff08\u7535\u5b50\u94b1\u5305+\u7535\u5b50\u5b58\u6298\uff09"

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/16 v5, 0xca

    .line 137
    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setId(I)V

    .line 138
    iget-object v6, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->rgWallet:Landroid/widget/RadioGroup;

    invoke-virtual {v6, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 139
    iget-object v1, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->rgWallet:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 140
    iget-object v1, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->rgWallet:Landroid/widget/RadioGroup;

    sget v4, Lcom/gpjpboc/toolkit/Config;->walletMode:I

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0xca

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 141
    iget-object v1, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->rgWallet:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 144
    const-string v2, "\u3010\u8bb0\u5f55\u8bbe\u7f6e\u3011(FMCOS\u683c\u5f0f)"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 147
    new-instance v1, Landroid/widget/CheckBox;

    invoke-direct {v1, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->cbRecords:Landroid/widget/CheckBox;

    .line 148
    const-string v2, "\u542f\u7528\u4ea4\u6613\u8bb0\u5f55\uff08\u9ed8\u8ba4\u542f\u7528\uff0c\u6700\u591a5\u6761\uff09"

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v1, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->cbRecords:Landroid/widget/CheckBox;

    sget-boolean v2, Lcom/gpjpboc/toolkit/Config;->recordsOn:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 150
    iget-object v1, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->cbRecords:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 152
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 153
    const-string v2, "\u3010\u6587\u4ef6\u7ed3\u6784\u8bbe\u7f6e\u3011"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 155
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 156
    const-string v1, "\u8df3\u8f6c\u6587\u4ef6\u7cfb\u7edf\u9875\u9762"

    invoke-direct {p0, v1}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->mkBtn(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    .line 157
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    new-instance v2, Lcom/gpjpboc/toolkit/AppletSettingsActivity$2;

    invoke-direct {v2, p0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity$2;-><init>(Lcom/gpjpboc/toolkit/AppletSettingsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    const-string v1, "\u4fdd\u5b58\u8bbe\u7f6e\uff08\u542b\u4e0b\u53d1\u5230Applet\uff09"

    invoke-direct {p0, v1}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->mkBtn(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 170
    new-instance v0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity$3;-><init>(Lcom/gpjpboc/toolkit/AppletSettingsActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    invoke-virtual {p0, p1}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
