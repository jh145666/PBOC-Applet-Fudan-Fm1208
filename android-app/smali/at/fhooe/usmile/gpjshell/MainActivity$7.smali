.class Lat/fhooe/usmile/gpjshell/MainActivity$7;
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

    .line 314
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$7;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 318
    invoke-static {}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$800()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    move-result-object v0

    const-string v1, "GPJShell"

    const-string v2, "\u5df2\u53d6\u6d88"

    invoke-virtual {v0, v1, v2}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity$7;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$900(Lat/fhooe/usmile/gpjshell/MainActivity;)Lat/fhooe/usmile/gpjshell/MifareTest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity$7;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 320
    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$900(Lat/fhooe/usmile/gpjshell/MainActivity;)Lat/fhooe/usmile/gpjshell/MifareTest;

    move-result-object v0

    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/MifareTest;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity$7;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$900(Lat/fhooe/usmile/gpjshell/MainActivity;)Lat/fhooe/usmile/gpjshell/MifareTest;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lat/fhooe/usmile/gpjshell/MifareTest;->cancel(Z)Z

    .line 324
    :cond_0
    return-void
.end method
