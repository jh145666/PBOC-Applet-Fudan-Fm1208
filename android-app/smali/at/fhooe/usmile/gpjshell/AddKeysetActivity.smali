.class public Lat/fhooe/usmile/gpjshell/AddKeysetActivity;
.super Landroid/app/Activity;
.source "AddKeysetActivity.java"


# instance fields
.field private editENC:Landroid/widget/EditText;

.field private editID:Landroid/widget/EditText;

.field private editKEK:Landroid/widget/EditText;

.field private editMAC:Landroid/widget/EditText;

.field private editName:Landroid/widget/EditText;

.field private editVersion:Landroid/widget/EditText;

.field private mNegative:Landroid/widget/Button;

.field private mPositive:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lat/fhooe/usmile/gpjshell/AddKeysetActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/AddKeysetActivity;

    .line 27
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->editID:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lat/fhooe/usmile/gpjshell/AddKeysetActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/AddKeysetActivity;

    .line 27
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->editVersion:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lat/fhooe/usmile/gpjshell/AddKeysetActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/AddKeysetActivity;

    .line 27
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->editName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lat/fhooe/usmile/gpjshell/AddKeysetActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/AddKeysetActivity;

    .line 27
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->editMAC:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lat/fhooe/usmile/gpjshell/AddKeysetActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/AddKeysetActivity;

    .line 27
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->editENC:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lat/fhooe/usmile/gpjshell/AddKeysetActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/AddKeysetActivity;

    .line 27
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->editKEK:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public createDialog()Landroid/app/Dialog;
    .locals 4

    .line 101
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 102
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lat/fhooe/usmile/gpjshell/R$string;->keyset_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 103
    sget v1, Lat/fhooe/usmile/gpjshell/R$string;->keyset_dialog_ask_overwrite:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lat/fhooe/usmile/gpjshell/R$string;->keyset_positive:I

    new-instance v3, Lat/fhooe/usmile/gpjshell/AddKeysetActivity$4;

    invoke-direct {v3, p0}, Lat/fhooe/usmile/gpjshell/AddKeysetActivity$4;-><init>(Lat/fhooe/usmile/gpjshell/AddKeysetActivity;)V

    .line 104
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lat/fhooe/usmile/gpjshell/R$string;->keyset_negative:I

    new-instance v3, Lat/fhooe/usmile/gpjshell/AddKeysetActivity$3;

    invoke-direct {v3, p0}, Lat/fhooe/usmile/gpjshell/AddKeysetActivity$3;-><init>(Lat/fhooe/usmile/gpjshell/AddKeysetActivity;)V

    .line 109
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget v0, Lat/fhooe/usmile/gpjshell/R$layout;->activity_add_keyset:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->setContentView(I)V

    .line 41
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->edit_keyset_id:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->editID:Landroid/widget/EditText;

    .line 42
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->edit_keyset_version:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->editVersion:Landroid/widget/EditText;

    .line 43
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->edit_keyset_name:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->editName:Landroid/widget/EditText;

    .line 44
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->edit_keyset_mac:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->editMAC:Landroid/widget/EditText;

    .line 45
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->edit_keyset_enc:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->editENC:Landroid/widget/EditText;

    .line 46
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->edit_keyset_kek:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->editKEK:Landroid/widget/EditText;

    .line 48
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->btn_install_applet:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->mPositive:Landroid/widget/Button;

    .line 49
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->mPositive:Landroid/widget/Button;

    new-instance v1, Lat/fhooe/usmile/gpjshell/AddKeysetActivity$1;

    invoke-direct {v1, p0}, Lat/fhooe/usmile/gpjshell/AddKeysetActivity$1;-><init>(Lat/fhooe/usmile/gpjshell/AddKeysetActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->btn_list_applets:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->mNegative:Landroid/widget/Button;

    .line 88
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->mNegative:Landroid/widget/Button;

    new-instance v1, Lat/fhooe/usmile/gpjshell/AddKeysetActivity$2;

    invoke-direct {v1, p0}, Lat/fhooe/usmile/gpjshell/AddKeysetActivity$2;-><init>(Lat/fhooe/usmile/gpjshell/AddKeysetActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method
