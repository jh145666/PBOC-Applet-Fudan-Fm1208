.class public Lat/fhooe/usmile/gpjshell/GPCommand;
.super Ljava/lang/Object;
.source "GPCommand.java"


# instance fields
.field private mCmd:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

.field private mCommandParameter:Ljava/lang/Object;

.field private mParams:[B

.field private mPrivileges:B

.field private mReaderName:Ljava/lang/String;

.field private mSeekReader:I


# direct methods
.method public constructor <init>(Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;I[BBLjava/lang/Object;)V
    .locals 0
    .param p1, "_cmd"    # Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;
    .param p2, "_seekReader"    # I
    .param p3, "_params"    # [B
    .param p4, "_privileges"    # B
    .param p5, "_cmdParam"    # Ljava/lang/Object;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lat/fhooe/usmile/gpjshell/GPCommand;->setCmd(Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;)V

    .line 31
    invoke-virtual {p0, p2}, Lat/fhooe/usmile/gpjshell/GPCommand;->setSeekReader(I)V

    .line 32
    invoke-virtual {p0, p4}, Lat/fhooe/usmile/gpjshell/GPCommand;->setPrivileges(B)V

    .line 33
    invoke-virtual {p0, p3}, Lat/fhooe/usmile/gpjshell/GPCommand;->setParams([B)V

    .line 34
    invoke-virtual {p0, p5}, Lat/fhooe/usmile/gpjshell/GPCommand;->setCommandParameter(Ljava/lang/Object;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getCmd()Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;
    .locals 1

    .line 38
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GPCommand;->mCmd:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    return-object v0
.end method

.method public getCommandParameter()Ljava/lang/Object;
    .locals 1

    .line 78
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GPCommand;->mCommandParameter:Ljava/lang/Object;

    return-object v0
.end method

.method public getInstallParams()[B
    .locals 1

    .line 54
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GPCommand;->mParams:[B

    return-object v0
.end method

.method public getPrivileges()B
    .locals 1

    .line 46
    iget-byte v0, p0, Lat/fhooe/usmile/gpjshell/GPCommand;->mPrivileges:B

    return v0
.end method

.method public getSeekReader()I
    .locals 1

    .line 62
    iget v0, p0, Lat/fhooe/usmile/gpjshell/GPCommand;->mSeekReader:I

    return v0
.end method

.method public getSeekReaderName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/GPCommand;->mReaderName:Ljava/lang/String;

    return-object v0
.end method

.method public setCmd(Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;)V
    .locals 0
    .param p1, "mCmd"    # Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    .line 42
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/GPCommand;->mCmd:Lat/fhooe/usmile/gpjshell/MainActivity$APDU_COMMAND;

    .line 43
    return-void
.end method

.method public setCommandParameter(Ljava/lang/Object;)V
    .locals 0
    .param p1, "mCommandParameter"    # Ljava/lang/Object;

    .line 82
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/GPCommand;->mCommandParameter:Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public setParams([B)V
    .locals 0
    .param p1, "mParams"    # [B

    .line 58
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/GPCommand;->mParams:[B

    .line 59
    return-void
.end method

.method public setPrivileges(B)V
    .locals 0
    .param p1, "mPrivileges"    # B

    .line 50
    iput-byte p1, p0, Lat/fhooe/usmile/gpjshell/GPCommand;->mPrivileges:B

    .line 51
    return-void
.end method

.method public setReaderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mReaderName"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/GPCommand;->mReaderName:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setSeekReader(I)V
    .locals 0
    .param p1, "mSeekReader"    # I

    .line 66
    iput p1, p0, Lat/fhooe/usmile/gpjshell/GPCommand;->mSeekReader:I

    .line 67
    return-void
.end method
