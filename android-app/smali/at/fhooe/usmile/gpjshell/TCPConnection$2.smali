.class Lat/fhooe/usmile/gpjshell/TCPConnection$2;
.super Ljava/lang/Object;
.source "TCPConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/usmile/gpjshell/TCPConnection;->sendLogOutput(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lat/fhooe/usmile/gpjshell/TCPConnection;

.field final synthetic val$st:Ljava/lang/String;


# direct methods
.method constructor <init>(Lat/fhooe/usmile/gpjshell/TCPConnection;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lat/fhooe/usmile/gpjshell/TCPConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/TCPConnection$2;->this$0:Lat/fhooe/usmile/gpjshell/TCPConnection;

    iput-object p2, p0, Lat/fhooe/usmile/gpjshell/TCPConnection$2;->val$st:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 126
    invoke-static {}, Lat/fhooe/usmile/gpjshell/MainActivity;->log()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "From client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/TCPConnection$2;->val$st:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TCP"

    invoke-virtual {v0, v2, v1}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method
