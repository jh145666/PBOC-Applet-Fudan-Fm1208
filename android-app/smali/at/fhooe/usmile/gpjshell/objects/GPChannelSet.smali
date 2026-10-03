.class public Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;
.super Ljava/lang/Object;
.source "GPChannelSet.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CHANNEL_SET:Ljava/lang/String; = "channelset"

.field private static final serialVersionUID:J = -0x78e9772f2dbb0b39L


# instance fields
.field private channelNameString:Ljava/lang/String;

.field private isGemalto:Z

.field private scpVersion:I

.field private securityLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->channelNameString:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->scpVersion:I

    .line 30
    iput v0, p0, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->securityLevel:I

    .line 31
    iput-boolean v0, p0, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->isGemalto:Z

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "scpVersion"    # I
    .param p3, "securityLevel"    # I
    .param p4, "gemalto"    # Z

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->channelNameString:Ljava/lang/String;

    .line 37
    iput p2, p0, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->scpVersion:I

    .line 38
    iput p3, p0, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->securityLevel:I

    .line 39
    iput-boolean p4, p0, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->isGemalto:Z

    .line 40
    return-void
.end method


# virtual methods
.method public getChannelNameString()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->channelNameString:Ljava/lang/String;

    return-object v0
.end method

.method public getScpVersion()I
    .locals 1

    .line 53
    iget v0, p0, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->scpVersion:I

    return v0
.end method

.method public getSecurityLevel()I
    .locals 1

    .line 63
    iget v0, p0, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->securityLevel:I

    return v0
.end method

.method public isGemalto()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->isGemalto:Z

    return v0
.end method

.method public setChannelNameString(Ljava/lang/String;)V
    .locals 0
    .param p1, "channelNameString"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->channelNameString:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setGemalto(Z)V
    .locals 0
    .param p1, "isGemalto"    # Z

    .line 78
    iput-boolean p1, p0, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->isGemalto:Z

    .line 79
    return-void
.end method

.method public setScpVersion(I)V
    .locals 0
    .param p1, "scpVersion"    # I

    .line 58
    iput p1, p0, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->scpVersion:I

    .line 59
    return-void
.end method

.method public setSecurityLevel(I)V
    .locals 0
    .param p1, "securityLevel"    # I

    .line 68
    iput p1, p0, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->securityLevel:I

    .line 69
    return-void
.end method
