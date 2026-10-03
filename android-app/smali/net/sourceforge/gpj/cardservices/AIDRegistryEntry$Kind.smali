.class public final enum Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;
.super Ljava/lang/Enum;
.source "AIDRegistryEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

.field public static final enum Application:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

.field public static final enum ExecutableLoadFiles:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

.field public static final enum ExecutableLoadFilesAndModules:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

.field public static final enum IssuerSecurityDomain:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

.field public static final enum SecurityDomain:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;


# direct methods
.method private static synthetic $values()[Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;
    .locals 3

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    sget-object v1, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->IssuerSecurityDomain:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->Application:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->SecurityDomain:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->ExecutableLoadFiles:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->ExecutableLoadFilesAndModules:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    const-string v1, "IssuerSecurityDomain"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->IssuerSecurityDomain:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    new-instance v0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    const-string v1, "Application"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->Application:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    new-instance v0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    const-string v1, "SecurityDomain"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->SecurityDomain:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    new-instance v0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    const-string v1, "ExecutableLoadFiles"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->ExecutableLoadFiles:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    new-instance v0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    const-string v1, "ExecutableLoadFilesAndModules"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->ExecutableLoadFilesAndModules:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    .line 46
    invoke-static {}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->$values()[Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->$VALUES:[Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 46
    const-class v0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    return-object v0
.end method

.method public static values()[Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;
    .locals 1

    .line 46
    sget-object v0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->$VALUES:[Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    invoke-virtual {v0}, [Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    return-object v0
.end method


# virtual methods
.method public toShortString()Ljava/lang/String;
    .locals 2

    .line 55
    sget-object v0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$1;->$SwitchMap$net$sourceforge$gpj$cardservices$AIDRegistryEntry$Kind:[I

    invoke-virtual {p0}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 67
    const-string v0, "???"

    return-object v0

    .line 65
    :pswitch_0
    const-string v0, "ExM"

    return-object v0

    .line 63
    :pswitch_1
    const-string v0, "Exe"

    return-object v0

    .line 61
    :pswitch_2
    const-string v0, "SeD"

    return-object v0

    .line 59
    :pswitch_3
    const-string v0, "App"

    return-object v0

    .line 57
    :pswitch_4
    const-string v0, "ISD"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
