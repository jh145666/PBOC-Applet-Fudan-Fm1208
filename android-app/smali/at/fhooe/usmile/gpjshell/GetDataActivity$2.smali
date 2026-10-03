.class Lat/fhooe/usmile/gpjshell/GetDataActivity$2;
.super Ljava/lang/Object;
.source "GetDataActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/usmile/gpjshell/GetDataActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lat/fhooe/usmile/gpjshell/GetDataActivity;


# direct methods
.method constructor <init>(Lat/fhooe/usmile/gpjshell/GetDataActivity;)V
    .locals 0
    .param p1, "this$0"    # Lat/fhooe/usmile/gpjshell/GetDataActivity;

    .line 63
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/GetDataActivity$2;->this$0:Lat/fhooe/usmile/gpjshell/GetDataActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 67
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GetDataActivity$2;->this$0:Lat/fhooe/usmile/gpjshell/GetDataActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lat/fhooe/usmile/gpjshell/GetDataActivity;->setResult(I)V

    .line 68
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GetDataActivity$2;->this$0:Lat/fhooe/usmile/gpjshell/GetDataActivity;

    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/GetDataActivity;->finish()V

    .line 69
    return-void
.end method
