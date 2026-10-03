.class public Lcom/gpjpboc/toolkit/FileSysActivity;
.super Landroid/app/Activity;
.source "FileSysActivity.java"

# interfaces
.implements Lcom/gpjpboc/toolkit/FileSysActivityHost;
.implements Lcom/gpjpboc/toolkit/CustomScanHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpjpboc/toolkit/FileSysActivity$Node;
    }
.end annotation


# static fields
.field private static final H:Landroid/os/Handler;


# instance fields
.field private volatile busy:Z

.field private dep:Landroid/nfc/tech/IsoDep;

.field private pb:Landroid/widget/ProgressBar;

.field private pendingAids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private root:Lcom/gpjpboc/toolkit/FileSysActivity$Node;

.field private scanBtn:Landroid/widget/Button;

.field private volatile stop:Z

.field private tvPhase:Landroid/widget/TextView;

.field private tvTree:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/gpjpboc/toolkit/FileSysActivity;->H:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/gpjpboc/toolkit/FileSysActivity;)V
    .locals 0

    .line 208
    invoke-direct {p0}, Lcom/gpjpboc/toolkit/FileSysActivity;->toggleScan()V

    return-void
.end method

.method static synthetic access$1(Lcom/gpjpboc/toolkit/FileSysActivity;)Lcom/gpjpboc/toolkit/FileSysActivity$Node;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->root:Lcom/gpjpboc/toolkit/FileSysActivity$Node;

    return-object p0
.end method

