.class Lat/fhooe/usmile/gpjshell/MainActivity$10;
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

    .line 648
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$10;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 652
    :try_start_0
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity$10;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    sget-object v1, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_INSTALL:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity$10;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 653
    invoke-static {v2}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$000(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    iget-object v3, p0, Lat/fhooe/usmile/gpjshell/MainActivity$10;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 654
    invoke-static {v3}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$1400(Lat/fhooe/usmile/gpjshell/MainActivity;)Ljava/lang/String;

    move-result-object v5

    .line 652
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$1200(Lat/fhooe/usmile/gpjshell/MainActivity;Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;I[BBLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    goto :goto_0

    .line 655
    :catch_0
    move-exception v0

    .line 656
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$800()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    move-result-object v1

    const-string v2, "GPJShell"

    const-string v3, "Error while installing: "

    invoke-virtual {v1, v2, v3, v0}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 658
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
