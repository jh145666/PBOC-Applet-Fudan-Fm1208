.class Lat/fhooe/usmile/gpjshell/GetDataActivity$1;
.super Ljava/lang/Object;
.source "GetDataActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/usmile/gpjshell/GetDataActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lat/fhooe/usmile/gpjshell/GetDataActivity;


# direct methods
.method constructor <init>(Lat/fhooe/usmile/gpjshell/GetDataActivity;)V
    .locals 0
    .param p1, "this$0"    # Lat/fhooe/usmile/gpjshell/GetDataActivity;

    .line 40
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/GetDataActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/GetDataActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 46
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GetDataActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/GetDataActivity;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/GetDataActivity;->access$000(Lat/fhooe/usmile/gpjshell/GetDataActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GetDataActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/GetDataActivity;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/GetDataActivity;->access$100(Lat/fhooe/usmile/gpjshell/GetDataActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GetDataActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/GetDataActivity;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/GetDataActivity;->access$000(Lat/fhooe/usmile/gpjshell/GetDataActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 48
    .local v0, "p1":I
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/GetDataActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/GetDataActivity;

    invoke-static {v2}, Lat/fhooe/usmile/gpjshell/GetDataActivity;->access$100(Lat/fhooe/usmile/gpjshell/GetDataActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 50
    .local v1, "p2":I
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 51
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "p1"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    const-string v3, "p2"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    iget-object v3, p0, Lat/fhooe/usmile/gpjshell/GetDataActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/GetDataActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Lat/fhooe/usmile/gpjshell/GetDataActivity;->setResult(ILandroid/content/Intent;)V

    .line 55
    iget-object v3, p0, Lat/fhooe/usmile/gpjshell/GetDataActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/GetDataActivity;

    invoke-virtual {v3}, Lat/fhooe/usmile/gpjshell/GetDataActivity;->finish()V

    .line 57
    .end local v0    # "p1":I
    .end local v1    # "p2":I
    .end local v2    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GetDataActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/GetDataActivity;

    const-string v1, "Please check your parameters"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 60
    :goto_0
    return-void
.end method
