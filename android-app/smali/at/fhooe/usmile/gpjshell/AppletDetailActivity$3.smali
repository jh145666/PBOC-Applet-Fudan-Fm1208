.class Lat/fhooe/usmile/gpjshell/AppletDetailActivity$3;
.super Ljava/lang/Object;
.source "AppletDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/usmile/gpjshell/AppletDetailActivity;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lat/fhooe/usmile/gpjshell/AppletDetailActivity;


# direct methods
.method constructor <init>(Lat/fhooe/usmile/gpjshell/AppletDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lat/fhooe/usmile/gpjshell/AppletDetailActivity;

    .line 61
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/AppletDetailActivity$3;->this$0:Lat/fhooe/usmile/gpjshell/AppletDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 64
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AppletDetailActivity$3;->this$0:Lat/fhooe/usmile/gpjshell/AppletDetailActivity;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/AppletDetailActivity;->access$000(Lat/fhooe/usmile/gpjshell/AppletDetailActivity;)Lat/fhooe/usmile/gpjshell/AppletDetailActivity$NoticeAppletEventListener;

    move-result-object v0

    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletDetailActivity$3;->this$0:Lat/fhooe/usmile/gpjshell/AppletDetailActivity;

    invoke-interface {v0, v1}, Lat/fhooe/usmile/gpjshell/AppletDetailActivity$NoticeAppletEventListener;->onDialogDeleteClick(Landroid/app/DialogFragment;)V

    .line 65
    return-void
.end method
