.class public Lat/fhooe/usmile/gpjshell/AppletListActivity;
.super Landroid/app/Activity;
.source "AppletListActivity.java"

# interfaces
.implements Lat/fhooe/usmile/gpjshell/AppletDetailActivity$NoticeAppletEventListener;


# static fields
.field public static final EXTRA_CHANNELSET:Ljava/lang/String; = "at.fhooe.usmile.gpjshell.AppletListActivity.channelset"

.field public static final EXTRA_KEYSET:Ljava/lang/String; = "at.fhooe.usmile.gpjshell.AppletListActivity.keyset"

.field public static final EXTRA_SEEKREADER:Ljava/lang/String; = "at.fhooe.usmile.gpjshell.AppletListActivity.seekreader"

.field private static final LOG_TAG:Ljava/lang/String; = "AppletList"


# instance fields
.field private appletNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppPrefs:Lat/fhooe/usmile/gpjshell/AppPreferences;

.field private mBtnDeleteAll:Landroid/widget/Button;

.field private mBtnRefresh:Landroid/widget/Button;

.field private mChannelSet:Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;

.field private mKeySet:Lat/fhooe/usmile/gpjshell/objects/GPKeyset;

.field private mListAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mLogListener:Lat/fhooe/usmile/gpjshell/APDULogManager$OnLogUpdatedListener;

.field private mRegistry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSeekReader:I

.field private mSvApduLog:Landroid/widget/ScrollView;

.field private mTvApduLog:Landroid/widget/TextView;

.field private mTvAppletCount:Landroid/widget/TextView;

