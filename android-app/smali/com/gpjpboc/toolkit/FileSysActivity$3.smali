.class Lcom/gpjpboc/toolkit/FileSysActivity$3;
.super Ljava/lang/Object;
.source "FileSysActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpjpboc/toolkit/FileSysActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpjpboc/toolkit/FileSysActivity;


# direct methods
.method constructor <init>(Lcom/gpjpboc/toolkit/FileSysActivity;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$3;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 115
    iget-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$3;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    invoke-static {p1}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$1(Lcom/gpjpboc/toolkit/FileSysActivity;)Lcom/gpjpboc/toolkit/FileSysActivity$Node;

    move-result-object p1

    if-nez p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$3;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    const-string v0, "\u8bf7\u5148\u626b\u63cf"

    invoke-static {p1, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$2(Lcom/gpjpboc/toolkit/FileSysActivity;Ljava/lang/String;)V

    return-void

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$3;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    const-string v0, "\u4ee5\u5f53\u524d\u626b\u63cf\u6570\u636e\u5728\u5361\u4e0a\u5efa\u7acb\u6587\u4ef6\u7ed3\u6784\uff1f\uff08\u5df2\u5b58\u5728\u7684\u6587\u4ef6\u81ea\u52a8\u8df3\u8fc7\uff09"

    invoke-static {p1}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$1(Lcom/gpjpboc/toolkit/FileSysActivity;)Lcom/gpjpboc/toolkit/FileSysActivity$Node;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$4(Lcom/gpjpboc/toolkit/FileSysActivity;Ljava/lang/String;Lcom/gpjpboc/toolkit/FileSysActivity$Node;)V

    return-void
.end method
