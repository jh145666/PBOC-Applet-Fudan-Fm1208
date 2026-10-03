.class Lcom/gpjpboc/toolkit/AtsHelper$2;
.super Ljava/lang/Object;
.source "AtsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpjpboc/toolkit/AtsHelper;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$act:Landroid/app/Activity;

.field private final synthetic val$etAts:Landroid/widget/EditText;

.field private final synthetic val$etUid:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/gpjpboc/toolkit/AtsHelper$2;->val$act:Landroid/app/Activity;

    iput-object p2, p0, Lcom/gpjpboc/toolkit/AtsHelper$2;->val$etUid:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/gpjpboc/toolkit/AtsHelper$2;->val$etAts:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 72
    iget-object p1, p0, Lcom/gpjpboc/toolkit/AtsHelper$2;->val$act:Landroid/app/Activity;

    iget-object p2, p0, Lcom/gpjpboc/toolkit/AtsHelper$2;->val$etUid:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/gpjpboc/toolkit/AtsHelper$2;->val$etAts:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/gpjpboc/toolkit/AtsHelper;->access$0(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
