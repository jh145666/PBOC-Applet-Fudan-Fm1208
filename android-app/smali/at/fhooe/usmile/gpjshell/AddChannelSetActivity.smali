.class public Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;
.super Landroid/app/Activity;
.source "AddChannelSetActivity.java"


# instance fields
.field private mEditName:Landroid/widget/EditText;

.field private mEditScpVersion:Landroid/widget/EditText;

.field private mEditSecurityLvl:Landroid/widget/EditText;

.field private mGemalto:Landroid/widget/CheckBox;

.field private mNegative:Landroid/widget/Button;

.field private mPositive:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->mEditName:Landroid/widget/EditText;

    .line 27
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->mEditScpVersion:Landroid/widget/EditText;

    .line 28
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->mEditSecurityLvl:Landroid/widget/EditText;

    .line 29
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->mGemalto:Landroid/widget/CheckBox;

    .line 31
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->mPositive:Landroid/widget/Button;

    .line 32
    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->mNegative:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$000(Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;

    .line 24
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->mEditName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;

    .line 24
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->mEditScpVersion:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;

    .line 24
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->mEditSecurityLvl:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;

    .line 24
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->mGemalto:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget v0, Lat/fhooe/usmile/gpjshell/R$layout;->activity_add_channel_set:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->setContentView(I)V

    .line 39
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->edit_channel_name:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->mEditName:Landroid/widget/EditText;

    .line 40
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->edit_channel_version:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->mEditScpVersion:Landroid/widget/EditText;

    .line 41
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->edit_channel_security:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->mEditSecurityLvl:Landroid/widget/EditText;

    .line 42
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->chkbx_gemalto:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->mGemalto:Landroid/widget/CheckBox;

    .line 44
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->btn_channel_positive:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->mPositive:Landroid/widget/Button;

    .line 45
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->btn_channel_negative:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->mNegative:Landroid/widget/Button;

    .line 47
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->mPositive:Landroid/widget/Button;

    new-instance v1, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity$1;

    invoke-direct {v1, p0}, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity$1;-><init>(Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->mNegative:Landroid/widget/Button;

    new-instance v1, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity$2;

    invoke-direct {v1, p0}, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity$2;-><init>(Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method
