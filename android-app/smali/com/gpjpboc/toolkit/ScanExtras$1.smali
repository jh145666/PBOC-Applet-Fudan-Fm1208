.class Lcom/gpjpboc/toolkit/ScanExtras$1;
.super Ljava/lang/Object;
.source "ScanExtras.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpjpboc/toolkit/ScanExtras;->promptCustom(Lcom/gpjpboc/toolkit/FileSysActivityHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$act:Lcom/gpjpboc/toolkit/FileSysActivityHost;

.field private final synthetic val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Lcom/gpjpboc/toolkit/FileSysActivityHost;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/gpjpboc/toolkit/ScanExtras$1;->val$et:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/gpjpboc/toolkit/ScanExtras$1;->val$act:Lcom/gpjpboc/toolkit/FileSysActivityHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 31
    iget-object p1, p0, Lcom/gpjpboc/toolkit/ScanExtras$1;->val$et:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    .line 33
    iget-object p1, p0, Lcom/gpjpboc/toolkit/ScanExtras$1;->val$act:Lcom/gpjpboc/toolkit/FileSysActivityHost;

    const-string p2, "\u672a\u8f93\u5165 ID"

    invoke-interface {p1, p2}, Lcom/gpjpboc/toolkit/FileSysActivityHost;->hostToast(Ljava/lang/String;)V

    return-void

    .line 36
    :cond_0
    iget-object p2, p0, Lcom/gpjpboc/toolkit/ScanExtras$1;->val$act:Lcom/gpjpboc/toolkit/FileSysActivityHost;

    invoke-interface {p2, p1}, Lcom/gpjpboc/toolkit/FileSysActivityHost;->startCustomScan(Ljava/lang/String;)V

    return-void
.end method
