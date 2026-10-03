.class Lat/fhooe/usmile/gpjshell/MainActivity$13;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 693
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$13;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .line 696
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity$13;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$1500(Lat/fhooe/usmile/gpjshell/MainActivity;)Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

    move-result-object v0

    const-string v1, "GPJShell"

    if-eqz v0, :cond_7

    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity$13;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$1500(Lat/fhooe/usmile/gpjshell/MainActivity;)Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 703
    :cond_0
    :try_start_0
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity$13;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/GPConnection;->getInstance(Landroid/content/Context;)Lat/fhooe/usmile/gpjshell/GPConnection;

    move-result-object v0

    .line 704
    .local v0, "gpConn":Lat/fhooe/usmile/gpjshell/GPConnection;
    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/GPConnection;->getRegistry()Ljava/util/List;

    move-result-object v2

    .line 706
    .local v2, "registry":Ljava/util/List;, "Ljava/util/List<Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;>;"
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    .line 712
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .local v3, "appletAIDs":Ljava/util/List;, "Ljava/util/List<Lnet/sourceforge/gpj/cardservices/AID;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v4, "appletDisplayNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;

    .line 715
    .local v6, "entry":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    invoke-virtual {v6}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getExecutableAIDs()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sourceforge/gpj/cardservices/AID;

    .line 716
    .local v8, "aid":Lnet/sourceforge/gpj/cardservices/AID;
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    invoke-virtual {v8}, Lnet/sourceforge/gpj/cardservices/AID;->getBytes()[B

    move-result-object v9

    invoke-static {v9}, Lnet/sourceforge/gpj/cardservices/GPUtil;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    nop

    .end local v8    # "aid":Lnet/sourceforge/gpj/cardservices/AID;
    goto :goto_1

    .line 719
    .end local v6    # "entry":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    :cond_2
    goto :goto_0

    .line 721
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 723
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;

    .line 724
    .restart local v6    # "entry":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    invoke-virtual {v6}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getAID()Lnet/sourceforge/gpj/cardservices/AID;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getAID()Lnet/sourceforge/gpj/cardservices/AID;

    move-result-object v8

    invoke-virtual {v8}, Lnet/sourceforge/gpj/cardservices/AID;->getBytes()[B

    move-result-object v8

    invoke-static {v8}, Lnet/sourceforge/gpj/cardservices/GPUtil;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (\u5305AID)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    nop

    .end local v6    # "entry":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    goto :goto_2

    .line 729
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 730
    invoke-static {}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$800()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    move-result-object v5

    const-string v6, "\u672a\u627e\u5230\u53ef\u9009\u62e9\u7684Applet AID\u3002"

    invoke-virtual {v5, v1, v6}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    return-void

    .line 735
    :cond_5
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 736
    .local v5, "aidArray":[Ljava/lang/String;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lat/fhooe/usmile/gpjshell/MainActivity$13;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v7, "\u9009\u62e9\u8981\u9009\u4e2d\u7684Applet"

    .line 737
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lat/fhooe/usmile/gpjshell/MainActivity$13$1;

    invoke-direct {v7, p0, v3}, Lat/fhooe/usmile/gpjshell/MainActivity$13$1;-><init>(Lat/fhooe/usmile/gpjshell/MainActivity$13;Ljava/util/List;)V

    .line 738
    invoke-virtual {v6, v5, v7}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 744
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 749
    nop

    .end local v0    # "gpConn":Lat/fhooe/usmile/gpjshell/GPConnection;
    .end local v2    # "registry":Ljava/util/List;, "Ljava/util/List<Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;>;"
    .end local v3    # "appletAIDs":Ljava/util/List;, "Ljava/util/List<Lnet/sourceforge/gpj/cardservices/AID;>;"
    .end local v4    # "appletDisplayNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "aidArray":[Ljava/lang/String;
    goto :goto_4

    .line 707
    .restart local v0    # "gpConn":Lat/fhooe/usmile/gpjshell/GPConnection;
    .restart local v2    # "registry":Ljava/util/List;, "Ljava/util/List<Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;>;"
    :cond_6
    :goto_3
    invoke-static {}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$800()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    move-result-object v3

    const-string v4, "\u5361\u7247\u4e0a\u6ca1\u6709Applet\uff0c\u8bf7\u5148\u5217\u51faApplet\u6216\u5b89\u88c5Applet\u3002"

    invoke-virtual {v3, v1, v4}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    return-void

    .line 746
    .end local v0    # "gpConn":Lat/fhooe/usmile/gpjshell/GPConnection;
    .end local v2    # "registry":Ljava/util/List;, "Ljava/util/List<Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;>;"
    :catch_0
    move-exception v0

    .line 747
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$800()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u9519\u8bef: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 750
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 697
    :cond_7
    :goto_5
    invoke-static {}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$800()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    move-result-object v0

    const-string v2, "\u8bf7\u5148\u8d34\u5361\uff01"

    invoke-virtual {v0, v1, v2}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    return-void
.end method
