.class Lat/fhooe/usmile/gpjshell/ApduEchoTest$TestRunner;
.super Landroid/os/AsyncTask;
.source "ApduEchoTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/fhooe/usmile/gpjshell/ApduEchoTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestRunner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lat/fhooe/usmile/gpjshell/ApduEchoTest;


# direct methods
.method private constructor <init>(Lat/fhooe/usmile/gpjshell/ApduEchoTest;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/ApduEchoTest$TestRunner;->this$0:Lat/fhooe/usmile/gpjshell/ApduEchoTest;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lat/fhooe/usmile/gpjshell/ApduEchoTest;Lat/fhooe/usmile/gpjshell/ApduEchoTest$1;)V
    .locals 0
    .param p1, "x0"    # Lat/fhooe/usmile/gpjshell/ApduEchoTest;
    .param p2, "x1"    # Lat/fhooe/usmile/gpjshell/ApduEchoTest$1;

    .line 244
    invoke-direct {p0, p1}, Lat/fhooe/usmile/gpjshell/ApduEchoTest$TestRunner;-><init>(Lat/fhooe/usmile/gpjshell/ApduEchoTest;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 244
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lat/fhooe/usmile/gpjshell/ApduEchoTest$TestRunner;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "_cmd"    # [Ljava/lang/Void;

    .line 247
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/ApduEchoTest$TestRunner;->this$0:Lat/fhooe/usmile/gpjshell/ApduEchoTest;

    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/ApduEchoTest$TestRunner;->this$0:Lat/fhooe/usmile/gpjshell/ApduEchoTest;

    invoke-static {v1}, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->access$200(Lat/fhooe/usmile/gpjshell/ApduEchoTest;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/fhooe/usmile/gpjshell/ApduEchoTest;->runTest(Ljava/lang/Integer;)V

    .line 248
    const/4 v0, 0x0

    return-object v0
.end method
