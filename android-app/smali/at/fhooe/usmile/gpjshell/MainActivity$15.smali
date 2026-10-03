.class Lat/fhooe/usmile/gpjshell/MainActivity$15;
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

    .line 833
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$15;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 836
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity$15;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    sget-object v1, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_DISPLAYAPPLETS_ONCARD:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity$15;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 837
    invoke-static {v2}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$000(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 836
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$1200(Lat/fhooe/usmile/gpjshell/MainActivity;Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;I[BBLjava/lang/Object;)V

    .line 838
    return-void
.end method
