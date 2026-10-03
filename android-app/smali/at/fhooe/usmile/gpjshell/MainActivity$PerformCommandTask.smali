.class Lat/fhooe/usmile/gpjshell/MainActivity$PerformCommandTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/fhooe/usmile/gpjshell/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformCommandTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lat/fhooe/usmile/gpjshell/GPCommand;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lat/fhooe/usmile/gpjshell/MainActivity;


# direct methods
.method private constructor <init>(Lat/fhooe/usmile/gpjshell/MainActivity;)V
    .locals 0

    .line 999
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$PerformCommandTask;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lat/fhooe/usmile/gpjshell/MainActivity;Lat/fhooe/usmile/gpjshell/MainActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lat/fhooe/usmile/gpjshell/MainActivity;
    .param p2, "x1"    # Lat/fhooe/usmile/gpjshell/MainActivity$1;

    .line 999
    invoke-direct {p0, p1}, Lat/fhooe/usmile/gpjshell/MainActivity$PerformCommandTask;-><init>(Lat/fhooe/usmile/gpjshell/MainActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 999
    check-cast p1, [Lat/fhooe/usmile/gpjshell/GPCommand;

    invoke-virtual {p0, p1}, Lat/fhooe/usmile/gpjshell/MainActivity$PerformCommandTask;->doInBackground([Lat/fhooe/usmile/gpjshell/GPCommand;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lat/fhooe/usmile/gpjshell/GPCommand;)Ljava/lang/String;
    .locals 6
    .param p1, "_cmd"    # [Lat/fhooe/usmile/gpjshell/GPCommand;

    .line 1002
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity$PerformCommandTask;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$500(Lat/fhooe/usmile/gpjshell/MainActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$PerformCommandTask;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v1}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$400(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/Spinner;

    move-result-object v1

    .line 1003
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1002
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;

    .line 1004
    .local v0, "keyset":Lat/fhooe/usmile/gpjshell/objects/GPKeyset;
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$PerformCommandTask;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v1}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$200(Lat/fhooe/usmile/gpjshell/MainActivity;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity$PerformCommandTask;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 1005
    invoke-static {v2}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$100(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;

    .line 1007
    .local v1, "channelSet":Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;
    array-length v2, p1

    if-gtz v2, :cond_0

    .line 1008
    const/4 v2, 0x0

    return-object v2

    .line 1010
    :cond_0
    const/4 v2, 0x0

    .line 1012
    .local v2, "ret":Ljava/lang/String;
    iget-object v3, p0, Lat/fhooe/usmile/gpjshell/MainActivity$PerformCommandTask;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v3}, Lat/fhooe/usmile/gpjshell/GPConnection;->getInstance(Landroid/content/Context;)Lat/fhooe/usmile/gpjshell/GPConnection;

    move-result-object v3

    iget-object v4, p0, Lat/fhooe/usmile/gpjshell/MainActivity$PerformCommandTask;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 1013
    invoke-static {v4}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$1500(Lat/fhooe/usmile/gpjshell/MainActivity;)Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, p1, v5

    .line 1012
    invoke-virtual {v3, v4, v0, v1, v5}, Lat/fhooe/usmile/gpjshell/GPConnection;->performCommand(Ljavax/smartcardio/CardTerminal;Lat/fhooe/usmile/gpjshell/objects/GPKeyset;Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;Lat/fhooe/usmile/gpjshell/GPCommand;)Ljava/lang/String;

    move-result-object v2

    .line 1014
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 999
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lat/fhooe/usmile/gpjshell/MainActivity$PerformCommandTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .param p1, "_resultString"    # Ljava/lang/String;

    .line 1018
    invoke-static {}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$800()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    move-result-object v0

    const-string v1, "GPJShell"

    invoke-virtual {v0, v1, p1}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    invoke-static {}, Lat/fhooe/usmile/gpjshell/APDULogManager;->getInstance()Lat/fhooe/usmile/gpjshell/APDULogManager;

    move-result-object v0

    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/APDULogManager;->getLogsAsString()Ljava/lang/String;

    move-result-object v0

    .line 1021
    .local v0, "apduLog":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1022
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1023
    .local v1, "lines":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1024
    .local v4, "line":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1025
    invoke-static {}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$800()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    move-result-object v5

    const-string v6, "APDU"

    invoke-virtual {v5, v6, v4}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    .end local v4    # "line":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1029
    .end local v1    # "lines":[Ljava/lang/String;
    :cond_1
    return-void
.end method
