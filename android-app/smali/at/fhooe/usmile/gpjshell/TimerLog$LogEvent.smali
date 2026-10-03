.class public final enum Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;
.super Ljava/lang/Enum;
.source "TimerLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/fhooe/usmile/gpjshell/TimerLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

.field public static final enum APPLET_DELETE_FINISHED:Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

.field public static final enum APPLET_INSTALL_FINISHED:Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

.field public static final enum CAP_LOAD_FINISHED:Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

.field public static final enum ECHO_TEST_FINISHED:Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;


# direct methods
.method private static synthetic $values()[Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;
    .locals 3

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

    sget-object v1, Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;->CAP_LOAD_FINISHED:Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;->APPLET_DELETE_FINISHED:Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;->APPLET_INSTALL_FINISHED:Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;->ECHO_TEST_FINISHED:Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

    const-string v1, "CAP_LOAD_FINISHED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;->CAP_LOAD_FINISHED:Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

    new-instance v0, Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

    const-string v1, "APPLET_DELETE_FINISHED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;->APPLET_DELETE_FINISHED:Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

    new-instance v0, Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

    const-string v1, "APPLET_INSTALL_FINISHED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;->APPLET_INSTALL_FINISHED:Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

    new-instance v0, Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

    const-string v1, "ECHO_TEST_FINISHED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;->ECHO_TEST_FINISHED:Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

    .line 18
    invoke-static {}, Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;->$values()[Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

    move-result-object v0

    sput-object v0, Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;->$VALUES:[Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 18
    const-class v0, Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

    return-object v0
.end method

.method public static values()[Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;
    .locals 1

    .line 18
    sget-object v0, Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;->$VALUES:[Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

    invoke-virtual {v0}, [Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lat/fhooe/usmile/gpjshell/TimerLog$LogEvent;

    return-object v0
.end method
