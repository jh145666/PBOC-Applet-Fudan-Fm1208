.class Lat/fhooe/usmile/gpjshell/AddChannelSetActivity$2;
.super Ljava/lang/Object;
.source "AddChannelSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;


# direct methods
.method constructor <init>(Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;)V
    .locals 0
    .param p1, "this$0"    # Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;

    .line 72
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity$2;->this$0:Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 76
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity$2;->this$0:Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->setResult(I)V

    .line 77
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity$2;->this$0:Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;

    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->finish()V

    .line 78
    return-void
.end method
