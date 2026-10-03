.class Lcom/gpjpboc/toolkit/FileSysActivity$7;
.super Ljava/lang/Thread;
.source "FileSysActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpjpboc/toolkit/FileSysActivity;->startScan(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

.field private final synthetic val$fsmart:Z


# direct methods
.method constructor <init>(Lcom/gpjpboc/toolkit/FileSysActivity;Z)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$7;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    iput-boolean p2, p0, Lcom/gpjpboc/toolkit/FileSysActivity$7;->val$fsmart:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/gpjpboc/toolkit/FileSysActivity$7;)Lcom/gpjpboc/toolkit/FileSysActivity;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/gpjpboc/toolkit/FileSysActivity$7;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity$7;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    iget-boolean v1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$7;->val$fsmart:Z

    invoke-static {v0, v1}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$7(Lcom/gpjpboc/toolkit/FileSysActivity;Z)Lcom/gpjpboc/toolkit/FileSysActivity$Node;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$7;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    invoke-static {v1, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$8(Lcom/gpjpboc/toolkit/FileSysActivity;Lcom/gpjpboc/toolkit/FileSysActivity$Node;)V

    .line 240
    iget-object v1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$7;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$9(Lcom/gpjpboc/toolkit/FileSysActivity;Lcom/gpjpboc/toolkit/FileSysActivity$Node;I)Ljava/lang/String;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$7;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    invoke-static {v1}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$10(Lcom/gpjpboc/toolkit/FileSysActivity;)Z

    move-result v1

    .line 242
    invoke-static {}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$11()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/gpjpboc/toolkit/FileSysActivity$7$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/gpjpboc/toolkit/FileSysActivity$7$1;-><init>(Lcom/gpjpboc/toolkit/FileSysActivity$7;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 251
    invoke-static {}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$11()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/gpjpboc/toolkit/FileSysActivity$7$2;

    invoke-direct {v2, p0, v0}, Lcom/gpjpboc/toolkit/FileSysActivity$7$2;-><init>(Lcom/gpjpboc/toolkit/FileSysActivity$7;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
