.class public Lcom/gpjpboc/toolkit/AtsLauncher;
.super Ljava/lang/Object;
.source "AtsLauncher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/gpjpboc/toolkit/AtsLauncher;->ctx:Landroid/content/Context;

    .line 11
    instance-of v0, p1, Lat/fhooe/usmile/gpjshell/MainActivity;

    if-eqz v0, :cond_0

    .line 12
    check-cast p1, Lat/fhooe/usmile/gpjshell/MainActivity;

    sput-object p1, Lcom/gpjpboc/toolkit/PageLauncher;->gpdroidMain:Lat/fhooe/usmile/gpjshell/MainActivity;

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 16
    iget-object p1, p0, Lcom/gpjpboc/toolkit/AtsLauncher;->ctx:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/gpjpboc/toolkit/AtsHelper;->show(Landroid/app/Activity;)V

    return-void
.end method
