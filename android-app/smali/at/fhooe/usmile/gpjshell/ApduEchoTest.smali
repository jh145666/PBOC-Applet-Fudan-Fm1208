.class public Lat/fhooe/usmile/gpjshell/ApduEchoTest;
.super Landroid/app/Activity;
.source "ApduEchoTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/fhooe/usmile/gpjshell/ApduEchoTest$TestRunner;
    }
.end annotation


# static fields
.field private static final APPLET_AID:Ljava/lang/String; = "F04D524F4C4543484F"

.field public static final EXTRA_CHANNELSET:Ljava/lang/String; = "at.fhooe.usmile.gpjshell.AppletInstallTest.channelset"

.field public static final EXTRA_KEYSET:Ljava/lang/String; = "at.fhooe.usmile.gpjshell.AppletInstallTest.keyset"

.field public static final EXTRA_RUNS:Ljava/lang/String; = "at.fhooe.usmile.gpjshell.ApduEchoTest.runs"

.field public static final EXTRA_STEPS:Ljava/lang/String; = "at.fhooe.usmile.gpjshell.ApduEchoTest.steps"

.field public static final EXTRA_STEP_SIZE:Ljava/lang/String; = "at.fhooe.usmile.gpjshell.ApduEchoTest.step_size"

.field private static final LOG_FILE:Ljava/lang/String; = "/storage/sdcard0/apdu_echo_test.log"

.field private static final LOG_INFO:Ljava/lang/String; = "Info"

.field private static final LOG_RECEIVED:Ljava/lang/String; = "Received"

.field private static final LOG_SENT:Ljava/lang/String; = "Sent"

.field private static final LOG_TAG:Ljava/lang/String; = "Echo Test"


# instance fields
.field private mCancelled:Z

.field private mChannel:Ljavax/smartcardio/CardChannel;

.field private mChannelSet:Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;

.field private mKeySet:Lat/fhooe/usmile/gpjshell/objects/GPKeyset;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRuns:I

.field private mSeekReader:Ljava/lang/Integer;

.field private mStepSize:I

.field private mSteps:I

.field private mTerm:Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

.field private mTestRunner:Lat/fhooe/usmile/gpjshell/ApduEchoTest$TestRunner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->mCancelled:Z

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->mTestRunner:Lat/fhooe/usmile/gpjshell/ApduEchoTest$TestRunner;

    .line 67
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->mProgress:Landroid/widget/ProgressBar;

    .line 71
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->mTerm:Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

    .line 72
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->mChannel:Ljavax/smartcardio/CardChannel;

    return-void
.end method

.method static synthetic access$100(Lat/fhooe/usmile/gpjshell/ApduEchoTest;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/ApduEchoTest;

    .line 44
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lat/fhooe/usmile/gpjshell/ApduEchoTest;)I
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/ApduEchoTest;

    .line 44
    iget v0, p0, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->mRuns:I

    return v0
.end method

.method private close()V
    .locals 1

    .line 96
    new-instance v0, Lat/fhooe/usmile/gpjshell/ApduEchoTest$1;

    invoke-direct {v0, p0}, Lat/fhooe/usmile/gpjshell/ApduEchoTest$1;-><init>(Lat/fhooe/usmile/gpjshell/ApduEchoTest;)V

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method

.method private log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 235
    new-instance v0, Lat/fhooe/usmile/gpjshell/ApduEchoTest$3;

    invoke-direct {v0, p0, p1, p2}, Lat/fhooe/usmile/gpjshell/ApduEchoTest$3;-><init>(Lat/fhooe/usmile/gpjshell/ApduEchoTest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 242
    return-void
.end method

.method private transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;
    .locals 3
    .param p1, "cmd"    # Ljavax/smartcardio/CommandAPDU;

    .line 221
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->mChannel:Ljavax/smartcardio/CardChannel;

    const-string v1, "Info"

    if-nez v0, :cond_0

    .line 222
    const-string v0, "Error, channel not opened"

    invoke-direct {p0, v1, v0}, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_0
    :try_start_0
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->mChannel:Ljavax/smartcardio/CardChannel;

    invoke-virtual {v0, p1}, Ljavax/smartcardio/CardChannel;->transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;

    move-result-object v0
    :try_end_0
    .catch Ljavax/smartcardio/CardException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljavax/smartcardio/CardException;
    const-string v2, "Error transmitting APDU"

    invoke-direct {p0, v1, v2}, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0}, Ljavax/smartcardio/CardException;->printStackTrace()V

    .line 230
    .end local v0    # "e":Ljavax/smartcardio/CardException;
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    sget v0, Lat/fhooe/usmile/gpjshell/R$layout;->activity_echo_test:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->setContentView(I)V

    .line 79
    invoke-virtual {p0}, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "at.fhooe.usmile.gpjshell.ApduEchoTest.runs"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->mRuns:I

    .line 80
    invoke-virtual {p0}, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "at.fhooe.usmile.gpjshell.ApduEchoTest.step_size"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->mStepSize:I

    .line 81
    invoke-virtual {p0}, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "at.fhooe.usmile.gpjshell.ApduEchoTest.steps"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->mSteps:I

    .line 83
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->echo_test_progress:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->mProgress:Landroid/widget/ProgressBar;

    .line 84
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->mProgress:Landroid/widget/ProgressBar;

    iget v1, p0, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->mSteps:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 86
    new-instance v0, Lat/fhooe/usmile/gpjshell/ApduEchoTest$TestRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lat/fhooe/usmile/gpjshell/ApduEchoTest$TestRunner;-><init>(Lat/fhooe/usmile/gpjshell/ApduEchoTest;Lat/fhooe/usmile/gpjshell/ApduEchoTest$1;)V

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->mTestRunner:Lat/fhooe/usmile/gpjshell/ApduEchoTest$TestRunner;

    .line 87
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->mTestRunner:Lat/fhooe/usmile/gpjshell/ApduEchoTest$TestRunner;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lat/fhooe/usmile/gpjshell/ApduEchoTest$TestRunner;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 88
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->mCancelled:Z

    .line 93
    return-void
