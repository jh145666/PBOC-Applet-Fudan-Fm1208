.class Lcom/gpjpboc/toolkit/AtsHelper$3;
.super Ljava/lang/Thread;
.source "AtsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpjpboc/toolkit/AtsHelper;->send(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$act:Landroid/app/Activity;

.field private final synthetic val$fcmd:[B

.field private final synthetic val$gm:Lat/fhooe/usmile/gpjshell/MainActivity;


# direct methods
.method constructor <init>(Lat/fhooe/usmile/gpjshell/MainActivity;[BLandroid/app/Activity;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/gpjpboc/toolkit/AtsHelper$3;->val$gm:Lat/fhooe/usmile/gpjshell/MainActivity;

    iput-object p2, p0, Lcom/gpjpboc/toolkit/AtsHelper$3;->val$fcmd:[B

    iput-object p3, p0, Lcom/gpjpboc/toolkit/AtsHelper$3;->val$act:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AtsHelper$3;->val$gm:Lat/fhooe/usmile/gpjshell/MainActivity;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lat/fhooe/usmile/gpjshell/MainActivity;->mTerminal:Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

    if-nez v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AtsHelper$3;->val$gm:Lat/fhooe/usmile/gpjshell/MainActivity;

    iget-object v0, v0, Lat/fhooe/usmile/gpjshell/MainActivity;->mTerminal:Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;->connect(Ljava/lang/String;)Ljavax/smartcardio/Card;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Ljavax/smartcardio/Card;->getBasicChannel()Ljavax/smartcardio/CardChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/gpjpboc/toolkit/AtsHelper$3;->val$fcmd:[B

    invoke-static {v0, v1}, Lcom/gpjpboc/toolkit/CardIO;->transceive(Ljavax/smartcardio/CardChannel;[B)Ljavax/smartcardio/ResponseAPDU;

    move-result-object v0

    if-nez v0, :cond_1

    .line 113
    const-string v0, "\u65e0\u54cd\u5e94"

    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {v0}, Ljavax/smartcardio/ResponseAPDU;->getSW()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v2, 0x9000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "%04X"

    if-ne v1, v2, :cond_2

    .line 115
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ATS \u4fee\u6539\u6210\u529f SW="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljavax/smartcardio/ResponseAPDU;->getSW()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 117
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5931\u8d25 SW="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljavax/smartcardio/ResponseAPDU;->getSW()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 108
    :cond_3
    :goto_0
    const-string v0, "\u8bf7\u5148\u5728\u8fde\u63a5\u9875\u9009\u62e9\u8bfb\u5361\u5668\u5e76\u8fde\u63a5"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u53d1\u9001\u5931\u8d25: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_1
    invoke-static {}, Lcom/gpjpboc/toolkit/AtsHelper;->access$1()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/gpjpboc/toolkit/AtsHelper$3$1;

    iget-object v3, p0, Lcom/gpjpboc/toolkit/AtsHelper$3;->val$act:Landroid/app/Activity;

    invoke-direct {v2, p0, v3, v0}, Lcom/gpjpboc/toolkit/AtsHelper$3$1;-><init>(Lcom/gpjpboc/toolkit/AtsHelper$3;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
