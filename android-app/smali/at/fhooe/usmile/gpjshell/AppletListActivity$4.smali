.class Lat/fhooe/usmile/gpjshell/AppletListActivity$4;
.super Ljava/lang/Object;
.source "AppletListActivity.java"

# interfaces
.implements Lat/fhooe/usmile/gpjshell/APDULogManager$OnLogUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/usmile/gpjshell/AppletListActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 143
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity$4;->this$0:Lat/fhooe/usmile/gpjshell/AppletListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogUpdated()V
    .locals 2

    .line 146
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity$4;->this$0:Lat/fhooe/usmile/gpjshell/AppletListActivity;

    new-instance v1, Lat/fhooe/usmile/gpjshell/AppletListActivity$4$1;

    invoke-direct {v1, p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity$4$1;-><init>(Lat/fhooe/usmile/gpjshell/AppletListActivity$4;)V

    invoke-virtual {v0, v1}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method
