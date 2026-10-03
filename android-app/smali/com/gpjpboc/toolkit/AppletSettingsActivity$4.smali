.class Lcom/gpjpboc/toolkit/AppletSettingsActivity$4;
.super Ljava/lang/Thread;
.source "AppletSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpjpboc/toolkit/AppletSettingsActivity;->detect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpjpboc/toolkit/AppletSettingsActivity;

.field private final synthetic val$aidB:[B

.field private final synthetic val$fdep:Landroid/nfc/tech/IsoDep;


# direct methods
.method constructor <init>(Lcom/gpjpboc/toolkit/AppletSettingsActivity;[BLandroid/nfc/tech/IsoDep;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$4;->this$0:Lcom/gpjpboc/toolkit/AppletSettingsActivity;

    iput-object p2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$4;->val$aidB:[B

    iput-object p3, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$4;->val$fdep:Landroid/nfc/tech/IsoDep;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/gpjpboc/toolkit/AppletSettingsActivity$4;)Lcom/gpjpboc/toolkit/AppletSettingsActivity;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$4;->this$0:Lcom/gpjpboc/toolkit/AppletSettingsActivity;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$4;->val$aidB:[B

    array-length v1, v0

    add-int/lit8 v1, v1, 0x6

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 226
    aput-byte v2, v1, v2

    const/16 v3, -0x5c

    const/4 v4, 0x1

    aput-byte v3, v1, v4

    const/4 v3, 0x2

    const/4 v5, 0x4

    aput-byte v5, v1, v3

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    .line 227
    array-length v3, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v5

    .line 228
    array-length v3, v0

    const/4 v5, 0x5

    invoke-static {v0, v2, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$4;->val$fdep:Landroid/nfc/tech/IsoDep;

    invoke-static {v0, v1}, Lcom/gpjpboc/toolkit/NfcIo;->xfer(Landroid/nfc/tech/IsoDep;[B)[B

    move-result-object v0

    .line 230
    invoke-static {v0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->access$2([B)I

    move-result v0

    const v1, 0x9000

    if-eq v0, v1, :cond_0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9009\u62e9Applet\u5931\u8d25 SW="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->access$3(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff08\u975eJavaPboc\u5361\uff09"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$4;->val$fdep:Landroid/nfc/tech/IsoDep;

    new-array v3, v5, [B

    const/16 v5, -0x80

    aput-byte v5, v3, v2

    const/16 v2, -0x36

    aput-byte v2, v3, v4

    invoke-static {v0, v3}, Lcom/gpjpboc/toolkit/NfcIo;->xfer(Landroid/nfc/tech/IsoDep;[B)[B

    move-result-object v0

    .line 235
    invoke-static {v0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->access$2([B)I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Applet\u4e0d\u652f\u6301\u914d\u7f6e\u8bfb\u53d6 SW="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->access$3(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$4;->this$0:Lcom/gpjpboc/toolkit/AppletSettingsActivity;

    invoke-static {v0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->access$4([B)[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->access$5(Lcom/gpjpboc/toolkit/AppletSettingsActivity;[B)V

    .line 240
    invoke-static {}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->access$6()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/gpjpboc/toolkit/AppletSettingsActivity$4$1;

    invoke-direct {v1, p0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity$4$1;-><init>(Lcom/gpjpboc/toolkit/AppletSettingsActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    const-string v0, "\u68c0\u6d4b\u6210\u529f\uff0c\u914d\u7f6e\u5df2\u8f7d\u5165\u754c\u9762"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u68c0\u6d4b\u5f02\u5e38: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    :goto_0
    invoke-static {}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->access$6()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/gpjpboc/toolkit/AppletSettingsActivity$4$2;

    invoke-direct {v2, p0, v0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity$4$2;-><init>(Lcom/gpjpboc/toolkit/AppletSettingsActivity$4;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
