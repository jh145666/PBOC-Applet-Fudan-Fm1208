.class public Lat/fhooe/usmile/gpjshell/GetDataActivity;
.super Landroid/app/Activity;
.source "GetDataActivity.java"


# instance fields
.field private mButtonCancel:Landroid/widget/Button;

.field private mButtonOk:Landroid/widget/Button;

.field private mEditP1:Landroid/widget/EditText;

.field private mEditP2:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lat/fhooe/usmile/gpjshell/GetDataActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/GetDataActivity;

    .line 23
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GetDataActivity;->mEditP1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lat/fhooe/usmile/gpjshell/GetDataActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/GetDataActivity;

    .line 23
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GetDataActivity;->mEditP2:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget v0, Lat/fhooe/usmile/gpjshell/R$layout;->activity_get_data:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/GetDataActivity;->setContentView(I)V

    .line 35
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->edit_getdata_p1:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/GetDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/GetDataActivity;->mEditP1:Landroid/widget/EditText;

    .line 36
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->edit_getdata_p2:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/GetDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/GetDataActivity;->mEditP2:Landroid/widget/EditText;

    .line 37
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->btn_getdata_ok:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/GetDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/GetDataActivity;->mButtonOk:Landroid/widget/Button;

    .line 38
    sget v0, Lat/fhooe/usmile/gpjshell/R$id;->btn_getdata_cancel:I

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/GetDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/GetDataActivity;->mButtonCancel:Landroid/widget/Button;

    .line 40
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GetDataActivity;->mButtonOk:Landroid/widget/Button;

    new-instance v1, Lat/fhooe/usmile/gpjshell/GetDataActivity$1;

    invoke-direct {v1, p0}, Lat/fhooe/usmile/gpjshell/GetDataActivity$1;-><init>(Lat/fhooe/usmile/gpjshell/GetDataActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GetDataActivity;->mButtonCancel:Landroid/widget/Button;

    new-instance v1, Lat/fhooe/usmile/gpjshell/GetDataActivity$2;

    invoke-direct {v1, p0}, Lat/fhooe/usmile/gpjshell/GetDataActivity$2;-><init>(Lat/fhooe/usmile/gpjshell/GetDataActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method
