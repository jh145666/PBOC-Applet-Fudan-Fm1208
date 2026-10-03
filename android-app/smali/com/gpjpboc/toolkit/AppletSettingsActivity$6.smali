.class Lcom/gpjpboc/toolkit/AppletSettingsActivity$6;
.super Ljava/lang/Object;
.source "AppletSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpjpboc/toolkit/AppletSettingsActivity;->parseConfig([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpjpboc/toolkit/AppletSettingsActivity;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gpjpboc/toolkit/AppletSettingsActivity;Ljava/lang/String;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$6;->this$0:Lcom/gpjpboc/toolkit/AppletSettingsActivity;

    iput-object p2, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$6;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$6;->this$0:Lcom/gpjpboc/toolkit/AppletSettingsActivity;

    invoke-static {v0}, Lcom/gpjpboc/toolkit/AppletSettingsActivity;->access$8(Lcom/gpjpboc/toolkit/AppletSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/gpjpboc/toolkit/AppletSettingsActivity$6;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method
