.class Lat/fhooe/usmile/gpjshell/AppletListActivity$6;
.super Ljava/lang/Object;
.source "AppletListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/usmile/gpjshell/AppletListActivity;->showDeleteAllConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lat/fhooe/usmile/gpjshell/AppletListActivity;


# direct methods
.method constructor <init>(Lat/fhooe/usmile/gpjshell/AppletListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lat/fhooe/usmile/gpjshell/AppletListActivity;

    .line 243
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity$6;->this$0:Lat/fhooe/usmile/gpjshell/AppletListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 246
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity$6;->this$0:Lat/fhooe/usmile/gpjshell/AppletListActivity;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->access$500(Lat/fhooe/usmile/gpjshell/AppletListActivity;)V

    .line 247
    return-void
.end method
