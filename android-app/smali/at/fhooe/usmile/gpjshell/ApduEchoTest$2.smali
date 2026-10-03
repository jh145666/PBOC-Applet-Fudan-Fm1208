.class Lat/fhooe/usmile/gpjshell/ApduEchoTest$2;
.super Ljava/lang/Object;
.source "ApduEchoTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/usmile/gpjshell/ApduEchoTest;->runTest(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lat/fhooe/usmile/gpjshell/ApduEchoTest;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lat/fhooe/usmile/gpjshell/ApduEchoTest;I)V
    .locals 0
    .param p1, "this$0"    # Lat/fhooe/usmile/gpjshell/ApduEchoTest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/ApduEchoTest$2;->this$0:Lat/fhooe/usmile/gpjshell/ApduEchoTest;

    iput p2, p0, Lat/fhooe/usmile/gpjshell/ApduEchoTest$2;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 204
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/ApduEchoTest$2;->this$0:Lat/fhooe/usmile/gpjshell/ApduEchoTest;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->access$100(Lat/fhooe/usmile/gpjshell/ApduEchoTest;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lat/fhooe/usmile/gpjshell/ApduEchoTest$2;->val$progress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 205
    return-void
.end method