.field private mTvDefaultApplet:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lat/fhooe/usmile/gpjshell/AppletListActivity;)V
    .locals 0
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/AppletListActivity;

    .line 47
    invoke-direct {p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->refreshAppletList()V

    return-void
.end method

.method static synthetic access$100(Lat/fhooe/usmile/gpjshell/AppletListActivity;)V
    .locals 0
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/AppletListActivity;

    .line 47
    invoke-direct {p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->showDeleteAllConfirmDialog()V

    return-void
.end method

.method static synthetic access$200(Lat/fhooe/usmile/gpjshell/AppletListActivity;I)V
    .locals 0
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/AppletListActivity;
    .param p1, "x1"    # I

    .line 47
    invoke-direct {p0, p1}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->showAppletDetailDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lat/fhooe/usmile/gpjshell/AppletListActivity;)V
    .locals 0
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/AppletListActivity;

    .line 47
    invoke-direct {p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->updateApduLogDisplay()V

    return-void
.end method

.method static synthetic access$400(Lat/fhooe/usmile/gpjshell/AppletListActivity;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/AppletListActivity;

    .line 47
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mSvApduLog:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$500(Lat/fhooe/usmile/gpjshell/AppletListActivity;)V
    .locals 0
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/AppletListActivity;

    .line 47
    invoke-direct {p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->performDeleteAllApplets()V

    return-void
.end method

.method private performDeleteAllApplets()V
    .locals 8

    .line 255
    const-string v1, "\u5220\u9664\u6240\u6709Applet\u5b8c\u6210"

    :try_start_0
    invoke-virtual {p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;->getInstance(Landroid/content/Context;)Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;

    move-result-object v0

    .line 256
    .local v0, "term":Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;
    new-instance v2, Lat/fhooe/usmile/gpjshell/GPCommand;

    sget-object v3, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_DELETE_ALL_APPLETS:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    iget v4, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mSeekReader:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lat/fhooe/usmile/gpjshell/GPCommand;-><init>(Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;I[BBLjava/lang/Object;)V

    .line 257
    .local v2, "cmd":Lat/fhooe/usmile/gpjshell/GPCommand;
    const-string v3, "NFC Interface"

    invoke-virtual {v2, v3}, Lat/fhooe/usmile/gpjshell/GPCommand;->setReaderName(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lat/fhooe/usmile/gpjshell/GPConnection;->getInstance(Landroid/content/Context;)Lat/fhooe/usmile/gpjshell/GPConnection;

    move-result-object v3

    iget-object v4, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mKeySet:Lat/fhooe/usmile/gpjshell/objects/GPKeyset;

    iget-object v5, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mChannelSet:Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;

    invoke-virtual {v3, v0, v4, v5, v2}, Lat/fhooe/usmile/gpjshell/GPConnection;->performCommand(Ljavax/smartcardio/CardTerminal;Lat/fhooe/usmile/gpjshell/objects/GPKeyset;Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;Lat/fhooe/usmile/gpjshell/GPCommand;)Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "result":Ljava/lang/String;
    invoke-static {}, Lat/fhooe/usmile/gpjshell/MainActivity;->log()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    move-result-object v4

    const-string v5, "AppletList"

    if-eqz v3, :cond_0

    move-object v6, v3

    goto :goto_0

    :cond_0
    move-object v6, v1

    :goto_0
    invoke-virtual {v4, v5, v6}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v0    # "term":Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;
    .end local v2    # "cmd":Lat/fhooe/usmile/gpjshell/GPCommand;
    .end local v3    # "result":Ljava/lang/String;
    goto :goto_1

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u9519\u8bef: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 264
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-direct {p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->reloadListLocally()V

    .line 265
    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 266
    return-void
.end method

.method private refreshAppletList()V
    .locals 7

    .line 210
    :try_start_0
    invoke-virtual {p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;->getInstance(Landroid/content/Context;)Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;

    move-result-object v0

    .line 211
    .local v0, "term":Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;
    new-instance v1, Lat/fhooe/usmile/gpjshell/GPCommand;

    sget-object v2, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_DISPLAYAPPLETS_ONCARD:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    iget v3, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mSeekReader:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lat/fhooe/usmile/gpjshell/GPCommand;-><init>(Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;I[BBLjava/lang/Object;)V

    .line 212
    .local v1, "cmd":Lat/fhooe/usmile/gpjshell/GPCommand;
    const-string v2, "NFC Interface"

    invoke-virtual {v1, v2}, Lat/fhooe/usmile/gpjshell/GPCommand;->setReaderName(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lat/fhooe/usmile/gpjshell/GPConnection;->getInstance(Landroid/content/Context;)Lat/fhooe/usmile/gpjshell/GPConnection;

    move-result-object v2

    iget-object v3, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mKeySet:Lat/fhooe/usmile/gpjshell/objects/GPKeyset;

    iget-object v4, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mChannelSet:Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;

    invoke-virtual {v2, v0, v3, v4, v1}, Lat/fhooe/usmile/gpjshell/GPConnection;->performCommand(Ljavax/smartcardio/CardTerminal;Lat/fhooe/usmile/gpjshell/objects/GPKeyset;Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;Lat/fhooe/usmile/gpjshell/GPCommand;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "result":Ljava/lang/String;
    invoke-static {}, Lat/fhooe/usmile/gpjshell/MainActivity;->log()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    move-result-object v3

    const-string v4, "AppletList"

    if-eqz v2, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    const-string v5, "\u5237\u65b0\u5b8c\u6210"

    :goto_0
    invoke-virtual {v3, v4, v5}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v0    # "term":Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;
    .end local v1    # "cmd":Lat/fhooe/usmile/gpjshell/GPCommand;
    .end local v2    # "result":Ljava/lang/String;
    goto :goto_1

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9519\u8bef: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 218
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private reloadListLocally()V
    .locals 2

    .line 221
    invoke-static {p0}, Lat/fhooe/usmile/gpjshell/GPConnection;->getInstance(Landroid/content/Context;)Lat/fhooe/usmile/gpjshell/GPConnection;

    move-result-object v0

    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/GPConnection;->getRegistry()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mRegistry:Ljava/util/List;

    .line 222
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mRegistry:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->appletNames:Ljava/util/ArrayList;

    .line 224
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mRegistry:Ljava/util/List;

    invoke-direct {p0, v0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->updateData(Ljava/util/List;)V

    .line 225
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 226
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mListAdapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->appletNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 228
    :cond_0
    invoke-direct {p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->updateAppletCountDisplay()V

    .line 229
    invoke-direct {p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->updateDefaultAppletDisplay()V

    .line 230
    return-void
.end method

.method private showAppletDetailDialog(I)V
    .locals 4
    .param p1, "position"    # I

    .line 233
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mRegistry:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;

    .line 234
    .local v0, "entry":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    new-instance v1, Lat/fhooe/usmile/gpjshell/AppletDetailActivity;

    invoke-direct {v1}, Lat/fhooe/usmile/gpjshell/AppletDetailActivity;-><init>()V

    .line 235
    .local v1, "dialog":Lat/fhooe/usmile/gpjshell/AppletDetailActivity;
    invoke-virtual {v1, v0}, Lat/fhooe/usmile/gpjshell/AppletDetailActivity;->setData(Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;)V

    .line 236
    invoke-virtual {p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "AppletDetail"

    invoke-virtual {v1, v2, v3}, Lat/fhooe/usmile/gpjshell/AppletDetailActivity;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method private showDeleteAllConfirmDialog()V
    .locals 3

    .line 240
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 241
    const-string v1, "\u5220\u9664\u6240\u6709Applet"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 242
    const-string v1, "\u786e\u5b9a\u8981\u5220\u9664\u6240\u6709Applet\u5417\uff1f\u5b89\u5168\u57df\u5c06\u88ab\u4fdd\u7559\u3002\u6b64\u64cd\u4f5c\u4e0d\u53ef\u64a4\u9500\u3002"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lat/fhooe/usmile/gpjshell/AppletListActivity$6;

    invoke-direct {v1, p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity$6;-><init>(Lat/fhooe/usmile/gpjshell/AppletListActivity;)V

    .line 243
    const-string v2, "\u662f\u7684\uff0c\u5168\u90e8\u5220\u9664\uff01"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 249
    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 251
    return-void
.end method

.method private updateApduLogDisplay()V
    .locals 3

    .line 197
    invoke-static {}, Lat/fhooe/usmile/gpjshell/APDULogManager;->getInstance()Lat/fhooe/usmile/gpjshell/APDULogManager;

    move-result-object v0

    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/APDULogManager;->getLogsAsString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "log":Ljava/lang/String;
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mTvApduLog:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mSvApduLog:Landroid/widget/ScrollView;

    new-instance v2, Lat/fhooe/usmile/gpjshell/AppletListActivity$5;

    invoke-direct {v2, p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity$5;-><init>(Lat/fhooe/usmile/gpjshell/AppletListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 206
    return-void
.end method

.method private updateAppletCountDisplay()V
    .locals 4

    .line 183
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mRegistry:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mRegistry:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 184
    .local v0, "count":I
    :goto_0
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mTvAppletCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5361\u7247\u4e0a\u7684Applet\u6570\u91cf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    return-void
.end method

.method private updateData(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;",
            ">;)V"
        }
    .end annotation

    .line 166
    .local p1, "registry":Ljava/util/List;, "Ljava/util/List<Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->appletNames:Ljava/util/ArrayList;

    .line 167
    if-nez p1, :cond_0

    return-void

    .line 169
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;

    .line 170
    .local v1, "entry":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    invoke-virtual {v1}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getAID()Lnet/sourceforge/gpj/cardservices/AID;

    move-result-object v2

    .line 171
    .local v2, "aid":Lnet/sourceforge/gpj/cardservices/AID;
    invoke-virtual {v2}, Lnet/sourceforge/gpj/cardservices/AID;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lnet/sourceforge/gpj/cardservices/GPUtil;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "aidStr":Ljava/lang/String;
    invoke-virtual {v1}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getKind()Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->toShortString()Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "kindStr":Ljava/lang/String;
    invoke-virtual {v1}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getPrivileges()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const-string v5, "0x%02X"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, "privStr":Ljava/lang/String;
    invoke-virtual {v1}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getPrivileges()I

    move-result v6

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_1

    .line 175
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " [\u9ed8\u8ba4]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 177
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (\u7c7b\u578b:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", \u6743\u9650:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 178
    .local v6, "displayText":Ljava/lang/String;
    iget-object v7, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->appletNames:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .end local v1    # "entry":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    .end local v2    # "aid":Lnet/sourceforge/gpj/cardservices/AID;
    .end local v3    # "aidStr":Ljava/lang/String;
    .end local v4    # "kindStr":Ljava/lang/String;
    .end local v5    # "privStr":Ljava/lang/String;
    .end local v6    # "displayText":Ljava/lang/String;
    goto :goto_0

    .line 180
    :cond_2
    return-void
.end method

.method private updateDefaultAppletDisplay()V
    .locals 4

    .line 188
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mAppPrefs:Lat/fhooe/usmile/gpjshell/AppPreferences;

    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/AppPreferences;->getDefaultAppletAID()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "defaultAid":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mTvDefaultApplet:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u9ed8\u8ba4Applet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 192
    :cond_0
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mTvDefaultApplet:Landroid/widget/TextView;

    const-string v2, "\u9ed8\u8ba4Applet: \u65e0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    sget v0, Lat/fhooe/usmile/gpjshell/R$layout;->applet_list:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->setContentView(I)V

    .line 78
    new-instance v0, Lat/fhooe/usmile/gpjshell/AppPreferences;

    invoke-virtual {p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lat/fhooe/usmile/gpjshell/AppPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mAppPrefs:Lat/fhooe/usmile/gpjshell/AppPreferences;

    .line 81
    invoke-virtual {p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 83
    const-string v1, "at.fhooe.usmile.gpjshell.AppletListActivity.channelset"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;

    iput-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mChannelSet:Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;

    .line 84
    const-string v1, "at.fhooe.usmile.gpjshell.AppletListActivity.keyset"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;

    iput-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mKeySet:Lat/fhooe/usmile/gpjshell/objects/GPKeyset;

    .line 85
    const-string v1, "at.fhooe.usmile.gpjshell.AppletListActivity.seekreader"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mSeekReader:I

    .line 89
    :cond_0
    sget v1, Lat/fhooe/usmile/gpjshell/R$id;->btn_refresh_applets:I

    invoke-virtual {p0, v1}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mBtnRefresh:Landroid/widget/Button;

    .line 90
    sget v1, Lat/fhooe/usmile/gpjshell/R$id;->btn_delete_all_applets:I

    invoke-virtual {p0, v1}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mBtnDeleteAll:Landroid/widget/Button;

    .line 91
    sget v1, Lat/fhooe/usmile/gpjshell/R$id;->tv_applet_count:I

    invoke-virtual {p0, v1}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mTvAppletCount:Landroid/widget/TextView;

    .line 92
    sget v1, Lat/fhooe/usmile/gpjshell/R$id;->tv_default_applet:I

    invoke-virtual {p0, v1}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mTvDefaultApplet:Landroid/widget/TextView;

    .line 93
    sget v1, Lat/fhooe/usmile/gpjshell/R$id;->tv_apdu_log:I

    invoke-virtual {p0, v1}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mTvApduLog:Landroid/widget/TextView;

    .line 94
    sget v1, Lat/fhooe/usmile/gpjshell/R$id;->scrollview_apdu_log:I

    invoke-virtual {p0, v1}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mSvApduLog:Landroid/widget/ScrollView;

    .line 95
    sget v1, Lat/fhooe/usmile/gpjshell/R$id;->listview:I

    invoke-virtual {p0, v1}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mListView:Landroid/widget/ListView;

    .line 98
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mBtnRefresh:Landroid/widget/Button;

    new-instance v2, Lat/fhooe/usmile/gpjshell/AppletListActivity$1;

    invoke-direct {v2, p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity$1;-><init>(Lat/fhooe/usmile/gpjshell/AppletListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mBtnDeleteAll:Landroid/widget/Button;

    new-instance v2, Lat/fhooe/usmile/gpjshell/AppletListActivity$2;

    invoke-direct {v2, p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity$2;-><init>(Lat/fhooe/usmile/gpjshell/AppletListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->appletNames:Ljava/util/ArrayList;

    .line 115
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    iget-object v3, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->appletNames:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mListAdapter:Landroid/widget/ArrayAdapter;

    .line 117
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mListView:Landroid/widget/ListView;

    new-instance v2, Lat/fhooe/usmile/gpjshell/AppletListActivity$3;

    invoke-direct {v2, p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity$3;-><init>(Lat/fhooe/usmile/gpjshell/AppletListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 131
    invoke-static {p0}, Lat/fhooe/usmile/gpjshell/GPConnection;->getInstance(Landroid/content/Context;)Lat/fhooe/usmile/gpjshell/GPConnection;

    move-result-object v1

    invoke-virtual {v1}, Lat/fhooe/usmile/gpjshell/GPConnection;->getRegistry()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mRegistry:Ljava/util/List;

    .line 132
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mRegistry:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mRegistry:Ljava/util/List;

    invoke-direct {p0, v1}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->updateData(Ljava/util/List;)V

    .line 134
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 135
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mListAdapter:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->appletNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 138
    :cond_1
    invoke-direct {p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->updateAppletCountDisplay()V

    .line 139
    invoke-direct {p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->updateDefaultAppletDisplay()V

    .line 140
    invoke-direct {p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->updateApduLogDisplay()V

    .line 143
    new-instance v1, Lat/fhooe/usmile/gpjshell/AppletListActivity$4;

    invoke-direct {v1, p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity$4;-><init>(Lat/fhooe/usmile/gpjshell/AppletListActivity;)V

    iput-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mLogListener:Lat/fhooe/usmile/gpjshell/APDULogManager$OnLogUpdatedListener;

    .line 154
    invoke-static {}, Lat/fhooe/usmile/gpjshell/APDULogManager;->getInstance()Lat/fhooe/usmile/gpjshell/APDULogManager;

    move-result-object v1

    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mLogListener:Lat/fhooe/usmile/gpjshell/APDULogManager$OnLogUpdatedListener;

    invoke-virtual {v1, v2}, Lat/fhooe/usmile/gpjshell/APDULogManager;->addListener(Lat/fhooe/usmile/gpjshell/APDULogManager$OnLogUpdatedListener;)V

    .line 155
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 160
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mLogListener:Lat/fhooe/usmile/gpjshell/APDULogManager$OnLogUpdatedListener;

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Lat/fhooe/usmile/gpjshell/APDULogManager;->getInstance()Lat/fhooe/usmile/gpjshell/APDULogManager;

    move-result-object v0

    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mLogListener:Lat/fhooe/usmile/gpjshell/APDULogManager$OnLogUpdatedListener;

    invoke-virtual {v0, v1}, Lat/fhooe/usmile/gpjshell/APDULogManager;->removeListener(Lat/fhooe/usmile/gpjshell/APDULogManager$OnLogUpdatedListener;)V

    .line 163
    :cond_0
    return-void
.end method

.method public onDialogDeleteClick(Landroid/app/DialogFragment;)V
    .locals 9
    .param p1, "dialog"    # Landroid/app/DialogFragment;

    .line 270
    invoke-virtual {p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/GPConnection;->getInstance(Landroid/content/Context;)Lat/fhooe/usmile/gpjshell/GPConnection;

    move-result-object v0

    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/GPConnection;->getSelectedApplet()Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;

    move-result-object v1

    .line 271
    .local v1, "selected":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    const/4 v0, 0x0

    .line 272
    .local v0, "delAID":Lnet/sourceforge/gpj/cardservices/AID;
    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v1}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getAID()Lnet/sourceforge/gpj/cardservices/AID;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 272
    :cond_0
    move-object v2, v0

    .line 277
    .end local v0    # "delAID":Lnet/sourceforge/gpj/cardservices/AID;
    .local v2, "delAID":Lnet/sourceforge/gpj/cardservices/AID;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;->getInstance(Landroid/content/Context;)Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;

    move-result-object v0

    .line 278
    .local v0, "term":Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;
    new-instance v3, Lat/fhooe/usmile/gpjshell/GPCommand;

    sget-object v4, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_DELETE_SELECTED_APPLET:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    iget v5, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mSeekReader:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lat/fhooe/usmile/gpjshell/GPCommand;-><init>(Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;I[BBLjava/lang/Object;)V

    .line 279
    .local v3, "cmd":Lat/fhooe/usmile/gpjshell/GPCommand;
    const-string v4, "NFC Interface"

    invoke-virtual {v3, v4}, Lat/fhooe/usmile/gpjshell/GPCommand;->setReaderName(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lat/fhooe/usmile/gpjshell/GPConnection;->getInstance(Landroid/content/Context;)Lat/fhooe/usmile/gpjshell/GPConnection;

    move-result-object v4

    iget-object v5, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mKeySet:Lat/fhooe/usmile/gpjshell/objects/GPKeyset;

    iget-object v6, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mChannelSet:Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;

    invoke-virtual {v4, v0, v5, v6, v3}, Lat/fhooe/usmile/gpjshell/GPConnection;->performCommand(Ljavax/smartcardio/CardTerminal;Lat/fhooe/usmile/gpjshell/objects/GPKeyset;Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;Lat/fhooe/usmile/gpjshell/GPCommand;)Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, "result":Ljava/lang/String;
    invoke-static {}, Lat/fhooe/usmile/gpjshell/MainActivity;->log()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    move-result-object v5

    const-string v6, "AppletList"

    if-eqz v4, :cond_1

    move-object v7, v4

    goto :goto_1

    :cond_1
    const-string v7, "\u5220\u9664\u5b8c\u6210"

    :goto_1
    invoke-virtual {v5, v6, v7}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v0    # "term":Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;
    .end local v3    # "cmd":Lat/fhooe/usmile/gpjshell/GPCommand;
    .end local v4    # "result":Ljava/lang/String;
    goto :goto_2

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
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

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 286
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-direct {p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->reloadListLocally()V

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u5220\u9664Applet: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 288
    return-void
.end method

.method public onDialogOkClick(Landroid/app/DialogFragment;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/DialogFragment;

    .line 317
    return-void
.end method

.method public onDialogSetDefaultClick(Landroid/app/DialogFragment;)V
    .locals 9
    .param p1, "dialog"    # Landroid/app/DialogFragment;

    .line 292
    invoke-virtual {p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/GPConnection;->getInstance(Landroid/content/Context;)Lat/fhooe/usmile/gpjshell/GPConnection;

    move-result-object v0

    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/GPConnection;->getSelectedApplet()Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;

    move-result-object v1

    .line 293
    .local v1, "selected":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    if-eqz v1, :cond_1

    .line 295
    invoke-virtual {v1}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getAID()Lnet/sourceforge/gpj/cardservices/AID;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/gpj/cardservices/AID;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/gpj/cardservices/GPUtil;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, "aidStr":Ljava/lang/String;
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mAppPrefs:Lat/fhooe/usmile/gpjshell/AppPreferences;

    invoke-virtual {v0, v2}, Lat/fhooe/usmile/gpjshell/AppPreferences;->saveDefaultAppletAID(Ljava/lang/String;)V

    .line 300
    :try_start_0
    invoke-virtual {p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;->getInstance(Landroid/content/Context;)Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;

    move-result-object v0

    .line 301
    .local v0, "term":Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;
    new-instance v3, Lat/fhooe/usmile/gpjshell/GPCommand;

    sget-object v4, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_SET_DEFAULT_APPLET:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    iget v5, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mSeekReader:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lat/fhooe/usmile/gpjshell/GPCommand;-><init>(Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;I[BBLjava/lang/Object;)V

    .line 302
    .local v3, "cmd":Lat/fhooe/usmile/gpjshell/GPCommand;
    const-string v4, "NFC Interface"

    invoke-virtual {v3, v4}, Lat/fhooe/usmile/gpjshell/GPCommand;->setReaderName(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lat/fhooe/usmile/gpjshell/GPConnection;->getInstance(Landroid/content/Context;)Lat/fhooe/usmile/gpjshell/GPConnection;

    move-result-object v4

    iget-object v5, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mKeySet:Lat/fhooe/usmile/gpjshell/objects/GPKeyset;

    iget-object v6, p0, Lat/fhooe/usmile/gpjshell/AppletListActivity;->mChannelSet:Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;

    invoke-virtual {v4, v0, v5, v6, v3}, Lat/fhooe/usmile/gpjshell/GPConnection;->performCommand(Ljavax/smartcardio/CardTerminal;Lat/fhooe/usmile/gpjshell/objects/GPKeyset;Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;Lat/fhooe/usmile/gpjshell/GPCommand;)Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "result":Ljava/lang/String;
    invoke-static {}, Lat/fhooe/usmile/gpjshell/MainActivity;->log()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    move-result-object v5

    const-string v6, "AppletList"

    if-eqz v4, :cond_0

    move-object v7, v4

    goto :goto_0

    :cond_0
    const-string v7, "\u8bbe\u7f6e\u9ed8\u8ba4\u5b8c\u6210"

    :goto_0
    invoke-virtual {v5, v6, v7}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v0    # "term":Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;
    .end local v3    # "cmd":Lat/fhooe/usmile/gpjshell/GPCommand;
    .end local v4    # "result":Ljava/lang/String;
    goto :goto_1

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
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

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 309
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-direct {p0}, Lat/fhooe/usmile/gpjshell/AppletListActivity;->reloadListLocally()V

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u8bbe\u4e3a\u9ed8\u8ba4: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getAID()Lnet/sourceforge/gpj/cardservices/AID;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 312
    .end local v2    # "aidStr":Ljava/lang/String;
    :cond_1
    return-void
.end method
