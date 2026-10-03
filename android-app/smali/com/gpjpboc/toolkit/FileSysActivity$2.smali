.class Lcom/gpjpboc/toolkit/FileSysActivity$2;
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

    .line 94
    iput-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$2;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 96
    iget-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$2;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    invoke-static {p1}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$1(Lcom/gpjpboc/toolkit/FileSysActivity;)Lcom/gpjpboc/toolkit/FileSysActivity$Node;

    move-result-object p1

    if-nez p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$2;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    const-string v0, "\u8fd8\u6ca1\u6709\u626b\u63cf\u6570\u636e"

    invoke-static {p1, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$2(Lcom/gpjpboc/toolkit/FileSysActivity;Ljava/lang/String;)V

    return-void

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$2;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    invoke-static {p1}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$1(Lcom/gpjpboc/toolkit/FileSysActivity;)Lcom/gpjpboc/toolkit/FileSysActivity$Node;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$3(Lcom/gpjpboc/toolkit/FileSysActivity;Lcom/gpjpboc/toolkit/FileSysActivity$Node;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/gpjpboc/toolkit/Config;->scanJson:Ljava/lang/String;

    .line 101
    iget-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$2;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    invoke-static {p1}, Lcom/gpjpboc/toolkit/Config;->save(Landroid/content/Context;)V

    .line 102
    iget-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$2;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    const-string v0, "\u626b\u63cf\u6570\u636e\u5df2\u4fdd\u5b58"

    invoke-static {p1, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$2(Lcom/gpjpboc/toolkit/FileSysActivity;Ljava/lang/String;)V

    return-void
.end method
