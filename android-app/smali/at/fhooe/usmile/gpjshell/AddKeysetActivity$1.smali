.class Lat/fhooe/usmile/gpjshell/AddKeysetActivity$1;
.super Ljava/lang/Object;
.source "AddKeysetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lat/fhooe/usmile/gpjshell/AddKeysetActivity;


# direct methods
.method constructor <init>(Lat/fhooe/usmile/gpjshell/AddKeysetActivity;)V
    .locals 0
    .param p1, "this$0"    # Lat/fhooe/usmile/gpjshell/AddKeysetActivity;

    .line 49
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/AddKeysetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .line 53
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/AddKeysetActivity;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->access$000(Lat/fhooe/usmile/gpjshell/AddKeysetActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/AddKeysetActivity;

    .line 54
    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->access$000(Lat/fhooe/usmile/gpjshell/AddKeysetActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/AddKeysetActivity;

    .line 55
    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->access$100(Lat/fhooe/usmile/gpjshell/AddKeysetActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    new-instance v1, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;

    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/AddKeysetActivity;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->access$200(Lat/fhooe/usmile/gpjshell/AddKeysetActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/AddKeysetActivity;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->access$000(Lat/fhooe/usmile/gpjshell/AddKeysetActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/AddKeysetActivity;

    .line 61
    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->access$100(Lat/fhooe/usmile/gpjshell/AddKeysetActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/AddKeysetActivity;

    .line 62
    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->access$300(Lat/fhooe/usmile/gpjshell/AddKeysetActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/AddKeysetActivity;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->access$400(Lat/fhooe/usmile/gpjshell/AddKeysetActivity;)Landroid/widget/EditText;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/AddKeysetActivity;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->access$500(Lat/fhooe/usmile/gpjshell/AddKeysetActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v2, -0x1

    invoke-direct/range {v1 .. v9}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .local v1, "keyset":Lat/fhooe/usmile/gpjshell/objects/GPKeyset;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "keyset"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 66
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/AddKeysetActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->setResult(ILandroid/content/Intent;)V

    .line 68
    new-instance v2, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;

    iget-object v3, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/AddKeysetActivity;

    invoke-direct {v2, v3}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;-><init>(Landroid/content/Context;)V

    .line 69
    .local v2, "source":Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;
    invoke-virtual {v2}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->open()V

    .line 70
    invoke-virtual {v1}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/AddKeysetActivity;

    invoke-virtual {v4}, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "readername"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->containsKeyset(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 71
    .local v3, "containsKey":Z
    invoke-virtual {v2}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->close()V

    .line 73
    if-eqz v3, :cond_0

    .line 74
    iget-object v4, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/AddKeysetActivity;

    invoke-virtual {v4}, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->createDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v4, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/AddKeysetActivity;

    invoke-virtual {v4}, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->finish()V

    .line 78
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "keyset":Lat/fhooe/usmile/gpjshell/objects/GPKeyset;
    .end local v2    # "source":Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;
    .end local v3    # "containsKey":Z
    :goto_0
    goto :goto_1

    .line 79
    :cond_1
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/AddKeysetActivity;

    const-string v1, "Please enter valid ID and Version"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 82
    :goto_1
    return-void
.end method
