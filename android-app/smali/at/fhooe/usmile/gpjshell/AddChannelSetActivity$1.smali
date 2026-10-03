.class Lat/fhooe/usmile/gpjshell/AddChannelSetActivity$1;
.super Ljava/lang/Object;
.source "AddChannelSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;


# direct methods
.method constructor <init>(Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;)V
    .locals 0
    .param p1, "this$0"    # Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;

    .line 47
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 51
    new-instance v0, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;

    invoke-direct {v0}, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;-><init>()V

    .line 52
    .local v0, "channel":Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;

    invoke-static {v1}, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->access$000(Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 53
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;

    invoke-static {v1}, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->access$000(Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->setChannelNameString(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;

    invoke-static {v1}, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->access$100(Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;

    invoke-static {v1}, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->access$100(Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->setScpVersion(I)V

    .line 56
    :cond_0
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;

    invoke-static {v1}, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->access$200(Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;

    invoke-static {v1}, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->access$200(Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->setSecurityLevel(I)V

    .line 58
    :cond_1
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;

    invoke-static {v1}, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->access$300(Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->setGemalto(Z)V

    .line 60
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 61
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "channelset"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 62
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->setResult(ILandroid/content/Intent;)V

    .line 63
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;

    invoke-virtual {v2}, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;->finish()V

    .line 65
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 66
    :cond_2
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;

    const-string v2, "Please enter valid name"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 69
    :goto_0
    return-void
.end method
