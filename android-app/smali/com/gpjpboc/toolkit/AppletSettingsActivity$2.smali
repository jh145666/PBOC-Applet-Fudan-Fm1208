.class Lcom/gpjpboc/toolkit/AppletSettingsActivity$2;
.super Ljava/lang/Object;
.source "AppletSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpjpboc/toolkit/AppletSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpjpboc/toolkit/AppletSettingsActivity;


# direct methods
.method constructor <init>(Lcom/gpjpboc/toolkit/AppletSettingsActivity;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$2;->this$0:Lcom/gpjpboc/toolkit/AppletSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 161
    :try_start_0
    iget-object p1, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$2;->this$0:Lcom/gpjpboc/toolkit/AppletSettingsActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$2;->this$0:Lcom/gpjpboc/toolkit/AppletSettingsActivity;

    .line 162
    const-class v2, Lcom/gpjpboc/toolkit/FileSysActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    invoke-virtual {p1, v0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
