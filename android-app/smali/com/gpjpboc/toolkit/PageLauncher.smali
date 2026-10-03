.class public Lcom/gpjpboc/toolkit/PageLauncher;
.super Ljava/lang/Object;
.source "PageLauncher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final MODE_FILESYS:I = 0x0

.field public static final MODE_SETTINGS:I = 0x2

.field public static final MODE_WALLET:I = 0x1

.field public static volatile gpdroidMain:Lat/fhooe/usmile/gpjshell/MainActivity;

.field public static volatile main:Lorg/pboc/fm1208/MainActivity;


# instance fields
.field private final ctx:Landroid/content/Context;

.field private final mode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/gpjpboc/toolkit/PageLauncher;->ctx:Landroid/content/Context;

    .line 33
    iput p2, p0, Lcom/gpjpboc/toolkit/PageLauncher;->mode:I

    .line 34
    instance-of p2, p1, Lorg/pboc/fm1208/MainActivity;

    if-eqz p2, :cond_0

    .line 35
    check-cast p1, Lorg/pboc/fm1208/MainActivity;

    sput-object p1, Lcom/gpjpboc/toolkit/PageLauncher;->main:Lorg/pboc/fm1208/MainActivity;

    :cond_0
    return-void
.end method

.method public static getIsoDep()Landroid/nfc/tech/IsoDep;
    .locals 2

    const/4 v0, 0x0

    .line 17
    :try_start_0
    sget-object v1, Lcom/gpjpboc/toolkit/PageLauncher;->main:Lorg/pboc/fm1208/MainActivity;

    if-nez v1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, v1, Lorg/pboc/fm1208/MainActivity;->isoDep:Landroid/nfc/tech/IsoDep;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 41
    :try_start_0
    iget-object p1, p0, Lcom/gpjpboc/toolkit/PageLauncher;->ctx:Landroid/content/Context;

    instance-of v0, p1, Lorg/pboc/fm1208/MainActivity;

    if-eqz v0, :cond_0

    .line 42
    check-cast p1, Lorg/pboc/fm1208/MainActivity;

    sput-object p1, Lcom/gpjpboc/toolkit/PageLauncher;->main:Lorg/pboc/fm1208/MainActivity;

    .line 44
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 45
    iget v0, p0, Lcom/gpjpboc/toolkit/PageLauncher;->mode:I

    if-nez v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/gpjpboc/toolkit/PageLauncher;->ctx:Landroid/content/Context;

    const-class v1, Lcom/gpjpboc/toolkit/FileSysActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 48
    iget-object v0, p0, Lcom/gpjpboc/toolkit/PageLauncher;->ctx:Landroid/content/Context;

    const-class v1, Lcom/gpjpboc/toolkit/WalletActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/gpjpboc/toolkit/PageLauncher;->ctx:Landroid/content/Context;

    const-class v1, Lcom/gpjpboc/toolkit/AppletSettingsActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/gpjpboc/toolkit/PageLauncher;->ctx:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
