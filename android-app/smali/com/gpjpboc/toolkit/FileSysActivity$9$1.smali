.class Lcom/gpjpboc/toolkit/FileSysActivity$9$1;
.super Ljava/lang/Thread;
.source "FileSysActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpjpboc/toolkit/FileSysActivity$9;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gpjpboc/toolkit/FileSysActivity$9;

.field private final synthetic val$ft:Lcom/gpjpboc/toolkit/FileSysActivity$Node;


# direct methods
.method constructor <init>(Lcom/gpjpboc/toolkit/FileSysActivity$9;Lcom/gpjpboc/toolkit/FileSysActivity$Node;)V
    .locals 0

    .line 779
    iput-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$9$1;->this$1:Lcom/gpjpboc/toolkit/FileSysActivity$9;

    iput-object p2, p0, Lcom/gpjpboc/toolkit/FileSysActivity$9$1;->val$ft:Lcom/gpjpboc/toolkit/FileSysActivity$Node;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/gpjpboc/toolkit/FileSysActivity$9$1;)Lcom/gpjpboc/toolkit/FileSysActivity$9;
    .locals 0

    .line 779
    iget-object p0, p0, Lcom/gpjpboc/toolkit/FileSysActivity$9$1;->this$1:Lcom/gpjpboc/toolkit/FileSysActivity$9;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 782
    :try_start_0
    iget-object v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity$9$1;->this$1:Lcom/gpjpboc/toolkit/FileSysActivity$9;

    invoke-static {v0}, Lcom/gpjpboc/toolkit/FileSysActivity$9;->access$0(Lcom/gpjpboc/toolkit/FileSysActivity$9;)Lcom/gpjpboc/toolkit/FileSysActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$9$1;->val$ft:Lcom/gpjpboc/toolkit/FileSysActivity$Node;

    invoke-static {v0, v1}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$17(Lcom/gpjpboc/toolkit/FileSysActivity;Lcom/gpjpboc/toolkit/FileSysActivity$Node;)Ljava/lang/String;

    move-result-object v0

    .line 784
    iget-object v1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$9$1;->this$1:Lcom/gpjpboc/toolkit/FileSysActivity$9;

    invoke-static {v1}, Lcom/gpjpboc/toolkit/FileSysActivity$9;->access$0(Lcom/gpjpboc/toolkit/FileSysActivity$9;)Lcom/gpjpboc/toolkit/FileSysActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$7(Lcom/gpjpboc/toolkit/FileSysActivity;Z)Lcom/gpjpboc/toolkit/FileSysActivity$Node;

    move-result-object v1

    .line 785
    iget-object v2, p0, Lcom/gpjpboc/toolkit/FileSysActivity$9$1;->this$1:Lcom/gpjpboc/toolkit/FileSysActivity$9;

    invoke-static {v2}, Lcom/gpjpboc/toolkit/FileSysActivity$9;->access$0(Lcom/gpjpboc/toolkit/FileSysActivity$9;)Lcom/gpjpboc/toolkit/FileSysActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$8(Lcom/gpjpboc/toolkit/FileSysActivity;Lcom/gpjpboc/toolkit/FileSysActivity$Node;)V

    .line 786
    iget-object v2, p0, Lcom/gpjpboc/toolkit/FileSysActivity$9$1;->this$1:Lcom/gpjpboc/toolkit/FileSysActivity$9;

    invoke-static {v2}, Lcom/gpjpboc/toolkit/FileSysActivity$9;->access$0(Lcom/gpjpboc/toolkit/FileSysActivity$9;)Lcom/gpjpboc/toolkit/FileSysActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$9(Lcom/gpjpboc/toolkit/FileSysActivity;Lcom/gpjpboc/toolkit/FileSysActivity$Node;I)Ljava/lang/String;

    move-result-object v1

    .line 788
    invoke-static {}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$11()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/gpjpboc/toolkit/FileSysActivity$9$1$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/gpjpboc/toolkit/FileSysActivity$9$1$1;-><init>(Lcom/gpjpboc/toolkit/FileSysActivity$9$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 797
    invoke-static {}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$11()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/gpjpboc/toolkit/FileSysActivity$9$1$2;

    invoke-direct {v2, p0, v0}, Lcom/gpjpboc/toolkit/FileSysActivity$9$1$2;-><init>(Lcom/gpjpboc/toolkit/FileSysActivity$9$1;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
