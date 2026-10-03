.class public Lorg/pboc/fm1208/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/pboc/fm1208/MainActivity$AmountCallback;
    }
.end annotation


# instance fields
.field private final MAX_LOG_LINES:I

.field private buttonContainer:Landroid/widget/LinearLayout;

.field private volatile connecting:Z

.field private volatile connectionActive:Z

.field private currentUid:[B

.field private engine:Lorg/pboc/fm1208/PbocEngine;

.field public handler:Landroid/os/Handler;

.field private poller:Lcom/gpjpboc/toolkit/CardPoller;

.field public isoDep:Landroid/nfc/tech/IsoDep;

.field private logBuilder:Ljava/lang/StringBuilder;

.field private nfcAdapter:Landroid/nfc/NfcAdapter;

.field private pendingIntent:Landroid/app/PendingIntent;

.field private scrollView:Landroid/widget/ScrollView;

.field private tvBalance:Landroid/widget/TextView;

.field private tvCardInfo:Landroid/widget/TextView;

.field private tvLog:Landroid/widget/TextView;

.field private tvPinStatus:Landroid/widget/TextView;

.field private tvStatus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/pboc/fm1208/MainActivity;->currentUid:[B

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pboc/fm1208/MainActivity;->connecting:Z

    .line 51
    iput-boolean v0, p0, Lorg/pboc/fm1208/MainActivity;->connectionActive:Z

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/pboc/fm1208/MainActivity;->logBuilder:Ljava/lang/StringBuilder;

    .line 60
    const/16 v0, 0x12c

    iput v0, p0, Lorg/pboc/fm1208/MainActivity;->MAX_LOG_LINES:I

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method private addLog(Ljava/lang/String;)V
    .locals 4

    .line 1039
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1040
    iget-object v1, p0, Lorg/pboc/fm1208/MainActivity;->logBuilder:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    nop

    .line 1044
    nop

    .line 1045
    const/4 p1, -0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/pboc/fm1208/MainActivity;->logBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1046
    iget-object v2, p0, Lorg/pboc/fm1208/MainActivity;->logBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 1047
    add-int/lit8 v1, v1, 0x1

    .line 1048
    const/16 v2, 0x12c

    if-le v1, v2, :cond_0

    if-gez p1, :cond_0

    .line 1049
    move p1, v0

    .line 1045
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1053
    :cond_1
    if-lez p1, :cond_2

    .line 1054
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->logBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1057
    :cond_2
    iget-object p1, p0, Lorg/pboc/fm1208/MainActivity;->tvLog:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->logBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1058
    return-void
.end method

.method private createCard()Landroid/widget/LinearLayout;
    .locals 5

    .line 218
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 219
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 220
    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v2

    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v1}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v1

    invoke-direct {p0, v3}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 221
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 222
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 224
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 225
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    return-object v0
.end method

.method private createUI()V
    .locals 13

    .line 97
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 98
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 99
    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v2}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v2}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v2}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 100
    const-string v2, "#F5F5F5"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 103
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 104
    const-string v3, "PBOC\u7ba1\u7406\u5de5\u5177"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 106
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 107
    const-string v4, "#0D47A1"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 109
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v6

    const/16 v7, 0x8

    invoke-direct {p0, v7}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v6, v9, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 110
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->createCard()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 114
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/pboc/fm1208/MainActivity;->tvStatus:Landroid/widget/TextView;

    .line 115
    const-string v8, "\u8bf7\u5c06\u5361\u7247\u8d34\u8fd1\u624b\u673aNFC\u533a\u57df"

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v6, p0, Lorg/pboc/fm1208/MainActivity;->tvStatus:Landroid/widget/TextView;

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 117
    iget-object v6, p0, Lorg/pboc/fm1208/MainActivity;->tvStatus:Landroid/widget/TextView;

    const-string v8, "#666666"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    iget-object v6, p0, Lorg/pboc/fm1208/MainActivity;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 119
    iget-object v4, p0, Lorg/pboc/fm1208/MainActivity;->tvStatus:Landroid/widget/TextView;

    invoke-direct {p0, v7}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v6

    invoke-direct {p0, v7}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v7

    invoke-virtual {v4, v9, v6, v9, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 120
    iget-object v4, p0, Lorg/pboc/fm1208/MainActivity;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->createCard()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 125
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/pboc/fm1208/MainActivity;->tvCardInfo:Landroid/widget/TextView;

    .line 126
    const-string v6, "\u5361\u7247\u4fe1\u606f: \u672a\u8fde\u63a5"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v4, p0, Lorg/pboc/fm1208/MainActivity;->tvCardInfo:Landroid/widget/TextView;

    const/high16 v6, 0x41500000    # 13.0f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 128
    iget-object v4, p0, Lorg/pboc/fm1208/MainActivity;->tvCardInfo:Landroid/widget/TextView;

    const-string v7, "#333333"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget-object v4, p0, Lorg/pboc/fm1208/MainActivity;->tvCardInfo:Landroid/widget/TextView;

    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v10

    invoke-direct {p0, v8}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v11

    invoke-virtual {v4, v9, v10, v9, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 130
    iget-object v4, p0, Lorg/pboc/fm1208/MainActivity;->tvCardInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/pboc/fm1208/MainActivity;->tvBalance:Landroid/widget/TextView;

    .line 133
    const-string v10, "EP\u4f59\u989d: --  ED\u4f59\u989d: --"

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v4, p0, Lorg/pboc/fm1208/MainActivity;->tvBalance:Landroid/widget/TextView;

    const/high16 v10, 0x41900000    # 18.0f

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 135
    iget-object v4, p0, Lorg/pboc/fm1208/MainActivity;->tvBalance:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 136
    iget-object v4, p0, Lorg/pboc/fm1208/MainActivity;->tvBalance:Landroid/widget/TextView;

    const-string v10, "#1565C0"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    iget-object v4, p0, Lorg/pboc/fm1208/MainActivity;->tvBalance:Landroid/widget/TextView;

    invoke-direct {p0, v8}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v11

    invoke-direct {p0, v8}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v12

    invoke-virtual {v4, v9, v11, v9, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 138
    iget-object v4, p0, Lorg/pboc/fm1208/MainActivity;->tvBalance:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 140
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/pboc/fm1208/MainActivity;->tvPinStatus:Landroid/widget/TextView;

    .line 141
    const-string v11, "PIN\u72b6\u6001: \u672a\u8ba4\u8bc1"

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v4, p0, Lorg/pboc/fm1208/MainActivity;->tvPinStatus:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 143
    iget-object v4, p0, Lorg/pboc/fm1208/MainActivity;->tvPinStatus:Landroid/widget/TextView;

    const-string v6, "#999999"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    iget-object v4, p0, Lorg/pboc/fm1208/MainActivity;->tvPinStatus:Landroid/widget/TextView;

    invoke-direct {p0, v8}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v6

    invoke-direct {p0, v5}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v11

    invoke-virtual {v4, v9, v6, v9, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 145
    iget-object v4, p0, Lorg/pboc/fm1208/MainActivity;->tvPinStatus:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 149
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->createCard()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 150
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/pboc/fm1208/MainActivity;->buttonContainer:Landroid/widget/LinearLayout;

    .line 151
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 153
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 154
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 155
    new-instance v6, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {v6, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda9;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    const-string v11, "PIN\u8ba4\u8bc1"

    invoke-direct {p0, v11, v10, v6}, Lorg/pboc/fm1208/MainActivity;->makeButton(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 156
    new-instance v6, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda12;

    invoke-direct {v6, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda12;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    const-string v10, "\u5237\u65b0\u4f59\u989d"

    const-string v11, "#2E7D32"

    invoke-direct {p0, v10, v11, v6}, Lorg/pboc/fm1208/MainActivity;->makeButton(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    iget-object v6, p0, Lorg/pboc/fm1208/MainActivity;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 160
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 161
    new-instance v6, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda13;

    invoke-direct {v6, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda13;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    const-string v10, "\u5145\u503c(\u5708\u5b58)"

    const-string v11, "#E65100"

    invoke-direct {p0, v10, v11, v6}, Lorg/pboc/fm1208/MainActivity;->makeButton(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    new-instance v6, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda14;

    invoke-direct {v6, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda14;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    const-string v10, "\u6d88\u8d39"

    const-string v11, "#C62828"

    invoke-direct {p0, v10, v11, v6}, Lorg/pboc/fm1208/MainActivity;->makeButton(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    iget-object v6, p0, Lorg/pboc/fm1208/MainActivity;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 166
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 167
    new-instance v6, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda15;

    invoke-direct {v6, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda15;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    const-string v10, "\u4ea4\u6613\u8bb0\u5f55"

    const-string v11, "#6A1B9A"

    invoke-direct {p0, v10, v11, v6}, Lorg/pboc/fm1208/MainActivity;->makeButton(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 168
    new-instance v6, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda16;

    invoke-direct {v6, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda16;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    const-string v10, "\u83b7\u53d6\u968f\u673a\u6570"

    const-string v11, "#00695C"

    invoke-direct {p0, v10, v11, v6}, Lorg/pboc/fm1208/MainActivity;->makeButton(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 169
    iget-object v6, p0, Lorg/pboc/fm1208/MainActivity;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 172
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 173
    new-instance v6, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda17;

    invoke-direct {v6, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda17;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    const-string v10, "\u5361\u7247\u4fe1\u606f"

    const-string v11, "#00838F"

    invoke-direct {p0, v10, v11, v6}, Lorg/pboc/fm1208/MainActivity;->makeButton(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    new-instance v6, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda18;

    invoke-direct {v6, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda18;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    const-string v10, "\u5916\u90e8\u8ba4\u8bc1"

    const-string v11, "#5D4037"

    invoke-direct {p0, v10, v11, v6}, Lorg/pboc/fm1208/MainActivity;->makeButton(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 175
    iget-object v6, p0, Lorg/pboc/fm1208/MainActivity;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 177
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 178
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 179
    new-instance v6, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda20;

    invoke-direct {v6, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda20;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    const-string v10, "\u81ea\u5b9a\u4e49APDU"

    const-string v11, "#BF360C"

    invoke-direct {p0, v10, v11, v6}, Lorg/pboc/fm1208/MainActivity;->makeButton(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    iget-object v6, p0, Lorg/pboc/fm1208/MainActivity;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 183
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 184
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 185
    new-instance v6, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v6, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda10;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    const-string v10, "\u7cfb\u7edf\u914d\u7f6e"

    const-string v11, "#455A64"

    invoke-direct {p0, v10, v11, v6}, Lorg/pboc/fm1208/MainActivity;->makeButton(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    new-instance v6, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {v6, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda11;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    const-string v10, "\u6e05\u9664\u65e5\u5fd7"

    const-string v11, "#78909C"

    invoke-direct {p0, v10, v11, v6}, Lorg/pboc/fm1208/MainActivity;->makeButton(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 187
    iget-object v6, p0, Lorg/pboc/fm1208/MainActivity;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    # ==== gpjpboc-v3: 文件系统/钱包操作/Applet设置 ====
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Lcom/gpjpboc/toolkit/PageLauncher;

    const/4 v4, 0x0

    invoke-direct {v6, p0, v4}, Lcom/gpjpboc/toolkit/PageLauncher;-><init>(Landroid/content/Context;I)V

    const-string v11, "\u6587\u4ef6\u7cfb\u7edf"

    const-string v12, "#1565C0"

    invoke-direct {p0, v11, v12, v6}, Lorg/pboc/fm1208/MainActivity;->makeButton(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Lcom/gpjpboc/toolkit/PageLauncher;

    const/4 v4, 0x1

    invoke-direct {v6, p0, v4}, Lcom/gpjpboc/toolkit/PageLauncher;-><init>(Landroid/content/Context;I)V

    const-string v11, "\u94b1\u5305\u64cd\u4f5c"

    const-string v12, "#1565C0"

    invoke-direct {p0, v11, v12, v6}, Lorg/pboc/fm1208/MainActivity;->makeButton(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Lcom/gpjpboc/toolkit/PageLauncher;

    const/4 v4, 0x2

    invoke-direct {v6, p0, v4}, Lcom/gpjpboc/toolkit/PageLauncher;-><init>(Landroid/content/Context;I)V

    const-string v11, "Applet\u8bbe\u7f6e"

    const-string v12, "#1565C0"

    invoke-direct {p0, v11, v12, v6}, Lorg/pboc/fm1208/MainActivity;->makeButton(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lorg/pboc/fm1208/MainActivity;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 189
    iget-object v4, p0, Lorg/pboc/fm1208/MainActivity;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 190
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 194
    const-string v4, "APDU\u65e5\u5fd7"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 196
    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 197
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    invoke-direct {p0, v5}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v1

    invoke-direct {p0, v8}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {v2, v9, v1, v9, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 199
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->createCard()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 202
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/pboc/fm1208/MainActivity;->scrollView:Landroid/widget/ScrollView;

    .line 203
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/pboc/fm1208/MainActivity;->tvLog:Landroid/widget/TextView;

    .line 204
    const-string v3, "\u7b49\u5f85\u64cd\u4f5c..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v2, p0, Lorg/pboc/fm1208/MainActivity;->tvLog:Landroid/widget/TextView;

    const/high16 v3, 0x41300000    # 11.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 206
    iget-object v2, p0, Lorg/pboc/fm1208/MainActivity;->tvLog:Landroid/widget/TextView;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    iget-object v2, p0, Lorg/pboc/fm1208/MainActivity;->tvLog:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lorg/pboc/fm1208/MainActivity;->tvLog:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 208
    iget-object v2, p0, Lorg/pboc/fm1208/MainActivity;->scrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lorg/pboc/fm1208/MainActivity;->tvLog:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 209
    iget-object v2, p0, Lorg/pboc/fm1208/MainActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 210
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 213
    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    # ==== gpjpboc-v2: 外层布局 + 底部切换栏 ====
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/gpjpboc/toolkit/BottomBar;->build(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lorg/pboc/fm1208/MainActivity;->setContentView(Landroid/view/View;)V

    .line 215
    return-void
.end method

.method private declared-synchronized disconnectCard()V
    .locals 2

    monitor-enter p0

    .line 447
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/pboc/fm1208/MainActivity;->connectionActive:Z

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/pboc/fm1208/MainActivity;->currentUid:[B

    .line 449
    iput-object v0, p0, Lorg/pboc/fm1208/MainActivity;->engine:Lorg/pboc/fm1208/PbocEngine;

    .line 450
    iget-object v1, p0, Lorg/pboc/fm1208/MainActivity;->isoDep:Landroid/nfc/tech/IsoDep;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 451
    :try_start_1
    invoke-virtual {v1}, Landroid/nfc/tech/IsoDep;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 452
    :goto_0
    :try_start_2
    iput-object v0, p0, Lorg/pboc/fm1208/MainActivity;->isoDep:Landroid/nfc/tech/IsoDep;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 454
    :cond_0
    monitor-exit p0

    return-void

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private doCardInfo()V
    .locals 2

    .line 645
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda31;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 669
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 670
    return-void
.end method

.method private doConfig()V
    .locals 14

    .line 902
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 903
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 904
    const/16 v2, 0x14

    invoke-direct {p0, v2}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v3

    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v2}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, v4}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {v0, v3, v5, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 906
    new-instance v8, Landroid/widget/EditText;

    invoke-direct {v8, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 907
    const-string v2, "\u4e3b\u5bc6\u94a5(hex,8B=DES,16B=3DES)"

    invoke-virtual {v8, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 908
    sget-object v2, Lorg/pboc/fm1208/PbocEngine;->MASTER_KEY:[B

    invoke-static {v2}, Lorg/pboc/fm1208/PbocEngine;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 909
    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 910
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 912
    new-instance v9, Landroid/widget/EditText;

    invoke-direct {v9, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 913
    const-string v2, "\u7ec8\u7aef\u53f7(hex,\u5982000000007396)"

    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 914
    sget-object v2, Lorg/pboc/fm1208/PbocEngine;->TERMINAL_ID:[B

    invoke-static {v2}, Lorg/pboc/fm1208/PbocEngine;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 915
    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 916
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 918
    new-instance v10, Landroid/widget/EditText;

    invoke-direct {v10, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 919
    const-string v2, "\u9ed8\u8ba4PIN(\u5982123455)"

    invoke-virtual {v10, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 920
    sget-object v2, Lorg/pboc/fm1208/PbocEngine;->DEFAULT_PIN:Ljava/lang/String;

    invoke-virtual {v10, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 921
    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 922
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 925
    const-string v2, "2-\u5f3a\u5236DES"

    const-string v3, "3-\u5f3a\u52363DES"

    const-string v4, "1-\u81ea\u52a8(\u6309\u7b97\u6cd5\u6807\u8bc6)"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v13

    .line 926
    const/4 v2, 0x3

    const/4 v3, 0x2

    filled-new-array {v1, v3, v2}, [I

    move-result-object v11

    .line 927
    new-instance v12, Landroid/widget/Spinner;

    invoke-direct {v12, p0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 928
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v2, p0, v4, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 930
    const v4, 0x1090009

    invoke-virtual {v2, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 931
    invoke-virtual {v12, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 932
    sget v2, Lorg/pboc/fm1208/PbocEngine;->MAC_ALGO_MODE:I

    sub-int/2addr v2, v1

    invoke-virtual {v12, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 933
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 936
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 937
    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lorg/pboc/fm1208/PbocEngine;->MASTER_KEY:[B

    array-length v4, v4

    .line 938
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget v4, Lorg/pboc/fm1208/PbocEngine;->MAC_ALGO_MODE:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 937
    const-string v1, "\u5f53\u524d: \u5bc6\u94a5%dB | MAC\u6a21\u5f0f=%d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 939
    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 940
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v1

    invoke-virtual {v2, v5, v1, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 941
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 943
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 944
    const-string v2, "\u7cfb\u7edf\u914d\u7f6e"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 945
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda7;

    move-object v6, v1

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda7;-><init>(Lorg/pboc/fm1208/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;[ILandroid/widget/Spinner;[Ljava/lang/String;)V

    .line 946
    const-string v2, "\u4fdd\u5b58"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 961
    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 962
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 963
    return-void
.end method

.method private doCustomApdu()V
    .locals 19

    .line 722
    move-object/from16 v0, p0

    const/16 v1, 0x17

    new-array v2, v1, [[Ljava/lang/String;

    const-string v3, "\u9009\u62e9MF"

    const-string v4, "00"

    const-string v5, "A4"

    const-string v6, "00"

    const-string v7, "00"

    const-string v8, "02"

    const-string v9, "3F00"

    const-string v10, ""

    const-string v11, "\u9009\u62e9\u4e3b\u6587\u4ef6"

    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v5, "\u9009\u62e9PBOC\u5e94\u7528"

    const-string v6, "00"

    const-string v7, "A4"

    const-string v8, "04"

    const-string v9, "00"

    const-string v10, "09"

    const-string v11, "A00000038698070100"

    const-string v12, ""

    const-string v13, "\u9009\u62e9ADF"

    filled-new-array/range {v5 .. v13}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v6, "\u9009\u62e9\u6587\u4ef6(\u81ea\u5b9a\u4e49FID)"

    const-string v7, "00"

    const-string v8, "A4"

    const-string v9, "00"

    const-string v10, "00"

    const-string v11, "02"

    const-string v12, "3F00"

    const-string v13, "00"

    const-string v14, "P1=00\u6309FID\u9009\u62e9"

    filled-new-array/range {v6 .. v14}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v7, "VERIFY PIN"

    const-string v8, "00"

    const-string v9, "20"

    const-string v10, "00"

    const-string v11, "00"

    const-string v12, "03"

    const-string v13, "123455"

    const-string v14, ""

    const-string v15, "\u9a8c\u8bc1\u53e3\u4ee4(123455\u660e\u6587/P2=\u5bc6\u94a5\u6807\u8bc6)"

    filled-new-array/range {v7 .. v15}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    aput-object v3, v2, v6

    const-string v7, "GET CHALLENGE(4B)"

    const-string v8, "00"

    const-string v9, "84"

    const-string v10, "00"

    const-string v11, "00"

    const-string v12, ""

    const-string v13, ""

    const-string v14, "04"

    const-string v15, "\u53d64\u5b57\u8282\u968f\u673a\u6570"

    filled-new-array/range {v7 .. v15}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x4

    aput-object v3, v2, v6

    const-string v7, "GET CHALLENGE(8B)"

    const-string v8, "00"

    const-string v9, "84"

    const-string v10, "00"

    const-string v11, "00"

    const-string v12, ""

    const-string v13, ""

    const-string v14, "08"

    const-string v15, "\u53d68\u5b57\u8282\u968f\u673a\u6570"

    filled-new-array/range {v7 .. v15}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x5

    aput-object v3, v2, v7

    const-string v8, "EXTERNAL AUTH"

    const-string v9, "00"

    const-string v10, "82"

    const-string v11, "00"

    const-string v12, "01"

    const-string v13, "08"

    const-string v14, "0000000000000000"

    const-string v15, ""

    const-string v16, "\u5916\u90e8\u8ba4\u8bc1(P2=\u5bc6\u94a5\u6807\u8bc6)"

    filled-new-array/range {v8 .. v16}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x6

    aput-object v3, v2, v7

    const-string v8, "INTERNAL AUTH-\u52a0\u5bc6"

    const-string v9, "00"

    const-string v10, "88"

    const-string v11, "00"

    const-string v12, "01"

    const-string v13, "08"

    const-string v14, "0102030405060708"

    const-string v15, ""

    const-string v16, "P1=00\u52a0\u5bc6"

    filled-new-array/range {v8 .. v16}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x7

    aput-object v3, v2, v7

    const-string v8, "INTERNAL AUTH-\u89e3\u5bc6"

    const-string v9, "00"

    const-string v10, "88"

    const-string v11, "01"

    const-string v12, "01"

    const-string v13, "08"

    const-string v14, "0102030405060708"

    const-string v15, ""

    const-string v16, "P1=01\u89e3\u5bc6"

    filled-new-array/range {v8 .. v16}, [Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x8

    aput-object v3, v2, v7

    const-string v8, "INTERNAL AUTH-MAC"

    const-string v9, "00"

    const-string v10, "88"

    const-string v11, "02"

    const-string v12, "01"

    const-string v13, "08"

    const-string v14, "0102030405060708"

    const-string v15, ""

    const-string v16, "P1=02 MAC\u8ba1\u7b97"

    filled-new-array/range {v8 .. v16}, [Ljava/lang/String;

    move-result-object v3

    const/16 v8, 0x9

    aput-object v3, v2, v8

    const-string v9, "READ BINARY"

    const-string v10, "00"

    const-string v11, "B0"

    const-string v12, "00"

    const-string v13, "00"

    const-string v14, ""

    const-string v15, ""

    const-string v16, "00"

    const-string v17, "\u8bfb\u4e8c\u8fdb\u5236(\u5168\u8bfb)"

    filled-new-array/range {v9 .. v17}, [Ljava/lang/String;

    move-result-object v3

    const/16 v8, 0xa

    aput-object v3, v2, v8

    const-string v9, "READ BINARY(SFI)"

    const-string v10, "00"

    const-string v11, "B0"

    const-string v12, "85"

    const-string v13, "00"

    const-string v14, ""

    const-string v15, ""

    const-string v16, "00"

    const-string v17, "P1\u9ad83\u4f4d=100+SFI"

    filled-new-array/range {v9 .. v17}, [Ljava/lang/String;

    move-result-object v3

    const/16 v8, 0xb

    aput-object v3, v2, v8

    const-string v9, "READ RECORD"

    const-string v10, "00"

    const-string v11, "B2"

    const-string v12, "01"

    const-string v13, "04"

    const-string v14, ""

    const-string v15, ""

    const-string v16, "00"

    const-string v17, "\u8bfb\u8bb0\u5f55(P1=\u8bb0\u5f55\u53f7)"

    filled-new-array/range {v9 .. v17}, [Ljava/lang/String;

    move-result-object v3

    const/16 v8, 0xc

    aput-object v3, v2, v8

    const-string v9, "READ RECORD(SFI)"

    const-string v10, "00"

    const-string v11, "B2"

    const-string v12, "01"

    const-string v13, "C4"

    const-string v14, ""

    const-string v15, ""

    const-string v16, "00"

    const-string v17, "P2=(SFI<<3)|4"

    filled-new-array/range {v9 .. v17}, [Ljava/lang/String;

    move-result-object v3

    const/16 v8, 0xd

    aput-object v3, v2, v8

    const-string v9, "GET BALANCE(EP)"

    const-string v10, "80"

    const-string v11, "5C"

    const-string v12, "00"

    const-string v13, "02"

    const-string v14, ""

    const-string v15, ""

    const-string v16, "04"

    const-string v17, "\u8bfb\u7535\u5b50\u94b1\u5305\u4f59\u989d"

    filled-new-array/range {v9 .. v17}, [Ljava/lang/String;

    move-result-object v3

    const/16 v8, 0xe

    aput-object v3, v2, v8

    const-string v9, "GET BALANCE(ED)"

    const-string v10, "80"

    const-string v11, "5C"

    const-string v12, "00"

    const-string v13, "01"

    const-string v14, ""

    const-string v15, ""

    const-string v16, "04"

    const-string v17, "\u8bfb\u7535\u5b50\u5b58\u6298\u4f59\u989d"

    filled-new-array/range {v9 .. v17}, [Ljava/lang/String;

    move-result-object v3

    const/16 v8, 0xf

    aput-object v3, v2, v8

    const-string v9, "GET RESPONSE"

    const-string v10, "00"

    const-string v11, "C0"

    const-string v12, "00"

    const-string v13, "00"

    const-string v14, ""

    const-string v15, ""

    const-string v16, "00"

    const-string v17, "\u53d6\u54cd\u5e94\u6570\u636e"

    filled-new-array/range {v9 .. v17}, [Ljava/lang/String;

    move-result-object v3

    const/16 v8, 0x10

    aput-object v3, v2, v8

    const-string v9, "INIT FOR LOAD"

    const-string v10, "80"

    const-string v11, "50"

    const-string v12, "00"

    const-string v13, "02"

    const-string v14, "0B"

    const-string v15, "0100000064000000007396"

    const-string v16, "10"

    const-string v17, "\u5708\u5b58\u521d\u59cb\u5316"

    filled-new-array/range {v9 .. v17}, [Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0x11

    aput-object v3, v2, v9

    const-string v10, "INIT FOR PURCHASE"

    const-string v11, "80"

    const-string v12, "50"

    const-string v13, "01"

    const-string v14, "02"

    const-string v15, "0B"

    const-string v16, "0100000064000000007396"

    const-string v17, "0F"

    const-string v18, "\u6d88\u8d39\u521d\u59cb\u5316"

    filled-new-array/range {v10 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0x12

    aput-object v3, v2, v9

    const-string v10, "CREDIT FOR LOAD"

    const-string v11, "80"

    const-string v12, "52"

    const-string v13, "00"

    const-string v14, "00"

    const-string v15, "0B"

    const-string v16, "000000000000000000000000"

    const-string v17, "04"

    const-string v18, "\u5708\u5b58(\u9700MAC2)"

    filled-new-array/range {v10 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0x13

    aput-object v3, v2, v9

    const-string v10, "DEBIT FOR PURCHASE"

    const-string v11, "80"

    const-string v12, "54"

    const-string v13, "01"

    const-string v14, "00"

    const-string v15, "0F"

    const-string v16, "0000000100000000000000000000000000"

    const-string v17, "08"

    const-string v18, "\u6d88\u8d39(\u9700MAC1)"

    filled-new-array/range {v10 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0x14

    aput-object v3, v2, v9

    const-string v10, "GET TRANS PROVE"

    const-string v11, "80"

    const-string v12, "5A"

    const-string v13, "00"

    const-string v14, "00"

    const-string v15, "02"

    const-string v16, "0000"

    const-string v17, "08"

    const-string v18, "\u53d6\u4ea4\u6613\u8ba4\u8bc1(TAC)"

    filled-new-array/range {v10 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0x15

    aput-object v3, v2, v9

    const-string v10, "UPDATE OVERDRAW"

    const-string v11, "80"

    const-string v12, "58"

    const-string v13, "00"

    const-string v14, "00"

    const-string v15, "0B"

    const-string v16, "000000000000000000000000"

    const-string v17, "0A"

    const-string v18, "\u4fee\u6539\u900f\u652f\u9650\u989d"

    filled-new-array/range {v10 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0x16

    aput-object v3, v2, v9

    .line 749
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 750
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 751
    invoke-direct {v0, v8}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v9

    invoke-direct {v0, v7}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v10

    invoke-direct {v0, v8}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v8

    invoke-direct {v0, v7}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v11

    invoke-virtual {v3, v9, v10, v8, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 754
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 755
    const-string v9, "\u9009\u62e9\u9884\u8bbe\u547d\u4ee4:"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 757
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 759
    new-instance v8, Landroid/widget/Spinner;

    invoke-direct {v8, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 760
    new-array v10, v1, [Ljava/lang/String;

    .line 761
    const/4 v11, 0x0

    :goto_0
    if-ge v11, v1, :cond_0

    aget-object v12, v2, v11

    aget-object v12, v12, v4

    aput-object v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 762
    :cond_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v11, 0x1090008

    invoke-direct {v1, v0, v11, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 764
    const v10, 0x1090009

    invoke-virtual {v1, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 765
    invoke-virtual {v8, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 766
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 769
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 770
    const/high16 v10, 0x41400000    # 12.0f

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 771
    const-string v10, "#666666"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 772
    invoke-direct {v0, v6}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v6

    invoke-direct {v0, v7}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v7

    invoke-virtual {v1, v4, v6, v4, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 773
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 776
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 777
    const-string v6, "APDU(hex, \u7a7a\u683c\u5206\u9694):"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 779
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 781
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 782
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 783
    sget-object v5, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 784
    const/high16 v5, 0x41500000    # 13.0f

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTextSize(F)V

    .line 785
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 788
    new-instance v5, Lorg/pboc/fm1208/MainActivity$1;

    invoke-direct {v5, v0, v2, v1, v4}, Lorg/pboc/fm1208/MainActivity$1;-><init>(Lorg/pboc/fm1208/MainActivity;[[Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/EditText;)V

    invoke-virtual {v8, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 805
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 806
    const-string v2, "\u81ea\u5b9a\u4e49APDU\u547d\u4ee4"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 807
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda51;

    invoke-direct {v2, v0, v4}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda51;-><init>(Lorg/pboc/fm1208/MainActivity;Landroid/widget/EditText;)V

    .line 808
    const-string v3, "\u53d1\u9001"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 826
    const-string v2, "\u53d6\u6d88"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 827
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 828
    return-void
.end method

.method private doExternalAuth()V
    .locals 6

    .line 673
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 674
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 675
    const/16 v2, 0x14

    invoke-direct {p0, v2}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v3

    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v2}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, v4}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {v0, v3, v5, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 677
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 678
    const-string v3, "\u5916\u90e8\u8ba4\u8bc1\u5bc6\u94a5(hex, 8B\u621616B)"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 679
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 680
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 682
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 683
    const-string v3, "\u5bc6\u94a5\u6807\u8bc6(\u598201)"

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 684
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 685
    const-string v3, "01"

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 686
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 688
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 689
    const-string v4, "\u5916\u90e8\u8ba4\u8bc1 (EXTERNAL AUTHENTICATE)"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 690
    const-string v4, "FMCOS2.0 7.1\u8282\n\u6d41\u7a0b: GET CHALLENGE \u2192 \u52a0\u5bc6\u968f\u673a\u6570 \u2192 00 82 00 [kid] 08 [\u6570\u636e]"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 691
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda34;

    invoke-direct {v3, p0, v2, v1}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda34;-><init>(Lorg/pboc/fm1208/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    .line 692
    const-string v1, "\u8ba4\u8bc1"

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 716
    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 717
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 718
    return-void
.end method

.method private doFileSystem()V
    .locals 2

    .line 874
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda6;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 898
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 899
    return-void
.end method

.method private doFileSystemMenu()V
    .locals 3

    .line 831
    const-string v0, "\u626b\u63cf\u6587\u4ef6\u7cfb\u7edf(0000-FFFF)"

    const-string v1, "\u5feb\u901f\u626b\u63cf(0000-00FF)"

    const-string v2, "\u6587\u4ef6\u7cfb\u7edf\u6d4f\u89c8\u5668(\u9884\u8bbe)"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 832
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 833
    const-string v2, "\u6587\u4ef6\u7cfb\u7edf"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda49;

    invoke-direct {v2, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda49;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    .line 834
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 839
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 840
    return-void
.end method

.method private doGetRandom()V
    .locals 2

    .line 630
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda38;

    invoke-direct {v1, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda38;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 641
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 642
    return-void
.end method

.method private doLoad()V
    .locals 2

    .line 549
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda2;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 575
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 576
    return-void
.end method

.method private doPurchase()V
    .locals 2

    .line 579
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda70;

    invoke-direct {v1, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda70;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 605
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 606
    return-void
.end method

.method private doReadRecords()V
    .locals 2

    .line 609
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda62;

    invoke-direct {v1, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda62;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 626
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 627
    return-void
.end method

.method private doRefreshBalance()V
    .locals 2

    .line 529
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda8;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 545
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 546
    return-void
.end method

.method private doScanFileSystem(Z)V
    .locals 2

    .line 843
    if-eqz p1, :cond_0

    const-string v0, "\u5f00\u59cb\u5168\u8303\u56f4\u626b\u63cf(0000-FFFF)..."

    goto :goto_0

    :cond_0
    const-string v0, "\u5f00\u59cb\u5feb\u901f\u626b\u63cf(0000-00FF)..."

    :goto_0
    invoke-direct {p0, v0}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    .line 844
    if-eqz p1, :cond_1

    const-string v0, "\u5168\u8303\u56f4\u626b\u63cf\u4e2d, \u8bf7\u4fdd\u6301\u5361\u7247\u8d34\u8fd1"

    goto :goto_1

    :cond_1
    const-string v0, "\u5feb\u901f\u626b\u63cf\u4e2d..."

    :goto_1
    invoke-direct {p0, v0}, Lorg/pboc/fm1208/MainActivity;->toast(Ljava/lang/String;)V

    .line 845
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda3;-><init>(Lorg/pboc/fm1208/MainActivity;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 870
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 871
    return-void
.end method

.method private doVerifyPin()V
    .locals 2

    .line 471
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda37;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 481
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 482
    return-void
.end method

.method private dp(I)I
    .locals 2

    .line 245
    int-to-float p1, p1

    .line 246
    invoke-virtual {p0}, Lorg/pboc/fm1208/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 245
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private ensureConnected()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 459
    iget-boolean v0, p0, Lorg/pboc/fm1208/MainActivity;->connectionActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->engine:Lorg/pboc/fm1208/PbocEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->isoDep:Landroid/nfc/tech/IsoDep;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    return-void

    .line 461
    :cond_0
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->disconnectCard()V

    .line 462
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda39;

    invoke-direct {v1, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda39;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 466
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u5361\u7247\u5df2\u65ad\u5f00, \u8bf7\u91cd\u65b0\u8d34\u8fd1\u624b\u673aNFC\u533a\u57df"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 7

    .line 297
    if-nez p1, :cond_0

    return-void

    .line 299
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 300
    if-nez v0, :cond_1

    return-void

    .line 303
    :cond_1
    const-string v1, "android.nfc.action.TECH_DISCOVERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 304
    const-string v1, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 305
    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 306
    return-void

    .line 309
    :cond_2
    const-string v0, "android.nfc.extra.TAG"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/nfc/Tag;

    .line 310
    if-nez v3, :cond_3

    .line 311
    const-string p1, "\u672a\u68c0\u6d4b\u5230NFC\u6807\u7b7e"

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    .line 312
    return-void

    .line 315
    :cond_3
    invoke-virtual {v3}, Landroid/nfc/Tag;->getId()[B

    move-result-object v4

    .line 316
    invoke-static {v4}, Lorg/pboc/fm1208/PbocEngine;->bytesToHexSpaced([B)Ljava/lang/String;

    move-result-object v5

    .line 320
    iget-boolean p1, p0, Lorg/pboc/fm1208/MainActivity;->connecting:Z

    if-eqz p1, :cond_4

    .line 321
    return-void

    .line 324
    :cond_4
    iget-boolean p1, p0, Lorg/pboc/fm1208/MainActivity;->connectionActive:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/pboc/fm1208/MainActivity;->currentUid:[B

    if-eqz p1, :cond_5

    .line 325
    invoke-static {v4, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 326
    return-void

    .line 329
    :cond_5
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->disconnectCard()V

    .line 331
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/pboc/fm1208/MainActivity;->connecting:Z

    .line 332
    iput-object v4, p0, Lorg/pboc/fm1208/MainActivity;->currentUid:[B

    .line 333
    const-string p1, "\u68c0\u6d4b\u5230NFC\u6807\u7b7e"

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    .line 334
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UID: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    .line 337
    invoke-static {v3}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    move-result-object v2

    .line 338
    if-nez v2, :cond_6

    .line 339
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6b64\u5361\u7247\u4e0d\u652f\u6301IsoDep: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    .line 340
    iget-object p1, p0, Lorg/pboc/fm1208/MainActivity;->tvStatus:Landroid/widget/TextView;

    const-string v0, "\u4e0d\u652f\u6301\u7684\u5361\u7247\u7c7b\u578b"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object p1, p0, Lorg/pboc/fm1208/MainActivity;->tvStatus:Landroid/widget/TextView;

    const-string v0, "#C62828"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 342
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/pboc/fm1208/MainActivity;->connecting:Z

    .line 343
    return-void

    .line 346
    :cond_6
    nop

    .line 347
    new-instance p1, Ljava/lang/Thread;

    new-instance v6, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda66;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda66;-><init>(Lorg/pboc/fm1208/MainActivity;Landroid/nfc/tech/IsoDep;Landroid/nfc/Tag;[BLjava/lang/String;)V

    invoke-direct {p1, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 442
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 443
    return-void
.end method

.method private makeButton(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;
    .locals 5

    .line 230
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 231
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 232
    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 233
    const/high16 p1, 0x41700000    # 15.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 234
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 235
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v1}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v1

    invoke-direct {p0, v3}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 236
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    # ==== gpjpboc-v2: 统一圆角蓝色按钮 ====
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v2, -0xea9a40

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v4, -0xf2b85f

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance p2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 p3, 0x1

    new-array p3, p3, [I

    const v2, 0x10100a7

    const/4 v4, 0x0

    aput v2, p3, v4

    invoke-virtual {p2, p3, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 p3, 0x0

    new-array p3, p3, [I

    invoke-virtual {p2, p3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 238
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 p3, 0x2c

    invoke-direct {p0, p3}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result p3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p2, p1, p3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 239
    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result p3

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result p1

    invoke-virtual {p2, p3, v1, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 240
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    return-object v0
.end method

.method private showAmountDialog(Ljava/lang/String;Lorg/pboc/fm1208/MainActivity$AmountCallback;)V
    .locals 6

    .line 972
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 973
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 974
    const-string v1, "\u8f93\u5165\u91d1\u989d(\u5355\u4f4d:\u5206, \u5982100=1.00\u5143)"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 976
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 977
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 978
    const/16 v2, 0x14

    invoke-direct {p0, v2}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v3

    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v2}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, v4}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 979
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 981
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 982
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 983
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda69;

    invoke-direct {v1, p0, v0, p2}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda69;-><init>(Lorg/pboc/fm1208/MainActivity;Landroid/widget/EditText;Lorg/pboc/fm1208/MainActivity$AmountCallback;)V

    .line 984
    const-string p2, "\u786e\u8ba4"

    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1001
    const-string p2, "\u53d6\u6d88"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1002
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1003
    return-void
.end method

.method private showErrorAndFinish(Ljava/lang/String;)V
    .locals 2

    .line 1065
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1066
    const-string v1, "\u9519\u8bef"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1067
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda67;

    invoke-direct {v0, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda67;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    .line 1068
    const-string v1, "\u9000\u51fa"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1069
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1070
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1071
    return-void
.end method

.method private showPinDialog()V
    .locals 6

    .line 485
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 486
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 487
    const-string v2, "PIN\u7801(hex,\u5982123455)"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 488
    sget-object v2, Lorg/pboc/fm1208/PbocEngine;->DEFAULT_PIN:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 490
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 491
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 492
    const/16 v1, 0x14

    invoke-direct {p0, v1}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v3

    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v1}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v1

    invoke-direct {p0, v4}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {v2, v3, v5, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 493
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 495
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 496
    const-string v3, "PIN\u8ba4\u8bc1"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 497
    const-string v3, "PIN\u7801\u4e3ahex\u7f16\u7801\n\u5982123455=0x12 0x34 0x55"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 498
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda65;

    invoke-direct {v2, p0, v0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda65;-><init>(Lorg/pboc/fm1208/MainActivity;Landroid/widget/EditText;)V

    .line 499
    const-string v0, "\u786e\u8ba4"

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 524
    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 525
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 526
    return-void
.end method

.method private showRecordsDialog([Ljava/lang/String;)V
    .locals 7

    .line 1006
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1007
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1008
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v2

    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v1}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v1

    invoke-direct {p0, v3}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1010
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 1011
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1012
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1014
    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1015
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v6

    invoke-direct {p0, v4}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {v5, v2, v6, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1016
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1010
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1019
    :cond_0
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1020
    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1022
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    array-length p1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4ea4\u6613\u8bb0\u5f55 ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\u6761)"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1023
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1024
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1025
    const-string v0, "\u5173\u95ed"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1026
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1027
    return-void
.end method

.method private toast(Ljava/lang/String;)V
    .locals 1

    .line 1061
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1062
    return-void
.end method

.method private updateBalanceDisplay()V
    .locals 5

    .line 1032
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->engine:Lorg/pboc/fm1208/PbocEngine;

    if-eqz v0, :cond_0

    .line 1033
    iget-object v1, p0, Lorg/pboc/fm1208/MainActivity;->tvBalance:Landroid/widget/TextView;

    iget v0, v0, Lorg/pboc/fm1208/PbocEngine;->balanceEP:I

    invoke-static {v0}, Lorg/pboc/fm1208/PbocEngine;->formatBalance(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/pboc/fm1208/MainActivity;->engine:Lorg/pboc/fm1208/PbocEngine;

    iget v2, v2, Lorg/pboc/fm1208/PbocEngine;->balanceED:I

    .line 1034
    invoke-static {v2}, Lorg/pboc/fm1208/PbocEngine;->formatBalance(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EP\u4f59\u989d: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  ED\u4f59\u989d: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1033
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1036
    :cond_0
    return-void
.end method


# virtual methods
.method synthetic lambda$createUI$0$org-pboc-fm1208-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->doVerifyPin()V

    return-void
.end method

.method synthetic lambda$createUI$1$org-pboc-fm1208-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->doRefreshBalance()V

    return-void
.end method

.method synthetic lambda$createUI$10$org-pboc-fm1208-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 185
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->doConfig()V

    return-void
.end method

.method synthetic lambda$createUI$11$org-pboc-fm1208-MainActivity(Landroid/view/View;)V
    .locals 1

    .line 186
    iget-object p1, p0, Lorg/pboc/fm1208/MainActivity;->logBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object p1, p0, Lorg/pboc/fm1208/MainActivity;->tvLog:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$createUI$2$org-pboc-fm1208-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->doLoad()V

    return-void
.end method

.method synthetic lambda$createUI$3$org-pboc-fm1208-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->doPurchase()V

    return-void
.end method

.method synthetic lambda$createUI$4$org-pboc-fm1208-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 167
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->doReadRecords()V

    return-void
.end method

.method synthetic lambda$createUI$5$org-pboc-fm1208-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 168
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->doGetRandom()V

    return-void
.end method

.method synthetic lambda$createUI$6$org-pboc-fm1208-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->doCardInfo()V

    return-void
.end method

.method synthetic lambda$createUI$7$org-pboc-fm1208-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->doExternalAuth()V

    return-void
.end method

.method synthetic lambda$createUI$8$org-pboc-fm1208-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->doFileSystemMenu()V

    return-void
.end method

.method synthetic lambda$createUI$9$org-pboc-fm1208-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 180
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->doCustomApdu()V

    return-void
.end method

.method synthetic lambda$doCardInfo$53$org-pboc-fm1208-MainActivity(Ljava/lang/String;)V
    .locals 5

    .line 650
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 651
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 652
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    const/high16 p1, 0x41500000    # 13.0f

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 654
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 655
    const/16 p1, 0x10

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v2

    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result p1

    invoke-direct {p0, v3}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {v1, v2, v4, p1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 656
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 657
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 658
    const-string v1, "\u5361\u7247\u4fe1\u606f"

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 659
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 660
    const-string v0, "\u5173\u95ed"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 661
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 662
    return-void
.end method

.method synthetic lambda$doCardInfo$54$org-pboc-fm1208-MainActivity(Ljava/lang/Exception;)V
    .locals 3

    .line 665
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bfb\u53d6\u5361\u7247\u4fe1\u606f\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bfb\u53d6\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->toast(Ljava/lang/String;)V

    .line 667
    return-void
.end method

.method synthetic lambda$doCardInfo$55$org-pboc-fm1208-MainActivity()V
    .locals 3

    .line 647
    :try_start_0
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->ensureConnected()V

    .line 648
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->engine:Lorg/pboc/fm1208/PbocEngine;

    invoke-virtual {v0}, Lorg/pboc/fm1208/PbocEngine;->getCardInfo()Ljava/lang/String;

    move-result-object v0

    .line 649
    iget-object v1, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0, v0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda21;-><init>(Lorg/pboc/fm1208/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    goto :goto_0

    .line 663
    :catch_0
    move-exception v0

    .line 664
    iget-object v1, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0, v0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda22;-><init>(Lorg/pboc/fm1208/MainActivity;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 669
    :goto_0
    return-void
.end method

.method synthetic lambda$doConfig$69$org-pboc-fm1208-MainActivity(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;[ILandroid/widget/Spinner;[Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 948
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 949
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 950
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 951
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p7

    if-nez p7, :cond_0

    invoke-static {p1}, Lorg/pboc/fm1208/PbocEngine;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    sput-object p1, Lorg/pboc/fm1208/PbocEngine;->MASTER_KEY:[B

    .line 952
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p2}, Lorg/pboc/fm1208/PbocEngine;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    sput-object p1, Lorg/pboc/fm1208/PbocEngine;->TERMINAL_ID:[B

    .line 953
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    sput-object p3, Lorg/pboc/fm1208/PbocEngine;->DEFAULT_PIN:Ljava/lang/String;

    .line 954
    :cond_2
    invoke-virtual {p5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    aget p1, p4, p1

    sput p1, Lorg/pboc/fm1208/PbocEngine;->MAC_ALGO_MODE:I

    # ==== gpjpboc-v1.3.4: 交易参数持久化到本地 ====
    invoke-static {p0}, Lcom/gpjpboc/toolkit/Config;->persistEngine(Landroid/content/Context;)V

    .line 955
    sget-object p1, Lorg/pboc/fm1208/PbocEngine;->MASTER_KEY:[B

    array-length p1, p1

    invoke-virtual {p5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    aget-object p2, p6, p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u914d\u7f6e\u5df2\u4fdd\u5b58: \u5bc6\u94a5"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "B, MAC="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    .line 956
    const-string p1, "\u914d\u7f6e\u5df2\u4fdd\u5b58"

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->toast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 959
    goto :goto_0

    .line 957
    :catch_0
    move-exception p1

    .line 958
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u914d\u7f6e\u4fdd\u5b58\u5931\u8d25: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->toast(Ljava/lang/String;)V

    .line 960
    :goto_0
    return-void
.end method

.method synthetic lambda$doCustomApdu$60$org-pboc-fm1208-MainActivity(Ljava/lang/String;)V
    .locals 5

    .line 813
    :try_start_0
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->ensureConnected()V

    .line 814
    invoke-static {p1}, Lorg/pboc/fm1208/PbocEngine;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 815
    invoke-static {p1}, Lorg/pboc/fm1208/PbocEngine;->bytesToHexSpaced([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->engine:Lorg/pboc/fm1208/PbocEngine;

    invoke-virtual {v0, p1}, Lorg/pboc/fm1208/PbocEngine;->sendRaw([B)[B

    move-result-object p1

    .line 817
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->engine:Lorg/pboc/fm1208/PbocEngine;

    iget v0, v0, Lorg/pboc/fm1208/PbocEngine;->lastSW:I

    .line 818
    invoke-static {p1}, Lorg/pboc/fm1208/PbocEngine;->bytesToHexSpaced([B)Ljava/lang/String;

    move-result-object p1

    .line 819
    const-string v1, "%04X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<< "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " SW="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    .line 820
    invoke-static {v0}, Lorg/pboc/fm1208/PbocEngine;->swHint(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    goto :goto_0

    .line 821
    :catch_0
    move-exception p1

    .line 822
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APDU\u53d1\u9001\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    .line 824
    :goto_0
    return-void
.end method

.method synthetic lambda$doCustomApdu$61$org-pboc-fm1208-MainActivity(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 809
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 810
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "\u8bf7\u8f93\u5165APDU"

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 811
    :cond_0
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda68;

    invoke-direct {p3, p0, p1}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda68;-><init>(Lorg/pboc/fm1208/MainActivity;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 824
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 825
    return-void
.end method

.method synthetic lambda$doExternalAuth$56$org-pboc-fm1208-MainActivity(Z)V
    .locals 0

    .line 703
    if-eqz p1, :cond_0

    .line 704
    const-string p1, "\u5916\u90e8\u8ba4\u8bc1\u6210\u529f"

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->toast(Ljava/lang/String;)V

    .line 705
    const-string p1, "\u5916\u90e8\u8ba4\u8bc1\u6210\u529f, \u5b89\u5168\u72b6\u6001\u5df2\u66f4\u65b0"

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    .line 707
    :cond_0
    return-void
.end method

.method synthetic lambda$doExternalAuth$57$org-pboc-fm1208-MainActivity(Ljava/lang/Exception;)V
    .locals 3

    .line 710
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5916\u90e8\u8ba4\u8bc1\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8ba4\u8bc1\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->toast(Ljava/lang/String;)V

    .line 712
    return-void
.end method

.method synthetic lambda$doExternalAuth$58$org-pboc-fm1208-MainActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 698
    :try_start_0
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->ensureConnected()V

    .line 699
    invoke-static {p1}, Lorg/pboc/fm1208/PbocEngine;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 700
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 701
    :goto_0
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->engine:Lorg/pboc/fm1208/PbocEngine;

    invoke-virtual {v0, p1, p2}, Lorg/pboc/fm1208/PbocEngine;->externalAuthenticate([BI)Z

    move-result p1

    .line 702
    iget-object p2, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda43;

    invoke-direct {v0, p0, p1}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda43;-><init>(Lorg/pboc/fm1208/MainActivity;Z)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    goto :goto_1

    .line 708
    :catch_0
    move-exception p1

    .line 709
    iget-object p2, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda44;

    invoke-direct {v0, p0, p1}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda44;-><init>(Lorg/pboc/fm1208/MainActivity;Ljava/lang/Exception;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 714
    :goto_1
    return-void
.end method

.method synthetic lambda$doExternalAuth$59$org-pboc-fm1208-MainActivity(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 693
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 694
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 695
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p1, "\u8bf7\u8f93\u5165\u5bc6\u94a5"

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 696
    :cond_0
    new-instance p3, Ljava/lang/Thread;

    new-instance p4, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p1, p2}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda0;-><init>(Lorg/pboc/fm1208/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p3, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 714
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 715
    return-void
.end method

.method synthetic lambda$doFileSystem$66$org-pboc-fm1208-MainActivity(Ljava/lang/String;)V
    .locals 5

    .line 879
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 880
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 881
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 882
    const/high16 p1, 0x41400000    # 12.0f

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 883
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 884
    const/16 p1, 0x10

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v2

    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result p1

    invoke-direct {p0, v3}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {v1, v2, v4, p1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 885
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 886
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 887
    const-string v1, "\u6587\u4ef6\u7cfb\u7edf\u6d4f\u89c8\u5668"

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 888
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 889
    const-string v0, "\u5173\u95ed"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 890
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 891
    return-void
.end method

.method synthetic lambda$doFileSystem$67$org-pboc-fm1208-MainActivity(Ljava/lang/Exception;)V
    .locals 3

    .line 894
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6587\u4ef6\u7cfb\u7edf\u6d4f\u89c8\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    .line 895
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6d4f\u89c8\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->toast(Ljava/lang/String;)V

    .line 896
    return-void
.end method

.method synthetic lambda$doFileSystem$68$org-pboc-fm1208-MainActivity()V
    .locals 3

    .line 876
    :try_start_0
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->ensureConnected()V

    .line 877
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->engine:Lorg/pboc/fm1208/PbocEngine;

    invoke-virtual {v0}, Lorg/pboc/fm1208/PbocEngine;->browseFileSystem()Ljava/lang/String;

    move-result-object v0

    .line 878
    iget-object v1, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda56;

    invoke-direct {v2, p0, v0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda56;-><init>(Lorg/pboc/fm1208/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    goto :goto_0

    .line 892
    :catch_0
    move-exception v0

    .line 893
    iget-object v1, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda57;

    invoke-direct {v2, p0, v0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda57;-><init>(Lorg/pboc/fm1208/MainActivity;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 898
    :goto_0
    return-void
.end method

.method synthetic lambda$doFileSystemMenu$62$org-pboc-fm1208-MainActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 835
    if-nez p2, :cond_0

    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->doFileSystem()V

    goto :goto_0

    .line 836
    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->doScanFileSystem(Z)V

    goto :goto_0

    .line 837
    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->doScanFileSystem(Z)V

    .line 838
    :goto_0
    return-void
.end method

.method synthetic lambda$doGetRandom$50$org-pboc-fm1208-MainActivity()V
    .locals 1

    .line 634
    const-string v0, "\u968f\u673a\u6570\u5df2\u83b7\u53d6\uff0c\u89c1\u65e5\u5fd7"

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/MainActivity;->toast(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$doGetRandom$51$org-pboc-fm1208-MainActivity(Ljava/lang/Exception;)V
    .locals 3

    .line 637
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u968f\u673a\u6570\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u53d6\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->toast(Ljava/lang/String;)V

    .line 639
    return-void
.end method

.method synthetic lambda$doGetRandom$52$org-pboc-fm1208-MainActivity()V
    .locals 3

    .line 632
    :try_start_0
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->ensureConnected()V

    .line 633
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->engine:Lorg/pboc/fm1208/PbocEngine;

    invoke-virtual {v0}, Lorg/pboc/fm1208/PbocEngine;->getRandom()[B

    .line 634
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda35;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    goto :goto_0

    .line 635
    :catch_0
    move-exception v0

    .line 636
    iget-object v1, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda36;

    invoke-direct {v2, p0, v0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda36;-><init>(Lorg/pboc/fm1208/MainActivity;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 641
    :goto_0
    return-void
.end method

.method synthetic lambda$doLoad$33$org-pboc-fm1208-MainActivity()V
    .locals 1

    .line 558
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->updateBalanceDisplay()V

    .line 559
    const-string v0, "\u5708\u5b58\u6210\u529f"

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/MainActivity;->toast(Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method synthetic lambda$doLoad$34$org-pboc-fm1208-MainActivity(Ljava/lang/Exception;)V
    .locals 3

    .line 563
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5708\u5b58\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->toast(Ljava/lang/String;)V

    .line 565
    return-void
.end method

.method synthetic lambda$doLoad$35$org-pboc-fm1208-MainActivity(I)V
    .locals 2

    .line 555
    :try_start_0
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->ensureConnected()V

    .line 556
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->engine:Lorg/pboc/fm1208/PbocEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/pboc/fm1208/PbocEngine;->loadEP(II)Z

    .line 557
    iget-object p1, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda52;

    invoke-direct {v0, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda52;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    goto :goto_0

    .line 561
    :catch_0
    move-exception p1

    .line 562
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda53;

    invoke-direct {v1, p0, p1}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda53;-><init>(Lorg/pboc/fm1208/MainActivity;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 567
    :goto_0
    return-void
.end method

.method synthetic lambda$doLoad$36$org-pboc-fm1208-MainActivity(I)V
    .locals 2

    .line 553
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda71;

    invoke-direct {v1, p0, p1}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda71;-><init>(Lorg/pboc/fm1208/MainActivity;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 567
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 568
    return-void
.end method

.method synthetic lambda$doLoad$37$org-pboc-fm1208-MainActivity()V
    .locals 2

    .line 552
    new-instance v0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda32;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    const-string v1, "\u5145\u503c(\u5708\u5b58)"

    invoke-direct {p0, v1, v0}, Lorg/pboc/fm1208/MainActivity;->showAmountDialog(Ljava/lang/String;Lorg/pboc/fm1208/MainActivity$AmountCallback;)V

    return-void
.end method

.method synthetic lambda$doLoad$38$org-pboc-fm1208-MainActivity(Ljava/lang/Exception;)V
    .locals 1

    .line 571
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->toast(Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method synthetic lambda$doLoad$39$org-pboc-fm1208-MainActivity()V
    .locals 3

    .line 551
    :try_start_0
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->ensureConnected()V

    .line 552
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda58;

    invoke-direct {v1, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda58;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    goto :goto_0

    .line 569
    :catch_0
    move-exception v0

    .line 570
    iget-object v1, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda59;

    invoke-direct {v2, p0, v0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda59;-><init>(Lorg/pboc/fm1208/MainActivity;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 575
    :goto_0
    return-void
.end method

.method synthetic lambda$doPurchase$40$org-pboc-fm1208-MainActivity()V
    .locals 1

    .line 588
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->updateBalanceDisplay()V

    .line 589
    const-string v0, "\u6d88\u8d39\u6210\u529f"

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/MainActivity;->toast(Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method synthetic lambda$doPurchase$41$org-pboc-fm1208-MainActivity(Ljava/lang/Exception;)V
    .locals 3

    .line 593
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6d88\u8d39\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->toast(Ljava/lang/String;)V

    .line 595
    return-void
.end method

.method synthetic lambda$doPurchase$42$org-pboc-fm1208-MainActivity(I)V
    .locals 2

    .line 585
    :try_start_0
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->ensureConnected()V

    .line 586
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->engine:Lorg/pboc/fm1208/PbocEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/pboc/fm1208/PbocEngine;->purchaseEP(II)Z

    .line 587
    iget-object p1, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda63;

    invoke-direct {v0, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda63;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    goto :goto_0

    .line 591
    :catch_0
    move-exception p1

    .line 592
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda64;

    invoke-direct {v1, p0, p1}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda64;-><init>(Lorg/pboc/fm1208/MainActivity;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 597
    :goto_0
    return-void
.end method

.method synthetic lambda$doPurchase$43$org-pboc-fm1208-MainActivity(I)V
    .locals 2

    .line 583
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda1;-><init>(Lorg/pboc/fm1208/MainActivity;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 597
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 598
    return-void
.end method

.method synthetic lambda$doPurchase$44$org-pboc-fm1208-MainActivity()V
    .locals 2

    .line 582
    new-instance v0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda40;

    invoke-direct {v0, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda40;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    const-string v1, "\u6d88\u8d39"

    invoke-direct {p0, v1, v0}, Lorg/pboc/fm1208/MainActivity;->showAmountDialog(Ljava/lang/String;Lorg/pboc/fm1208/MainActivity$AmountCallback;)V

    return-void
.end method

.method synthetic lambda$doPurchase$45$org-pboc-fm1208-MainActivity(Ljava/lang/Exception;)V
    .locals 1

    .line 601
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->toast(Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method synthetic lambda$doPurchase$46$org-pboc-fm1208-MainActivity()V
    .locals 3

    .line 581
    :try_start_0
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->ensureConnected()V

    .line 582
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda54;

    invoke-direct {v1, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda54;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    goto :goto_0

    .line 599
    :catch_0
    move-exception v0

    .line 600
    iget-object v1, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda55;

    invoke-direct {v2, p0, v0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda55;-><init>(Lorg/pboc/fm1208/MainActivity;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 605
    :goto_0
    return-void
.end method

.method synthetic lambda$doReadRecords$47$org-pboc-fm1208-MainActivity([Ljava/lang/String;)V
    .locals 1

    .line 614
    array-length v0, p1

    if-nez v0, :cond_0

    .line 615
    const-string p1, "\u65e0\u4ea4\u6613\u8bb0\u5f55"

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->toast(Ljava/lang/String;)V

    .line 616
    return-void

    .line 618
    :cond_0
    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->showRecordsDialog([Ljava/lang/String;)V

    .line 619
    return-void
.end method

.method synthetic lambda$doReadRecords$48$org-pboc-fm1208-MainActivity(Ljava/lang/Exception;)V
    .locals 3

    .line 622
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bfb\u53d6\u8bb0\u5f55\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bfb\u53d6\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->toast(Ljava/lang/String;)V

    .line 624
    return-void
.end method

.method synthetic lambda$doReadRecords$49$org-pboc-fm1208-MainActivity()V
    .locals 3

    .line 611
    :try_start_0
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->ensureConnected()V

    .line 612
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->engine:Lorg/pboc/fm1208/PbocEngine;

    invoke-virtual {v0}, Lorg/pboc/fm1208/PbocEngine;->readAllRecords()[Ljava/lang/String;

    move-result-object v0

    .line 613
    iget-object v1, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda41;

    invoke-direct {v2, p0, v0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda41;-><init>(Lorg/pboc/fm1208/MainActivity;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    goto :goto_0

    .line 620
    :catch_0
    move-exception v0

    .line 621
    iget-object v1, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda42;

    invoke-direct {v2, p0, v0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda42;-><init>(Lorg/pboc/fm1208/MainActivity;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 626
    :goto_0
    return-void
.end method

.method synthetic lambda$doRefreshBalance$30$org-pboc-fm1208-MainActivity()V
    .locals 1

    .line 536
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->updateBalanceDisplay()V

    .line 537
    const-string v0, "\u4f59\u989d\u5df2\u5237\u65b0"

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/MainActivity;->toast(Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method synthetic lambda$doRefreshBalance$31$org-pboc-fm1208-MainActivity(Ljava/lang/Exception;)V
    .locals 3

    .line 541
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5237\u65b0\u4f59\u989d\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5237\u65b0\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->toast(Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method synthetic lambda$doRefreshBalance$32$org-pboc-fm1208-MainActivity()V
    .locals 3

    .line 531
    :try_start_0
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->ensureConnected()V

    .line 532
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->engine:Lorg/pboc/fm1208/PbocEngine;

    invoke-virtual {v0}, Lorg/pboc/fm1208/PbocEngine;->selectApp()Z

    .line 533
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->engine:Lorg/pboc/fm1208/PbocEngine;

    invoke-virtual {v0}, Lorg/pboc/fm1208/PbocEngine;->getBalanceEP()I

    .line 534
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->engine:Lorg/pboc/fm1208/PbocEngine;

    invoke-virtual {v0}, Lorg/pboc/fm1208/PbocEngine;->getBalanceED()I

    .line 535
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda45;

    invoke-direct {v1, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda45;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    goto :goto_0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    iget-object v1, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda46;

    invoke-direct {v2, p0, v0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda46;-><init>(Lorg/pboc/fm1208/MainActivity;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 545
    :goto_0
    return-void
.end method

.method synthetic lambda$doScanFileSystem$63$org-pboc-fm1208-MainActivity(ZLjava/lang/String;)V
    .locals 5

    .line 850
    if-eqz p1, :cond_0

    const-string v0, "\u5168\u8303\u56f4\u626b\u63cf\u5b8c\u6210"

    goto :goto_0

    :cond_0
    const-string v0, "\u5feb\u901f\u626b\u63cf\u5b8c\u6210"

    :goto_0
    invoke-direct {p0, v0}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    .line 851
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 852
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 853
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 854
    const/high16 p2, 0x41300000    # 11.0f

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 855
    sget-object p2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 856
    const/16 p2, 0x10

    invoke-direct {p0, p2}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v2

    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, p2}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result p2

    invoke-direct {p0, v3}, Lorg/pboc/fm1208/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {v1, v2, v4, p2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 857
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 858
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 859
    if-eqz p1, :cond_1

    const-string p1, "\u6587\u4ef6\u7cfb\u7edf\u626b\u63cf\u7ed3\u679c(0000-FFFF)"

    goto :goto_1

    :cond_1
    const-string p1, "\u6587\u4ef6\u7cfb\u7edf\u626b\u63cf\u7ed3\u679c(0000-00FF)"

    :goto_1
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 860
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 861
    const-string p2, "\u5173\u95ed"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 862
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 863
    return-void
.end method

.method synthetic lambda$doScanFileSystem$64$org-pboc-fm1208-MainActivity(Ljava/lang/Exception;)V
    .locals 3

    .line 866
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u626b\u63cf\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    .line 867
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->toast(Ljava/lang/String;)V

    .line 868
    return-void
.end method

.method synthetic lambda$doScanFileSystem$65$org-pboc-fm1208-MainActivity(Z)V
    .locals 3

    .line 847
    :try_start_0
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->ensureConnected()V

    sput-boolean p1, Lorg/pboc/fm1208/PbocEngine;->SCAN_FULL:Z

    .line 848
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->engine:Lorg/pboc/fm1208/PbocEngine;

    invoke-virtual {v0}, Lorg/pboc/fm1208/PbocEngine;->scanFileSystem()Ljava/lang/String;

    move-result-object v0

    .line 849
    iget-object v1, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, v0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda4;-><init>(Lorg/pboc/fm1208/MainActivity;ZLjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    goto :goto_0

    .line 864
    :catch_0
    move-exception p1

    .line 865
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda5;-><init>(Lorg/pboc/fm1208/MainActivity;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 870
    :goto_0
    return-void
.end method

.method synthetic lambda$doVerifyPin$23$org-pboc-fm1208-MainActivity()V
    .locals 0

    .line 474
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->showPinDialog()V

    return-void
.end method

.method synthetic lambda$doVerifyPin$24$org-pboc-fm1208-MainActivity(Ljava/lang/Exception;)V
    .locals 1

    .line 477
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->toast(Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method synthetic lambda$doVerifyPin$25$org-pboc-fm1208-MainActivity()V
    .locals 3

    .line 473
    :try_start_0
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->ensureConnected()V

    .line 474
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda60;

    invoke-direct {v1, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda60;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 476
    iget-object v1, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda61;

    invoke-direct {v2, p0, v0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda61;-><init>(Lorg/pboc/fm1208/MainActivity;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 481
    :goto_0
    return-void
.end method

.method synthetic lambda$ensureConnected$22$org-pboc-fm1208-MainActivity()V
    .locals 2

    .line 463
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->tvStatus:Landroid/widget/TextView;

    const-string v1, "\u5361\u7247\u5df2\u65ad\u5f00, \u8bf7\u91cd\u65b0\u8d34\u8fd1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->tvStatus:Landroid/widget/TextView;

    const-string v1, "#C62828"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 465
    return-void
.end method

.method synthetic lambda$handleIntent$12$org-pboc-fm1208-MainActivity(Ljava/lang/String;)V
    .locals 2

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ATS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$handleIntent$13$org-pboc-fm1208-MainActivity(Landroid/nfc/tech/IsoDep;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 390
    iget-boolean v0, p0, Lorg/pboc/fm1208/MainActivity;->connectionActive:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/nfc/tech/IsoDep;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    invoke-static {p1, p2}, Lcom/gpjpboc/toolkit/NfcIo;->xfer(Landroid/nfc/tech/IsoDep;[B)[B

    move-result-object p1

    return-object p1

    .line 391
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "\u5361\u7247\u5df2\u65ad\u5f00"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic lambda$handleIntent$14$org-pboc-fm1208-MainActivity(Ljava/lang/String;)V
    .locals 0

    .line 395
    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$handleIntent$15$org-pboc-fm1208-MainActivity(Ljava/lang/String;)V
    .locals 2

    .line 395
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda50;

    invoke-direct {v1, p0, p1}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda50;-><init>(Lorg/pboc/fm1208/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$handleIntent$16$org-pboc-fm1208-MainActivity()V
    .locals 1

    .line 407
    const-string v0, "\u9009\u62e9PBOC\u5e94\u7528\u5931\u8d25, \u5c1d\u8bd5\u7ee7\u7eed..."

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$handleIntent$17$org-pboc-fm1208-MainActivity(Ljava/lang/Exception;)V
    .locals 2

    .line 410
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9009\u62e9\u5e94\u7528: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$handleIntent$18$org-pboc-fm1208-MainActivity(Ljava/lang/Exception;)V
    .locals 2

    .line 418
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u81ea\u52a8\u8bfb\u4f59\u989d: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$handleIntent$19$org-pboc-fm1208-MainActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 422
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->tvStatus:Landroid/widget/TextView;

    const-string v1, "\u5361\u7247\u5df2\u8fde\u63a5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->tvStatus:Landroid/widget/TextView;

    const-string v1, "#2E7D32"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 424
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->tvCardInfo:Landroid/widget/TextView;

    .line 425
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p3, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\nATS: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 424
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->updateBalanceDisplay()V

    .line 427
    iget-object p1, p0, Lorg/pboc/fm1208/MainActivity;->tvPinStatus:Landroid/widget/TextView;

    const-string p2, "PIN\u72b6\u6001: \u672a\u8ba4\u8bc1"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object p1, p0, Lorg/pboc/fm1208/MainActivity;->tvPinStatus:Landroid/widget/TextView;

    const-string p2, "#999999"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 429
    return-void
.end method

.method synthetic lambda$handleIntent$20$org-pboc-fm1208-MainActivity(Ljava/lang/Exception;)V
    .locals 2

    .line 435
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->tvStatus:Landroid/widget/TextView;

    const-string v1, "\u8fde\u63a5\u5931\u8d25, \u8bf7\u91cd\u65b0\u8d34\u8fd1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->tvStatus:Landroid/widget/TextView;

    const-string v1, "#C62828"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 437
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8fde\u63a5\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method synthetic lambda$handleIntent$21$org-pboc-fm1208-MainActivity(Landroid/nfc/tech/IsoDep;Landroid/nfc/Tag;[BLjava/lang/String;)V
    .locals 11

    .line 349
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/nfc/tech/IsoDep;->connect()V

    .line 350
    const/16 v1, 0x1388

    invoke-virtual {p1, v1}, Landroid/nfc/tech/IsoDep;->setTimeout(I)V

    .line 353
    iput-object p1, p0, Lorg/pboc/fm1208/MainActivity;->isoDep:Landroid/nfc/tech/IsoDep;

    .line 354
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/pboc/fm1208/MainActivity;->connectionActive:Z

    .line 357
    invoke-virtual {p1}, Landroid/nfc/tech/IsoDep;->getHiLayerResponse()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    const-string v3, "\u65e0(\u5361\u7247\u672a\u8fd4\u56deATS)"

    if-eqz v2, :cond_0

    :try_start_1
    array-length v4, v2

    if-lez v4, :cond_0

    .line 359
    invoke-static {v2}, Lorg/pboc/fm1208/PbocEngine;->bytesToHexSpaced([B)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 360
    :goto_0
    const-string v5, ""

    if-eqz v2, :cond_1

    :try_start_2
    array-length v6, v2

    if-lez v6, :cond_1

    .line 361
    invoke-static {v2}, Lorg/pboc/fm1208/PbocEngine;->parseAts([B)Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_1
    move-object v6, v5

    .line 364
    :goto_1
    nop

    .line 365
    const-string v7, "\u65e0ATS, "

    if-eqz v2, :cond_2

    :try_start_3
    array-length v8, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v8, :cond_5

    .line 367
    :cond_2
    :try_start_4
    invoke-static {p2}, Landroid/nfc/tech/NfcA;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcA;

    move-result-object p2

    .line 368
    if-eqz p2, :cond_4

    .line 369
    invoke-virtual {p2}, Landroid/nfc/tech/NfcA;->getSak()S

    move-result v8

    .line 370
    invoke-virtual {p2}, Landroid/nfc/tech/NfcA;->getAtqa()[B

    move-result-object p2

    .line 371
    nop

    .line 372
    const/4 v9, 0x2

    if-eqz p2, :cond_3

    array-length v10, p2

    if-lt v10, v9, :cond_3

    .line 373
    aget-byte v10, p2, v0

    and-int/lit16 v10, v10, 0xff

    aget-byte p2, p2, v1

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v10

    goto :goto_2

    .line 375
    :cond_3
    const/4 p2, 0x0

    :goto_2
    const-string v10, "SAK=%02X ATQA=%04X"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    aput-object v8, v9, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v9, v1

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 376
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v5, p2

    move-object v4, v1

    goto :goto_3

    .line 378
    :catch_0
    move-exception v1

    move-object v5, p2

    goto :goto_3

    :catch_1
    move-exception p2

    :cond_4
    :goto_3
    nop

    .line 381
    :cond_5
    nop

    .line 382
    nop

    .line 383
    nop

    .line 384
    nop

    .line 386
    :try_start_6
    iget-object p2, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, v4}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda23;-><init>(Lorg/pboc/fm1208/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 389
    new-instance p2, Lorg/pboc/fm1208/PbocEngine;

    new-instance v1, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, p1}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda24;-><init>(Lorg/pboc/fm1208/MainActivity;Landroid/nfc/tech/IsoDep;)V

    invoke-direct {p2, v1}, Lorg/pboc/fm1208/PbocEngine;-><init>(Lorg/pboc/fm1208/PbocEngine$CardCallback;)V

    iput-object p2, p0, Lorg/pboc/fm1208/MainActivity;->engine:Lorg/pboc/fm1208/PbocEngine;

    .line 395
    new-instance p1, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda25;

    invoke-direct {p1, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda25;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    invoke-virtual {p2, p1}, Lorg/pboc/fm1208/PbocEngine;->setLogCallback(Lorg/pboc/fm1208/PbocEngine$LogCallback;)V

    .line 396
    iget-object p1, p0, Lorg/pboc/fm1208/MainActivity;->engine:Lorg/pboc/fm1208/PbocEngine;

    iput-object p3, p1, Lorg/pboc/fm1208/PbocEngine;->cardUid:[B

    .line 397
    if-eqz v2, :cond_6

    array-length p1, v2

    if-lez p1, :cond_6

    .line 398
    iget-object p1, p0, Lorg/pboc/fm1208/MainActivity;->engine:Lorg/pboc/fm1208/PbocEngine;

    invoke-static {v2}, Lorg/pboc/fm1208/PbocEngine;->parseAts([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/pboc/fm1208/PbocEngine;->atsInfo:Ljava/lang/String;

    goto :goto_6

    .line 400
    :cond_6
    iget-object p1, p0, Lorg/pboc/fm1208/MainActivity;->engine:Lorg/pboc/fm1208/PbocEngine;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7

    :goto_4
    goto :goto_5

    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :goto_5
    iput-object v3, p1, Lorg/pboc/fm1208/PbocEngine;->atsInfo:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 405
    :goto_6
    :try_start_7
    iget-object p1, p0, Lorg/pboc/fm1208/MainActivity;->engine:Lorg/pboc/fm1208/PbocEngine;

    invoke-virtual {p1}, Lorg/pboc/fm1208/PbocEngine;->selectApp()Z

    move-result p1

    .line 406
    if-nez p1, :cond_8

    .line 407
    iget-object p1, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance p2, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda26;

    invoke-direct {p2, p0}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda26;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 411
    :cond_8
    goto :goto_7

    .line 409
    :catch_2
    move-exception p1

    .line 410
    :try_start_8
    iget-object p2, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance p3, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda27;

    invoke-direct {p3, p0, p1}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda27;-><init>(Lorg/pboc/fm1208/MainActivity;Ljava/lang/Exception;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 415
    :goto_7
    :try_start_9
    iget-object p1, p0, Lorg/pboc/fm1208/MainActivity;->engine:Lorg/pboc/fm1208/PbocEngine;

    invoke-virtual {p1}, Lorg/pboc/fm1208/PbocEngine;->getBalanceEP()I

    .line 416
    iget-object p1, p0, Lorg/pboc/fm1208/MainActivity;->engine:Lorg/pboc/fm1208/PbocEngine;

    invoke-virtual {p1}, Lorg/pboc/fm1208/PbocEngine;->getBalanceED()I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 419
    goto :goto_8

    .line 417
    :catch_3
    move-exception p1

    .line 418
    :try_start_a
    iget-object p2, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance p3, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda28;

    invoke-direct {p3, p0, p1}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda28;-><init>(Lorg/pboc/fm1208/MainActivity;Ljava/lang/Exception;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 421
    :goto_8
    iget-object p1, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance p2, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda29;

    invoke-direct {p2, p0, p4, v4, v6}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda29;-><init>(Lorg/pboc/fm1208/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_9

    .line 440
    :catchall_0
    move-exception p1

    goto :goto_a

    .line 431
    :catch_4
    move-exception p1

    .line 433
    :try_start_b
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->disconnectCard()V

    .line 434
    iget-object p2, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance p3, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda30;

    invoke-direct {p3, p0, p1}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda30;-><init>(Lorg/pboc/fm1208/MainActivity;Ljava/lang/Exception;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 440
    :goto_9
    iput-boolean v0, p0, Lorg/pboc/fm1208/MainActivity;->connecting:Z

    .line 441
    nop

    .line 442
    return-void

    .line 440
    :goto_a
    iput-boolean v0, p0, Lorg/pboc/fm1208/MainActivity;->connecting:Z

    .line 441
    throw p1
.end method

.method synthetic lambda$showAmountDialog$70$org-pboc-fm1208-MainActivity(Landroid/widget/EditText;Lorg/pboc/fm1208/MainActivity$AmountCallback;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 985
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 986
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 987
    const-string p1, "\u8bf7\u8f93\u5165\u91d1\u989d"

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->toast(Ljava/lang/String;)V

    .line 988
    return-void

    .line 991
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 992
    if-gtz p1, :cond_1

    .line 993
    const-string p1, "\u91d1\u989d\u5fc5\u987b\u5927\u4e8e0"

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->toast(Ljava/lang/String;)V

    .line 994
    return-void

    .line 996
    :cond_1
    invoke-interface {p2, p1}, Lorg/pboc/fm1208/MainActivity$AmountCallback;->onAmount(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    goto :goto_0

    .line 997
    :catch_0
    move-exception p1

    .line 998
    const-string p1, "\u91d1\u989d\u683c\u5f0f\u9519\u8bef"

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->toast(Ljava/lang/String;)V

    .line 1000
    :goto_0
    return-void
.end method

.method synthetic lambda$showErrorAndFinish$71$org-pboc-fm1208-MainActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1068
    invoke-virtual {p0}, Lorg/pboc/fm1208/MainActivity;->finish()V

    return-void
.end method

.method synthetic lambda$showPinDialog$26$org-pboc-fm1208-MainActivity(Z)V
    .locals 2

    .line 506
    if-eqz p1, :cond_0

    .line 507
    iget-object p1, p0, Lorg/pboc/fm1208/MainActivity;->tvPinStatus:Landroid/widget/TextView;

    const-string v0, "PIN\u72b6\u6001: \u5df2\u8ba4\u8bc1"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object p1, p0, Lorg/pboc/fm1208/MainActivity;->tvPinStatus:Landroid/widget/TextView;

    const-string v0, "#2E7D32"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 509
    const-string p1, "PIN\u8ba4\u8bc1\u6210\u529f"

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->toast(Ljava/lang/String;)V

    goto :goto_0

    .line 511
    :cond_0
    iget-object p1, p0, Lorg/pboc/fm1208/MainActivity;->tvPinStatus:Landroid/widget/TextView;

    const-string v0, "PIN\u72b6\u6001: \u8ba4\u8bc1\u5931\u8d25"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object p1, p0, Lorg/pboc/fm1208/MainActivity;->tvPinStatus:Landroid/widget/TextView;

    const-string v0, "#C62828"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 513
    iget-object p1, p0, Lorg/pboc/fm1208/MainActivity;->engine:Lorg/pboc/fm1208/PbocEngine;

    iget-object p1, p1, Lorg/pboc/fm1208/PbocEngine;->lastError:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PIN\u8ba4\u8bc1\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->toast(Ljava/lang/String;)V

    .line 515
    :goto_0
    return-void
.end method

.method synthetic lambda$showPinDialog$27$org-pboc-fm1208-MainActivity(Ljava/lang/Exception;)V
    .locals 3

    .line 518
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIN\u5f02\u5e38: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->toast(Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method synthetic lambda$showPinDialog$28$org-pboc-fm1208-MainActivity(Ljava/lang/String;)V
    .locals 2

    .line 503
    :try_start_0
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->ensureConnected()V

    .line 504
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->engine:Lorg/pboc/fm1208/PbocEngine;

    invoke-virtual {v0, p1}, Lorg/pboc/fm1208/PbocEngine;->verifyPin(Ljava/lang/String;)Z

    move-result p1

    .line 505
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda47;

    invoke-direct {v1, p0, p1}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda47;-><init>(Lorg/pboc/fm1208/MainActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    goto :goto_0

    .line 516
    :catch_0
    move-exception p1

    .line 517
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda48;

    invoke-direct {v1, p0, p1}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda48;-><init>(Lorg/pboc/fm1208/MainActivity;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 522
    :goto_0
    return-void
.end method

.method synthetic lambda$showPinDialog$29$org-pboc-fm1208-MainActivity(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 500
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 501
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda33;

    invoke-direct {p3, p0, p1}, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda33;-><init>(Lorg/pboc/fm1208/MainActivity;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 522
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 523
    return-void
.end method

.method public pollCard()V
    .locals 3

    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->isoDep:Landroid/nfc/tech/IsoDep;

    if-eqz v0, :poll_skip

    iget-boolean v1, p0, Lorg/pboc/fm1208/MainActivity;->connectionActive:Z

    if-eqz v1, :poll_skip

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->isConnected()Z

    move-result v1

    if-nez v1, :poll_skip

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/pboc/fm1208/MainActivity;->connectionActive:Z

    iget-object v2, p0, Lorg/pboc/fm1208/MainActivity;->tvStatus:Landroid/widget/TextView;

    const-string v1, "\u5361\u7247\u5df2\u79fb\u5f00\uff0c\u8bf7\u91cd\u65b0\u8d34\u8fd1"

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/pboc/fm1208/MainActivity;->tvStatus:Landroid/widget/TextView;

    const-string v1, "#C62828"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v1, "\u68c0\u6d4b\u5230\u5361\u7247\u5df2\u79fb\u5f00"

    invoke-direct {p0, v1}, Lorg/pboc/fm1208/MainActivity;->addLog(Ljava/lang/String;)V

    :poll_skip
    return-void
.end method


.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p0}, Lcom/gpjpboc/toolkit/Config;->load(Landroid/content/Context;)V

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lorg/pboc/fm1208/MainActivity;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 70
    if-nez p1, :cond_0

    .line 71
    const-string p1, "\u6b64\u8bbe\u5907\u4e0d\u652f\u6301NFC\u529f\u80fd\uff0c\u65e0\u6cd5\u4f7f\u7528\u672c\u5e94\u7528"

    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->showErrorAndFinish(Ljava/lang/String;)V

    .line 72
    return-void

    .line 77
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x20000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 80
    nop

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    .line 82
    const/high16 v0, 0xa000000

    goto :goto_0

    .line 81
    :cond_1
    const/high16 v0, 0x8000000

    .line 84
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lorg/pboc/fm1208/MainActivity;->pendingIntent:Landroid/app/PendingIntent;

    .line 87
    invoke-direct {p0}, Lorg/pboc/fm1208/MainActivity;->createUI()V

    .line 90
    invoke-virtual {p0}, Lorg/pboc/fm1208/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 91
    if-eqz p1, :cond_2

    .line 92
    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->handleIntent(Landroid/content/Intent;)V

    .line 94
    :cond_2
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 283
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 284
    invoke-virtual {p0, p1}, Lorg/pboc/fm1208/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 285
    invoke-direct {p0, p1}, Lorg/pboc/fm1208/MainActivity;->handleIntent(Landroid/content/Intent;)V

    .line 286
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 275
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 276
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    .line 279
    :cond_0
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :poll_pause_done

    iget-object v1, p0, Lorg/pboc/fm1208/MainActivity;->poller:Lcom/gpjpboc/toolkit/CardPoller;

    if-eqz v1, :poll_pause_done

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :poll_pause_done
    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 253
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 254
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.TECH_DISCOVERED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 257
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.TAG_DISCOVERED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 258
    const/4 v2, 0x2

    new-array v3, v2, [Landroid/content/IntentFilter;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    .line 260
    const/4 v1, 0x3

    new-array v1, v1, [[Ljava/lang/String;

    const-class v5, Landroid/nfc/tech/IsoDep;

    .line 261
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const-class v4, Landroid/nfc/tech/NfcA;

    .line 262
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    const-class v0, Landroid/nfc/tech/NfcB;

    .line 263
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 266
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->nfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v2, p0, Lorg/pboc/fm1208/MainActivity;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0, v2, v3, v1}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->tvStatus:Landroid/widget/TextView;

    const-string v1, "NFC\u5df2\u5173\u95ed\uff0c\u8bf7\u5728\u8bbe\u7f6e\u4e2d\u5f00\u542f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->tvStatus:Landroid/widget/TextView;

    const-string v1, "#C62828"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 267
    :cond_1
    :goto_0
    nop

    .line 271
    :goto_1
    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :poll_resume_done

    new-instance v1, Lcom/gpjpboc/toolkit/CardPoller;

    invoke-direct {v1, p0}, Lcom/gpjpboc/toolkit/CardPoller;-><init>(Lorg/pboc/fm1208/MainActivity;)V

    iput-object v1, p0, Lorg/pboc/fm1208/MainActivity;->poller:Lcom/gpjpboc/toolkit/CardPoller;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    # ==== gpjpboc-v1.4.4: 反向采纳 GP 页会话（GP 页贴过卡返回主页免重贴） ====
    invoke-static {p0}, Lcom/gpjpboc/toolkit/GpNfcPatch;->adoptForPbocMain(Ljava/lang/Object;)V

    :poll_resume_done
    return-void
.end method