.end method

.method public runTest(Ljava/lang/Integer;)V
    .locals 18
    .param p1, "nRuns"    # Ljava/lang/Integer;

    .line 106
    move-object/from16 v1, p0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->mCancelled:Z

    .line 108
    new-instance v0, Lat/fhooe/usmile/gpjshell/TimerLog;

    invoke-direct {v0}, Lat/fhooe/usmile/gpjshell/TimerLog;-><init>()V

    move-object v3, v0

    .line 110
    .local v3, "tsLog":Lat/fhooe/usmile/gpjshell/TimerLog;
    invoke-virtual {v1}, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;->getInstance(Landroid/content/Context;)Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;

    move-result-object v0

    iput-object v0, v1, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->mTerm:Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

    .line 112
    :try_start_0
    iget-object v0, v1, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->mTerm:Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

    const-string v4, "*"

    invoke-virtual {v0, v4}, Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;->connect(Ljava/lang/String;)Ljavax/smartcardio/Card;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/smartcardio/Card;->getBasicChannel()Ljavax/smartcardio/CardChannel;

    move-result-object v0

    iput-object v0, v1, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->mChannel:Ljavax/smartcardio/CardChannel;
    :try_end_0
    .catch Ljavax/smartcardio/CardException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljavax/smartcardio/CardException;
    invoke-virtual {v0}, Ljavax/smartcardio/CardException;->printStackTrace()V

    .line 118
    .end local v0    # "e":Ljavax/smartcardio/CardException;
    :goto_0
    new-instance v4, Ljavax/smartcardio/CommandAPDU;

    .line 120
    const-string v0, "F04D524F4C4543484F"

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/GPUtils;->convertHexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v9

    const/4 v5, 0x0

    const/16 v6, -0x5c

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v9}, Ljavax/smartcardio/CommandAPDU;-><init>(IIII[B)V

    .line 122
    .local v4, "cmd":Ljavax/smartcardio/CommandAPDU;
    invoke-direct {v1, v4}, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;

    move-result-object v5

    .line 123
    .local v5, "resp":Ljavax/smartcardio/ResponseAPDU;
    const-string v0, "Error selecting applet"

    const-string v6, "Info"

    if-nez v5, :cond_0

    .line 124
    invoke-direct {v1, v6, v0}, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    invoke-virtual {v5}, Ljavax/smartcardio/ResponseAPDU;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lat/fhooe/usmile/gpjshell/GPUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v5}, Ljavax/smartcardio/ResponseAPDU;->getSW()I

    move-result v7

    const v8, 0x9000

    if-eq v7, v8, :cond_1

    .line 130
    invoke-direct {v1, v6, v0}, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void

    .line 134
    :cond_1
    const-string v0, "Applet selected"

    invoke-direct {v1, v6, v0}, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/util/Random;

    const-wide/16 v7, 0x0

    invoke-direct {v0, v7, v8}, Ljava/util/Random;-><init>(J)V

    move-object v7, v0

    .line 140
    .local v7, "rnd":Ljava/util/Random;
    :try_start_1
    iget v0, v1, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->mStepSize:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v8, v5

    move-object v5, v4

    move v4, v0

    .local v4, "size":I
    .local v5, "cmd":Ljavax/smartcardio/CommandAPDU;
    .local v8, "resp":Ljavax/smartcardio/ResponseAPDU;
    :goto_1
    :try_start_2
    iget v0, v1, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->mSteps:I

    iget v9, v1, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->mStepSize:I

    mul-int v0, v0, v9

    if-gt v4, v0, :cond_7

    .line 148
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v9, v0

    .line 151
    .local v9, "bo":Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0xff

    if-le v4, v10, :cond_2

    .line 152
    invoke-virtual {v9, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 153
    and-int/lit16 v0, v4, 0xff

    invoke-virtual {v9, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 154
    shr-int/lit8 v0, v4, 0x8

    and-int/2addr v0, v10

    invoke-virtual {v9, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 156
    :cond_2
    invoke-virtual {v9, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 159
    :goto_2
    new-array v0, v4, [B

    move-object v11, v0

    .line 160
    .local v11, "payload":[B
    invoke-virtual {v7, v11}, Ljava/util/Random;->nextBytes([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 162
    :try_start_3
    invoke-virtual {v9, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 166
    goto :goto_3

    .line 163
    :catch_1
    move-exception v0

    .line 165
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 169
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    if-le v4, v10, :cond_3

    .line 170
    invoke-virtual {v9, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 171
    and-int/lit16 v0, v4, 0xff

    invoke-virtual {v9, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 172
    shr-int/lit8 v0, v4, 0x8

    and-int/2addr v0, v10

    invoke-virtual {v9, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    .line 174
    :cond_3
    invoke-virtual {v9, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 177
    :goto_4
    invoke-virtual {v3}, Lat/fhooe/usmile/gpjshell/TimerLog;->beginTest()V

    .line 179
    new-instance v12, Ljavax/smartcardio/CommandAPDU;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    const/16 v13, 0x80

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v17}, Ljavax/smartcardio/CommandAPDU;-><init>(IIII[B)V

    move-object v5, v12

    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget v10, v1, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->mRuns:I

    if-ge v0, v10, :cond_6

    .line 181
    iget-boolean v10, v1, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->mCancelled:Z

    if-eqz v10, :cond_4

    .line 182
    goto :goto_6

    .line 185
    :cond_4
    invoke-direct {v1, v5}, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;

    move-result-object v10

    move-object v8, v10

    .line 187
    if-eqz v8, :cond_5

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 188
    :cond_5
    new-instance v10, Ljava/lang/Exception;

    const-string v12, "Error in echo test"

    invoke-direct {v10, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v3    # "tsLog":Lat/fhooe/usmile/gpjshell/TimerLog;
    .end local v5    # "cmd":Ljavax/smartcardio/CommandAPDU;
    .end local v7    # "rnd":Ljava/util/Random;
    .end local v8    # "resp":Ljavax/smartcardio/ResponseAPDU;
    .end local p1    # "nRuns":Ljava/lang/Integer;
    throw v10

    .line 197
    .end local v0    # "i":I
    .restart local v3    # "tsLog":Lat/fhooe/usmile/gpjshell/TimerLog;
    .restart local v5    # "cmd":Ljavax/smartcardio/CommandAPDU;
    .restart local v7    # "rnd":Ljava/util/Random;
    .restart local v8    # "resp":Ljavax/smartcardio/ResponseAPDU;
    .restart local p1    # "nRuns":Ljava/lang/Integer;
    :cond_6
    :goto_6
    sget-object v0, Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;->ECHO_TEST_FINISHED:Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

    invoke-virtual {v3, v0}, Lat/fhooe/usmile/gpjshell/TimerLog;->log(Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;)V

    .line 198
    iget v0, v1, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->mStepSize:I

    div-int v0, v4, v0

    .line 200
    .local v0, "progress":I
    new-instance v10, Lat/fhooe/usmile/gpjshell/ApduEchoTest$2;

    invoke-direct {v10, v1, v0}, Lat/fhooe/usmile/gpjshell/ApduEchoTest$2;-><init>(Lat/fhooe/usmile/gpjshell/ApduEchoTest;I)V

    invoke-virtual {v1, v10}, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 140
    .end local v0    # "progress":I
    .end local v9    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "payload":[B
    iget v0, v1, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->mStepSize:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    add-int/2addr v4, v0

    goto/16 :goto_1

    .line 211
    .end local v4    # "size":I
    :cond_7
    goto :goto_8

    .line 209
    :catch_2
    move-exception v0

    move-object v4, v5

    move-object v5, v8

    goto :goto_7

    .end local v8    # "resp":Ljavax/smartcardio/ResponseAPDU;
    .local v4, "cmd":Ljavax/smartcardio/CommandAPDU;
    .local v5, "resp":Ljavax/smartcardio/ResponseAPDU;
    :catch_3
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v6, v8}, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->log(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v5

    move-object v5, v4

    .line 212
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "cmd":Ljavax/smartcardio/CommandAPDU;
    .local v5, "cmd":Ljavax/smartcardio/CommandAPDU;
    .restart local v8    # "resp":Ljavax/smartcardio/ResponseAPDU;
    :goto_8
    const-string v0, "Test finished, writing log to /storage/sdcard0/apdu_echo_test.log"

    invoke-direct {v1, v6, v0}, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const/4 v0, 0x1

    new-array v0, v0, [Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

    sget-object v4, Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;->ECHO_TEST_FINISHED:Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

    aput-object v4, v0, v2

    const-string v2, "/storage/sdcard0/apdu_echo_test.log"

    invoke-virtual {v3, v2, v0}, Lat/fhooe/usmile/gpjshell/TimerLog;->writeToFile(Ljava/lang/String;[Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;)V

    .line 217
    invoke-direct {v1}, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->close()V

    .line 218
    return-void
.end method
