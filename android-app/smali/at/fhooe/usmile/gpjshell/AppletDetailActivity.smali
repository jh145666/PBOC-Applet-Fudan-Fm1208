.class public Lat/fhooe/usmile/gpjshell/AppletDetailActivity;
.super Landroid/app/DialogFragment;
.source "AppletDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/fhooe/usmile/gpjshell/AppletDetailActivity$NoticeAppletEventListener;
    }
.end annotation


# instance fields
.field private mAppletIDs:Landroid/widget/TextView;

.field private mAppletPriviliges:Landroid/widget/TextView;

.field private mAppletTitle:Landroid/widget/TextView;

.field private mData:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;

.field private mListener:Lat/fhooe/usmile/gpjshell/AppletDetailActivity$NoticeAppletEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lat/fhooe/usmile/gpjshell/AppletDetailActivity;)Lat/fhooe/usmile/gpjshell/AppletDetailActivity$NoticeAppletEventListener;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/AppletDetailActivity;

    .line 28
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AppletDetailActivity;->mListener:Lat/fhooe/usmile/gpjshell/AppletDetailActivity$NoticeAppletEventListener;

    return-object v0
.end method

.method private fillData(Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;)V
    .locals 11
    .param p1, "data"    # Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;

    .line 86
    const-string v0, ""

    .line 88
    .local v0, "aIDText":Ljava/lang/String;
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/AppletDetailActivity;->mAppletTitle:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getAID()Lnet/sourceforge/gpj/cardservices/AID;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/gpj/cardservices/AID;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lnet/sourceforge/gpj/cardservices/GPUtil;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 89
    invoke-virtual {p1}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getAID()Lnet/sourceforge/gpj/cardservices/AID;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sourceforge/gpj/cardservices/AID;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lnet/sourceforge/gpj/cardservices/GPUtil;->byteArrayToReadableString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    nop

    .line 92
    invoke-virtual {p1}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getKind()Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->toShortString()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {p1}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getLifeCycleState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 94
    invoke-virtual {p1}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getPrivileges()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object v4, v6, v1

    .line 91
    const-string v1, "\u7c7b\u578b: %s  \u751f\u547d\u5468\u671f: %d  \u6743\u9650: 0x%02X"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "privilegeStr":Ljava/lang/String;
    invoke-virtual {p1}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getPrivileges()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  [\u9ed8\u8ba4\u9009\u4e2d]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    :cond_0
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/AppletDetailActivity;->mAppletPriviliges:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p1}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->getExecutableAIDs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sourceforge/gpj/cardservices/AID;

    .line 101
    .local v4, "a":Lnet/sourceforge/gpj/cardservices/AID;
    invoke-virtual {v4}, Lnet/sourceforge/gpj/cardservices/AID;->getLength()I

    move-result v7

    rsub-int/lit8 v7, v7, 0xa

    mul-int/lit8 v7, v7, 0x3

    .line 102
    .local v7, "numSpaces":I
    const-string v8, ""

    .line 103
    .local v8, "spaces":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v7, :cond_1

    .line 104
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 103
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 106
    .end local v9    # "i":I
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lnet/sourceforge/gpj/cardservices/AID;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lnet/sourceforge/gpj/cardservices/GPUtil;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 108
    invoke-virtual {v4}, Lnet/sourceforge/gpj/cardservices/AID;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lnet/sourceforge/gpj/cardservices/GPUtil;->byteArrayToReadableString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .end local v4    # "a":Lnet/sourceforge/gpj/cardservices/AID;
    goto :goto_0

    .line 111
    .end local v7    # "numSpaces":I
    .end local v8    # "spaces":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/AppletDetailActivity;->mAppletIDs:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 116
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 118
    :try_start_0
    move-object v0, p1

    check-cast v0, Lat/fhooe/usmile/gpjshell/AppletDetailActivity$NoticeAppletEventListener;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/AppletDetailActivity;->mListener:Lat/fhooe/usmile/gpjshell/AppletDetailActivity$NoticeAppletEventListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    nop

    .line 123
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement NoticeAppletEventListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 46
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lat/fhooe/usmile/gpjshell/AppletDetailActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 48
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lat/fhooe/usmile/gpjshell/AppletDetailActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 50
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lat/fhooe/usmile/gpjshell/R$layout;->activity_applet_detail:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 51
    .local v2, "v":Landroid/view/View;
    sget v3, Lat/fhooe/usmile/gpjshell/R$id;->detAppl_readableTitle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lat/fhooe/usmile/gpjshell/AppletDetailActivity;->mAppletTitle:Landroid/widget/TextView;

    .line 52
    sget v3, Lat/fhooe/usmile/gpjshell/R$id;->detAppl_priviliges:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lat/fhooe/usmile/gpjshell/AppletDetailActivity;->mAppletPriviliges:Landroid/widget/TextView;

    .line 53
    sget v3, Lat/fhooe/usmile/gpjshell/R$id;->detAppl_allIDs:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lat/fhooe/usmile/gpjshell/AppletDetailActivity;->mAppletIDs:Landroid/widget/TextView;

    .line 55
    iget-object v3, p0, Lat/fhooe/usmile/gpjshell/AppletDetailActivity;->mData:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;

    if-eqz v3, :cond_0

    .line 56
    iget-object v3, p0, Lat/fhooe/usmile/gpjshell/AppletDetailActivity;->mData:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;

    invoke-direct {p0, v3}, Lat/fhooe/usmile/gpjshell/AppletDetailActivity;->fillData(Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;)V

    .line 59
    :cond_0
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 60
    const-string v4, "Applet\u8be6\u60c5"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lat/fhooe/usmile/gpjshell/AppletDetailActivity$3;

    invoke-direct {v4, p0}, Lat/fhooe/usmile/gpjshell/AppletDetailActivity$3;-><init>(Lat/fhooe/usmile/gpjshell/AppletDetailActivity;)V

    .line 61
    const-string v5, "\u5220\u9664"

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lat/fhooe/usmile/gpjshell/R$string;->btn_set_default_applet:I

    new-instance v5, Lat/fhooe/usmile/gpjshell/AppletDetailActivity$2;

    invoke-direct {v5, p0}, Lat/fhooe/usmile/gpjshell/AppletDetailActivity$2;-><init>(Lat/fhooe/usmile/gpjshell/AppletDetailActivity;)V

    .line 67
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lat/fhooe/usmile/gpjshell/AppletDetailActivity$1;

    invoke-direct {v4, p0}, Lat/fhooe/usmile/gpjshell/AppletDetailActivity$1;-><init>(Lat/fhooe/usmile/gpjshell/AppletDetailActivity;)V

    .line 74
    const-string v5, "\u786e\u5b9a"

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public setData(Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;)V
    .locals 0
    .param p1, "entry"    # Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;

    .line 41
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/AppletDetailActivity;->mData:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;

    .line 42
    return-void
.end method
