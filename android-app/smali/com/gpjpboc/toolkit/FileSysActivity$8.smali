.class Lcom/gpjpboc/toolkit/FileSysActivity$8;
.super Ljava/lang/Object;
.source "FileSysActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpjpboc/toolkit/FileSysActivity;->phase(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

.field private final synthetic val$p:I

.field private final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gpjpboc/toolkit/FileSysActivity;Ljava/lang/String;I)V
    .locals 0

    .line 754
    iput-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$8;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    iput-object p2, p0, Lcom/gpjpboc/toolkit/FileSysActivity$8;->val$s:Ljava/lang/String;

    iput p3, p0, Lcom/gpjpboc/toolkit/FileSysActivity$8;->val$p:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 756
    iget-object v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity$8;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    invoke-static {v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$13(Lcom/gpjpboc/toolkit/FileSysActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$8;->val$s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 757
    iget v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity$8;->val$p:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity$8;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    invoke-static {v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$14(Lcom/gpjpboc/toolkit/FileSysActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$8;->val$p:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method
