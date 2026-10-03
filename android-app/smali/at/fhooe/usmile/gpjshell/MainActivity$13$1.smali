.class Lat/fhooe/usmile/gpjshell/MainActivity$13$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/usmile/gpjshell/MainActivity$13;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lat/fhooe/usmile/gpjshell/MainActivity$13;

.field final synthetic val$appletAIDs:Ljava/util/List;


# direct methods
.method constructor <init>(Lat/fhooe/usmile/gpjshell/MainActivity$13;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lat/fhooe/usmile/gpjshell/MainActivity$13;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 738
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$13$1;->this$1:Lat/fhooe/usmile/gpjshell/MainActivity$13;

    iput-object p2, p0, Lat/fhooe/usmile/gpjshell/MainActivity$13$1;->val$appletAIDs:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 741
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity$13$1;->this$1:Lat/fhooe/usmile/gpjshell/MainActivity$13;

    iget-object v0, v0, Lat/fhooe/usmile/gpjshell/MainActivity$13;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$13$1;->val$appletAIDs:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sourceforge/gpj/cardservices/AID;

    invoke-static {v0, v1}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$1600(Lat/fhooe/usmile/gpjshell/MainActivity;Lnet/sourceforge/gpj/cardservices/AID;)V

    .line 742
    return-void
.end method
