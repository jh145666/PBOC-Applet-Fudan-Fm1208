.class Lat/fhooe/usmile/gpjshell/SetInstallParamActivity$1;
.super Ljava/lang/Object;
.source "SetInstallParamActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;


# direct methods
.method constructor <init>(Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;)V
    .locals 0
    .param p1, "this$0"    # Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;

    .line 41
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "params":[B
    const/4 v1, 0x0

    .line 47
    .local v1, "privileges":B
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;

    invoke-static {v2}, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->access$000(Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const/4 v3, -0x1

    const-string v4, "privileges"

    const-string v5, "params"

    if-eqz v2, :cond_4

    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;

    invoke-static {v2}, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->access$000(Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;

    .line 48
    invoke-static {v2}, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->access$100(Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;

    invoke-static {v2}, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->access$100(Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 49
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;

    invoke-static {v2}, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->access$000(Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    .line 50
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;

    const-string v3, "Please check your parameters. Parameters must be a hex value with even number of digits."

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 55
    :cond_0
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;

    invoke-static {v2}, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->access$000(Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;)Landroid/widget/EditText;

    move-result-object v2

    .line 56
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-static {v2}, Lat/fhooe/usmile/gpjshell/GPUtils;->convertHexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 57
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;

    invoke-static {v2}, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->access$100(Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;)Landroid/widget/EditText;

    move-result-object v2

    .line 58
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v1, v2

    .line 61
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;

    invoke-static {v2}, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->access$200(Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    or-int/lit8 v2, v1, 0x4

    int-to-byte v1, v2

    .line 65
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 66
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 67
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 70
    iget-object v4, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;

    invoke-static {v4}, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->access$100(Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xff

    if-gt v4, v5, :cond_3

    iget-object v4, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;

    .line 71
    invoke-static {v4}, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->access$100(Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 72
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 71
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_2

    goto :goto_0

    .line 77
    :cond_2
    iget-object v4, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;

    invoke-virtual {v4, v3, v2}, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->setResult(ILandroid/content/Intent;)V

    .line 78
    iget-object v3, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;

    invoke-virtual {v3}, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->finish()V

    goto :goto_1

    .line 73
    :cond_3
    :goto_0
    iget-object v3, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;

    const-string v4, "Please check your privileges"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 75
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 80
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    goto :goto_2

    .line 83
    :cond_4
    const/4 v2, 0x0

    .line 84
    .local v2, "priv":B
    iget-object v6, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;

    invoke-static {v6}, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->access$200(Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 85
    const/4 v2, 0x4

    .line 87
    :cond_5
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 88
    .local v6, "intent":Landroid/content/Intent;
    const/4 v7, 0x0

    new-array v7, v7, [B

    invoke-virtual {v6, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 89
    invoke-virtual {v6, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 90
    iget-object v4, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;

    invoke-virtual {v4, v3, v6}, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->setResult(ILandroid/content/Intent;)V

    .line 91
    iget-object v3, p0, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;

    invoke-virtual {v3}, Lat/fhooe/usmile/gpjshell/SetInstallParamActivity;->finish()V

    .line 93
    .end local v2    # "priv":B
    .end local v6    # "intent":Landroid/content/Intent;
    :goto_2
    return-void
.end method
