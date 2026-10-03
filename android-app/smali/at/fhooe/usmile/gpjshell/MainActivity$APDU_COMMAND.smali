.class public final enum Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;
.super Ljava/lang/Enum;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/fhooe/usmile/gpjshell/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "APDU_COMMAND"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

.field public static final enum APDU_CMD_OPEN:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

.field public static final enum APDU_DELETE_ALL_APPLETS:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

.field public static final enum APDU_DELETE_SELECTED_APPLET:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

.field public static final enum APDU_DELETE_SENT_APPLET:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

.field public static final enum APDU_DISPLAYAPPLETS_ONCARD:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

.field public static final enum APDU_GET_DATA:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

.field public static final enum APDU_INSTALL:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

.field public static final enum APDU_SELECT:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

.field public static final enum APDU_SEND:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

.field public static final enum APDU_SET_DEFAULT_APPLET:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;


# direct methods
.method private static synthetic $values()[Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;
    .locals 3

    .line 123
    const/16 v0, 0xa

    new-array v0, v0, [Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    sget-object v1, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_INSTALL:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_DELETE_SENT_APPLET:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_DISPLAYAPPLETS_ONCARD:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_SELECT:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_SEND:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_GET_DATA:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_DELETE_SELECTED_APPLET:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_DELETE_ALL_APPLETS:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_SET_DEFAULT_APPLET:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_CMD_OPEN:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 124
    new-instance v0, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    const-string v1, "APDU_INSTALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_INSTALL:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    new-instance v0, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    const-string v1, "APDU_DELETE_SENT_APPLET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_DELETE_SENT_APPLET:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    new-instance v0, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    const-string v1, "APDU_DISPLAYAPPLETS_ONCARD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_DISPLAYAPPLETS_ONCARD:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    new-instance v0, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    const-string v1, "APDU_SELECT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_SELECT:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    new-instance v0, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    const-string v1, "APDU_SEND"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_SEND:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    new-instance v0, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    const-string v1, "APDU_GET_DATA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_GET_DATA:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    .line 125
    new-instance v0, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    const-string v1, "APDU_DELETE_SELECTED_APPLET"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_DELETE_SELECTED_APPLET:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    new-instance v0, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    const-string v1, "APDU_DELETE_ALL_APPLETS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_DELETE_ALL_APPLETS:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    new-instance v0, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    const-string v1, "APDU_SET_DEFAULT_APPLET"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_SET_DEFAULT_APPLET:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    new-instance v0, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    const-string v1, "APDU_CMD_OPEN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->APDU_CMD_OPEN:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    .line 123
    invoke-static {}, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->$values()[Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    move-result-object v0

    sput-object v0, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->$VALUES:[Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 123
    const-class v0, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    return-object v0
.end method

.method public static values()[Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;
    .locals 1

    .line 123
    sget-object v0, Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->$VALUES:[Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    invoke-virtual {v0}, [Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    return-object v0
.end method
