.class public Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;
.super Ljava/lang/Object;
.source "CapInstallScript.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/fhooe/usmile/gpjshell/CapInstallScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppletInstallDescriptor"
.end annotation


# instance fields
.field private final mAppletAid:Lnet/sourceforge/gpj/cardservices/AID;

.field private final mInstAid:Lnet/sourceforge/gpj/cardservices/AID;

.field private final mParams:[B

.field private final mPrivileges:B


# direct methods
.method public constructor <init>(Lnet/sourceforge/gpj/cardservices/AID;Lnet/sourceforge/gpj/cardservices/AID;B[B)V
    .locals 0
    .param p1, "appletAid"    # Lnet/sourceforge/gpj/cardservices/AID;
    .param p2, "instAid"    # Lnet/sourceforge/gpj/cardservices/AID;
    .param p3, "privileges"    # B
    .param p4, "params"    # [B

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;->mAppletAid:Lnet/sourceforge/gpj/cardservices/AID;

    .line 105
    iput-object p2, p0, Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;->mInstAid:Lnet/sourceforge/gpj/cardservices/AID;

    .line 106
    iput-byte p3, p0, Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;->mPrivileges:B

    .line 107
    iput-object p4, p0, Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;->mParams:[B

    .line 108
    return-void
.end method


# virtual methods
.method public getAppletAid()Lnet/sourceforge/gpj/cardservices/AID;
    .locals 1

    .line 111
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;->mAppletAid:Lnet/sourceforge/gpj/cardservices/AID;

    return-object v0
.end method

.method public getInstAid()Lnet/sourceforge/gpj/cardservices/AID;
    .locals 1

    .line 115
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;->mInstAid:Lnet/sourceforge/gpj/cardservices/AID;

    return-object v0
.end method

.method public getParams()[B
    .locals 1

    .line 123
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;->mParams:[B

    return-object v0
.end method

.method public getPrivileges()B
    .locals 1

    .line 119
    iget-byte v0, p0, Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;->mPrivileges:B

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;->mAppletAid:Lnet/sourceforge/gpj/cardservices/AID;

    invoke-virtual {v1}, Lnet/sourceforge/gpj/cardservices/AID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;->mInstAid:Lnet/sourceforge/gpj/cardservices/AID;

    invoke-virtual {v1}, Lnet/sourceforge/gpj/cardservices/AID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v2, p0, Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;->mPrivileges:B

    .line 128
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;->mParams:[B

    .line 129
    invoke-static {v1}, Lat/fhooe/usmile/gpjshell/GPUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    return-object v0
.end method
