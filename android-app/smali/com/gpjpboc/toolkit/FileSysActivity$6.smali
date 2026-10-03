.class Lcom/gpjpboc/toolkit/FileSysActivity$6;
.super Ljava/lang/Object;
.source "FileSysActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpjpboc/toolkit/FileSysActivity;->chooseScan()V
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

    .line 195
    iput-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$6;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 198
    iget-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$6;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    invoke-static {p1}, Lcom/gpjpboc/toolkit/ScanExtras;->promptCustom(Lcom/gpjpboc/toolkit/FileSysActivityHost;)V

    goto :goto_1

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$6;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$6(Lcom/gpjpboc/toolkit/FileSysActivity;Z)V

    :goto_1
    return-void
.end method
