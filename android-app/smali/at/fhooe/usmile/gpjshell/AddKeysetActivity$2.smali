.class Lat/fhooe/usmile/gpjshell/AddKeysetActivity$2;
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

    .line 88
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity$2;->this$0:Lat/fhooe/usmile/gpjshell/AddKeysetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 92
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity$2;->this$0:Lat/fhooe/usmile/gpjshell/AddKeysetActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->setResult(I)V

    .line 93
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity$2;->this$0:Lat/fhooe/usmile/gpjshell/AddKeysetActivity;

    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->finish()V

    .line 94
    return-void
.end method
