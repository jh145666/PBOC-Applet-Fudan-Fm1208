.class public Lat/fhooe/usmile/gpjshell/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Lorg/simalliance/openmobileapi/SEService$CallBack;
.implements Lat/fhooe/usmile/gpjshell/TCPFileResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;,
        Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;,
        Lat/fhooe/usmile/gpjshell/MainActivity$PerformCommandTask;
    }
.end annotation


# static fields
.field public static final ACTIVITYRESULT_APPLET_INSTALL_TEST:I = 0x6a

.field public static final ACTIVITYRESULT_CHANNEL_SET:I = 0x67

.field public static final ACTIVITYRESULT_FILESELECTED:I = 0x65

.field public static final ACTIVITYRESULT_GET_DATA:I = 0x69

.field public static final ACTIVITYRESULT_INSTALL_PARAM_SET:I = 0x68

.field public static final ACTIVITYRESULT_KEYSET_SET:I = 0x66

.field private static final DIALOG_MF_WAIT_FOR_FINISH:I = 0x2

.field private static final DIALOG_MF_WAIT_FOR_TAG:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "GPJShell"

.field private static MAIN_Log:Lat/fhooe/usmile/gpjshell/MainActivity$LogMe; = null

.field private static final PENDING_INTENT_TECH_DISCOVERED:I = 0x1

.field private static final REQUEST_CODE:I = 0x4d2


# instance fields
.field private buttonConnect:Landroid/widget/Button;

.field private buttonListApplet:Landroid/widget/Button;

.field private buttonSelectApplet:Landroid/widget/Button;

.field private mAppletUrl:Ljava/lang/String;

.field private mButtonActivateCard:Landroid/widget/Button;

.field private mButtonAddChannelSet:Landroid/widget/Button;

.field private mButtonAddKeyset:Landroid/widget/Button;

.field private mButtonAppletInstallTest:Landroid/widget/Button;

.field private mButtonClearLog:Landroid/widget/Button;

.field private mButtonCopyLog:Landroid/widget/Button;

.field private mButtonEchoTest:Landroid/widget/Button;

.field private mButtonGetData:Landroid/widget/Button;

.field private mButtonRemoveChannelset:Landroid/widget/Button;

.field private mButtonRemoveKeyset:Landroid/widget/Button;

.field private mButtonTestMifare:Landroid/widget/Button;

.field private mChannelSetAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelSetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelSpinner:Landroid/widget/Spinner;

.field private mCheckNumeric:Landroid/widget/CheckBox;

.field private mCommandExecutionQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lat/fhooe/usmile/gpjshell/GPCommand;",
            ">;"
        }
    .end annotation
.end field

.field private mEditLicense:Landroid/widget/EditText;

.field private mFileNameView:Landroid/widget/TextView;

.field private mInstallStartTimes:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mKeysetAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeysetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lat/fhooe/usmile/gpjshell/objects/GPKeyset;",
            ">;"
        }
    .end annotation
.end field

.field private mKeysetSpinner:Landroid/widget/Spinner;

.field private mLog:Landroid/widget/TextView;

.field private mMifareTest:Lat/fhooe/usmile/gpjshell/MifareTest;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mP1:I

.field private mP2:I

.field private mReaderSpinner:Landroid/widget/Spinner;

.field private mTCPConnection:Lat/fhooe/usmile/gpjshell/TCPConnection;

.field public mTerminal:Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

.field private mWaitingForMfTest:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 83
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mReaderSpinner:Landroid/widget/Spinner;

    .line 98
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mKeysetSpinner:Landroid/widget/Spinner;

    .line 99
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mChannelSpinner:Landroid/widget/Spinner;

    .line 100
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->buttonConnect:Landroid/widget/Button;

    .line 101
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonAddKeyset:Landroid/widget/Button;

    .line 102
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonAddChannelSet:Landroid/widget/Button;

    .line 103
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonRemoveKeyset:Landroid/widget/Button;

    .line 104
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonRemoveChannelset:Landroid/widget/Button;

    .line 105
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonGetData:Landroid/widget/Button;

    .line 106
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonTestMifare:Landroid/widget/Button;

    .line 107
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonActivateCard:Landroid/widget/Button;

    .line 108
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mEditLicense:Landroid/widget/EditText;

    .line 109
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mCheckNumeric:Landroid/widget/CheckBox;

    .line 110
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonCopyLog:Landroid/widget/Button;

    .line 111
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonClearLog:Landroid/widget/Button;

    .line 115
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mTerminal:Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

    .line 119
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mTCPConnection:Lat/fhooe/usmile/gpjshell/TCPConnection;

    .line 128
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mAppletUrl:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mFileNameView:Landroid/widget/TextView;

    .line 130
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mKeysetMap:Ljava/util/Map;

    .line 131
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mChannelSetMap:Ljava/util/Map;

    .line 132
    const/4 v1, 0x0

    iput v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mP1:I

    .line 133
    iput v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mP2:I

    .line 134
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mCommandExecutionQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 142
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mMifareTest:Lat/fhooe/usmile/gpjshell/MifareTest;

    return-void
.end method

