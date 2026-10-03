.class Lcom/gpjpboc/toolkit/FileSysActivity$5;
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

    .line 133
    iput-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$5;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 135
    sget-object p1, Lcom/gpjpboc/toolkit/Config;->scanJson:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$5;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    const-string v0, "\u6ca1\u6709\u5df2\u4fdd\u5b58\u7684\u626b\u63cf\u6570\u636e"

    invoke-static {p1, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$2(Lcom/gpjpboc/toolkit/FileSysActivity;Ljava/lang/String;)V

    return-void

    .line 139
    :cond_0
    sget-object p1, Lcom/gpjpboc/toolkit/Config;->scanJson:Ljava/lang/String;

    sput-object p1, Lcom/gpjpboc/toolkit/Config;->structJson:Ljava/lang/String;

    .line 140
    iget-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$5;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    invoke-static {p1}, Lcom/gpjpboc/toolkit/Config;->save(Landroid/content/Context;)V

    .line 141
    iget-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$5;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    const-string v0, "\u5df2\u5bfc\u5165\u4fdd\u5b58\u7684\u626b\u63cf\u6570\u636e\u5230\u6587\u4ef6\u7ed3\u6784"

    invoke-static {p1, v0}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$2(Lcom/gpjpboc/toolkit/FileSysActivity;Ljava/lang/String;)V

    return-void
.end method
