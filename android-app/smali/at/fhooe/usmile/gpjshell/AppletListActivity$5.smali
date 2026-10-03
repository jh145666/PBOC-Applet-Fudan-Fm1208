.class Lat/fhooe/usmile/gpjshell/AppletListActivity$5;
.super Ljava/lang/Object;
.source "AppletListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/usmile/gpjshell/AppletListActivity;->updateApduLogDisplay()V
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

    .line 200
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity$5;->this$0:Lat/fhooe/usmile/gpjshell/AppletListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 203
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity$5;->this$0:Lat/fhooe/usmile/gpjshell/AppletListActivity;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->access$400(Lat/fhooe/usmile/gpjshell/AppletListActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 204
    return-void
.end method
