.class Lat/fhooe/usmile/gpjshell/AddKeysetActivity$4;
.super Ljava/lang/Object;
.source "AddKeysetActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->createDialog()Landroid/app/Dialog;
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

    .line 104
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity$4;->this$0:Lat/fhooe/usmile/gpjshell/AddKeysetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 106
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AddKeysetActivity$4;->this$0:Lat/fhooe/usmile/gpjshell/AddKeysetActivity;

    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/AddKeysetActivity;->finish()V

    .line 107
    return-void
.end method
