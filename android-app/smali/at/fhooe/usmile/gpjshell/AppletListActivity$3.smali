.class Lat/fhooe/usmile/gpjshell/AppletListActivity$3;
.super Ljava/lang/Object;
.source "AppletListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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

    .line 120
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity$3;->this$0:Lat/fhooe/usmile/gpjshell/AppletListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 124
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity$3;->this$0:Lat/fhooe/usmile/gpjshell/AppletListActivity;

    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/GPConnection;->getInstance(Landroid/content/Context;)Lat/fhooe/usmile/gpjshell/GPConnection;

    move-result-object v0

    invoke-virtual {v0, p3}, Lat/fhooe/usmile/gpjshell/GPConnection;->setSelectedApplet(I)V

    .line 125
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity$3;->this$0:Lat/fhooe/usmile/gpjshell/AppletListActivity;

    invoke-static {v0, p3}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->access$200(Lat/fhooe/usmile/gpjshell/AppletListActivity;I)V

    .line 126
    const/4 v0, 0x1

    return v0
.end method
