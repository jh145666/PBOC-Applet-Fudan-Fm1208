.class public Lcom/gpjpboc/toolkit/AtsHelper;
.super Ljava/lang/Object;
.source "AtsHelper.java"


# static fields
.field private static final H:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/gpjpboc/toolkit/AtsHelper;->H:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-static {p0, p1, p2}, Lcom/gpjpboc/toolkit/AtsHelper;->send(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1()Landroid/os/Handler;
    .locals 1

    .line 20
    sget-object v0, Lcom/gpjpboc/toolkit/AtsHelper;->H:Landroid/os/Handler;

    return-object v0
.end method

.method public static defaultAts(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    .line 80
    const-string p0, ""

    .line 81
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "107880700220900000000000"

    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    return-object v1

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static send(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 87
    sput-object p1, Lcom/gpjpboc/toolkit/Config;->uid:Ljava/lang/String;

    .line 88
    invoke-static {p0}, Lcom/gpjpboc/toolkit/Config;->save(Landroid/content/Context;)V

    .line 89
    invoke-static {p2}, Lcom/gpjpboc/toolkit/Config;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 90
    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    array-length v0, p1

    const/4 v2, 0x7

    add-int/2addr v0, v2

    new-array v0, v0, [B

    const/16 v3, -0x80

    .line 95
    aput-byte v3, v0, p2

    const/4 v4, 0x1

    const/16 v5, -0x1e

    aput-byte v5, v0, v4

    const/4 v4, 0x2

    .line 96
    aput-byte v3, v0, v4

    const/4 v3, 0x3

    aput-byte p2, v0, v3

    .line 97
    array-length v3, p1

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    const/16 v3, -0x14

    .line 98
    aput-byte v3, v0, v1

    const/4 v1, 0x6

    const/16 v3, 0x10

    aput-byte v3, v0, v1

    .line 99
    array-length v1, p1

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    sget-object p1, Lcom/gpjpboc/toolkit/PageLauncher;->gpdroidMain:Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 103
    new-instance p2, Lcom/gpjpboc/toolkit/AtsHelper$3;

    invoke-direct {p2, p1, v0, p0}, Lcom/gpjpboc/toolkit/AtsHelper$3;-><init>(Lat/fhooe/usmile/gpjshell/MainActivity;[BLandroid/app/Activity;)V

    .line 130
    invoke-virtual {p2}, Lcom/gpjpboc/toolkit/AtsHelper$3;->start()V

    return-void

    .line 91
    :cond_1
    :goto_0
    const-string p1, "ATS \u683c\u5f0f\u9519\u8bef"

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static show(Landroid/app/Activity;)V
    .locals 5

    .line 23
    invoke-static {p0}, Lcom/gpjpboc/toolkit/Config;->load(Landroid/content/Context;)V

    .line 24
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41800000    # 16.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    const/4 v3, 0x0

    .line 27
    invoke-virtual {v0, v2, v2, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 29
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 30
    const-string v3, "\u547d\u4ee4: 80 E2 80 00 12 EC 10 <ATS>\n\u9ed8\u8ba4 ATS = 107880700220900000000000 + \u5361UID\uff08\u5bc6\u94a5\u8ba1\u7b97\u4e0eUID/ATS\u76f8\u5173\u65f6\u4f7f\u7528\u9ed8\u8ba4\u683c\u5f0f\uff09"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41400000    # 12.0f

    .line 31
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 32
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 34
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 35
    const-string v3, "\u5361 UID (HEX):"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 37
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 39
    sget-object v3, Lcom/gpjpboc/toolkit/Config;->uid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 40
    const-string v3, "\u5982 759A467A"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 43
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44
    const-string v4, "ATS (HEX):"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 46
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 48
    sget-object v1, Lcom/gpjpboc/toolkit/Config;->uid:Ljava/lang/String;

    invoke-static {v1}, Lcom/gpjpboc/toolkit/AtsHelper;->defaultAts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const-string v1, "107880700220900000000000 + UID"

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 52
    new-instance v1, Lcom/gpjpboc/toolkit/AtsHelper$1;

    invoke-direct {v1, v3}, Lcom/gpjpboc/toolkit/AtsHelper$1;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 67
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 68
    const-string v4, "FM1280 Java\u5361\u6539ATS"

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 69
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/gpjpboc/toolkit/AtsHelper$2;

    invoke-direct {v1, p0, v2, v3}, Lcom/gpjpboc/toolkit/AtsHelper$2;-><init>(Landroid/app/Activity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    const-string p0, "\u53d1\u9001"

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 75
    const-string v0, "\u53d6\u6d88"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
