.class Lat/fhooe/usmile/gpjshell/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/usmile/gpjshell/MainActivity;->onActivityResult(IILandroid/content/Intent;)V
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

    .line 474
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$8;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 478
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity$8;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$1000(Lat/fhooe/usmile/gpjshell/MainActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$8;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v1}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$1100(Lat/fhooe/usmile/gpjshell/MainActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    move-object v8, v2

    .line 479
    .local v8, "params":[Ljava/lang/Integer;
    iget-object v3, p0, Lat/fhooe/usmile/gpjshell/MainActivity$8;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    sget-object v4, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_GET_DATA:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity$8;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 480
    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$000(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    .line 479
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v8}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$1200(Lat/fhooe/usmile/gpjshell/MainActivity;Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;I[BBLjava/lang/Object;)V

    .line 482
    return-void
.end method
