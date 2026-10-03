.class Lcom/gpjpboc/toolkit/WalletActivity$6;
.super Ljava/lang/Object;
.source "WalletActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpjpboc/toolkit/WalletActivity;->log(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpjpboc/toolkit/WalletActivity;

.field private final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gpjpboc/toolkit/WalletActivity;Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/gpjpboc/toolkit/WalletActivity$6;->this$0:Lcom/gpjpboc/toolkit/WalletActivity;

    iput-object p2, p0, Lcom/gpjpboc/toolkit/WalletActivity$6;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/gpjpboc/toolkit/WalletActivity$6;->this$0:Lcom/gpjpboc/toolkit/WalletActivity;

    invoke-static {v0}, Lcom/gpjpboc/toolkit/WalletActivity;->access$1(Lcom/gpjpboc/toolkit/WalletActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gpjpboc/toolkit/WalletActivity$6;->val$s:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method