.method static synthetic access$000(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 83
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mReaderSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$100(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 83
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mChannelSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1000(Lat/fhooe/usmile/gpjshell/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 83
    iget v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mP1:I

    return v0
.end method

.method static synthetic access$1100(Lat/fhooe/usmile/gpjshell/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 83
    iget v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mP2:I

    return v0
.end method

.method static synthetic access$1200(Lat/fhooe/usmile/gpjshell/MainActivity;Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;I[BBLjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/MainActivity;
    .param p1, "x1"    # Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;
    .param p2, "x2"    # I
    .param p3, "x3"    # [B
    .param p4, "x4"    # B
    .param p5, "x5"    # Ljava/lang/Object;

    .line 83
    invoke-direct/range {p0 .. p5}, Lat/fhooe/usmile/gpjshell/MainActivity;->performCommand(Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;I[BBLjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1300(Lat/fhooe/usmile/gpjshell/MainActivity;Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/MainActivity;
    .param p1, "x1"    # Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;

    .line 83
    invoke-direct/range {p0 .. p6}, Lat/fhooe/usmile/gpjshell/MainActivity;->seedDefaultKeyset(Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lat/fhooe/usmile/gpjshell/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 83
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mAppletUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lat/fhooe/usmile/gpjshell/MainActivity;)Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 83
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mTerminal:Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

    return-object v0
.end method

.method static synthetic access$1600(Lat/fhooe/usmile/gpjshell/MainActivity;Lnet/sourceforge/gpj/cardservices/AID;)V
    .locals 0
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/MainActivity;
    .param p1, "x1"    # Lnet/sourceforge/gpj/cardservices/AID;

    .line 83
    invoke-direct {p0, p1}, Lat/fhooe/usmile/gpjshell/MainActivity;->performSelectApplet(Lnet/sourceforge/gpj/cardservices/AID;)V

    return-void
.end method

.method static synthetic access$1700(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 83
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mEditLicense:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1800(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 83
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mCheckNumeric:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1900(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 83
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mLog:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lat/fhooe/usmile/gpjshell/MainActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 83
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mChannelSetMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$202(Lat/fhooe/usmile/gpjshell/MainActivity;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/MainActivity;
    .param p1, "x1"    # Ljava/util/Map;

    .line 83
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mChannelSetMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$300(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 83
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mChannelSetAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 83
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mKeysetSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$500(Lat/fhooe/usmile/gpjshell/MainActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 83
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mKeysetMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$502(Lat/fhooe/usmile/gpjshell/MainActivity;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/MainActivity;
    .param p1, "x1"    # Ljava/util/Map;

    .line 83
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mKeysetMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$600(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 83
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mKeysetAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$702(Lat/fhooe/usmile/gpjshell/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/MainActivity;
    .param p1, "x1"    # Z

    .line 83
    iput-boolean p1, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mWaitingForMfTest:Z

    return p1
.end method

.method static synthetic access$800()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;
    .locals 1

    .line 83
    sget-object v0, Lat/fhooe/usmile/gpjshell/MainActivity;->MAIN_Log:Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    return-object v0
.end method

.method static synthetic access$900(Lat/fhooe/usmile/gpjshell/MainActivity;)Lat/fhooe/usmile/gpjshell/MifareTest;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 83
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mMifareTest:Lat/fhooe/usmile/gpjshell/MifareTest;

    return-object v0
.end method

.method private ensureDefaultKeysExist()V
    .locals 8

    .line 252
    new-instance v0, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;

    invoke-direct {v0, p0}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;-><init>(Landroid/content/Context;)V

    move-object v2, v0

    .line 253
    .local v2, "source":Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;
    invoke-virtual {v2}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->open()V

    .line 256
    const-string v6, "404142434445464748494A4B4C4D4E4F"

    const-string v7, "404142434445464748494A4B4C4D4E4F"

    const-string v3, "NFC Interface"

    const-string v4, "Default"

    const-string v5, "404142434445464748494A4B4C4D4E4F"

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lat/fhooe/usmile/gpjshell/MainActivity;->seedDefaultKeyset(Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v2}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->close()V

    .line 263
    return-void
.end method

.method private loadPreferences()V
    .locals 3

    .line 334
    new-instance v0, Lat/fhooe/usmile/gpjshell/AppPreferences;

    invoke-virtual {p0}, Lat/fhooe/usmile/gpjshell/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lat/fhooe/usmile/gpjshell/AppPreferences;-><init>(Landroid/content/Context;)V

    .line 335
    .local v0, "prefs":Lat/fhooe/usmile/gpjshell/AppPreferences;
    const-string v1, ""

    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/AppPreferences;->getSelectedCap()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 336
    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/AppPreferences;->getSelectedCap()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mAppletUrl:Ljava/lang/String;

    .line 337
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mFileNameView:Landroid/widget/TextView;

    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mAppletUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    :cond_0
    return-void
.end method

.method public static log()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;
    .locals 1

    .line 1033
    sget-object v0, Lat/fhooe/usmile/gpjshell/MainActivity;->MAIN_Log:Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    return-object v0
.end method

.method private performCommand(Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;I[BBLjava/lang/Object;)V
    .locals 6
    .param p1, "_cmd"    # Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;
    .param p2, "_seekReader"    # I
    .param p3, "_params"    # [B
    .param p4, "_privileges"    # B
    .param p5, "_cmdParam"    # Ljava/lang/Object;

    .line 972
    new-instance v0, Lat/fhooe/usmile/gpjshell/GPCommand;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .end local p1    # "_cmd":Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;
    .end local p2    # "_seekReader":I
    .end local p3    # "_params":[B
    .end local p4    # "_privileges":B
    .end local p5    # "_cmdParam":Ljava/lang/Object;
    .local v1, "_cmd":Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;
    .local v2, "_seekReader":I
    .local v3, "_params":[B
    .local v4, "_privileges":B
    .local v5, "_cmdParam":Ljava/lang/Object;
    invoke-direct/range {v0 .. v5}, Lat/fhooe/usmile/gpjshell/GPCommand;-><init>(Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;I[BBLjava/lang/Object;)V

    .line 974
    .local v0, "c":Lat/fhooe/usmile/gpjshell/GPCommand;
    iget-object p1, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mReaderSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lat/fhooe/usmile/gpjshell/GPCommand;->setReaderName(Ljava/lang/String;)V

    .line 975
    iget-object p1, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mTerminal:Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

    invoke-virtual {p1}, Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 976
    new-instance p1, Lat/fhooe/usmile/gpjshell/MainActivity$PerformCommandTask;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lat/fhooe/usmile/gpjshell/MainActivity$PerformCommandTask;-><init>(Lat/fhooe/usmile/gpjshell/MainActivity;Lat/fhooe/usmile/gpjshell/MainActivity$1;)V

    const/4 p2, 0x1

    new-array p2, p2, [Lat/fhooe/usmile/gpjshell/GPCommand;

    const/4 p3, 0x0

    aput-object v0, p2, p3

    invoke-virtual {p1, p2}, Lat/fhooe/usmile/gpjshell/MainActivity$PerformCommandTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 978
    :cond_0
    iget-object p1, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mCommandExecutionQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 980
    :goto_0
    return-void
.end method

.method private performSelectApplet(Lnet/sourceforge/gpj/cardservices/AID;)V
    .locals 17
    .param p1, "aid"    # Lnet/sourceforge/gpj/cardservices/AID;

    .line 913
    const-string v0, " "

    const-string v1, "GPJShell"

    :try_start_0
    sget-object v2, Lat/fhooe/usmile/gpjshell/MainActivity;->MAIN_Log:Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6b63\u5728\u9009\u4e2dApplet AID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/gpj/cardservices/AID;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lnet/sourceforge/gpj/cardservices/GPUtil;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/gpj/cardservices/AID;->getBytes()[B

    move-result-object v2

    .line 917
    .local v2, "aidBytes":[B
    array-length v3, v2

    const/4 v4, 0x5

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 918
    .local v3, "selectApdu":[B
    const/4 v5, 0x0

    aput-byte v5, v3, v5

    .line 919
    const/16 v6, -0x5c

    const/4 v7, 0x1

    aput-byte v6, v3, v7

    .line 920
    const/4 v6, 0x2

    const/4 v8, 0x4

    aput-byte v8, v3, v6

    .line 921
    const/4 v6, 0x3

    aput-byte v5, v3, v6

    .line 922
    array-length v6, v2

    int-to-byte v6, v6

    aput-byte v6, v3, v8

    .line 923
    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 926
    invoke-static {}, Lat/fhooe/usmile/gpjshell/APDULogManager;->getInstance()Lat/fhooe/usmile/gpjshell/APDULogManager;

    move-result-object v4

    .line 927
    invoke-static {v3}, Lat/fhooe/usmile/gpjshell/GPUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v6

    const-string v8, "--"

    const-string v9, "SELECT(\u9009\u62e9Applet)"

    .line 926
    invoke-virtual {v4, v6, v8, v9}, Lat/fhooe/usmile/gpjshell/APDULogManager;->logAPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 929
    move-object/from16 v4, p0

    :try_start_1
    iget-object v6, v4, Lat/fhooe/usmile/gpjshell/MainActivity;->mTerminal:Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

    const-string v8, "*"

    invoke-virtual {v6, v8}, Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;->connect(Ljava/lang/String;)Ljavax/smartcardio/Card;

    move-result-object v6

    .line 930
    .local v6, "card":Ljavax/smartcardio/Card;
    invoke-virtual {v6}, Ljavax/smartcardio/Card;->getBasicChannel()Ljavax/smartcardio/CardChannel;

    move-result-object v8

    .line 931
    .local v8, "channel":Ljavax/smartcardio/CardChannel;
    new-instance v9, Ljavax/smartcardio/CommandAPDU;

    invoke-direct {v9, v3}, Ljavax/smartcardio/CommandAPDU;-><init>([B)V

    .line 932
    .local v9, "command":Ljavax/smartcardio/CommandAPDU;
    invoke-virtual {v8, v9}, Ljavax/smartcardio/CardChannel;->transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;

    move-result-object v10

    .line 934
    .local v10, "response":Ljavax/smartcardio/ResponseAPDU;
    invoke-virtual {v10}, Ljavax/smartcardio/ResponseAPDU;->getBytes()[B

    move-result-object v11

    invoke-static {v11}, Lat/fhooe/usmile/gpjshell/GPUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v11

    .line 935
    .local v11, "respHex":Ljava/lang/String;
    invoke-virtual {v10}, Ljavax/smartcardio/ResponseAPDU;->getSW()I

    move-result v12

    .line 936
    .local v12, "sw":I
    const-string v13, "SW=%04X"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-array v15, v7, [Ljava/lang/Object;

    aput-object v14, v15, v5

    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 939
    .local v13, "swStr":Ljava/lang/String;
    invoke-static {}, Lat/fhooe/usmile/gpjshell/APDULogManager;->getInstance()Lat/fhooe/usmile/gpjshell/APDULogManager;

    move-result-object v14

    .line 940
    invoke-static {v3}, Lat/fhooe/usmile/gpjshell/GPUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "SELECT(\u9009\u62e9Applet)\u56de\u5e94"

    .line 939
    invoke-virtual {v14, v15, v5, v7}, Lat/fhooe/usmile/gpjshell/APDULogManager;->logAPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    sget-object v5, Lat/fhooe/usmile/gpjshell/MainActivity;->MAIN_Log:Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u56de\u5e94: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    const v0, 0x9000

    if-ne v12, v0, :cond_0

    .line 945
    sget-object v0, Lat/fhooe/usmile/gpjshell/MainActivity;->MAIN_Log:Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    const-string v5, "\u6210\u529f: Applet\u5df2\u9009\u4e2d\uff01"

    invoke-virtual {v0, v1, v5}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 947
    :cond_0
    sget-object v0, Lat/fhooe/usmile/gpjshell/MainActivity;->MAIN_Log:Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5931\u8d25: SW="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "%04X"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v14, v15, v16

    invoke-static {v7, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljavax/smartcardio/Card;->disconnect(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 954
    .end local v2    # "aidBytes":[B
    .end local v3    # "selectApdu":[B
    .end local v6    # "card":Ljavax/smartcardio/Card;
    .end local v8    # "channel":Ljavax/smartcardio/CardChannel;
    .end local v9    # "command":Ljavax/smartcardio/CommandAPDU;
    .end local v10    # "response":Ljavax/smartcardio/ResponseAPDU;
    .end local v11    # "respHex":Ljava/lang/String;
    .end local v12    # "sw":I
    .end local v13    # "swStr":Ljava/lang/String;
    goto :goto_2

    .line 951
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v4, p0

    .line 952
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v2, Lat/fhooe/usmile/gpjshell/MainActivity;->MAIN_Log:Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u9009\u4e2dApplet\u51fa\u9519: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 955
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private runMifareTest(Landroid/nfc/Tag;)V
    .locals 3
    .param p1, "tag"    # Landroid/nfc/Tag;

    .line 520
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/MifareClassic;

    move-result-object v0

    .line 522
    .local v0, "mf":Landroid/nfc/tech/MifareClassic;
    new-instance v1, Lat/fhooe/usmile/gpjshell/MifareTest;

    sget-object v2, Lat/fhooe/usmile/gpjshell/MainActivity;->MAIN_Log:Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    invoke-direct {v1, v0, p0, v2}, Lat/fhooe/usmile/gpjshell/MifareTest;-><init>(Landroid/nfc/tech/MifareClassic;Landroid/content/Context;Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;)V

    iput-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mMifareTest:Lat/fhooe/usmile/gpjshell/MifareTest;

    .line 524
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mMifareTest:Lat/fhooe/usmile/gpjshell/MifareTest;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lat/fhooe/usmile/gpjshell/MifareTest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 525
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lat/fhooe/usmile/gpjshell/MainActivity;->dismissDialog(I)V

    .line 526
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lat/fhooe/usmile/gpjshell/MainActivity;->showDialog(I)V

    .line 527
    return-void
.end method

.method private seedDefaultKeyset(Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "source"    # Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;
    .param p2, "reader"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "mac"    # Ljava/lang/String;
    .param p5, "enc"    # Ljava/lang/String;
    .param p6, "dek"    # Ljava/lang/String;

    .line 267
    invoke-virtual/range {p1 .. p2}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->getKeysets(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 268
    .local v0, "existingKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lat/fhooe/usmile/gpjshell/objects/GPKeyset;>;"
    const/4 v1, 0x1

    .line 269
    .local v1, "needsSeed":Z
    if-eqz v0, :cond_2

    .line 270
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;

    .line 271
    .local v3, "k":Lat/fhooe/usmile/gpjshell/objects/GPKeyset;
    invoke-virtual {v3}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 272
    invoke-virtual {v3}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->getID()I

    move-result v4

    if-eqz v4, :cond_0

    .line 273
    invoke-virtual {v3}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->getUniqueID()I

    move-result v4

    invoke-virtual {p1, v4}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->remove(I)I

    goto :goto_1

    .line 275
    :cond_0
    const/4 v1, 0x0

    .line 278
    .end local v3    # "k":Lat/fhooe/usmile/gpjshell/objects/GPKeyset;
    :cond_1
    :goto_1
    goto :goto_0

    .line 281
    :cond_2
    if-eqz v1, :cond_3

    .line 282
    new-instance v2, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v10, p2

    move-object v4, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v10}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .local v2, "defaultKeys":Lat/fhooe/usmile/gpjshell/objects/GPKeyset;
    invoke-virtual {p1, v2}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->insertKeyset(Lat/fhooe/usmile/gpjshell/objects/GPKeyset;)V

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u9ed8\u8ba4 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " \u5bc6\u94a5\u96c6\u5df2\u521d\u59cb\u5316\u3002"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "GPDroid"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local v2    # "defaultKeys":Lat/fhooe/usmile/gpjshell/objects/GPKeyset;
    :cond_3
    return-void
.end method


# virtual methods
.method public addChannelSetItemsOnSpinner(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 560
    .local p1, "channelSets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->channel_spinner:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mChannelSpinner:Landroid/widget/Spinner;

    .line 564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 565
    .local v0, "channelSetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 567
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mChannelSetAdapter:Landroid/widget/ArrayAdapter;

    .line 569
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mChannelSetAdapter:Landroid/widget/ArrayAdapter;

    .line 570
    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 571
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mChannelSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mChannelSetAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 572
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mChannelSetAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 573
    return-void
.end method

.method public addKeysetItemsOnSpinner(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 536
    .local p1, "keysets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->keyset_spinner:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mKeysetSpinner:Landroid/widget/Spinner;

    .line 540
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v0, "keysetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 543
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mKeysetAdapter:Landroid/widget/ArrayAdapter;

    .line 545
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mKeysetAdapter:Landroid/widget/ArrayAdapter;

    .line 546
    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 547
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mKeysetAdapter:Landroid/widget/ArrayAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    .line 549
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mKeysetSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mKeysetAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 550
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mKeysetAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 551
    return-void
.end method

.method public addReaderItemsOnSpinner([Lorg/simalliance/openmobileapi/Reader;)V
    .locals 4
    .param p1, "_readers"    # [Lorg/simalliance/openmobileapi/Reader;

    .line 578
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->reader_spinner:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mReaderSpinner:Landroid/widget/Spinner;

    .line 579
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->btn_install_applet:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->buttonConnect:Landroid/widget/Button;

    .line 580
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->btn_list_applets:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->buttonListApplet:Landroid/widget/Button;

    .line 581
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->button3:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->buttonSelectApplet:Landroid/widget/Button;

    .line 582
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->btn_applet_test:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonAppletInstallTest:Landroid/widget/Button;

    .line 583
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->btn_echo_test:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonEchoTest:Landroid/widget/Button;

    .line 584
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->btn_activate_card:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonActivateCard:Landroid/widget/Button;

    .line 585
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->edit_license:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mEditLicense:Landroid/widget/EditText;

    .line 586
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->check_numeric:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mCheckNumeric:Landroid/widget/CheckBox;

    .line 587
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->btn_copy_log:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonCopyLog:Landroid/widget/Button;

    .line 588
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->btn_clear_log:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonClearLog:Landroid/widget/Button;

    .line 590
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mReaderSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    .line 591
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 593
    aget-object v2, p1, v1

    .line 594
    .local v2, "reader":Lorg/simalliance/openmobileapi/Reader;
    invoke-virtual {v2}, Lorg/simalliance/openmobileapi/Reader;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    .end local v2    # "reader":Lorg/simalliance/openmobileapi/Reader;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 596
    .end local v1    # "i":I
    :cond_0
    array-length v1, p1

    if-nez v1, :cond_1

    .line 597
    const-string v1, "NFC Interface"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    :cond_1
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 602
    .local v1, "dataAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 603
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mReaderSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 606
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mReaderSpinner:Landroid/widget/Spinner;

    new-instance v3, Lat/fhooe/usmile/gpjshell/MainActivity$9;

    invoke-direct {v3, p0}, Lat/fhooe/usmile/gpjshell/MainActivity$9;-><init>(Lat/fhooe/usmile/gpjshell/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 648
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->buttonConnect:Landroid/widget/Button;

    new-instance v3, Lat/fhooe/usmile/gpjshell/MainActivity$10;

    invoke-direct {v3, p0}, Lat/fhooe/usmile/gpjshell/MainActivity$10;-><init>(Lat/fhooe/usmile/gpjshell/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->buttonSelectApplet:Landroid/widget/Button;

    new-instance v3, Lat/fhooe/usmile/gpjshell/MainActivity$11;

    invoke-direct {v3, p0}, Lat/fhooe/usmile/gpjshell/MainActivity$11;-><init>(Lat/fhooe/usmile/gpjshell/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 672
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonAppletInstallTest:Landroid/widget/Button;

    new-instance v3, Lat/fhooe/usmile/gpjshell/MainActivity$12;

    invoke-direct {v3, p0}, Lat/fhooe/usmile/gpjshell/MainActivity$12;-><init>(Lat/fhooe/usmile/gpjshell/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 693
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonEchoTest:Landroid/widget/Button;

    new-instance v3, Lat/fhooe/usmile/gpjshell/MainActivity$13;

    invoke-direct {v3, p0}, Lat/fhooe/usmile/gpjshell/MainActivity$13;-><init>(Lat/fhooe/usmile/gpjshell/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 753
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonActivateCard:Landroid/widget/Button;

    new-instance v3, Lat/fhooe/usmile/gpjshell/MainActivity$14;

    invoke-direct {v3, p0}, Lat/fhooe/usmile/gpjshell/MainActivity$14;-><init>(Lat/fhooe/usmile/gpjshell/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 833
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->buttonListApplet:Landroid/widget/Button;

    new-instance v3, Lat/fhooe/usmile/gpjshell/MainActivity$15;

    invoke-direct {v3, p0}, Lat/fhooe/usmile/gpjshell/MainActivity$15;-><init>(Lat/fhooe/usmile/gpjshell/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonGetData:Landroid/widget/Button;

    new-instance v3, Lat/fhooe/usmile/gpjshell/MainActivity$16;

    invoke-direct {v3, p0}, Lat/fhooe/usmile/gpjshell/MainActivity$16;-><init>(Lat/fhooe/usmile/gpjshell/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 849
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonClearLog:Landroid/widget/Button;

    new-instance v3, Lat/fhooe/usmile/gpjshell/MainActivity$17;

    invoke-direct {v3, p0}, Lat/fhooe/usmile/gpjshell/MainActivity$17;-><init>(Lat/fhooe/usmile/gpjshell/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 856
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonCopyLog:Landroid/widget/Button;

    new-instance v3, Lat/fhooe/usmile/gpjshell/MainActivity$18;

    invoke-direct {v3, p0}, Lat/fhooe/usmile/gpjshell/MainActivity$18;-><init>(Lat/fhooe/usmile/gpjshell/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 866
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "dataAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method public fileReceived(Ljava/lang/String;III)V
    .locals 6
    .param p1, "_url"    # Ljava/lang/String;
    .param p2, "_reader"    # I
    .param p3, "_keyset"    # I
    .param p4, "_securechannelset"    # I

    .line 985
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mAppletUrl:Ljava/lang/String;

    .line 986
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mReaderSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 987
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mKeysetSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 988
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mChannelSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 990
    sget-object v1, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_DELETE_SENT_APPLET:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mReaderSpinner:Landroid/widget/Spinner;

    .line 991
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    iget-object v5, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mAppletUrl:Ljava/lang/String;

    .line 990
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lat/fhooe/usmile/gpjshell/MainActivity;->performCommand(Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;I[BBLjava/lang/Object;)V

    .line 993
    sget-object v1, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_INSTALL:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mReaderSpinner:Landroid/widget/Spinner;

    .line 994
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    iget-object v5, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mAppletUrl:Ljava/lang/String;

    .line 993
    invoke-direct/range {v0 .. v5}, Lat/fhooe/usmile/gpjshell/MainActivity;->performCommand(Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;I[BBLjava/lang/Object;)V

    .line 997
    return-void
.end method

.method public mifareTestFinished()V
    .locals 1

    .line 1064
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->dismissDialog(I)V

    .line 1065
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "_requestCode"    # I
    .param p2, "_resultCode"    # I
    .param p3, "_data"    # Landroid/content/Intent;

    .line 404
    const/4 v0, -0x1

    const-string v1, "GPJShell"

    if-ne p2, v0, :cond_3

    .line 406
    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 509
    move-object v3, p0

    goto/16 :goto_3

    .line 470
    :sswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "p1"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mP1:I

    .line 471
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "p2"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mP2:I

    .line 472
    sget-object v0, Lat/fhooe/usmile/gpjshell/MainActivity;->MAIN_Log:Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "P1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mP1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", P2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mP2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Parameters: "

    invoke-virtual {v0, v2, v1}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 474
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lat/fhooe/usmile/gpjshell/MainActivity$8;

    invoke-direct {v1, p0}, Lat/fhooe/usmile/gpjshell/MainActivity$8;-><init>(Lat/fhooe/usmile/gpjshell/MainActivity;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 484
    move-object v3, p0

    goto/16 :goto_3

    .line 452
    .end local v0    # "handler":Landroid/os/Handler;
    :sswitch_1
    const/4 v0, 0x0

    .line 453
    .local v0, "params":[B
    const/4 v2, 0x0

    .line 454
    .local v2, "privileges":B
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 456
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "params"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 457
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "privileges"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    move-object v6, v0

    move v7, v2

    goto :goto_0

    .line 461
    :cond_0
    move-object v6, v0

    move v7, v2

    .end local v0    # "params":[B
    .end local v2    # "privileges":B
    .local v6, "params":[B
    .local v7, "privileges":B
    :goto_0
    :try_start_0
    sget-object v4, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_INSTALL:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mReaderSpinner:Landroid/widget/Spinner;

    .line 462
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    iget-object v8, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mAppletUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 461
    move-object v3, p0

    :try_start_1
    invoke-direct/range {v3 .. v8}, Lat/fhooe/usmile/gpjshell/MainActivity;->performCommand(Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;I[BBLjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 466
    goto/16 :goto_3

    .line 464
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, p0

    .line 465
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v2, Lat/fhooe/usmile/gpjshell/MainActivity;->MAIN_Log:Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    const-string v4, "Error while installing: "

    invoke-virtual {v2, v1, v4, v0}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 467
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_3

    .line 435
    .end local v6    # "params":[B
    .end local v7    # "privileges":B
    :sswitch_2
    move-object v3, p0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "channelset"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;

    .line 438
    .local v1, "channel":Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;
    new-instance v2, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;

    invoke-direct {v2, p0}, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;-><init>(Landroid/content/Context;)V

    .line 441
    .local v2, "channelSource":Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;
    invoke-virtual {v2}, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;->open()V

    .line 442
    invoke-virtual {v2, v1}, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;->insertChannelSet(Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;)V

    .line 443
    invoke-virtual {v2}, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;->getChannelSets()Ljava/util/Map;

    move-result-object v4

    iput-object v4, v3, Lat/fhooe/usmile/gpjshell/MainActivity;->mChannelSetMap:Ljava/util/Map;

    .line 444
    invoke-virtual {v2}, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;->close()V

    .line 446
    iget-object v4, v3, Lat/fhooe/usmile/gpjshell/MainActivity;->mChannelSetMap:Ljava/util/Map;

    .line 447
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 446
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->addChannelSetItemsOnSpinner(Ljava/util/List;)V

    .line 449
    goto/16 :goto_3

    .line 415
    .end local v1    # "channel":Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;
    .end local v2    # "channelSource":Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;
    :sswitch_3
    move-object v3, p0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "keyset"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;

    .line 419
    .local v1, "keyset":Lat/fhooe/usmile/gpjshell/objects/GPKeyset;
    iget-object v2, v3, Lat/fhooe/usmile/gpjshell/MainActivity;->mReaderSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->setReaderName(Ljava/lang/String;)V

    .line 421
    new-instance v2, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;

    invoke-direct {v2, p0}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;-><init>(Landroid/content/Context;)V

    .line 423
    .local v2, "keySource":Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;
    invoke-virtual {v2}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->open()V

    .line 424
    invoke-virtual {v2, v1}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->insertKeyset(Lat/fhooe/usmile/gpjshell/objects/GPKeyset;)V

    .line 425
    iget-object v4, v3, Lat/fhooe/usmile/gpjshell/MainActivity;->mReaderSpinner:Landroid/widget/Spinner;

    .line 426
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 425
    invoke-virtual {v2, v4}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->getKeysets(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, v3, Lat/fhooe/usmile/gpjshell/MainActivity;->mKeysetMap:Ljava/util/Map;

    .line 427
    invoke-virtual {v2}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->close()V

    .line 429
    iget-object v4, v3, Lat/fhooe/usmile/gpjshell/MainActivity;->mKeysetMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/String;

    .line 430
    invoke-interface {v4, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 429
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->addKeysetItemsOnSpinner(Ljava/util/List;)V

    .line 432
    goto/16 :goto_3

    .line 408
    .end local v1    # "keyset":Lat/fhooe/usmile/gpjshell/objects/GPKeyset;
    .end local v2    # "keySource":Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;
    :sswitch_4
    move-object v3, p0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 409
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lat/fhooe/usmile/gpjshell/MainActivity;->mAppletUrl:Ljava/lang/String;

    .line 410
    sget-object v2, Lat/fhooe/usmile/gpjshell/MainActivity;->MAIN_Log:Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5df2\u9009\u62e9URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lat/fhooe/usmile/gpjshell/MainActivity;->mAppletUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v1, v3, Lat/fhooe/usmile/gpjshell/MainActivity;->mFileNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    goto :goto_3

    .line 487
    .end local v0    # "uri":Landroid/net/Uri;
    :sswitch_5
    move-object v3, p0

    sget-object v2, Lat/fhooe/usmile/gpjshell/MainActivity;->MAIN_Log:Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    const-string v4, "\u53d1\u73b0\u5361\u7247"

    invoke-virtual {v2, v1, v4}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v2, "android.nfc.action.TECH_DISCOVERED"

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 489
    const-string v2, "android.nfc.extra.TAG"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/nfc/Tag;

    .line 490
    .local v2, "tag":Landroid/nfc/Tag;
    iget-boolean v4, v3, Lat/fhooe/usmile/gpjshell/MainActivity;->mWaitingForMfTest:Z

    if-eqz v4, :cond_1

    .line 491
    iput-boolean v0, v3, Lat/fhooe/usmile/gpjshell/MainActivity;->mWaitingForMfTest:Z

    .line 493
    invoke-direct {p0, v2}, Lat/fhooe/usmile/gpjshell/MainActivity;->runMifareTest(Landroid/nfc/Tag;)V

    goto :goto_2

    .line 495
    :cond_1
    iget-object v0, v3, Lat/fhooe/usmile/gpjshell/MainActivity;->mTerminal:Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

    if-eqz v0, :cond_2

    .line 496
    iget-object v0, v3, Lat/fhooe/usmile/gpjshell/MainActivity;->mTerminal:Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

    check-cast v0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;

    invoke-virtual {v0, v2}, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;->passTag(Landroid/nfc/Tag;)Z

    .line 497
    iget-object v0, v3, Lat/fhooe/usmile/gpjshell/MainActivity;->mTerminal:Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

    invoke-virtual {v0}, Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 498
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->serviceConnected(Lorg/simalliance/openmobileapi/SEService;)V

    .line 499
    const-string v0, "Card detected"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .end local v2    # "tag":Landroid/nfc/Tag;
    :cond_2
    :goto_2
    goto :goto_3

    .line 512
    :cond_3
    move-object v3, p0

    if-nez p2, :cond_4

    .line 513
    sget-object v0, Lat/fhooe/usmile/gpjshell/MainActivity;->MAIN_Log:Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    const-string v2, "\u7ed3\u679c\u65e0\u6548"

    invoke-virtual {v0, v1, v2}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_4
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x65 -> :sswitch_4
        0x66 -> :sswitch_3
        0x67 -> :sswitch_2
        0x68 -> :sswitch_1
        0x69 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 149
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    # ==== gpjpboc-v1.3.3: 旧图标/外部直启 → 转到 PBOC 首页 ====
    invoke-virtual {p0}, Lat/fhooe/usmile/gpjshell/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v0, "fromBottomBar"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_v133

    new-instance v4, Landroid/content/Intent;

    const-class v0, Lorg/pboc/fm1208/MainActivity;

    invoke-direct {v4, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lat/fhooe/usmile/gpjshell/MainActivity;->finish()V

    return-void

    :cond_v133

    .line 150
    sget v0, Lat/fhooe/usmile/gpjshell/R$layout;->activity_main:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->setContentView(I)V

    # ==== gpjpboc-v2: 底部切换栏 ====
    const v0, 0x7f050000

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {p0, v4}, Lcom/gpjpboc/toolkit/BottomBar;->build(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    # ==== gpjpboc-v3: FM1280 Java卡改ATS ====
    const v2, 0x7f050076

    invoke-virtual {p0, v2}, Lat/fhooe/usmile/gpjshell/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/gpjpboc/toolkit/AtsLauncher;

    invoke-direct {v3, p0}, Lcom/gpjpboc/toolkit/AtsLauncher;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    new-instance v0, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    invoke-direct {v0, p0}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;-><init>(Lat/fhooe/usmile/gpjshell/MainActivity;)V

    sput-object v0, Lat/fhooe/usmile/gpjshell/MainActivity;->MAIN_Log:Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    .line 152
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mCommandExecutionQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 154
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->btn_get_data:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonGetData:Landroid/widget/Button;

    .line 156
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->text1:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mFileNameView:Landroid/widget/TextView;

    .line 157
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->btn_add_keyset:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonAddKeyset:Landroid/widget/Button;

    .line 158
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonAddKeyset:Landroid/widget/Button;

    new-instance v1, Lat/fhooe/usmile/gpjshell/MainActivity$1;

    invoke-direct {v1, p0}, Lat/fhooe/usmile/gpjshell/MainActivity$1;-><init>(Lat/fhooe/usmile/gpjshell/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->btn_add_channelset:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonAddChannelSet:Landroid/widget/Button;

    .line 172
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonAddChannelSet:Landroid/widget/Button;

    new-instance v1, Lat/fhooe/usmile/gpjshell/MainActivity$2;

    invoke-direct {v1, p0}, Lat/fhooe/usmile/gpjshell/MainActivity$2;-><init>(Lat/fhooe/usmile/gpjshell/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->btn_remove_channelset:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonRemoveChannelset:Landroid/widget/Button;

    .line 183
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonRemoveChannelset:Landroid/widget/Button;

    new-instance v1, Lat/fhooe/usmile/gpjshell/MainActivity$3;

    invoke-direct {v1, p0}, Lat/fhooe/usmile/gpjshell/MainActivity$3;-><init>(Lat/fhooe/usmile/gpjshell/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->btn_remove_keyset:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonRemoveKeyset:Landroid/widget/Button;

    .line 203
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonRemoveKeyset:Landroid/widget/Button;

    new-instance v1, Lat/fhooe/usmile/gpjshell/MainActivity$4;

    invoke-direct {v1, p0}, Lat/fhooe/usmile/gpjshell/MainActivity$4;-><init>(Lat/fhooe/usmile/gpjshell/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->btn_test_mf:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonTestMifare:Landroid/widget/Button;

    .line 230
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mButtonTestMifare:Landroid/widget/Button;

    new-instance v1, Lat/fhooe/usmile/gpjshell/MainActivity$5;

    invoke-direct {v1, p0}, Lat/fhooe/usmile/gpjshell/MainActivity$5;-><init>(Lat/fhooe/usmile/gpjshell/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    invoke-direct {p0}, Lat/fhooe/usmile/gpjshell/MainActivity;->ensureDefaultKeysExist()V

    .line 241
    invoke-direct {p0}, Lat/fhooe/usmile/gpjshell/MainActivity;->loadPreferences()V

    .line 243
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->log:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mLog:Landroid/widget/TextView;

    .line 246
    sget-object v0, Lat/fhooe/usmile/gpjshell/MainActivity;->MAIN_Log:Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    const-string v1, "GPJShell"

    const-string v2, "\u542f\u52a8 GPJ Shell"

    invoke-virtual {v0, v1, v2}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .line 291
    const/4 v0, 0x1

    const-string v1, "Mifare Test"

    packed-switch p1, :pswitch_data_0

    .line 329
    const/4 v0, 0x0

    return-object v0

    .line 309
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 310
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 311
    const-string v2, "Test running, please wait..."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 312
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lat/fhooe/usmile/gpjshell/MainActivity$7;

    invoke-direct {v1, p0}, Lat/fhooe/usmile/gpjshell/MainActivity$7;-><init>(Lat/fhooe/usmile/gpjshell/MainActivity;)V

    .line 313
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 309
    return-object v0

    .line 293
    :pswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 294
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 295
    const-string v2, "Touch Mifare tag to start test"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 296
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lat/fhooe/usmile/gpjshell/MainActivity$6;

    invoke-direct {v1, p0}, Lat/fhooe/usmile/gpjshell/MainActivity$6;-><init>(Lat/fhooe/usmile/gpjshell/MainActivity;)V

    .line 297
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 293
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 398
    invoke-virtual {p0}, Lat/fhooe/usmile/gpjshell/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lat/fhooe/usmile/gpjshell/R$menu;->main:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 399
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .line 386
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mTerminal:Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mTerminal:Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

    invoke-virtual {v0}, Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;->shutdown()V

    .line 389
    :cond_0
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mTCPConnection:Lat/fhooe/usmile/gpjshell/TCPConnection;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mTCPConnection:Lat/fhooe/usmile/gpjshell/TCPConnection;

    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/TCPConnection;->stopConnection()V

    .line 392
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 393
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 373
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 374
    const-string v0, "Michi"

    const-string v1, "onpause applet list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mTerminal:Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mTerminal:Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

    invoke-virtual {v0}, Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;->shutdown()V

    .line 378
    :cond_0
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    .line 379
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mTCPConnection:Lat/fhooe/usmile/gpjshell/TCPConnection;

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mTCPConnection:Lat/fhooe/usmile/gpjshell/TCPConnection;

    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/TCPConnection;->stopConnection()V

    .line 382
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 9

    .line 343
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 345
    nop

    .line 346
    const-string v0, "nfc"

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    .line 347
    .local v0, "nMan":Landroid/nfc/NfcManager;
    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 348
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lat/fhooe/usmile/gpjshell/MainActivity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 350
    .local v1, "pi":Landroid/app/PendingIntent;
    iget-object v4, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    new-array v5, v2, [Landroid/content/IntentFilter;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.nfc.action.TECH_DISCOVERED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    aput-object v6, v5, v3

    const-class v6, Landroid/nfc/tech/MifareClassic;

    .line 358
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/String;

    aput-object v6, v7, v3

    const-class v6, Landroid/nfc/tech/IsoDep;

    .line 360
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v8, v2, [Ljava/lang/String;

    aput-object v6, v8, v3

    const/4 v6, 0x2

    new-array v6, v6, [[Ljava/lang/String;

    aput-object v7, v6, v3

    aput-object v8, v6, v2

    .line 351
    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 362
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mTerminal:Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

    if-nez v2, :cond_0

    .line 363
    nop

    .line 364
    invoke-static {p0}, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;->getInstance(Landroid/content/Context;)Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;

    move-result-object v2

    iput-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mTerminal:Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

    .line 366
    :cond_0
    new-instance v2, Lat/fhooe/usmile/gpjshell/TCPConnection;

    invoke-direct {v2, p0, p0}, Lat/fhooe/usmile/gpjshell/TCPConnection;-><init>(Landroid/app/Activity;Lat/fhooe/usmile/gpjshell/TCPFileResultListener;)V

    iput-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mTCPConnection:Lat/fhooe/usmile/gpjshell/TCPConnection;

    .line 367
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mTCPConnection:Lat/fhooe/usmile/gpjshell/TCPConnection;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 368
    .local v2, "td":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    # ==== gpjpboc-v1.4.4: 标准前台派发重注册 + 采纳 PBOC 主页会话 ====
    invoke-static {p0}, Lcom/gpjpboc/toolkit/GpNfcPatch;->onGpResume(Landroid/app/Activity;)V

    .line 369
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    # ==== gpjpboc-v1.4.4: 标准 PendingIntent 派发的 TECH_DISCOVERED 接收 ====
    #      （原 createPendingResult→onActivityResult 通道在新系统上不可靠）====

    if-eqz p1, :gpjpboc_done

    const-string v0, "android.nfc.action.TECH_DISCOVERED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :gpjpboc_done

    const-string v0, "android.nfc.extra.TAG"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :gpjpboc_done

    check-cast v0, Landroid/nfc/Tag;

    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mTerminal:Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

    if-eqz v1, :gpjpboc_done

    check-cast v1, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;

    invoke-virtual {v1, v0}, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;->passTag(Landroid/nfc/Tag;)Z

    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mTerminal:Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

    invoke-virtual {v1}, Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;->isConnected()Z

    move-result v1

    if-eqz v1, :gpjpboc_done

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lat/fhooe/usmile/gpjshell/MainActivity;->serviceConnected(Lorg/simalliance/openmobileapi/SEService;)V

    const-string v1, "Michi"

    const-string v2, "Card detected (onNewIntent)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :gpjpboc_done
    return-void
.end method

.method public serviceConnected(Lorg/simalliance/openmobileapi/SEService;)V
    .locals 7
    .param p1, "_session"    # Lorg/simalliance/openmobileapi/SEService;

    .line 869
    const/4 v0, 0x0

    new-array v1, v0, [Lorg/simalliance/openmobileapi/Reader;

    .line 871
    .local v1, "readers":[Lorg/simalliance/openmobileapi/Reader;
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mTerminal:Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

    instance-of v2, v2, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;

    if-eqz v2, :cond_0

    .line 873
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mTerminal:Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

    check-cast v2, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;

    invoke-virtual {v2}, Lnet/sourceforge/gpj/cardservices/interfaces/OpenMobileAPITerminal;->getReaders()[Lorg/simalliance/openmobileapi/Reader;

    move-result-object v1

    .line 875
    :cond_0
    invoke-virtual {p0, v1}, Lat/fhooe/usmile/gpjshell/MainActivity;->addReaderItemsOnSpinner([Lorg/simalliance/openmobileapi/Reader;)V

    .line 878
    new-instance v2, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;

    invoke-direct {v2, p0}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;-><init>(Landroid/content/Context;)V

    .line 879
    .local v2, "keysetSource":Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;
    invoke-virtual {v2}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->open()V

    .line 880
    const-string v3, "Default"

    invoke-virtual {v2, v3}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->removeByName(Ljava/lang/String;)I

    .line 883
    iget-object v4, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mReaderSpinner:Landroid/widget/Spinner;

    .line 884
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 883
    invoke-virtual {v2, v4}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->getKeysets(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mKeysetMap:Ljava/util/Map;

    .line 886
    invoke-virtual {v2}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->close()V

    .line 888
    new-instance v4, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;

    invoke-direct {v4, p0}, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;-><init>(Landroid/content/Context;)V

    .line 889
    .local v4, "channelSource":Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;
    invoke-virtual {v4}, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;->open()V

    .line 890
    new-instance v5, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;

    const/4 v6, 0x3

    invoke-direct {v5, v3, v0, v6, v0}, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;-><init>(Ljava/lang/String;IIZ)V

    invoke-virtual {v4, v5}, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;->insertChannelSet(Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;)V

    .line 894
    invoke-virtual {v4}, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;->getChannelSets()Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mChannelSetMap:Ljava/util/Map;

    .line 895
    invoke-virtual {v4}, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;->close()V

    .line 902
    :goto_0
    iget-object v3, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mCommandExecutionQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 903
    new-instance v3, Lat/fhooe/usmile/gpjshell/MainActivity$PerformCommandTask;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lat/fhooe/usmile/gpjshell/MainActivity$PerformCommandTask;-><init>(Lat/fhooe/usmile/gpjshell/MainActivity;Lat/fhooe/usmile/gpjshell/MainActivity$1;)V

    const/4 v5, 0x1

    new-array v5, v5, [Lat/fhooe/usmile/gpjshell/GPCommand;

    iget-object v6, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mCommandExecutionQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lat/fhooe/usmile/gpjshell/GPCommand;

    aput-object v6, v5, v0

    invoke-virtual {v3, v5}, Lat/fhooe/usmile/gpjshell/MainActivity$PerformCommandTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 905
    :cond_1
    return-void
.end method

.method public stopTimer()V
    .locals 6

    .line 1069
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity;->mInstallStartTimes:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 1070
    .local v0, "start":J
    sget-object v2, Lat/fhooe/usmile/gpjshell/MainActivity;->MAIN_Log:Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8ba1\u65f6\u5668\u505c\u6b62: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1071
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1070
    const-string v4, "GPJShell"

    invoke-virtual {v2, v4, v3}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    return-void
.end method
