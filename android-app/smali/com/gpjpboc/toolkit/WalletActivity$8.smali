.class Lcom/gpjpboc/toolkit/WalletActivity$8;
.super Ljava/lang/Thread;
.source "WalletActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpjpboc/toolkit/WalletActivity;->run(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpjpboc/toolkit/WalletActivity;

.field private final synthetic val$fdep:Landroid/nfc/tech/IsoDep;

.field private final synthetic val$op:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gpjpboc/toolkit/WalletActivity;Ljava/lang/String;Landroid/nfc/tech/IsoDep;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/gpjpboc/toolkit/WalletActivity$8;->this$0:Lcom/gpjpboc/toolkit/WalletActivity;

    iput-object p2, p0, Lcom/gpjpboc/toolkit/WalletActivity$8;->val$op:Ljava/lang/String;

    iput-object p3, p0, Lcom/gpjpboc/toolkit/WalletActivity$8;->val$fdep:Landroid/nfc/tech/IsoDep;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 208
    :try_start_0
    const-string v1, "sel"

    iget-object v2, p0, Lcom/gpjpboc/toolkit/WalletActivity$8;->val$op:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gpjpboc/toolkit/WalletActivity$8;->this$0:Lcom/gpjpboc/toolkit/WalletActivity;

    iget-object v2, p0, Lcom/gpjpboc/toolkit/WalletActivity$8;->val$fdep:Landroid/nfc/tech/IsoDep;

    invoke-static {v1, v2}, Lcom/gpjpboc/toolkit/WalletActivity;->access$2(Lcom/gpjpboc/toolkit/WalletActivity;Landroid/nfc/tech/IsoDep;)V

    goto :goto_0

    .line 209
    :cond_0
    const-string v1, "bal"

    iget-object v2, p0, Lcom/gpjpboc/toolkit/WalletActivity$8;->val$op:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/gpjpboc/toolkit/WalletActivity$8;->this$0:Lcom/gpjpboc/toolkit/WalletActivity;

    iget-object v2, p0, Lcom/gpjpboc/toolkit/WalletActivity$8;->val$fdep:Landroid/nfc/tech/IsoDep;

    invoke-static {v1, v2}, Lcom/gpjpboc/toolkit/WalletActivity;->access$3(Lcom/gpjpboc/toolkit/WalletActivity;Landroid/nfc/tech/IsoDep;)V

    goto :goto_0

    .line 210
    :cond_1
    const-string v1, "pin"

    iget-object v2, p0, Lcom/gpjpboc/toolkit/WalletActivity$8;->val$op:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/gpjpboc/toolkit/WalletActivity$8;->this$0:Lcom/gpjpboc/toolkit/WalletActivity;

    iget-object v2, p0, Lcom/gpjpboc/toolkit/WalletActivity$8;->val$fdep:Landroid/nfc/tech/IsoDep;

    invoke-static {v1, v2}, Lcom/gpjpboc/toolkit/WalletActivity;->access$4(Lcom/gpjpboc/toolkit/WalletActivity;Landroid/nfc/tech/IsoDep;)V

    goto :goto_0

    .line 211
    :cond_2
    const-string v1, "load"

    iget-object v2, p0, Lcom/gpjpboc/toolkit/WalletActivity$8;->val$op:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/gpjpboc/toolkit/WalletActivity$8;->this$0:Lcom/gpjpboc/toolkit/WalletActivity;

    iget-object v2, p0, Lcom/gpjpboc/toolkit/WalletActivity$8;->val$fdep:Landroid/nfc/tech/IsoDep;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/gpjpboc/toolkit/WalletActivity;->access$5(Lcom/gpjpboc/toolkit/WalletActivity;Landroid/nfc/tech/IsoDep;Z)V

    goto :goto_0

    .line 212
    :cond_3
    iget-object v1, p0, Lcom/gpjpboc/toolkit/WalletActivity$8;->this$0:Lcom/gpjpboc/toolkit/WalletActivity;

    iget-object v2, p0, Lcom/gpjpboc/toolkit/WalletActivity$8;->val$fdep:Landroid/nfc/tech/IsoDep;

    invoke-static {v1, v2, v0}, Lcom/gpjpboc/toolkit/WalletActivity;->access$5(Lcom/gpjpboc/toolkit/WalletActivity;Landroid/nfc/tech/IsoDep;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 214
    iget-object v2, p0, Lcom/gpjpboc/toolkit/WalletActivity$8;->this$0:Lcom/gpjpboc/toolkit/WalletActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5f02\u5e38: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gpjpboc/toolkit/WalletActivity;->access$6(Lcom/gpjpboc/toolkit/WalletActivity;Ljava/lang/String;)V

    .line 215
    iget-object v2, p0, Lcom/gpjpboc/toolkit/WalletActivity$8;->this$0:Lcom/gpjpboc/toolkit/WalletActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/gpjpboc/toolkit/WalletActivity;->access$7(Lcom/gpjpboc/toolkit/WalletActivity;Ljava/lang/String;)V

    .line 217
    :goto_0
    iget-object v1, p0, Lcom/gpjpboc/toolkit/WalletActivity$8;->this$0:Lcom/gpjpboc/toolkit/WalletActivity;

    invoke-static {v1, v0}, Lcom/gpjpboc/toolkit/WalletActivity;->access$8(Lcom/gpjpboc/toolkit/WalletActivity;Z)V

    return-void
.end method
