.class Lcom/gpjpboc/toolkit/AppletSettingsActivity$4$2;
.super Ljava/lang/Object;
.source "AppletSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpjpboc/toolkit/AppletSettingsActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gpjpboc/toolkit/AppletSettingsActivity$4;

.field private final synthetic val$fr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gpjpboc/toolkit/AppletSettingsActivity$4;Ljava/lang/String;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$4$2;->this$1:Lcom/gpjpboc/toolkit/AppletSettingsActivity$4;

    iput-object p2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$4$2;->val$fr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$4$2;->this$1:Lcom/gpjpboc/toolkit/AppletSettingsActivity$4;

    invoke-static {v0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity$4;->access$0(Lcom/gpjpboc/toolkit/AppletSettingsActivity$4;)Lcom/gpjpboc/toolkit/AppletSettingsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->access$8(Lcom/gpjpboc/toolkit/AppletSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$4$2;->val$fr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$4$2;->this$1:Lcom/gpjpboc/toolkit/AppletSettingsActivity$4;

    invoke-static {v0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity$4;->access$0(Lcom/gpjpboc/toolkit/AppletSettingsActivity$4;)Lcom/gpjpboc/toolkit/AppletSettingsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->access$9(Lcom/gpjpboc/toolkit/AppletSettingsActivity;)V

    return-void
.end method
