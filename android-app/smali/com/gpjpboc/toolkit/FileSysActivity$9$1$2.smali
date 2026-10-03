.class Lcom/gpjpboc/toolkit/FileSysActivity$9$1$2;
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

.field private final synthetic val$t:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/gpjpboc/toolkit/FileSysActivity$9$1;Ljava/lang/Throwable;)V
    .locals 0

    .line 797
    iput-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$9$1$2;->this$2:Lcom/gpjpboc/toolkit/FileSysActivity$9$1;

    iput-object p2, p0, Lcom/gpjpboc/toolkit/FileSysActivity$9$1$2;->val$t:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 799
    iget-object v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity$9$1$2;->this$2:Lcom/gpjpboc/toolkit/FileSysActivity$9$1;

    invoke-static {v0}, Lcom/gpjpboc/toolkit/FileSysActivity$9$1;->access$0(Lcom/gpjpboc/toolkit/FileSysActivity$9$1;)Lcom/gpjpboc/toolkit/FileSysActivity$9;

    move-result-object v0

    invoke-static {v0}, Lcom/gpjpboc/toolkit/FileSysActivity$9;->access$0(Lcom/gpjpboc/toolkit/FileSysActivity$9;)Lcom/gpjpboc/toolkit/FileSysActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$13(Lcom/gpjpboc/toolkit/FileSysActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5efa\u7acb\u4e2d\u65ad: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpjpboc/toolkit/FileSysActivity$9$1$2;->val$t:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity$9$1$2;->this$2:Lcom/gpjpboc/toolkit/FileSysActivity$9$1;

    invoke-static {v0}, Lcom/gpjpboc/toolkit/FileSysActivity$9$1;->access$0(Lcom/gpjpboc/toolkit/FileSysActivity$9$1;)Lcom/gpjpboc/toolkit/FileSysActivity$9;

    move-result-object v0

    invoke-static {v0}, Lcom/gpjpboc/toolkit/FileSysActivity$9;->access$0(Lcom/gpjpboc/toolkit/FileSysActivity$9;)Lcom/gpjpboc/toolkit/FileSysActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$16(Lcom/gpjpboc/toolkit/FileSysActivity;Z)V

    return-void
.end method
