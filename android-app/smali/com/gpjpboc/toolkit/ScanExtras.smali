.class public Lcom/gpjpboc/toolkit/ScanExtras;
.super Ljava/lang/Object;
.source "ScanExtras.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseIds(Ljava/lang/String;)[I
    .locals 10

    const/4 v0, 0x0

    .line 46
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    const-string v2, "[,;\\s]+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v2, :cond_2

    .line 61
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    .line 62
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array v2, p0, [I

    :goto_1
    if-lt v3, p0, :cond_1

    return-object v2

    .line 63
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 47
    :cond_2
    aget-object v5, p0, v4

    .line 48
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 49
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    goto :goto_4

    :cond_3
    const/16 v6, 0x2d

    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/16 v7, 0x10

    if-lez v6, :cond_7

    .line 52
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    add-int/lit8 v6, v6, 0x1

    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    if-le v8, v5, :cond_4

    goto :goto_2

    :cond_4
    move v9, v8

    move v8, v5

    move v5, v9

    :goto_2
    sub-int v6, v8, v5

    const/16 v7, 0xfff

    if-le v6, v7, :cond_5

    return-object v0

    :cond_5
    :goto_3
    if-le v5, v8, :cond_6

    goto :goto_4

    .line 56
    :cond_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 58
    :cond_7
    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    return-object v0
.end method

.method public static promptCustom(Lcom/gpjpboc/toolkit/FileSysActivityHost;)V
    .locals 3

    .line 21
    new-instance v0, Landroid/widget/EditText;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 22
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 23
    const-string v2, "3F00, 3F01, 2F00-2FFF"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41500000    # 13.0f

    .line 24
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 25
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 26
    const-string v1, "\u81ea\u5b9a\u4e49\u626b\u63cf\uff1a\u76ee\u5f55/\u6587\u4ef6 ID"

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 27
    const-string v2, "\u6bcf\u9879\u4e3a 2 \u5b57\u8282 HEX FID\uff0c\u652f\u6301\u533a\u95f4\uff082F00-2FFF\uff09\u4e0e\u9017\u53f7\u5206\u9694\u591a\u7ec4\u3002\n\u626b\u63cf\u524d\u81ea\u52a8\u56de\u5230 MF\uff0c\u9010\u4e2a SELECT(P2=0C)\uff0c\u547d\u4e2d\u5373\u8bb0\u5f55\u3002"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 28
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 29
    new-instance v2, Lcom/gpjpboc/toolkit/ScanExtras$1;

    invoke-direct {v2, v0, p0}, Lcom/gpjpboc/toolkit/ScanExtras$1;-><init>(Landroid/widget/EditText;Lcom/gpjpboc/toolkit/FileSysActivityHost;)V

    const-string p0, "\u5f00\u59cb\u626b\u63cf"

    invoke-virtual {v1, p0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 39
    const-string v0, "\u53d6\u6d88"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 40
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
