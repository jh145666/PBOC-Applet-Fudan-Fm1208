.class Lat/fhooe/usmile/gpjshell/AppletInstallTest$2;
.super Ljava/lang/Object;
.source "AppletInstallTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/usmile/gpjshell/AppletInstallTest;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lat/fhooe/usmile/gpjshell/AppletInstallTest;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lat/fhooe/usmile/gpjshell/AppletInstallTest;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lat/fhooe/usmile/gpjshell/AppletInstallTest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/AppletInstallTest$2;->this$0:Lat/fhooe/usmile/gpjshell/AppletInstallTest;

    iput-object p2, p0, Lat/fhooe/usmile/gpjshell/AppletInstallTest$2;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 173
    invoke-static {}, Lat/fhooe/usmile/gpjshell/MainActivity;->log()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    move-result-object v0

    .line 174
    .local v0, "log":Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;
    const-string v1, "Applet Test"

    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/AppletInstallTest$2;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method
