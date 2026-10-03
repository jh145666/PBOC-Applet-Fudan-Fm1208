.class Lat/fhooe/usmile/gpjshell/MainActivity$12;
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

    .line 672
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$12;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 675
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity$12;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$1500(Lat/fhooe/usmile/gpjshell/MainActivity;)Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;->isConnected()Z

    move-result v0

    const-string v1, "GPJShell"

    if-eqz v0, :cond_0

    .line 676
    invoke-static {}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$800()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    move-result-object v0

    const-string v2, "\u5f00\u59cbApplet\u5b89\u88c5\u6d4b\u8bd5"

    invoke-virtual {v0, v1, v2}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$12;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    const-class v2, Lat/fhooe/usmile/gpjshell/AppletInstallTest;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 678
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$12;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    sget-object v2, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_CMD_OPEN:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$1200(Lat/fhooe/usmile/gpjshell/MainActivity;Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;I[BBLjava/lang/Object;)V

    .line 679
    const-string v1, "at.fhooe.usmile.gpjshell.AppletInstallTest.runs"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 680
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$12;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v1}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$1400(Lat/fhooe/usmile/gpjshell/MainActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "at.fhooe.usmile.gpjshell.AppletInstallTest.applet_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$12;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v1}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$500(Lat/fhooe/usmile/gpjshell/MainActivity;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity$12;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v2}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$400(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;

    .line 683
    .local v1, "keyset":Lat/fhooe/usmile/gpjshell/objects/GPKeyset;
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity$12;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v2}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$200(Lat/fhooe/usmile/gpjshell/MainActivity;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lat/fhooe/usmile/gpjshell/MainActivity$12;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v3}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$100(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;

    .line 684
    .local v2, "channelSet":Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;
    const-string v3, "at.fhooe.usmile.gpjshell.AppletInstallTest.channelset"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 685
    const-string v3, "at.fhooe.usmile.gpjshell.AppletInstallTest.keyset"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 686
    iget-object v3, p0, Lat/fhooe/usmile/gpjshell/MainActivity$12;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-virtual {v3, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 687
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "keyset":Lat/fhooe/usmile/gpjshell/objects/GPKeyset;
    .end local v2    # "channelSet":Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;
    goto :goto_0

    .line 688
    :cond_0
    invoke-static {}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$800()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    move-result-object v0

    const-string v2, "\u6ca1\u6709\u53ef\u7528\u4e8e\u6d4b\u8bd5\u7684\u5361\u7247"

    invoke-virtual {v0, v1, v2}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    :goto_0
    return-void
.end method
