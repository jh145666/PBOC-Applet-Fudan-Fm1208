.class Lcom/gpjpboc/toolkit/FileSysActivity$9;
.super Ljava/lang/Object;
.source "FileSysActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpjpboc/toolkit/FileSysActivity;->confirmBuild(Ljava/lang/String;Lcom/gpjpboc/toolkit/FileSysActivity$Node;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

.field private final synthetic val$tree:Lcom/gpjpboc/toolkit/FileSysActivity$Node;


# direct methods
.method constructor <init>(Lcom/gpjpboc/toolkit/FileSysActivity;Lcom/gpjpboc/toolkit/FileSysActivity$Node;)V
    .locals 0

    .line 774
    iput-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$9;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    iput-object p2, p0, Lcom/gpjpboc/toolkit/FileSysActivity$9;->val$tree:Lcom/gpjpboc/toolkit/FileSysActivity$Node;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/gpjpboc/toolkit/FileSysActivity$9;)Lcom/gpjpboc/toolkit/FileSysActivity;
    .locals 0

    .line 774
    iget-object p0, p0, Lcom/gpjpboc/toolkit/FileSysActivity$9;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 776
    iget-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$9;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$16(Lcom/gpjpboc/toolkit/FileSysActivity;Z)V

    .line 777
    iget-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$9;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    invoke-static {p1}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$13(Lcom/gpjpboc/toolkit/FileSysActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "\u5efa\u7acb\u4e2d..."

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    iget-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$9;->val$tree:Lcom/gpjpboc/toolkit/FileSysActivity$Node;

    .line 779
    new-instance p2, Lcom/gpjpboc/toolkit/FileSysActivity$9$1;

    invoke-direct {p2, p0, p1}, Lcom/gpjpboc/toolkit/FileSysActivity$9$1;-><init>(Lcom/gpjpboc/toolkit/FileSysActivity$9;Lcom/gpjpboc/toolkit/FileSysActivity$Node;)V

    .line 805
    invoke-virtual {p2}, Lcom/gpjpboc/toolkit/FileSysActivity$9$1;->start()V

    return-void
.end method
