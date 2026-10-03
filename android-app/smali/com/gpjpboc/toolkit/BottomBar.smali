.class public Lcom/gpjpboc/toolkit/BottomBar;
.super Ljava/lang/Object;
.source "BottomBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final act:Landroid/app/Activity;

.field private btnJavacos:Landroid/widget/Button;

.field private btnPboc:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpjpboc/toolkit/BottomBar;->act:Landroid/app/Activity;

    return-void
.end method

.method public static build(Landroid/app/Activity;I)Landroid/view/View;
    .locals 12

    new-instance v0, Lcom/gpjpboc/toolkit/BottomBar;

    invoke-direct {v0, p0}, Lcom/gpjpboc/toolkit/BottomBar;-><init>(Landroid/app/Activity;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v3, -0x1f1f20

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v5, 0x42500000    # 52.0f

    invoke-static {p0, v5}, Lcom/gpjpboc/toolkit/BottomBar;->dp(Landroid/content/Context;F)I

    move-result v5

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p1, :cond_0

    const-string v6, "GPDroid"

    const v7, -0xf2b85f

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/gpjpboc/toolkit/BottomBar;->makeTab(Ljava/lang/String;IIZ)Landroid/widget/Button;

    move-result-object v6

    iput-object v6, v0, Lcom/gpjpboc/toolkit/BottomBar;->btnJavacos:Landroid/widget/Button;

    const-string v7, "PBOC"

    const v8, -0xc20

    const v9, -0x40c9f4

    const/4 v10, 0x0

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/gpjpboc/toolkit/BottomBar;->makeTab(Ljava/lang/String;IIZ)Landroid/widget/Button;

    move-result-object v7

    iput-object v7, v0, Lcom/gpjpboc/toolkit/BottomBar;->btnPboc:Landroid/widget/Button;

    goto :goto_0

    :cond_0
    const-string v6, "GPDroid"

    const v7, -0x1c0d03

    const v8, -0xf2b85f

    const/4 v9, 0x0

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/gpjpboc/toolkit/BottomBar;->makeTab(Ljava/lang/String;IIZ)Landroid/widget/Button;

    move-result-object v6

    iput-object v6, v0, Lcom/gpjpboc/toolkit/BottomBar;->btnJavacos:Landroid/widget/Button;

    const-string v7, "PBOC"

    const v8, -0x40c9f4

    const/4 v9, -0x1

    const/4 v10, 0x1

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/gpjpboc/toolkit/BottomBar;->makeTab(Ljava/lang/String;IIZ)Landroid/widget/Button;

    move-result-object v7

    iput-object v7, v0, Lcom/gpjpboc/toolkit/BottomBar;->btnPboc:Landroid/widget/Button;

    :goto_0
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v9, v0, Lcom/gpjpboc/toolkit/BottomBar;->btnJavacos:Landroid/widget/Button;

    invoke-virtual {v3, v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v9, v0, Lcom/gpjpboc/toolkit/BottomBar;->btnPboc:Landroid/widget/Button;

    invoke-virtual {v3, v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p1, :cond_1

    iget-object v9, v0, Lcom/gpjpboc/toolkit/BottomBar;->btnPboc:Landroid/widget/Button;

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    iget-object v9, v0, Lcom/gpjpboc/toolkit/BottomBar;->btnJavacos:Landroid/widget/Button;

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public static dp(Landroid/content/Context;F)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private makeTab(Ljava/lang/String;IIZ)Landroid/widget/Button;
    .locals 6

    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/gpjpboc/toolkit/BottomBar;->act:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-eqz p4, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_0
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v3, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const p1, 0x10100a7

    const/4 v1, 0x0

    aput p1, v5, v1

    invoke-virtual {v4, v5, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-virtual {v4, v5, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/gpjpboc/toolkit/BottomBar;->btnPboc:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/gpjpboc/toolkit/BottomBar;->act:Landroid/app/Activity;

    const-class v2, Lorg/pboc/fm1208/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x20000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/gpjpboc/toolkit/BottomBar;->act:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/gpjpboc/toolkit/BottomBar;->act:Landroid/app/Activity;

    const-class v2, Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x20000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "fromBottomBar"

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/gpjpboc/toolkit/BottomBar;->act:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
