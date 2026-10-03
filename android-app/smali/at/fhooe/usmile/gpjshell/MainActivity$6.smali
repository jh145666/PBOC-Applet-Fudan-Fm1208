.class Lat/fhooe/usmile/gpjshell/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/usmile/gpjshell/MainActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lat/fhooe/usmile/gpjshell/MainActivity;


# direct methods
.method constructor <init>(Lat/fhooe/usmile/gpjshell/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 298
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$6;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 302
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity$6;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$702(Lat/fhooe/usmile/gpjshell/MainActivity;Z)Z

    .line 304
    return-void
.end method
