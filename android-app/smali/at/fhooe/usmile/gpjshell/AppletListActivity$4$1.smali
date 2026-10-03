.class Lat/fhooe/usmile/gpjshell/AppletListActivity$4$1;
.super Ljava/lang/Object;
.source "AppletListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/usmile/gpjshell/AppletListActivity$4;->onLogUpdated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lat/fhooe/usmile/gpjshell/AppletListActivity$4;


# direct methods
.method constructor <init>(Lat/fhooe/usmile/gpjshell/AppletListActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lat/fhooe/usmile/gpjshell/AppletListActivity$4;

    .line 146
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity$4$1;->this$1:Lat/fhooe/usmile/gpjshell/AppletListActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 149
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity$4$1;->this$1:Lat/fhooe/usmile/gpjshell/AppletListActivity$4;

    iget-object v0, v0, Lat/fhooe/usmile/gpjshell/AppletListActivity$4;->this$0:Lat/fhooe/usmile/gpjshell/AppletListActivity;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->access$300(Lat/fhooe/usmile/gpjshell/AppletListActivity;)V

    .line 150
    return-void
.end method
