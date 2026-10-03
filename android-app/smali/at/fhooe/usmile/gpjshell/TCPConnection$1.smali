.class Lat/fhooe/usmile/gpjshell/TCPConnection$1;
.super Ljava/lang/Object;
.source "TCPConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/usmile/gpjshell/TCPConnection;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lat/fhooe/usmile/gpjshell/TCPConnection;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lat/fhooe/usmile/gpjshell/TCPConnection;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lat/fhooe/usmile/gpjshell/TCPConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/TCPConnection$1;->this$0:Lat/fhooe/usmile/gpjshell/TCPConnection;

    iput-object p2, p0, Lat/fhooe/usmile/gpjshell/TCPConnection$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 95
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/TCPConnection$1;->this$0:Lat/fhooe/usmile/gpjshell/TCPConnection;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/TCPConnection;->access$000(Lat/fhooe/usmile/gpjshell/TCPConnection;)Lat/fhooe/usmile/gpjshell/TCPFileResultListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/TCPConnection$1;->val$file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v2}, Lat/fhooe/usmile/gpjshell/TCPFileResultListener;->fileReceived(Ljava/lang/String;III)V

    .line 96
    return-void
.end method
