.class Lat/fhooe/usmile/gpjshell/MainActivity$17;
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

    .line 849
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$17;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 852
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity$17;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$1900(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 853
    return-void
.end method
