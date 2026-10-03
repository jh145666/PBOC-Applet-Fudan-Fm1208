.class Lcom/gpjpboc/toolkit/FileSysActivity$11;
.super Ljava/lang/Object;
.source "FileSysActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpjpboc/toolkit/FileSysActivity;->editTree()V
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

    .line 970
    iput-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$11;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 972
    iget-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$11;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    const-string p2, "\u6587\u4ef6\u6811\u5df2\u4fdd\u5b58\u5230\u672c\u5730"

    invoke-static {p1, p2}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$2(Lcom/gpjpboc/toolkit/FileSysActivity;Ljava/lang/String;)V

    return-void
.end method
