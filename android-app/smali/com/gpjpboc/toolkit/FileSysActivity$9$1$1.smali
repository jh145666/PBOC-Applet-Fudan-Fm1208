.class Lcom/gpjpboc/toolkit/FileSysActivity$9$1$1;
.super Ljava/lang/Object;
.source "FileSysActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpjpboc/toolkit/FileSysActivity$9$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/gpjpboc/toolkit/FileSysActivity$9$1;

.field private final synthetic val$lg:Ljava/lang/String;

.field private final synthetic val$tree2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gpjpboc/toolkit/FileSysActivity$9$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 788
    iput-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$9$1$1;->this$2:Lcom/gpjpboc/toolkit/FileSysActivity$9$1;

    iput-object p2, p0, Lcom/gpjpboc/toolkit/FileSysActivity$9$1$1;->val$tree2:Ljava/lang/String;

    iput-object p3, p0, Lcom/gpjpboc/toolkit/FileSysActivity$9$1$1;->val$lg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 790
    iget-object v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity$9$1$1;->this$2:Lcom/gpjpboc/toolkit/FileSysActivity$9$1;

    invoke-static {v0}, Lcom/gpjpboc/toolkit/FileSysActivity$9$1;->access$0(Lcom/gpjpboc/toolkit/FileSysActivity$9$1;)Lcom/gpjpboc/toolkit/FileSysActivity$9;

    move-result-object v0

    invoke-static {v0}, Lcom/gpjpboc/toolkit/FileSysActivity$9;->access$0(Lcom/gpjpboc/toolkit/FileSysActivity$9;)Lcom/gpjpboc/toolkit/FileSysActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$12(Lcom/gpjpboc/toolkit/FileSysActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$9$1$1;->val$tree2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    iget-object v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity$9$1$1;->this$2:Lcom/gpjpboc/toolkit/FileSysActivity$9$1;

    invoke-static {v0}, Lcom/gpjpboc/toolkit/FileSysActivity$9$1;->access$0(Lcom/gpjpboc/toolkit/FileSysActivity$9$1;)Lcom/gpjpboc/toolkit/FileSysActivity$9;

    move-result-object v0

    invoke-static {v0}, Lcom/gpjpboc/toolkit/FileSysActivity$9;->access$0(Lcom/gpjpboc/toolkit/FileSysActivity$9;)Lcom/gpjpboc/toolkit/FileSysActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$13(Lcom/gpjpboc/toolkit/FileSysActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5efa\u7acb\u5b8c\u6210\uff08\u8be6\u89c1\u6811\uff09\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpjpboc/toolkit/FileSysActivity$9$1$1;->val$lg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    iget-object v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity$9$1$1;->this$2:Lcom/gpjpboc/toolkit/FileSysActivity$9$1;

    invoke-static {v0}, Lcom/gpjpboc/toolkit/FileSysActivity$9$1;->access$0(Lcom/gpjpboc/toolkit/FileSysActivity$9$1;)Lcom/gpjpboc/toolkit/FileSysActivity$9;

    move-result-object v0

    invoke-static {v0}, Lcom/gpjpboc/toolkit/FileSysActivity$9;->access$0(Lcom/gpjpboc/toolkit/FileSysActivity$9;)Lcom/gpjpboc/toolkit/FileSysActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$14(Lcom/gpjpboc/toolkit/FileSysActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 793
    iget-object v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity$9$1$1;->this$2:Lcom/gpjpboc/toolkit/FileSysActivity$9$1;

    invoke-static {v0}, Lcom/gpjpboc/toolkit/FileSysActivity$9$1;->access$0(Lcom/gpjpboc/toolkit/FileSysActivity$9$1;)Lcom/gpjpboc/toolkit/FileSysActivity$9;

    move-result-object v0

    invoke-static {v0}, Lcom/gpjpboc/toolkit/FileSysActivity$9;->access$0(Lcom/gpjpboc/toolkit/FileSysActivity$9;)Lcom/gpjpboc/toolkit/FileSysActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$16(Lcom/gpjpboc/toolkit/FileSysActivity;Z)V

    return-void
.end method
