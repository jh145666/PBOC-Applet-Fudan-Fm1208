.class Lcom/gpjpboc/toolkit/AppletSettingsActivity$5$1;
.super Ljava/lang/Object;
.source "AppletSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpjpboc/toolkit/AppletSettingsActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gpjpboc/toolkit/AppletSettingsActivity$5;

.field private final synthetic val$fr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gpjpboc/toolkit/AppletSettingsActivity$5;Ljava/lang/String;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$5$1;->this$1:Lcom/gpjpboc/toolkit/AppletSettingsActivity$5;

    iput-object p2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$5$1;->val$fr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$5$1;->this$1:Lcom/gpjpboc/toolkit/AppletSettingsActivity$5;

    invoke-static {v0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity$5;->access$0(Lcom/gpjpboc/toolkit/AppletSettingsActivity$5;)Lcom/gpjpboc/toolkit/AppletSettingsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->access$8(Lcom/gpjpboc/toolkit/AppletSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4fdd\u5b58: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$5$1;->val$fr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$5$1;->this$1:Lcom/gpjpboc/toolkit/AppletSettingsActivity$5;

    invoke-static {v0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity$5;->access$0(Lcom/gpjpboc/toolkit/AppletSettingsActivity$5;)Lcom/gpjpboc/toolkit/AppletSettingsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->access$9(Lcom/gpjpboc/toolkit/AppletSettingsActivity;)V

    return-void
.end method
