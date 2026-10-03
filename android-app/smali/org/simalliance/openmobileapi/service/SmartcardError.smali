.class public Lorg/simalliance/openmobileapi/service/SmartcardError;
.super Ljava/lang/Object;
.source "SmartcardError.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/simalliance/openmobileapi/service/SmartcardError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClazz:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lorg/simalliance/openmobileapi/service/SmartcardError$1;

    invoke-direct {v0}, Lorg/simalliance/openmobileapi/service/SmartcardError$1;-><init>()V

    sput-object v0, Lorg/simalliance/openmobileapi/service/SmartcardError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/simalliance/openmobileapi/service/SmartcardError$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lorg/simalliance/openmobileapi/service/SmartcardError$1;

    .line 31
    invoke-direct {p0, p1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "clazz"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v0, ""

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iput-object v1, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    .line 68
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public createException()Ljava/lang/Exception;
    .locals 6

    .line 89
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 90
    return-object v0

    .line 92
    :cond_0
    iget-object v1, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 93
    iget-object v1, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    return-object v1

    .line 95
    :cond_1
    iget-object v1, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 96
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    iget-object v3, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 97
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setError(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "message"    # Ljava/lang/String;

    .line 120
    const-string v0, ""

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    .line 121
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public throwException()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simalliance/openmobileapi/service/CardException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/service/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    if-nez v0, :cond_0

    .line 136
    return-void

    .line 138
    :cond_0
    instance-of v1, v0, Lorg/simalliance/openmobileapi/service/CardException;

    if-nez v1, :cond_2

    .line 141
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 142
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 144
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 139
    :cond_2
    move-object v1, v0

    check-cast v1, Lorg/simalliance/openmobileapi/service/CardException;

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 148
    iget-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    return-void
.end method
