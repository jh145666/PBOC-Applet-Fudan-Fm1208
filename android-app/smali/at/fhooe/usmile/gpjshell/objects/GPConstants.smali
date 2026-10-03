.class public Lat/fhooe/usmile/gpjshell/objects/GPConstants;
.super Ljava/lang/Object;
.source "GPConstants.java"


# static fields
.field public static final DEFAULT_KEYS:[B

.field public static final GEMALTO_UICC:[B

.field public static final READER_SDDEVICEFIDELITY:Ljava/lang/String; = "SD - DeviceFidelity SD Card"

.field public static final READER_UICC:Ljava/lang/String; = "SIM - UICC"

.field public static final SD_KEY_ID:I = 0x0

.field public static final SD_SE_KEYS:[B

.field public static final UICC_KEY_ID:I = 0x20

.field public static final UICC_SE_KEY_ENC:[B

.field public static final UICC_SE_KEY_KEK:[B

.field public static final UICC_SE_KEY_MAC:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lat/fhooe/usmile/gpjshell/objects/GPConstants;->SD_SE_KEYS:[B

    .line 16
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lat/fhooe/usmile/gpjshell/objects/GPConstants;->DEFAULT_KEYS:[B

    .line 17
    new-array v1, v0, [B

    fill-array-data v1, :array_2

    sput-object v1, Lat/fhooe/usmile/gpjshell/objects/GPConstants;->UICC_SE_KEY_MAC:[B

    .line 18
    new-array v1, v0, [B

    fill-array-data v1, :array_3

    sput-object v1, Lat/fhooe/usmile/gpjshell/objects/GPConstants;->UICC_SE_KEY_ENC:[B

    .line 19
    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lat/fhooe/usmile/gpjshell/objects/GPConstants;->UICC_SE_KEY_KEK:[B

    .line 21
    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Lat/fhooe/usmile/gpjshell/objects/GPConstants;->GEMALTO_UICC:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x40t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x48t
    .end array-data

    :array_1
    .array-data 1
        0x40t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
    .end array-data

    :array_2
    .array-data 1
        0x46t
        0x68t
        -0xet
        -0x1at
        0x3et
        0x37t
        -0x14t
        -0x2bt
        0x25t
        -0xct
        -0x76t
        0x62t
        0xdt
        0x3dt
        0x29t
        -0x59t
    .end array-data

    :array_3
    .array-data 1
        0x43t
        -0x58t
        -0x55t
        0x4at
        -0x30t
        -0x65t
        0x1at
        -0x2t
        0x1ct
        -0xet
        0x25t
        -0x7bt
        0x67t
        0x3dt
        -0x5ft
        0x7ct
    .end array-data

    :array_4
    .array-data 1
        -0x62t
        0x1ft
        -0x71t
        -0x38t
        -0x3ft
        0x5bt
        -0x1bt
        -0x63t
        -0x3t
        0x7t
        -0x11t
        -0x80t
        -0x16t
        -0x17t
        -0x2at
        -0x4bt
    .end array-data

    :array_5
    .array-data 1
        -0x60t
        0x0t
        0x0t
        0x0t
        0x18t
        0x43t
        0x4dt
        -0x1t
        0x33t
        -0x1t
        -0x1t
        -0x77t
        -0x40t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
