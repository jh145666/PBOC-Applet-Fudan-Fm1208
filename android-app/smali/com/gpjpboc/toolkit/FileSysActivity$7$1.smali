.class Lcom/gpjpboc/toolkit/FileSysActivity$7$1;
.super Ljava/lang/Object;
.source "FileSysActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpjpboc/toolkit/FileSysActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gpjpboc/toolkit/FileSysActivity$7;

.field private final synthetic val$tree:Ljava/lang/String;

.field private final synthetic val$wasStopped:Z


# direct methods
.method constructor <init>(Lcom/gpjpboc/toolkit/FileSysActivity$7;Ljava/lang/String;Z)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$7$1;->this$1:Lcom/gpjpboc/toolkit/FileSysActivity$7;

    iput-object p2, p0, Lcom/gpjpboc/toolkit/FileSysActivity$7$1;->val$tree:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/gpjpboc/toolkit/FileSysActivity$7$1;->val$wasStopped:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity$7$1;->this$1:Lcom/gpjpboc/toolkit/FileSysActivity$7;

    invoke-static {v0}, Lcom/gpjpboc/toolkit/FileSysActivity$7;->access$0(Lcom/gpjpboc/toolkit/FileSysActivity$7;)Lcom/gpjpboc/toolkit/FileSysActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$12(Lcom/gpjpboc/toolkit/FileSysActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$7$1;->val$tree:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity$7$1;->this$1:Lcom/gpjpboc/toolkit/FileSysActivity$7;

    invoke-static {v0}, Lcom/gpjpboc/toolkit/FileSysActivity$7;->access$0(Lcom/gpjpboc/toolkit/FileSysActivity$7;)Lcom/gpjpboc/toolkit/FileSysActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$13(Lcom/gpjpboc/toolkit/FileSysActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$7$1;->val$wasStopped:Z

    if-eqz v1, :cond_0

    const-string v1, "\u5df2\u505c\u6b62\uff08\u4fdd\u7559\u5df2\u626b\u5230\u7684\u90e8\u5206\uff09"

    goto :goto_0

    :cond_0
    const-string v1, "\u626b\u63cf\u5b8c\u6210"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-boolean v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity$7$1;->val$wasStopped:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity$7$1;->this$1:Lcom/gpjpboc/toolkit/FileSysActivity$7;

    invoke-static {v0}, Lcom/gpjpboc/toolkit/FileSysActivity$7;->access$0(Lcom/gpjpboc/toolkit/FileSysActivity$7;)Lcom/gpjpboc/toolkit/FileSysActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$14(Lcom/gpjpboc/toolkit/FileSysActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity$7$1;->this$1:Lcom/gpjpboc/toolkit/FileSysActivity$7;

    invoke-static {v0}, Lcom/gpjpboc/toolkit/FileSysActivity$7;->access$0(Lcom/gpjpboc/toolkit/FileSysActivity$7;)Lcom/gpjpboc/toolkit/FileSysActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$15(Lcom/gpjpboc/toolkit/FileSysActivity;Z)V

    return-void
.end method
