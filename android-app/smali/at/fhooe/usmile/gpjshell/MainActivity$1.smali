.class Lat/fhooe/usmile/gpjshell/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/usmile/gpjshell/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lat/fhooe/usmile/gpjshell/MainActivity;


# direct methods
.method constructor <init>(Lat/fhooe/usmile/gpjshell/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 158
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 162
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    const-class v2, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v1}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$000(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/Spinner;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v1}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$000(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/Spinner;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    const-string v2, "readername"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    :cond_0
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$1;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    const/16 v2, 0x66

    invoke-virtual {v1, v0, v2}, Lat/fhooe/usmile/gpjshell/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 168
    return-void
.end method