.method static synthetic access$10(Lcom/gpjpboc/toolkit/FileSysActivity;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->stop:Z

    return p0
.end method

.method static synthetic access$11()Landroid/os/Handler;
    .locals 1

    .line 47
    sget-object v0, Lcom/gpjpboc/toolkit/FileSysActivity;->H:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$12(Lcom/gpjpboc/toolkit/FileSysActivity;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->tvTree:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$13(Lcom/gpjpboc/toolkit/FileSysActivity;)Landroid/widget/TextView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->tvPhase:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$14(Lcom/gpjpboc/toolkit/FileSysActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->pb:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$15(Lcom/gpjpboc/toolkit/FileSysActivity;Z)V
    .locals 0

    .line 224
    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/FileSysActivity;->setBusy(Z)V

    return-void
.end method

.method static synthetic access$16(Lcom/gpjpboc/toolkit/FileSysActivity;Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->busy:Z

    return-void
.end method

.method static synthetic access$17(Lcom/gpjpboc/toolkit/FileSysActivity;Lcom/gpjpboc/toolkit/FileSysActivity$Node;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 813
    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/FileSysActivity;->buildOnCard(Lcom/gpjpboc/toolkit/FileSysActivity$Node;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2(Lcom/gpjpboc/toolkit/FileSysActivity;Ljava/lang/String;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/FileSysActivity;->toast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/gpjpboc/toolkit/FileSysActivity;Lcom/gpjpboc/toolkit/FileSysActivity$Node;)Ljava/lang/String;
    .locals 0

    .line 923
    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/FileSysActivity;->toJson(Lcom/gpjpboc/toolkit/FileSysActivity$Node;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4(Lcom/gpjpboc/toolkit/FileSysActivity;Ljava/lang/String;Lcom/gpjpboc/toolkit/FileSysActivity$Node;)V
    .locals 0

    .line 764
    invoke-direct {p0, p1, p2}, Lcom/gpjpboc/toolkit/FileSysActivity;->confirmBuild(Ljava/lang/String;Lcom/gpjpboc/toolkit/FileSysActivity$Node;)V

    return-void
.end method

.method static synthetic access$5(Lcom/gpjpboc/toolkit/FileSysActivity;)V
    .locals 0

    .line 935
    invoke-direct {p0}, Lcom/gpjpboc/toolkit/FileSysActivity;->editTree()V

    return-void
.end method

.method static synthetic access$6(Lcom/gpjpboc/toolkit/FileSysActivity;Z)V
    .locals 0

    .line 230
    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/FileSysActivity;->startScan(Z)V

    return-void
.end method

.method static synthetic access$7(Lcom/gpjpboc/toolkit/FileSysActivity;Z)Lcom/gpjpboc/toolkit/FileSysActivity$Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 395
    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/FileSysActivity;->scan(Z)Lcom/gpjpboc/toolkit/FileSysActivity$Node;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$8(Lcom/gpjpboc/toolkit/FileSysActivity;Lcom/gpjpboc/toolkit/FileSysActivity$Node;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->root:Lcom/gpjpboc/toolkit/FileSysActivity$Node;

    return-void
.end method

.method static synthetic access$9(Lcom/gpjpboc/toolkit/FileSysActivity;Lcom/gpjpboc/toolkit/FileSysActivity$Node;I)Ljava/lang/String;
    .locals 0

    .line 900
    invoke-direct {p0, p1, p2}, Lcom/gpjpboc/toolkit/FileSysActivity;->render(Lcom/gpjpboc/toolkit/FileSysActivity$Node;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static ascii([B)Ljava/lang/String;
    .locals 4

    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 989
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 993
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 990
    :cond_0
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_1

    .line 991
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private buildNode(I[B)Lcom/gpjpboc/toolkit/FileSysActivity$Node;
    .locals 7

    .line 677
    new-instance v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;

    invoke-direct {v0}, Lcom/gpjpboc/toolkit/FileSysActivity$Node;-><init>()V

    .line 678
    iput p1, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->fid:I

    .line 679
    invoke-static {p2}, Lcom/gpjpboc/toolkit/Config;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->fci:Ljava/lang/String;

    .line 680
    const-string v1, "EF"

    iput-object v1, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->type:Ljava/lang/String;

    .line 681
    invoke-static {p2}, Lcom/gpjpboc/toolkit/CardIO;->parseTlv([B)Ljava/util/ArrayList;

    move-result-object p2

    .line 682
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 705
    iget-object p2, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->aidName:[B

    if-eqz p2, :cond_1

    .line 706
    const-string p2, "ADF"

    iput-object p2, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->type:Ljava/lang/String;

    .line 707
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "DF\u540d="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->aidName:[B

    invoke-static {v1}, Lcom/gpjpboc/toolkit/FileSysActivity;->ascii([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->probe:Ljava/lang/String;

    :cond_1
    const/16 p2, 0x3f00

    if-ne p1, p2, :cond_2

    .line 710
    const-string p1, "MF"

    iput-object p1, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->type:Ljava/lang/String;

    :cond_2
    return-object v0

    .line 682
    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;

    .line 683
    iget v2, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->tag:I

    const/16 v3, 0x6f

    if-eq v2, v3, :cond_4

    iget v2, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->tag:I

    const/16 v3, 0x62

    if-ne v2, v3, :cond_0

    .line 684
    :cond_4
    iget-object v1, v1, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    invoke-static {v1}, Lcom/gpjpboc/toolkit/CardIO;->parseTlv([B)Ljava/util/ArrayList;

    move-result-object v1

    .line 685
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpjpboc/toolkit/CardIO$Tlv;

    .line 686
    iget v3, v2, Lcom/gpjpboc/toolkit/CardIO$Tlv;->tag:I

    const/16 v4, 0x82

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_a

    iget-object v3, v2, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    array-length v3, v3

    if-lt v3, v6, :cond_a

    .line 687
    iget-object v2, v2, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    aget-byte v2, v2, v5

    and-int/lit8 v3, v2, 0x38

    const/16 v4, 0x38

    if-ne v3, v4, :cond_7

    .line 689
    const-string v2, "DF"

    iput-object v2, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->type:Ljava/lang/String;

    goto :goto_1

    :cond_7
    and-int/lit8 v2, v2, 0x7

    if-nez v2, :cond_8

    .line 691
    const-string v2, "EF-BIN"

    iput-object v2, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->type:Ljava/lang/String;

    goto :goto_1

    :cond_8
    if-ne v2, v6, :cond_9

    .line 693
    const-string v2, "EF-REC"

    iput-object v2, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->type:Ljava/lang/String;

    goto :goto_1

    :cond_9
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 695
    const-string v2, "EF-CYC"

    iput-object v2, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->type:Ljava/lang/String;

    goto :goto_1

    .line 697
    :cond_a
    iget v3, v2, Lcom/gpjpboc/toolkit/CardIO$Tlv;->tag:I

    const/16 v4, 0x84

    if-ne v3, v4, :cond_b

    iget-object v3, v2, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    array-length v3, v3

    if-lez v3, :cond_b

    .line 698
    iget-object v2, v2, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    iput-object v2, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->aidName:[B

    goto :goto_1

    .line 699
    :cond_b
    iget v3, v2, Lcom/gpjpboc/toolkit/CardIO$Tlv;->tag:I

    const/16 v4, 0x88

    if-ne v3, v4, :cond_5

    iget-object v3, v2, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    array-length v3, v3

    if-lt v3, v6, :cond_5

    .line 700
    iget-object v2, v2, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    iput v2, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->sfi:I

    goto :goto_1
.end method

.method private buildOnCard(Lcom/gpjpboc/toolkit/FileSysActivity$Node;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 815
    sget-object v1, Lcom/gpjpboc/toolkit/Config;->aid:Ljava/lang/String;

    invoke-static {v1}, Lcom/gpjpboc/toolkit/Config;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 816
    array-length v2, v1

    if-lez v2, :cond_0

    .line 818
    :try_start_0
    invoke-direct {p0, v1}, Lcom/gpjpboc/toolkit/FileSysActivity;->selectAid([B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 822
    :catchall_0
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->buildRec(Lcom/gpjpboc/toolkit/FileSysActivity$Node;Ljava/lang/StringBuilder;)V

    .line 823
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private buildRec(Lcom/gpjpboc/toolkit/FileSysActivity$Node;Ljava/lang/StringBuilder;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 827
    :goto_0
    iget-object v2, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->kids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-void

    .line 828
    :cond_0
    iget-object v2, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->kids:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpjpboc/toolkit/FileSysActivity$Node;

    .line 829
    iget v3, v2, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->fid:I

    const/16 v4, 0x3f00

    if-ne v3, v4, :cond_1

    goto/16 :goto_2

    .line 830
    :cond_1
    iget v3, v2, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->fid:I

    invoke-direct {p0, v3}, Lcom/gpjpboc/toolkit/FileSysActivity;->selectFid(I)[B

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x7

    const/4 v9, 0x1

    if-eqz v3, :cond_2

    .line 832
    iget v3, v2, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->fid:I

    invoke-static {v3}, Lcom/gpjpboc/toolkit/FileSysActivity;->hex4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " \u5df2\u5b58\u5728\u8df3\u8fc7; "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 834
    :cond_2
    invoke-direct {p0, v2}, Lcom/gpjpboc/toolkit/FileSysActivity;->createHeader(Lcom/gpjpboc/toolkit/FileSysActivity$Node;)[B

    move-result-object v3

    .line 835
    array-length v10, v3

    add-int/2addr v10, v8

    new-array v10, v10, [B

    const/16 v11, -0x80

    .line 836
    aput-byte v11, v10, v0

    const/16 v11, -0x20

    .line 837
    aput-byte v11, v10, v9

    .line 838
    iget v11, v2, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->fid:I

    shr-int/lit8 v11, v11, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v10, v7

    .line 839
    iget v11, v2, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->fid:I

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v10, v6

    .line 840
    array-length v11, v3

    int-to-byte v11, v11

    aput-byte v11, v10, v5

    .line 841
    array-length v11, v3

    invoke-static {v3, v0, v10, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 842
    invoke-direct {p0, v10}, Lcom/gpjpboc/toolkit/FileSysActivity;->xfer([B)[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/gpjpboc/toolkit/FileSysActivity;->swOf([B)I

    move-result v3

    .line 843
    iget v10, v2, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->fid:I

    invoke-static {v10}, Lcom/gpjpboc/toolkit/FileSysActivity;->hex4(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " \u5efa\u7acbSW="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Lcom/gpjpboc/toolkit/FileSysActivity;->hexSW(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "; "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    :goto_1
    iget-object v3, v2, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->type:Ljava/lang/String;

    const-string v10, "DF"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v2, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->type:Ljava/lang/String;

    const-string v10, "ADF"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v2, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->type:Ljava/lang/String;

    const-string v10, "MF"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 847
    :cond_3
    iget v3, v2, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->fid:I

    invoke-direct {p0, v3}, Lcom/gpjpboc/toolkit/FileSysActivity;->selectFid(I)[B

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v3, v2, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->aidName:[B

    if-eqz v3, :cond_5

    .line 848
    :cond_4
    invoke-direct {p0, v2, p2}, Lcom/gpjpboc/toolkit/FileSysActivity;->buildRec(Lcom/gpjpboc/toolkit/FileSysActivity$Node;Ljava/lang/StringBuilder;)V

    .line 850
    :try_start_0
    new-array v2, v8, [B

    const/16 v3, -0x5c

    aput-byte v3, v2, v9

    const/16 v3, 0xc

    aput-byte v3, v2, v6

    aput-byte v7, v2, v5

    const/16 v3, 0x3f

    aput-byte v3, v2, v4

    invoke-direct {p0, v2}, Lcom/gpjpboc/toolkit/FileSysActivity;->xfer([B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private chooseScan()V
    .locals 4

    .line 179
    iget-boolean v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->busy:Z

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "\u626b\u63cf\u8fdb\u884c\u4e2d"

    invoke-direct {p0, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 183
    :cond_0
    sget-object v0, Lcom/gpjpboc/toolkit/PageLauncher;->main:Lorg/pboc/fm1208/MainActivity;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, v0, Lorg/pboc/fm1208/MainActivity;->isoDep:Landroid/nfc/tech/IsoDep;

    :goto_0
    iput-object v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->dep:Landroid/nfc/tech/IsoDep;

    if-eqz v0, :cond_3

    .line 185
    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 189
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 190
    const-string v1, "\u9009\u62e9\u626b\u63cf\u65b9\u5f0f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 193
    const-string v1, "\u5168\u626b\u63cf\uff080000-FFFF\u53ca\u6240\u6709\u5b50\u76ee\u5f55\uff0c\u6162\uff09"

    .line 194
    const-string v2, "\u81ea\u5b9a\u4e49\u626b\u63cf\uff08\u8f93\u5165\u76ee\u5f55/\u6587\u4ef6 ID\uff0c\u652f\u6301\u533a\u95f4\u5982 2F00-2FFF\uff09"

    const-string v3, "\u667a\u80fd\u626b\u63cf\uff083F00 \u5f15\u5bfc + \u5e38\u7528\u533a\u6bb5\uff0c\u5feb\uff09"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 195
    new-instance v2, Lcom/gpjpboc/toolkit/FileSysActivity$6;

    invoke-direct {v2, p0}, Lcom/gpjpboc/toolkit/FileSysActivity$6;-><init>(Lcom/gpjpboc/toolkit/FileSysActivity;)V

    .line 191
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 186
    :cond_3
    :goto_1
    const-string v0, "\u8bf7\u5148\u5728\u4e3b\u9875\u8d34\u5361\u8fde\u63a5\u540e\u518d\u626b\u63cf"

    invoke-direct {p0, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->toast(Ljava/lang/String;)V

    return-void
.end method

.method private confirmBuild(Ljava/lang/String;Lcom/gpjpboc/toolkit/FileSysActivity$Node;)V
    .locals 3

    .line 765
    sget-object v0, Lcom/gpjpboc/toolkit/PageLauncher;->main:Lorg/pboc/fm1208/MainActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 766
    :cond_0
    iget-object v0, v0, Lorg/pboc/fm1208/MainActivity;->isoDep:Landroid/nfc/tech/IsoDep;

    :goto_0
    iput-object v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->dep:Landroid/nfc/tech/IsoDep;

    if-eqz v0, :cond_2

    .line 767
    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 771
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 772
    const-string v2, "\u5efa\u7acb\u6587\u4ef6\u7ed3\u6784"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 773
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 774
    new-instance v0, Lcom/gpjpboc/toolkit/FileSysActivity$9;

    invoke-direct {v0, p0, p2}, Lcom/gpjpboc/toolkit/FileSysActivity$9;-><init>(Lcom/gpjpboc/toolkit/FileSysActivity;Lcom/gpjpboc/toolkit/FileSysActivity$Node;)V

    const-string p2, "\u5f00\u59cb"

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 808
    const-string p2, "\u53d6\u6d88"

    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 809
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 768
    :cond_2
    :goto_1
    const-string p1, "\u8bf7\u5148\u5728\u4e3b\u9875\u8d34\u5361\u8fde\u63a5"

    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/FileSysActivity;->toast(Ljava/lang/String;)V

    return-void
.end method

.method private containsAid(Ljava/util/ArrayList;[B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;[B)Z"
        }
    .end annotation

    .line 539
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 540
    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method private createHeader(Lcom/gpjpboc/toolkit/FileSysActivity$Node;)[B
    .locals 16

    move-object/from16 v0, p1

    .line 860
    iget-object v1, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->type:Ljava/lang/String;

    const-string v2, "DF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x4

    const/16 v9, 0x10

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, -0x10

    const/16 v13, 0x8

    if-nez v1, :cond_b

    iget-object v1, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->type:Ljava/lang/String;

    const-string v14, "ADF"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 877
    :cond_0
    iget-object v1, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->type:Ljava/lang/String;

    const-string v14, "EF-CYC"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v14, 0xf8

    if-eqz v1, :cond_4

    .line 878
    iget v1, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->recLen:I

    if-lez v1, :cond_1

    iget v9, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->recLen:I

    .line 879
    :cond_1
    iget v1, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->recCnt:I

    if-lez v1, :cond_2

    iget v0, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->recCnt:I

    goto :goto_0

    :cond_2
    const/16 v0, 0xa

    :goto_0
    mul-int v1, v9, v0

    if-le v1, v14, :cond_3

    .line 880
    div-int/2addr v14, v9

    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_3
    mul-int v1, v9, v0

    shr-int/lit8 v14, v1, 0x8

    and-int/lit16 v14, v14, 0xff

    int-to-byte v14, v14

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    int-to-byte v9, v9

    int-to-byte v0, v0

    .line 882
    new-array v13, v13, [B

    const/16 v15, 0x2e

    aput-byte v15, v13, v11

    aput-byte v14, v13, v10

    aput-byte v1, v13, v6

    aput-byte v12, v13, v5

    aput-byte v12, v13, v8

    aput-byte v7, v13, v4

    aput-byte v9, v13, v3

    aput-byte v0, v13, v2

    return-object v13

    .line 884
    :cond_4
    iget-object v1, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->type:Ljava/lang/String;

    const-string v15, "EF-REC"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 885
    iget v1, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->recLen:I

    if-lez v1, :cond_5

    iget v9, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->recLen:I

    .line 886
    :cond_5
    iget v1, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->recCnt:I

    if-lez v1, :cond_6

    iget v0, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->recCnt:I

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_6
    const/4 v0, 0x4

    :goto_1
    mul-int v1, v9, v0

    if-le v1, v14, :cond_7

    .line 887
    div-int/2addr v14, v9

    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_7
    mul-int v1, v9, v0

    shr-int/lit8 v14, v1, 0x8

    and-int/lit16 v14, v14, 0xff

    int-to-byte v14, v14

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    int-to-byte v9, v9

    int-to-byte v0, v0

    .line 889
    new-array v13, v13, [B

    const/16 v15, 0x2a

    aput-byte v15, v13, v11

    aput-byte v14, v13, v10

    aput-byte v1, v13, v6

    aput-byte v12, v13, v5

    aput-byte v12, v13, v8

    aput-byte v7, v13, v4

    aput-byte v9, v13, v3

    aput-byte v0, v13, v2

    return-object v13

    .line 892
    :cond_8
    iget v1, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->binLen:I

    if-lez v1, :cond_9

    iget v9, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->binLen:I

    :cond_9
    if-le v9, v14, :cond_a

    goto :goto_2

    :cond_a
    move v14, v9

    :goto_2
    shr-int/lit8 v0, v14, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    and-int/lit16 v1, v14, 0xff

    int-to-byte v1, v1

    .line 895
    new-array v2, v3, [B

    const/16 v3, 0x28

    aput-byte v3, v2, v11

    aput-byte v0, v2, v10

    aput-byte v1, v2, v6

    aput-byte v12, v2, v5

    aput-byte v12, v2, v8

    aput-byte v7, v2, v4

    return-object v2

    .line 862
    :cond_b
    :goto_3
    iget-object v1, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->aidName:[B

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->aidName:[B

    array-length v1, v1

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v1, v13

    goto :goto_4

    :cond_c
    const/16 v1, 0x8

    :goto_4
    new-array v1, v1, [B

    const/16 v14, 0x38

    .line 863
    aput-byte v14, v1, v11

    .line 864
    aput-byte v11, v1, v10

    const/16 v10, 0x20

    .line 865
    aput-byte v10, v1, v6

    .line 866
    aput-byte v12, v1, v5

    .line 867
    aput-byte v12, v1, v8

    .line 868
    aput-byte v11, v1, v4

    .line 869
    aput-byte v7, v1, v3

    .line 870
    aput-byte v7, v1, v2

    .line 871
    iget-object v2, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->aidName:[B

    if-eqz v2, :cond_d

    .line 872
    iget-object v2, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->aidName:[B

    array-length v2, v2

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 873
    iget-object v0, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->aidName:[B

    invoke-static {v0, v11, v1, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    return-object v1
.end method

.method private discoverAidsViaPse(Ljava/lang/StringBuilder;)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            ")",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 480
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 481
    const-string v0, "1PAY.SYS.DDF01"

    const-string v3, "2PAY.SYS.DDF01"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v0, 0x2

    if-lt v5, v0, :cond_0

    .line 532
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/gpjpboc/toolkit/FileSysActivity;->selectMf()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v2

    .line 482
    :cond_0
    aget-object v6, v3, v5

    .line 484
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 485
    array-length v8, v7

    add-int/lit8 v8, v8, 0x6

    new-array v8, v8, [B

    .line 486
    aput-byte v4, v8, v4

    const/16 v9, -0x5c

    const/4 v10, 0x1

    aput-byte v9, v8, v10

    const/4 v9, 0x4

    aput-byte v9, v8, v0

    const/4 v11, 0x3

    aput-byte v4, v8, v11

    .line 487
    array-length v12, v7

    int-to-byte v12, v12

    aput-byte v12, v8, v9

    .line 488
    array-length v12, v7

    const/4 v13, 0x5

    invoke-static {v7, v4, v8, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    invoke-direct {v1, v8}, Lcom/gpjpboc/toolkit/FileSysActivity;->xfer([B)[B

    move-result-object v7

    .line 490
    invoke-direct {v1, v7}, Lcom/gpjpboc/toolkit/FileSysActivity;->swOf([B)I

    move-result v8

    const v12, 0x9000

    if-eq v8, v12, :cond_1

    const/16 v14, 0x6282

    if-eq v8, v14, :cond_1

    const/16 v14, 0x6283

    if-eq v8, v14, :cond_1

    :goto_1
    move-object/from16 v7, p1

    goto/16 :goto_7

    .line 494
    :cond_1
    invoke-static {v7}, Lcom/gpjpboc/toolkit/FileSysActivity;->trim([B)[B

    move-result-object v7

    .line 497
    invoke-static {v7}, Lcom/gpjpboc/toolkit/CardIO;->parseTlv([B)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x1

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_c

    if-lt v8, v10, :cond_2

    const/16 v7, 0x1e

    if-le v8, v7, :cond_3

    :cond_2
    const/4 v8, 0x1

    :cond_3
    const/4 v7, 0x1

    :goto_3
    const/16 v14, 0xa

    if-le v7, v14, :cond_4

    goto :goto_1

    .line 505
    :cond_4
    new-array v14, v13, [B

    const/16 v15, -0x4e

    aput-byte v15, v14, v10

    int-to-byte v15, v7

    aput-byte v15, v14, v0

    shl-int/lit8 v15, v8, 0x3

    or-int/2addr v15, v9

    int-to-byte v15, v15

    .line 506
    aput-byte v15, v14, v11

    .line 505
    invoke-direct {v1, v14}, Lcom/gpjpboc/toolkit/FileSysActivity;->xfer([B)[B

    move-result-object v14

    .line 507
    invoke-direct {v1, v14}, Lcom/gpjpboc/toolkit/FileSysActivity;->swOf([B)I

    move-result v15

    if-eq v15, v12, :cond_5

    goto :goto_1

    .line 509
    :cond_5
    invoke-static {v14}, Lcom/gpjpboc/toolkit/FileSysActivity;->trim([B)[B

    move-result-object v14

    .line 510
    array-length v15, v14

    if-nez v15, :cond_6

    goto :goto_1

    .line 512
    :cond_6
    invoke-static {v14}, Lcom/gpjpboc/toolkit/CardIO;->parseTlv([B)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/gpjpboc/toolkit/CardIO$Tlv;

    .line 513
    iget v0, v15, Lcom/gpjpboc/toolkit/CardIO$Tlv;->tag:I

    const/16 v9, 0x61

    const/16 v11, 0x10

    const/16 v12, 0x4f

    if-ne v0, v9, :cond_a

    .line 514
    iget-object v0, v15, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    invoke-static {v0}, Lcom/gpjpboc/toolkit/CardIO;->parseTlv([B)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_6

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/gpjpboc/toolkit/CardIO$Tlv;

    .line 515
    iget v15, v9, Lcom/gpjpboc/toolkit/CardIO$Tlv;->tag:I

    if-ne v15, v12, :cond_8

    iget-object v15, v9, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    array-length v15, v15

    if-lt v15, v13, :cond_8

    iget-object v15, v9, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    array-length v15, v15

    if-gt v15, v11, :cond_8

    .line 516
    iget-object v15, v9, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    invoke-direct {v1, v2, v15}, Lcom/gpjpboc/toolkit/FileSysActivity;->containsAid(Ljava/util/ArrayList;[B)Z

    move-result v15

    if-nez v15, :cond_8

    .line 517
    iget-object v9, v9, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    invoke-virtual {v9}, [B->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 520
    :cond_a
    iget v0, v15, Lcom/gpjpboc/toolkit/CardIO$Tlv;->tag:I

    if-ne v0, v12, :cond_b

    iget-object v0, v15, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    array-length v0, v0

    if-lt v0, v13, :cond_b

    iget-object v0, v15, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    array-length v0, v0

    if-gt v0, v11, :cond_b

    .line 521
    iget-object v0, v15, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    invoke-direct {v1, v2, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->containsAid(Ljava/util/ArrayList;[B)Z

    move-result v0

    if-nez v0, :cond_b

    .line 522
    iget-object v0, v15, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_6
    const/4 v0, 0x2

    const/4 v9, 0x4

    const/4 v11, 0x3

    const v12, 0x9000

    goto :goto_4

    .line 497
    :cond_c
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpjpboc/toolkit/CardIO$Tlv;

    .line 498
    iget v9, v0, Lcom/gpjpboc/toolkit/CardIO$Tlv;->tag:I

    const/16 v11, 0x88

    if-ne v9, v11, :cond_d

    iget-object v9, v0, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    array-length v9, v9

    if-lt v9, v10, :cond_d

    .line 499
    iget-object v0, v0, Lcom/gpjpboc/toolkit/CardIO$Tlv;->value:[B

    aget-byte v0, v0, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    and-int/lit16 v8, v0, 0xff

    :cond_d
    const/4 v0, 0x2

    const/4 v9, 0x4

    const/4 v11, 0x3

    const v12, 0x9000

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v7, p1

    .line 527
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method private editTree()V
    .locals 3

    .line 936
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x6

    .line 937
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMinLines(I)V

    .line 938
    sget-object v1, Lcom/gpjpboc/toolkit/Config;->structJson:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/gpjpboc/toolkit/Config;->structJson:Ljava/lang/String;

    goto :goto_0

    .line 939
    :cond_0
    const-string v1, "3F00 MF \u6839\u76ee\u5f55\n1001 DF \u7535\u5b50\u94b1\u5305\u5e94\u7528\n0001 EF-BIN 16\u5b57\u8282\n0002 EF-REC 32\u5b57\u8282\n0015 EF-BIN 16\u5b57\u8282\n0016 EF-BIN 16\u5b57\u8282\n0018 EF-CYC \u4ea4\u6613\u8bb0\u5f55"

    .line 938
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 940
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 941
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 942
    const-string v2, "\u6587\u4ef6\u6811\uff08\u6bcf\u884c: FID \u7c7b\u578b \u8bf4\u660e\uff09"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 943
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 944
    new-instance v2, Lcom/gpjpboc/toolkit/FileSysActivity$10;

    invoke-direct {v2, p0, v0}, Lcom/gpjpboc/toolkit/FileSysActivity$10;-><init>(Lcom/gpjpboc/toolkit/FileSysActivity;Landroid/widget/EditText;)V

    const-string v0, "\u4fdd\u5b58\u5e76\u5199\u5230\u5361\u4e0a"

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 970
    new-instance v1, Lcom/gpjpboc/toolkit/FileSysActivity$11;

    invoke-direct {v1, p0}, Lcom/gpjpboc/toolkit/FileSysActivity$11;-><init>(Lcom/gpjpboc/toolkit/FileSysActivity;)V

    const-string v2, "\u4ec5\u4fdd\u5b58\u672c\u5730"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 975
    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 976
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private static hex4(I)Ljava/lang/String;
    .locals 2

    const v0, 0xffff

    and-int/2addr p0, v0

    .line 980
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

.method private static hexSW(I)Ljava/lang/String;
    .locals 2

    const v0, 0xffff

    and-int/2addr p0, v0

    .line 984
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

.method private kidHasAid(Ljava/util/ArrayList;[B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/gpjpboc/toolkit/FileSysActivity$Node;",
            ">;[B)Z"
        }
    .end annotation

    .line 546
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;

    .line 547
    iget-object v1, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->aidName:[B

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->aidName:[B

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method private mkBtn(Ljava/lang/String;)Landroid/widget/Button;
    .locals 1

    .line 163
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 164
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 165
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    const/4 p1, -0x1

    .line 166
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 p1, 0x1

    .line 168
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method private phase(Ljava/lang/String;I)V
    .locals 2

    .line 754
    sget-object v0, Lcom/gpjpboc/toolkit/FileSysActivity;->H:Landroid/os/Handler;

    new-instance v1, Lcom/gpjpboc/toolkit/FileSysActivity$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/gpjpboc/toolkit/FileSysActivity$8;-><init>(Lcom/gpjpboc/toolkit/FileSysActivity;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private probe(Lcom/gpjpboc/toolkit/FileSysActivity$Node;)V
    .locals 9

    .line 718
    :try_start_0
    iget-object v0, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->type:Ljava/lang/String;

    const-string v1, "EF-BIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 719
    new-array v0, v1, [B

    const/16 v1, -0x50

    aput-byte v1, v0, v2

    invoke-direct {p0, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->xfer([B)[B

    move-result-object v0

    .line 720
    invoke-direct {p0, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->swOf([B)I

    move-result v1

    .line 721
    invoke-static {v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->trim([B)[B

    move-result-object v0

    .line 722
    array-length v2, v0

    iput v2, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->binLen:I

    .line 723
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8bfb\u4e8c\u8fdb\u5236 SW="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gpjpboc/toolkit/FileSysActivity;->hexSW(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u957f\u5ea6="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 724
    const-string v2, " \u6570\u636e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/gpjpboc/toolkit/Config;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 723
    iput-object v0, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->probe:Ljava/lang/String;

    goto/16 :goto_4

    .line 725
    :cond_0
    iget-object v0, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->type:Ljava/lang/String;

    const-string v3, "EF-REC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ""

    if-nez v0, :cond_4

    :try_start_1
    iget-object v0, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->type:Ljava/lang/String;

    const-string v4, "EF-CYC"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 745
    :cond_1
    iget-object v0, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->type:Ljava/lang/String;

    const-string v1, "DF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->type:Ljava/lang/String;

    const-string v1, "MF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 746
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u76ee\u5f55(\u53ef\u8fdb\u5165)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->sfi:I

    if-lez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " SFI="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->sfi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->probe:Ljava/lang/String;

    goto/16 :goto_4

    :cond_4
    :goto_0
    const/4 v0, 0x0

    move-object v4, v3

    const/4 v3, 0x0

    const/4 v5, 0x1

    :goto_1
    const/16 v6, 0x1e

    if-le v5, v6, :cond_5

    goto :goto_2

    .line 730
    :cond_5
    new-array v6, v1, [B

    const/16 v7, -0x4e

    aput-byte v7, v6, v2

    const/4 v7, 0x2

    int-to-byte v8, v5

    aput-byte v8, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x4

    aput-byte v8, v6, v7

    invoke-direct {p0, v6}, Lcom/gpjpboc/toolkit/FileSysActivity;->xfer([B)[B

    move-result-object v6

    .line 731
    invoke-direct {p0, v6}, Lcom/gpjpboc/toolkit/FileSysActivity;->swOf([B)I

    move-result v7

    const/16 v8, 0x6a83

    if-eq v7, v8, :cond_9

    const/16 v8, 0x6a82

    if-eq v7, v8, :cond_9

    const/16 v8, 0x6981

    if-ne v7, v8, :cond_6

    goto :goto_2

    :cond_6
    const v8, 0x9000

    if-eq v7, v8, :cond_7

    shr-int/lit8 v7, v7, 0x8

    const/16 v8, 0x62

    if-eq v7, v8, :cond_7

    goto :goto_2

    .line 734
    :cond_7
    invoke-static {v6}, Lcom/gpjpboc/toolkit/FileSysActivity;->trim([B)[B

    move-result-object v6

    if-ne v5, v2, :cond_8

    .line 736
    array-length v3, v6

    .line 737
    invoke-static {v6}, Lcom/gpjpboc/toolkit/Config;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    :cond_8
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 741
    :cond_9
    :goto_2
    iput v3, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->recLen:I

    .line 742
    iput v0, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->recCnt:I

    .line 743
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bfb\u8bb0\u5f55 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u6761\u00d7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "B"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-lez v0, :cond_a

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " \u8bb0\u5f551="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_a
    const-string v0, "\uff08\u7a7a\uff09"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 743
    iput-object v0, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->probe:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 749
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u63a2\u6d4b\u5f02\u5e38: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->probe:Ljava/lang/String;

    :cond_b
    :goto_4
    return-void
.end method

.method private render(Lcom/gpjpboc/toolkit/FileSysActivity$Node;I)Ljava/lang/String;
    .locals 7

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 902
    :goto_0
    const-string v3, "  "

    if-lt v2, p2, :cond_5

    .line 903
    iget v2, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->fid:I

    invoke-static {v2}, Lcom/gpjpboc/toolkit/FileSysActivity;->hex4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    iget v2, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->sfi:I

    if-lez v2, :cond_0

    const-string v2, " SFI="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->sfi:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 905
    :cond_0
    iget-object v2, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->probe:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->probe:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    :cond_1
    iget-object v2, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->fci:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v4, "\n"

    if-lez v2, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v3}, Lcom/gpjpboc/toolkit/FileSysActivity;->sp(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FCI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->fci:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 908
    :goto_1
    iget-object v3, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->kids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 914
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 909
    :cond_3
    iget-object v3, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->kids:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpjpboc/toolkit/FileSysActivity$Node;

    add-int/lit8 v5, p2, 0x1

    .line 910
    invoke-direct {p0, v5}, Lcom/gpjpboc/toolkit/FileSysActivity;->sp(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->kids:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_4

    const-string v6, "\u2514\u2500 "

    goto :goto_2

    :cond_4
    const-string v6, "\u251c\u2500 "

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    invoke-direct {p0, v3, v1}, Lcom/gpjpboc/toolkit/FileSysActivity;->render(Lcom/gpjpboc/toolkit/FileSysActivity$Node;I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\n$"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 902
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private reselectPath(Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/gpjpboc/toolkit/FileSysActivity$Node;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 557
    :try_start_0
    invoke-direct {p0}, Lcom/gpjpboc/toolkit/FileSysActivity;->selectMf()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 560
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    return v1

    .line 561
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpjpboc/toolkit/FileSysActivity$Node;

    .line 562
    iget v4, v3, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->fid:I

    const/16 v5, 0x3f00

    if-eq v4, v5, :cond_2

    iget v4, v3, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->fid:I

    invoke-direct {p0, v4}, Lcom/gpjpboc/toolkit/FileSysActivity;->selectFid(I)[B

    move-result-object v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 565
    :cond_2
    iget-object v4, v3, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->aidName:[B

    if-eqz v4, :cond_4

    iget-object v4, v3, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->aidName:[B

    array-length v4, v4

    const/4 v6, 0x5

    if-lt v4, v6, :cond_4

    .line 566
    iget-object v4, v3, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->aidName:[B

    invoke-direct {p0, v4}, Lcom/gpjpboc/toolkit/FileSysActivity;->selectAid([B)Z

    move-result v4

    if-nez v4, :cond_3

    return v0

    .line 570
    :cond_3
    iget v4, v3, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->fid:I

    if-eq v4, v5, :cond_5

    .line 571
    iget v3, v3, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->fid:I

    invoke-direct {p0, v3}, Lcom/gpjpboc/toolkit/FileSysActivity;->selectFid(I)[B

    goto :goto_1

    .line 573
    :cond_4
    iget v3, v3, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->fid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v5, :cond_6

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    :cond_6
    return v0
.end method

.method private scan(Z)Lcom/gpjpboc/toolkit/FileSysActivity$Node;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 396
    const-string v3, "PSE:"

    const-string v4, "3F00(P2=0C):"

    const-string v5, "3F00(P2=00):"

    const-string v6, "%04X"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    sget-object v0, Lcom/gpjpboc/toolkit/Config;->aid:Ljava/lang/String;

    invoke-static {v0}, Lcom/gpjpboc/toolkit/Config;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 400
    const-string v8, " "

    if-eqz v0, :cond_0

    array-length v10, v0

    if-lez v10, :cond_0

    .line 402
    :try_start_0
    invoke-direct {v1, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->selectAid([B)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v10, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v10, v0

    .line 404
    const-string v0, "AID:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v10, 0x0

    :goto_0
    const/16 v12, 0x6282

    const v13, 0x9000

    const/16 v14, 0x3f

    const/4 v15, 0x7

    const/4 v9, 0x5

    const/16 v17, -0x5c

    const/16 v18, 0x4

    const/16 v19, 0x2

    const/4 v11, 0x1

    const/16 v20, 0x0

    .line 410
    :try_start_1
    new-array v0, v15, [B

    aput-byte v17, v0, v11

    aput-byte v19, v0, v18

    aput-byte v14, v0, v9

    invoke-direct {v1, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->xfer([B)[B

    move-result-object v0

    .line 411
    invoke-direct {v1, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->swOf([B)I

    move-result v9

    if-eq v9, v13, :cond_2

    invoke-direct {v1, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->swOf([B)I

    move-result v9

    if-eq v9, v12, :cond_2

    invoke-direct {v1, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->swOf([B)I

    move-result v9

    const/16 v12, 0x6283

    if-ne v9, v12, :cond_1

    goto :goto_1

    .line 415
    :cond_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-array v12, v11, [Ljava/lang/Object;

    invoke-direct {v1, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->swOf([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v16, 0x0

    aput-object v0, v12, v16

    invoke-static {v6, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 412
    :cond_2
    :goto_1
    array-length v9, v0

    add-int/lit8 v9, v9, -0x2

    new-array v12, v9, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v13, 0x0

    .line 413
    :try_start_2
    invoke-static {v0, v13, v12, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v20, v12

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v20, v12

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 418
    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    if-nez v20, :cond_5

    .line 422
    :try_start_3
    new-array v0, v15, [B

    aput-byte v17, v0, v11

    const/4 v5, 0x3

    const/16 v9, 0xc

    aput-byte v9, v0, v5

    aput-byte v19, v0, v18

    const/4 v5, 0x5

    aput-byte v14, v0, v5

    invoke-direct {v1, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->xfer([B)[B

    move-result-object v0

    .line 423
    invoke-direct {v1, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->swOf([B)I

    move-result v5

    const v9, 0x9000

    if-eq v5, v9, :cond_4

    invoke-direct {v1, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->swOf([B)I

    move-result v5

    const/16 v9, 0x6282

    if-eq v5, v9, :cond_4

    invoke-direct {v1, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->swOf([B)I

    move-result v5

    const/16 v9, 0x6283

    if-ne v5, v9, :cond_3

    goto :goto_4

    .line 427
    :cond_3
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-array v9, v11, [Ljava/lang/Object;

    invoke-direct {v1, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->swOf([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v12, 0x0

    aput-object v0, v9, v12

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 424
    :cond_4
    :goto_4
    array-length v5, v0

    add-int/lit8 v5, v5, -0x2

    new-array v9, v5, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/4 v12, 0x0

    .line 425
    :try_start_4
    invoke-static {v0, v12, v9, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v20, v9

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v20, v9

    goto :goto_5

    :catchall_4
    move-exception v0

    .line 430
    :goto_5
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_6
    if-nez v20, :cond_7

    .line 435
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/gpjpboc/toolkit/FileSysActivity;->selectPse()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v4, 0x0

    .line 436
    new-array v0, v4, [B

    goto :goto_8

    .line 438
    :cond_6
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v4, v11, [Ljava/lang/Object;

    const/4 v5, 0x5

    .line 439
    new-array v5, v5, [B

    aput-byte v17, v5, v11

    aput-byte v18, v5, v19

    const/16 v9, 0xe

    aput-byte v9, v5, v18

    .line 438
    invoke-direct {v1, v5}, Lcom/gpjpboc/toolkit/FileSysActivity;->xfer([B)[B

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/gpjpboc/toolkit/FileSysActivity;->swOf([B)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v9, 0x0

    aput-object v5, v4, v9

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 439
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    .line 442
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_7
    move-object/from16 v0, v20

    :goto_8
    if-eqz v0, :cond_a

    .line 448
    new-instance v3, Ljava/lang/StringBuilder;

    if-eqz v10, :cond_8

    const-string v4, "\u5df2\u8fdb\u5165 applet\uff0c"

    goto :goto_9

    :cond_8
    const-string v4, ""

    :goto_9
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u626b\u63cf 3F00 (MF)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v2, :cond_9

    const-string v4, " \u667a\u80fd\u6a21\u5f0f"

    goto :goto_a

    :cond_9
    const-string v4, " \u5168\u6a21\u5f0f"

    :goto_a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/gpjpboc/toolkit/FileSysActivity;->phase(Ljava/lang/String;I)V

    const/16 v3, 0x3f00

    .line 449
    invoke-direct {v1, v3, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->buildNode(I[B)Lcom/gpjpboc/toolkit/FileSysActivity$Node;

    move-result-object v0

    .line 452
    invoke-direct {v1, v7}, Lcom/gpjpboc/toolkit/FileSysActivity;->discoverAidsViaPse(Ljava/lang/StringBuilder;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v1, Lcom/gpjpboc/toolkit/FileSysActivity;->pendingAids:Ljava/util/ArrayList;

    .line 454
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 455
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-direct {v1, v0, v2, v3}, Lcom/gpjpboc/toolkit/FileSysActivity;->scanUnder(Lcom/gpjpboc/toolkit/FileSysActivity$Node;ZLjava/util/ArrayList;)V

    .line 460
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/gpjpboc/toolkit/FileSysActivity;->selectMf()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :catchall_6
    return-object v0

    .line 446
    :cond_a
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9009\u62e9 3F00 \u5931\u8d25\uff08\u5df2\u8bd5 AID/P2=00/P2=0C/PSE\uff09"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private scanUnder(Lcom/gpjpboc/toolkit/FileSysActivity$Node;ZLjava/util/ArrayList;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpjpboc/toolkit/FileSysActivity$Node;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/gpjpboc/toolkit/FileSysActivity$Node;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/16 v4, 0x8

    .line 588
    new-array v5, v4, [I

    const/4 v6, 0x1

    const/16 v7, 0xff

    aput v7, v5, v6

    const/4 v8, 0x2

    const/16 v9, 0x1000

    aput v9, v5, v8

    const/4 v10, 0x3

    const/16 v11, 0x10ff

    aput v11, v5, v10

    const/4 v12, 0x4

    const/16 v13, 0x1100

    aput v13, v5, v12

    const/4 v14, 0x5

    const/16 v15, 0x11ff

    aput v15, v5, v14

    const/16 v16, 0x6

    const/16 v17, 0x2f00

    aput v17, v5, v16

    const/16 v18, 0x7

    const/16 v19, 0x2fff

    aput v19, v5, v18

    const v4, 0xffff

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v5, 0xe

    .line 590
    new-array v5, v5, [I

    aput v7, v5, v6

    aput v9, v5, v8

    aput v11, v5, v10

    aput v13, v5, v12

    aput v15, v5, v14

    aput v17, v5, v16

    aput v19, v5, v18

    const/16 v7, 0x100

    const/16 v8, 0x8

    .line 591
    aput v7, v5, v8

    const/16 v7, 0x9

    const/16 v8, 0xfff

    aput v8, v5, v7

    const/16 v7, 0xa

    const/16 v8, 0x1200

    aput v8, v5, v7

    const/16 v7, 0xb

    const/16 v8, 0x2eff

    aput v8, v5, v7

    const/16 v7, 0xc

    const/16 v8, 0x3000

    aput v8, v5, v7

    const/16 v7, 0xd

    aput v4, v5, v7

    .line 592
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 594
    :goto_1
    array-length v11, v5

    if-lt v9, v11, :cond_17

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 599
    :goto_2
    array-length v13, v5

    const-string v14, "ADF"

    if-lt v11, v13, :cond_b

    .line 637
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v6, :cond_4

    iget-object v4, v0, Lcom/gpjpboc/toolkit/FileSysActivity;->pendingAids:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 639
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/16 v5, 0x4f00

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v4, 0x0

    .line 654
    iput-object v4, v0, Lcom/gpjpboc/toolkit/FileSysActivity;->pendingAids:Ljava/util/ArrayList;

    goto :goto_5

    .line 639
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 640
    iget-object v11, v1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->kids:Ljava/util/ArrayList;

    invoke-direct {v0, v11, v10}, Lcom/gpjpboc/toolkit/FileSysActivity;->kidHasAid(Ljava/util/ArrayList;[B)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_3

    .line 642
    :cond_2
    :try_start_0
    invoke-direct {v0, v10}, Lcom/gpjpboc/toolkit/FileSysActivity;->selectAidFci([B)[B

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v10, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v11, v5, 0x1

    .line 644
    :try_start_1
    invoke-direct {v0, v5, v10}, Lcom/gpjpboc/toolkit/FileSysActivity;->buildNode(I[B)Lcom/gpjpboc/toolkit/FileSysActivity$Node;

    move-result-object v5

    .line 645
    iput-object v14, v5, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->type:Ljava/lang/String;

    .line 646
    const-string v10, "PSE \u76ee\u5f55\u53d1\u73b0\uff08\u6309 AID \u8fdb\u5165\uff09"

    iput-object v10, v5, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->probe:Ljava/lang/String;

    .line 647
    iget-object v10, v1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->kids:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    .line 649
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    move v5, v11

    goto :goto_3

    :catchall_0
    nop

    goto :goto_4

    :catchall_1
    nop

    goto :goto_3

    .line 656
    :cond_4
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->fid:I

    invoke-static {v1}, Lcom/gpjpboc/toolkit/FileSysActivity;->hex4(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " \u547d\u4e2d "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " \u4e2a\u6587\u4ef6\uff0c\u8fdb\u5165\u5b50\u76ee\u5f55 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, -0x1

    invoke-direct {v0, v1, v4}, Lcom/gpjpboc/toolkit/FileSysActivity;->phase(Ljava/lang/String;I)V

    const/4 v13, 0x0

    .line 658
    :goto_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v13, v1, :cond_5

    return-void

    .line 659
    :cond_5
    iget-boolean v1, v0, Lcom/gpjpboc/toolkit/FileSysActivity;->stop:Z

    if-eqz v1, :cond_6

    return-void

    .line 660
    :cond_6
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/gpjpboc/toolkit/FileSysActivity$Node;

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 663
    :goto_7
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_9

    if-eqz v4, :cond_7

    goto :goto_8

    .line 667
    :cond_7
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    invoke-direct {v0, v3}, Lcom/gpjpboc/toolkit/FileSysActivity;->reselectPath(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 669
    invoke-direct {v0, v15, v2, v3}, Lcom/gpjpboc/toolkit/FileSysActivity;->scanUnder(Lcom/gpjpboc/toolkit/FileSysActivity$Node;ZLjava/util/ArrayList;)V

    .line 671
    :cond_8
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 672
    invoke-direct {v0, v3}, Lcom/gpjpboc/toolkit/FileSysActivity;->reselectPath(Ljava/util/ArrayList;)Z

    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 664
    :cond_9
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gpjpboc/toolkit/FileSysActivity$Node;

    iget v5, v5, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->fid:I

    iget v9, v15, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->fid:I

    if-ne v5, v9, :cond_a

    const/4 v4, 0x1

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 600
    :cond_b
    aget v13, v5, v11

    add-int/lit8 v15, v11, 0x1

    aget v15, v5, v15

    if-eqz v2, :cond_c

    .line 601
    const-string v16, "\u667a\u80fd\u626b\u63cf"

    :goto_9
    move-object/from16 v8, v16

    goto :goto_a

    :cond_c
    const/16 v8, 0x8

    if-ge v11, v8, :cond_d

    .line 602
    const-string v16, "\u5168\u626b\u63cf\u00b7\u667a\u80fd\u533a\u95f4"

    goto :goto_9

    :cond_d
    const-string v16, "\u5168\u626b\u63cf\u00b7\u6269\u5c55\u533a\u95f4"

    goto :goto_9

    .line 604
    :goto_a
    invoke-direct {v0, v3}, Lcom/gpjpboc/toolkit/FileSysActivity;->reselectPath(Ljava/util/ArrayList;)Z

    move-result v16

    if-nez v16, :cond_e

    return-void

    :cond_e
    :goto_b
    if-le v13, v15, :cond_f

    add-int/lit8 v11, v11, 0x2

    goto/16 :goto_2

    .line 608
    :cond_f
    iget-boolean v6, v0, Lcom/gpjpboc/toolkit/FileSysActivity;->stop:Z

    if-eqz v6, :cond_10

    return-void

    .line 609
    :cond_10
    iget v6, v1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->fid:I

    if-eq v13, v6, :cond_15

    const/16 v6, 0x3f00

    if-eq v13, v6, :cond_15

    if-eqz v13, :cond_15

    if-ne v13, v4, :cond_11

    goto/16 :goto_d

    :cond_11
    and-int/lit8 v6, v12, 0xf

    if-nez v6, :cond_12

    .line 611
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->fid:I

    invoke-static {v6}, Lcom/gpjpboc/toolkit/FileSysActivity;->hex4(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " @ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/gpjpboc/toolkit/FileSysActivity;->hex4(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v19, v5

    int-to-long v5, v12

    const-wide/16 v20, 0x64

    mul-long v5, v5, v20

    move-object/from16 v20, v8

    const/4 v2, 0x1

    .line 612
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v2, v10

    move/from16 v21, v11

    int-to-long v10, v8

    div-long/2addr v5, v10

    long-to-int v6, v5

    .line 611
    invoke-direct {v0, v4, v6}, Lcom/gpjpboc/toolkit/FileSysActivity;->phase(Ljava/lang/String;I)V

    goto :goto_c

    :cond_12
    move-object/from16 v19, v5

    move-object/from16 v20, v8

    move v2, v10

    move/from16 v21, v11

    :goto_c
    add-int/lit8 v12, v12, 0x1

    .line 617
    :try_start_2
    invoke-direct {v0, v13}, Lcom/gpjpboc/toolkit/FileSysActivity;->selectFid(I)[B

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v4, :cond_13

    goto :goto_e

    .line 622
    :cond_13
    invoke-direct {v0, v13, v4}, Lcom/gpjpboc/toolkit/FileSysActivity;->buildNode(I[B)Lcom/gpjpboc/toolkit/FileSysActivity$Node;

    move-result-object v4

    .line 623
    invoke-direct {v0, v4}, Lcom/gpjpboc/toolkit/FileSysActivity;->probe(Lcom/gpjpboc/toolkit/FileSysActivity$Node;)V

    .line 624
    iget-object v5, v1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->kids:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    .line 626
    iget-object v5, v4, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->type:Ljava/lang/String;

    const-string v6, "DF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    iget-object v5, v4, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->type:Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 627
    :cond_14
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    invoke-direct {v0, v3}, Lcom/gpjpboc/toolkit/FileSysActivity;->reselectPath(Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_16

    :catchall_2
    return-void

    :cond_15
    :goto_d
    move-object/from16 v19, v5

    move-object/from16 v20, v8

    move v2, v10

    move/from16 v21, v11

    :cond_16
    :goto_e
    add-int/lit8 v13, v13, 0x1

    move v10, v2

    move-object/from16 v5, v19

    move-object/from16 v8, v20

    move/from16 v11, v21

    const v4, 0xffff

    const/4 v6, 0x1

    move/from16 v2, p2

    goto/16 :goto_b

    :cond_17
    move-object/from16 v19, v5

    move v2, v10

    .line 595
    aget v4, v19, v9

    add-int/lit8 v5, v9, 0x1

    aget v5, v19, v5

    sub-int/2addr v5, v4

    const/4 v4, 0x1

    add-int/2addr v5, v4

    add-int v10, v2, v5

    add-int/lit8 v9, v9, 0x2

    move/from16 v2, p2

    move-object/from16 v5, v19

    const v4, 0xffff

    const/4 v6, 0x1

    goto/16 :goto_1
.end method

.method private selectAid([B)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 354
    array-length v0, p1

    const/4 v1, 0x5

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 355
    aput-byte v2, v0, v2

    const/16 v3, -0x5c

    const/4 v4, 0x1

    .line 356
    aput-byte v3, v0, v4

    const/4 v3, 0x2

    const/4 v5, 0x4

    .line 357
    aput-byte v5, v0, v3

    const/4 v3, 0x3

    .line 358
    aput-byte v2, v0, v3

    .line 359
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 360
    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    invoke-direct {p0, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->xfer([B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/FileSysActivity;->swOf([B)I

    move-result p1

    const v0, 0x9000

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6282

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6283

    if-eq p1, v0, :cond_0

    return v2

    :cond_0
    return v4
.end method

.method private selectAidFci([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 367
    array-length v0, p1

    add-int/lit8 v0, v0, 0x6

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 368
    aput-byte v1, v0, v1

    const/4 v2, 0x1

    const/16 v3, -0x5c

    .line 369
    aput-byte v3, v0, v2

    const/4 v2, 0x2

    const/4 v3, 0x4

    .line 370
    aput-byte v3, v0, v2

    const/4 v2, 0x3

    .line 371
    aput-byte v1, v0, v2

    .line 372
    array-length v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    const/4 v2, 0x5

    .line 373
    array-length v3, p1

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 374
    invoke-direct {p0, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->xfer([B)[B

    move-result-object p1

    .line 375
    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/FileSysActivity;->swOf([B)I

    move-result v0

    const v1, 0x9000

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6282

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6283

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 377
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/gpjpboc/toolkit/FileSysActivity;->trim([B)[B

    move-result-object p1

    return-object p1
.end method

.method private selectFid(I)[B
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x7

    .line 334
    new-array v1, v0, [B

    const/4 v2, 0x1

    const/16 v3, -0x5c

    aput-byte v3, v1, v2

    const/4 v4, 0x4

    const/4 v5, 0x2

    aput-byte v5, v1, v4

    shr-int/lit8 v6, p1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    const/4 v7, 0x5

    .line 335
    aput-byte v6, v1, v7

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v8, 0x6

    aput-byte p1, v1, v8

    .line 334
    invoke-direct {p0, v1}, Lcom/gpjpboc/toolkit/FileSysActivity;->xfer([B)[B

    move-result-object v1

    .line 336
    invoke-direct {p0, v1}, Lcom/gpjpboc/toolkit/FileSysActivity;->swOf([B)I

    move-result v9

    const/4 v10, 0x0

    const v11, 0x9000

    if-eq v9, v11, :cond_3

    const/16 v12, 0x6282

    if-eq v9, v12, :cond_3

    const/16 v13, 0x6283

    if-ne v9, v13, :cond_0

    goto :goto_1

    .line 342
    :cond_0
    new-array v0, v0, [B

    aput-byte v3, v0, v2

    const/4 v1, 0x3

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    aput-byte v5, v0, v4

    .line 343
    aput-byte v6, v0, v7

    aput-byte p1, v0, v8

    .line 342
    invoke-direct {p0, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->xfer([B)[B

    move-result-object p1

    .line 344
    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/FileSysActivity;->swOf([B)I

    move-result v0

    if-eq v0, v11, :cond_2

    if-eq v0, v12, :cond_2

    if-ne v0, v13, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 346
    :cond_2
    :goto_0
    array-length v0, p1

    sub-int/2addr v0, v5

    new-array v1, v0, [B

    .line 347
    invoke-static {p1, v10, v1, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 338
    :cond_3
    :goto_1
    array-length p1, v1

    sub-int/2addr p1, v5

    new-array v0, p1, [B

    .line 339
    invoke-static {v1, v10, v0, v10, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private selectMf()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x7

    .line 468
    new-array v1, v0, [B

    const/4 v2, 0x1

    const/16 v3, -0x5c

    aput-byte v3, v1, v2

    const/4 v4, 0x3

    const/16 v5, 0xc

    aput-byte v5, v1, v4

    const/4 v4, 0x4

    const/4 v5, 0x2

    aput-byte v5, v1, v4

    const/4 v6, 0x5

    const/16 v7, 0x3f

    aput-byte v7, v1, v6

    invoke-direct {p0, v1}, Lcom/gpjpboc/toolkit/FileSysActivity;->xfer([B)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/gpjpboc/toolkit/FileSysActivity;->swOf([B)I

    move-result v1

    const v8, 0x9000

    if-eq v1, v8, :cond_1

    const/16 v9, 0x6282

    if-eq v1, v9, :cond_1

    const/16 v10, 0x6283

    if-ne v1, v10, :cond_0

    goto :goto_0

    .line 470
    :cond_0
    new-array v0, v0, [B

    aput-byte v3, v0, v2

    aput-byte v5, v0, v4

    aput-byte v7, v0, v6

    invoke-direct {p0, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->xfer([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->swOf([B)I

    move-result v0

    if-eq v0, v8, :cond_1

    if-eq v0, v9, :cond_1

    if-eq v0, v10, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v2
.end method

.method private selectPse()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 383
    const-string v0, "1PAY.SYS.DDF01"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 384
    array-length v1, v0

    const/4 v2, 0x5

    add-int/2addr v1, v2

    new-array v1, v1, [B

    const/4 v3, 0x0

    .line 385
    aput-byte v3, v1, v3

    const/16 v4, -0x5c

    const/4 v5, 0x1

    .line 386
    aput-byte v4, v1, v5

    const/4 v4, 0x2

    const/4 v6, 0x4

    .line 387
    aput-byte v6, v1, v4

    const/4 v4, 0x3

    .line 388
    aput-byte v3, v1, v4

    .line 389
    array-length v4, v0

    int-to-byte v4, v4

    aput-byte v4, v1, v6

    .line 390
    array-length v4, v0

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    invoke-direct {p0, v1}, Lcom/gpjpboc/toolkit/FileSysActivity;->xfer([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->swOf([B)I

    move-result v0

    const v1, 0x9000

    if-eq v0, v1, :cond_0

    const/16 v1, 0x6282

    if-eq v0, v1, :cond_0

    const/16 v1, 0x6283

    if-eq v0, v1, :cond_0

    return v3

    :cond_0
    return v5
.end method

.method private setBusy(Z)V
    .locals 1

    .line 225
    iput-boolean p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->busy:Z

    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->stop:Z

    .line 227
    invoke-static {p0, p1}, Lcom/gpjpboc/toolkit/FileSysActivity;->syncScanBtn(Lcom/gpjpboc/toolkit/FileSysActivity;Z)V

    return-void
.end method

.method private sp(I)Ljava/lang/String;
    .locals 3

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p1, :cond_0

    .line 920
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 919
    :cond_0
    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private startScan(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 232
    invoke-direct {p0, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->setBusy(Z)V

    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->root:Lcom/gpjpboc/toolkit/FileSysActivity$Node;

    .line 234
    iget-object v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->tvTree:Landroid/widget/TextView;

    const-string v1, "\u626b\u63cf\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    new-instance v0, Lcom/gpjpboc/toolkit/FileSysActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/gpjpboc/toolkit/FileSysActivity$7;-><init>(Lcom/gpjpboc/toolkit/FileSysActivity;Z)V

    .line 259
    invoke-virtual {v0}, Lcom/gpjpboc/toolkit/FileSysActivity$7;->start()V

    return-void
.end method

.method private swOf([B)I
    .locals 2

    if-eqz p1, :cond_1

    .line 322
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 323
    :cond_0
    array-length v0, p1

    sub-int/2addr v0, v1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method private static syncScanBtn(Lcom/gpjpboc/toolkit/FileSysActivity;Z)V
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->scanBtn:Landroid/widget/Button;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 220
    const-string p1, "\u505c\u6b62\u626b\u63cf"

    goto :goto_0

    :cond_0
    const-string p1, "\u9009\u62e9\u626b\u63cf\u65b9\u5f0f\uff08\u667a\u80fd\u626b\u63cf / \u5168\u626b\u63cf\uff09"

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private toJson(Lcom/gpjpboc/toolkit/FileSysActivity$Node;)Ljava/lang/String;
    .locals 3

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"fid\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 925
    iget v1, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->fid:I

    invoke-static {v1}, Lcom/gpjpboc/toolkit/FileSysActivity;->hex4(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"type\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    const-string v1, "\",\"fci\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->fci:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"probe\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->probe:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"kids\":["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 927
    :goto_0
    iget-object v2, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->kids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 931
    const-string p1, "]}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-lez v1, :cond_1

    .line 928
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    :cond_1
    iget-object v2, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->kids:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpjpboc/toolkit/FileSysActivity$Node;

    invoke-direct {p0, v2}, Lcom/gpjpboc/toolkit/FileSysActivity;->toJson(Lcom/gpjpboc/toolkit/FileSysActivity$Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private toast(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 175
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private toggleScan()V
    .locals 1

    .line 209
    iget-boolean v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->busy:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->stop:Z

    .line 211
    const-string v0, "\u6b63\u5728\u505c\u6b62\u626b\u63cf\uff0c\u8bf7\u7a0d\u5019\u2026"

    invoke-direct {p0, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->toast(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/gpjpboc/toolkit/FileSysActivity;->chooseScan()V

    :goto_0
    return-void
.end method

.method private static trim([B)[B
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 997
    array-length v1, p0

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 998
    :cond_0
    array-length v1, p0

    sub-int/2addr v1, v2

    new-array v2, v1, [B

    .line 999
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    .line 997
    :cond_1
    :goto_0
    new-array p0, v0, [B

    return-object p0
.end method

.method private xfer([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 328
    iget-boolean v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->stop:Z

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->dep:Landroid/nfc/tech/IsoDep;

    invoke-static {v0, p1}, Lcom/gpjpboc/toolkit/NfcIo;->xfer(Landroid/nfc/tech/IsoDep;[B)[B

    move-result-object p1

    return-object p1

    .line 328
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "\u5df2\u53d6\u6d88"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public finishCustomUi(Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 313
    invoke-direct {p0, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->setBusy(Z)V

    .line 314
    iget-object v1, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->tvPhase:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const-string p2, "\u5df2\u505c\u6b62\uff08\u4fdd\u7559\u5df2\u626b\u5230\u7684\u90e8\u5206\uff09"

    goto :goto_0

    :cond_0
    const-string p2, "\u81ea\u5b9a\u4e49\u626b\u63cf\u5b8c\u6210"

    :goto_0
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object p2, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->tvTree:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public hostToast(Ljava/lang/String;)V
    .locals 0

    .line 266
    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/FileSysActivity;->toast(Ljava/lang/String;)V

    return-void
.end method

.method public isStopped()Z
    .locals 1

    .line 298
    iget-boolean v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->stop:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-static {p0}, Lcom/gpjpboc/toolkit/Config;->load(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->stop:Z

    .line 64
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 66
    invoke-virtual {p0}, Lcom/gpjpboc/toolkit/FileSysActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41600000    # 14.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 67
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 69
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 70
    const-string v3, "\u3010\u6587\u4ef6\u7cfb\u7edf\u626b\u63cf\u3011"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41700000    # 15.0f

    .line 71
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 72
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    const-string v2, "\u9009\u62e9\u626b\u63cf\u65b9\u5f0f\uff08\u667a\u80fd\u626b\u63cf / \u5168\u626b\u63cf\uff09"

    invoke-direct {p0, v2}, Lcom/gpjpboc/toolkit/FileSysActivity;->mkBtn(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    .line 75
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    iput-object v2, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->scanBtn:Landroid/widget/Button;

    .line 77
    new-instance v4, Lcom/gpjpboc/toolkit/FileSysActivity$1;

    invoke-direct {v4, p0}, Lcom/gpjpboc/toolkit/FileSysActivity$1;-><init>(Lcom/gpjpboc/toolkit/FileSysActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->tvPhase:Landroid/widget/TextView;

    .line 84
    const-string v4, "\u672a\u5f00\u59cb"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v2, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->tvPhase:Landroid/widget/TextView;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 86
    iget-object v2, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->tvPhase:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    new-instance v2, Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->pb:Landroid/widget/ProgressBar;

    const/16 v4, 0x64

    .line 89
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 90
    iget-object v2, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 92
    const-string v2, "\u4fdd\u5b58\u672c\u6b21\u626b\u63cf\u6570\u636e"

    invoke-direct {p0, v2}, Lcom/gpjpboc/toolkit/FileSysActivity;->mkBtn(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    .line 93
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    new-instance v4, Lcom/gpjpboc/toolkit/FileSysActivity$2;

    invoke-direct {v4, p0}, Lcom/gpjpboc/toolkit/FileSysActivity$2;-><init>(Lcom/gpjpboc/toolkit/FileSysActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 107
    const-string v4, "\u3010\u6587\u4ef6\u7ed3\u6784\u8bbe\u7f6e\u3011"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 109
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    const-string v2, "\u4ee5\u5f53\u524d\u626b\u63cf\u6570\u636e\u5efa\u7acb\u6587\u4ef6\u7ed3\u6784\uff08\u5199\u5230\u5361\u4e0a\uff09"

    invoke-direct {p0, v2}, Lcom/gpjpboc/toolkit/FileSysActivity;->mkBtn(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    .line 112
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    new-instance v3, Lcom/gpjpboc/toolkit/FileSysActivity$3;

    invoke-direct {v3, p0}, Lcom/gpjpboc/toolkit/FileSysActivity$3;-><init>(Lcom/gpjpboc/toolkit/FileSysActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const-string v2, "\u4ee5\u6587\u4ef6\u6811\u5efa\u7acb/\u4fee\u6539\u6587\u4ef6\u7ed3\u6784"

    invoke-direct {p0, v2}, Lcom/gpjpboc/toolkit/FileSysActivity;->mkBtn(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    .line 124
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    new-instance v3, Lcom/gpjpboc/toolkit/FileSysActivity$4;

    invoke-direct {v3, p0}, Lcom/gpjpboc/toolkit/FileSysActivity$4;-><init>(Lcom/gpjpboc/toolkit/FileSysActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const-string v2, "\u5bfc\u5165\u5df2\u4fdd\u5b58\u7684\u626b\u63cf\u6570\u636e"

    invoke-direct {p0, v2}, Lcom/gpjpboc/toolkit/FileSysActivity;->mkBtn(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    .line 132
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 133
    new-instance v3, Lcom/gpjpboc/toolkit/FileSysActivity$5;

    invoke-direct {v3, p0}, Lcom/gpjpboc/toolkit/FileSysActivity$5;-><init>(Lcom/gpjpboc/toolkit/FileSysActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->tvTree:Landroid/widget/TextView;

    const/high16 v3, 0x41300000    # 11.0f

    .line 146
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 147
    iget-object v2, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->tvTree:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 148
    iget-object v1, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->tvTree:Landroid/widget/TextView;

    const-string v2, "\uff08\u626b\u63cf\u7ed3\u679c\u6811\u72b6\u56fe\u663e\u793a\u5728\u6b64\uff09"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 150
    iget-object v2, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->tvTree:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 151
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, p1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    invoke-virtual {p0, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->stop:Z

    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onFinish(Ljava/lang/String;Z)V
    .locals 2

    .line 308
    sget-object v0, Lcom/gpjpboc/toolkit/FileSysActivity;->H:Landroid/os/Handler;

    new-instance v1, Lcom/gpjpboc/toolkit/UiFinish;

    invoke-direct {v1, p0, p1, p2}, Lcom/gpjpboc/toolkit/UiFinish;-><init>(Lcom/gpjpboc/toolkit/FileSysActivity;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPhase(Ljava/lang/String;I)V
    .locals 0

    .line 303
    invoke-direct {p0, p1, p2}, Lcom/gpjpboc/toolkit/FileSysActivity;->phase(Ljava/lang/String;I)V

    return-void
.end method

.method public scanFid(I)[B
    .locals 0

    .line 290
    :try_start_0
    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/FileSysActivity;->selectFid(I)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public startCustomScan(Ljava/lang/String;)V
    .locals 2

    .line 271
    iget-boolean v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->busy:Z

    if-eqz v0, :cond_0

    .line 272
    const-string p1, "\u626b\u63cf\u8fdb\u884c\u4e2d"

    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/FileSysActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 275
    :cond_0
    sget-object v0, Lcom/gpjpboc/toolkit/PageLauncher;->main:Lorg/pboc/fm1208/MainActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 276
    :cond_1
    iget-object v0, v0, Lorg/pboc/fm1208/MainActivity;->isoDep:Landroid/nfc/tech/IsoDep;

    :goto_0
    iput-object v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->dep:Landroid/nfc/tech/IsoDep;

    if-eqz v0, :cond_3

    .line 277
    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 281
    invoke-direct {p0, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->setBusy(Z)V

    .line 282
    iput-object v1, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->root:Lcom/gpjpboc/toolkit/FileSysActivity$Node;

    .line 283
    iget-object v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity;->tvTree:Landroid/widget/TextView;

    const-string v1, "\u81ea\u5b9a\u4e49\u626b\u63cf\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gpjpboc/toolkit/CustomScanRunner;

    invoke-direct {v1, p0, p1}, Lcom/gpjpboc/toolkit/CustomScanRunner;-><init>(Lcom/gpjpboc/toolkit/CustomScanHost;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 278
    :cond_3
    :goto_1
    const-string p1, "\u8bf7\u5148\u5728\u4e3b\u9875\u8d34\u5361\u8fde\u63a5\u540e\u518d\u626b\u63cf"

    invoke-direct {p0, p1}, Lcom/gpjpboc/toolkit/FileSysActivity;->toast(Ljava/lang/String;)V

    return-void
.end method
