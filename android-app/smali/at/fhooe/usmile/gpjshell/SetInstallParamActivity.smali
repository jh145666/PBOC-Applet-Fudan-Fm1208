.class public Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;
.super Landroid/app/Activity;
.source "SetInstallParamActivity.java"


# instance fields
.field private mCheckDefaultSelected:Landroid/widget/CheckBox;

.field private mEditParams:Landroid/widget/EditText;

.field private mEditPrivileges:Landroid/widget/EditText;

.field private mSetBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->mEditParams:Landroid/widget/EditText;

    .line 27
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->mEditPrivileges:Landroid/widget/EditText;

    .line 28
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->mCheckDefaultSelected:Landroid/widget/CheckBox;

    .line 29
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->mSetBtn:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$000(Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;

    .line 25
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->mEditParams:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;

    .line 25
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->mEditPrivileges:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;

    .line 25
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->mCheckDefaultSelected:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget v0, Lat/fhooe/usmile/gpjshell/R$layout;->activity_set_install_param:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->setContentView(I)V

    .line 36
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->edit_parameter_parameters:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->mEditParams:Landroid/widget/EditText;

    .line 37
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->edit_parameter_privileges:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->mEditPrivileges:Landroid/widget/EditText;

    .line 38
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->check_default_selected:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->mCheckDefaultSelected:Landroid/widget/CheckBox;

    .line 39
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->btn_parameter_set:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->mSetBtn:Landroid/widget/Button;

    .line 41
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->mSetBtn:Landroid/widget/Button;

    new-instance v1, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity$1;

    invoke-direct {v1, p0}, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity$1;-><init>(Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 100
    invoke-virtual {p0}, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lat/fhooe/usmile/gpjshell/R$menu;->set_install_param:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 101
    const/4 v0, 0x1

    return v0
.end method
