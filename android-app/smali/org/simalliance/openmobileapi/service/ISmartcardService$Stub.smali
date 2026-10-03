.class public abstract Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;
.super Landroid/os/Binder;
.source "ISmartcardService.java"

# interfaces
.implements Lorg/simalliance/openmobileapi/service/ISmartcardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simalliance/openmobileapi/service/ISmartcardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.simalliance.openmobileapi.service.ISmartcardService"

.field static final TRANSACTION_getReader:I = 0x2

.field static final TRANSACTION_getReaders:I = 0x1

.field static final TRANSACTION_isNFCEventAllowed:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-virtual {p0, p0, v0}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Lorg/simalliance/openmobileapi/service/ISmartcardService;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub$Proxy;

    invoke-direct {v1, p0}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardService"

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 110
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 45
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v1

    .line 86
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 92
    .local v4, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 94
    .local v5, "_arg2":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    move-result-object v6

    .line 96
    .local v6, "_arg3":Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    new-instance v7, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v7}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 97
    .local v7, "_arg4":Lorg/simalliance/openmobileapi/service/SmartcardError;
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->isNFCEventAllowed(Ljava/lang/String;[B[Ljava/lang/String;Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)[Z

    move-result-object v0

    .line 98
    .local v0, "_result":[Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 100
    nop

    .line 101
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    invoke-virtual {v7, p3, v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 107
    return v1

    .line 67
    .end local v0    # "_result":[Z
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":[B
    .end local v5    # "_arg2":[Ljava/lang/String;
    .end local v6    # "_arg3":Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    .end local v7    # "_arg4":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :sswitch_2
    move-object v2, p0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "_arg0":Ljava/lang/String;
    new-instance v3, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v3}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 72
    .local v3, "_arg1":Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v0, v3}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->getReader(Ljava/lang/String;Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    move-result-object v4

    .line 73
    .local v4, "_result":Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 75
    nop

    .line 76
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    invoke-virtual {v3, p3, v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 82
    return v1

    .line 50
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v4    # "_result":Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    :sswitch_3
    move-object v2, p0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    new-instance v0, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 53
    .local v0, "_arg0":Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v0}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->getReaders(Lorg/simalliance/openmobileapi/service/SmartcardError;)[Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 56
    nop

    .line 57
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    invoke-virtual {v0, p3, v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 63
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
