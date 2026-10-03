.class Lat/fhooe/usmile/gpjshell/AppletInstallTest$1;
.super Ljava/lang/Object;
.source "AppletInstallTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/usmile/gpjshell/AppletInstallTest;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lat/fhooe/usmile/gpjshell/AppletInstallTest;


# direct methods
.method constructor <init>(Lat/fhooe/usmile/gpjshell/AppletInstallTest;)V
    .locals 0
    .param p1, "this$0"    # Lat/fhooe/usmile/gpjshell/AppletInstallTest;

    .line 77
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/AppletInstallTest$1;->this$0:Lat/fhooe/usmile/gpjshell/AppletInstallTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 80
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AppletInstallTest$1;->this$0:Lat/fhooe/usmile/gpjshell/AppletInstallTest;

    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/AppletInstallTest;->finish()V

    .line 81
    return-void
.end method
