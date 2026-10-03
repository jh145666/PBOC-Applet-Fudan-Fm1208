.class Lat/fhooe/usmile/gpjshell/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/usmile/gpjshell/MainActivity;->addReaderItemsOnSpinner([Lorg/simalliance/openmobileapi/Reader;)V
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

    .line 606
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$9;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 610
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity$9;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$000(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 612
    .local v3, "selectedReader":Ljava/lang/String;
    new-instance v2, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;

    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity$9;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-direct {v2, v0}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;-><init>(Landroid/content/Context;)V

    .line 613
    .local v2, "source":Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;
    invoke-virtual {v2}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->open()V

    .line 615
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$9;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    const-string v6, "404142434445464748494A4B4C4D4E4F"

    const-string v7, "404142434445464748494A4B4C4D4E4F"

    const-string v4, "Default"

    const-string v5, "404142434445464748494A4B4C4D4E4F"

    invoke-static/range {v1 .. v7}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$1300(Lat/fhooe/usmile/gpjshell/MainActivity;Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity$9;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-virtual {v2, v3}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->getKeysets(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$502(Lat/fhooe/usmile/gpjshell/MainActivity;Ljava/util/Map;)Ljava/util/Map;

    .line 622
    invoke-virtual {v2}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->close()V

    .line 625
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity$9;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$500(Lat/fhooe/usmile/gpjshell/MainActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v4, v1, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 626
    .local v0, "keysetNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lat/fhooe/usmile/gpjshell/MainActivity$9;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-virtual {v4, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->addKeysetItemsOnSpinner(Ljava/util/List;)V

    .line 629
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 630
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "Default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 631
    iget-object v5, p0, Lat/fhooe/usmile/gpjshell/MainActivity$9;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v5}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$400(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/Spinner;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 632
    goto :goto_1

    .line 629
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 636
    .end local v4    # "i":I
    :cond_1
    :goto_1
    new-instance v4, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;

    iget-object v5, p0, Lat/fhooe/usmile/gpjshell/MainActivity$9;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-direct {v4, v5}, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;-><init>(Landroid/content/Context;)V

    .line 637
    .local v4, "channelSource":Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;
    invoke-virtual {v4}, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;->open()V

    .line 638
    iget-object v5, p0, Lat/fhooe/usmile/gpjshell/MainActivity$9;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-virtual {v4}, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;->getChannelSets()Ljava/util/Map;

    move-result-object v6

    invoke-static {v5, v6}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$202(Lat/fhooe/usmile/gpjshell/MainActivity;Ljava/util/Map;)Ljava/util/Map;

    .line 639
    invoke-virtual {v4}, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;->close()V

    .line 640
    iget-object v5, p0, Lat/fhooe/usmile/gpjshell/MainActivity$9;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    iget-object v6, p0, Lat/fhooe/usmile/gpjshell/MainActivity$9;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v6}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$200(Lat/fhooe/usmile/gpjshell/MainActivity;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v6, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v5, v1}, Lat/fhooe/usmile/gpjshell/MainActivity;->addChannelSetItemsOnSpinner(Ljava/util/List;)V

    .line 641
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 645
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
