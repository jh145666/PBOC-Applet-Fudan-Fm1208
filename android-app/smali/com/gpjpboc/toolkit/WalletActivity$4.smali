.class Lcom/gpjpboc/toolkit/WalletActivity$4;
.super Ljava/lang/Object;
.source "WalletActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpjpboc/toolkit/WalletActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpjpboc/toolkit/WalletActivity;


# direct methods
.method constructor <init>(Lcom/gpjpboc/toolkit/WalletActivity;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/gpjpboc/toolkit/WalletActivity$4;->this$0:Lcom/gpjpboc/toolkit/WalletActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 116
    iget-object p1, p0, Lcom/gpjpboc/toolkit/WalletActivity$4;->this$0:Lcom/gpjpboc/toolkit/WalletActivity;

    const-string v0, "load"

    invoke-static {p1, v0}, Lcom/gpjpboc/toolkit/WalletActivity;->access$0(Lcom/gpjpboc/toolkit/WalletActivity;Ljava/lang/String;)V

    return-void
.end method
