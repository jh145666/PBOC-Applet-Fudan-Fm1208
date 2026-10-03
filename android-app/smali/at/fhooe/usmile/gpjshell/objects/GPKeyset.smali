.class public Lat/fhooe/usmile/gpjshell/objects/GPKeyset;
.super Ljava/lang/Object;
.source "GPKeyset.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final KEYSET:Ljava/lang/String; = "keyset"

.field private static final serialVersionUID:J = 0x2d7e6af38cd33bd4L


# instance fields
.field private ENC:Ljava/lang/String;

.field private ID:I

.field private KEK:Ljava/lang/String;

.field private MAC:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private readerName:Ljava/lang/String;

.field private uniqueID:I

.field private version:I


# direct methods
.method public constructor <init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uniqueID"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "ID"    # I
    .param p4, "version"    # I
    .param p5, "MAC"    # Ljava/lang/String;
    .param p6, "DEK"    # Ljava/lang/String;
    .param p7, "KEK"    # Ljava/lang/String;
    .param p8, "readerName"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p3, p0, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->ID:I

    .line 38
    iput p4, p0, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->version:I

    .line 39
    invoke-virtual {p0, p2}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->setName(Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->setDisplayName(Ljava/lang/String;)V

    .line 41
    iput-object p5, p0, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->MAC:Ljava/lang/String;

    .line 42
    iput-object p6, p0, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->ENC:Ljava/lang/String;

    .line 43
    iput-object p7, p0, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->KEK:Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p8}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->setReaderName(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p1}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->setUniqueID(I)V

    .line 46
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getENC()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->ENC:Ljava/lang/String;

    return-object v0
.end method

.method public getENCByte()[B
    .locals 1

    .line 81
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->ENC:Ljava/lang/String;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/GPUtils;->convertHexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getID()I
    .locals 1

    .line 49
    iget v0, p0, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->ID:I

    return v0
.end method

.method public getKEK()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->KEK:Ljava/lang/String;

    return-object v0
.end method

.method public getKEKByte()[B
    .locals 1

    .line 93
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->KEK:Ljava/lang/String;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/GPUtils;->convertHexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getMAC()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->MAC:Ljava/lang/String;

    return-object v0
.end method

.method public getMACByte()[B
    .locals 1

    .line 65
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->MAC:Ljava/lang/String;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/GPUtils;->convertHexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getReaderName()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->readerName:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueID()I
    .locals 1

    .line 117
    iget v0, p0, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->uniqueID:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 57
    iget v0, p0, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->version:I

    return v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .line 129
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->displayName:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setENC(Ljava/lang/String;)V
    .locals 0
    .param p1, "eNC"    # Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->ENC:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setID(I)V
    .locals 0
    .param p1, "iD"    # I

    .line 53
    iput p1, p0, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->ID:I

    .line 54
    return-void
.end method

.method public setKEK(Ljava/lang/String;)V
    .locals 0
    .param p1, "kEK"    # Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->KEK:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setMAC(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAC"    # Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->MAC:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 105
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->name:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setReaderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "readerName"    # Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->readerName:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setUniqueID(I)V
    .locals 0
    .param p1, "uniqueID"    # I

    .line 121
    iput p1, p0, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->uniqueID:I

    .line 122
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .line 61
    iput p1, p0, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->version:I

    .line 62
    return-void
.end method
