.class Lat/fhooe/usmile/gpjshell/MainActivity$18;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/usmile/gpjshell/MainActivity;->addReaderItemsOnSpinner([Lorg/simalliance/openmobileapi/Reader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lat/fhooe/usmile/gpjshell/MainActivity;


# direct methods
.method constructor <init>(Lat/fhooe/usmile/gpjshell/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 856
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$18;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 859
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity$18;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lat/fhooe/usmile/gpjshell/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 860
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$18;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v1}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$1900(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "GPJShell Log"

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 861
    .local v1, "clip":Landroid/content/ClipData;
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 862
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity$18;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    const-string v3, "\u65e5\u5fd7\u5df2\u590d\u5236\u5230\u526a\u8d34\u677f"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 863
    return-void
.end method
