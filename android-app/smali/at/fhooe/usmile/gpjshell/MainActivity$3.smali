.class Lat/fhooe/usmile/gpjshell/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/usmile/gpjshell/MainActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 183
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$3;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 187
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity$3;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$200(Lat/fhooe/usmile/gpjshell/MainActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$3;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v1}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$100(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/Spinner;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    .line 187
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;

    .line 189
    .local v0, "channel":Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;
    if-eqz v0, :cond_0

    .line 190
    new-instance v1, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;

    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity$3;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-direct {v1, v2}, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;-><init>(Landroid/content/Context;)V

    .line 192
    .local v1, "channelSource":Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;
    invoke-virtual {v1}, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;->open()V

    .line 193
    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->getChannelNameString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;->remove(Ljava/lang/String;)I

    .line 194
    invoke-virtual {v1}, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;->close()V

    .line 196
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity$3;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v2}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$300(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->getChannelNameString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 197
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity$3;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v2}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$300(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 199
    .end local v1    # "channelSource":Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;
    :cond_0
    return-void
.end method
