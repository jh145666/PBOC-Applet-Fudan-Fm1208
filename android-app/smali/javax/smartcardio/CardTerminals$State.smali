.class public final enum Ljavax/smartcardio/CardTerminals$State;
.super Ljava/lang/Enum;
.source "CardTerminals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/smartcardio/CardTerminals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljavax/smartcardio/CardTerminals$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/smartcardio/CardTerminals$State;

.field public static final enum ALL:Ljavax/smartcardio/CardTerminals$State;

.field public static final enum CARD_ABSENT:Ljavax/smartcardio/CardTerminals$State;

.field public static final enum CARD_INSERTION:Ljavax/smartcardio/CardTerminals$State;

.field public static final enum CARD_PRESENT:Ljavax/smartcardio/CardTerminals$State;

.field public static final enum CARD_REMOVAL:Ljavax/smartcardio/CardTerminals$State;


# direct methods
.method private static synthetic $values()[Ljavax/smartcardio/CardTerminals$State;
    .locals 3

    .line 192
    const/4 v0, 0x5

    new-array v0, v0, [Ljavax/smartcardio/CardTerminals$State;

    sget-object v1, Ljavax/smartcardio/CardTerminals$State;->ALL:Ljavax/smartcardio/CardTerminals$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljavax/smartcardio/CardTerminals$State;->CARD_PRESENT:Ljavax/smartcardio/CardTerminals$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljavax/smartcardio/CardTerminals$State;->CARD_ABSENT:Ljavax/smartcardio/CardTerminals$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljavax/smartcardio/CardTerminals$State;->CARD_INSERTION:Ljavax/smartcardio/CardTerminals$State;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ljavax/smartcardio/CardTerminals$State;->CARD_REMOVAL:Ljavax/smartcardio/CardTerminals$State;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 196
    new-instance v0, Ljavax/smartcardio/CardTerminals$State;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/smartcardio/CardTerminals$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/smartcardio/CardTerminals$State;->ALL:Ljavax/smartcardio/CardTerminals$State;

    .line 200
    new-instance v0, Ljavax/smartcardio/CardTerminals$State;

    const-string v1, "CARD_PRESENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljavax/smartcardio/CardTerminals$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/smartcardio/CardTerminals$State;->CARD_PRESENT:Ljavax/smartcardio/CardTerminals$State;

    .line 204
    new-instance v0, Ljavax/smartcardio/CardTerminals$State;

    const-string v1, "CARD_ABSENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljavax/smartcardio/CardTerminals$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/smartcardio/CardTerminals$State;->CARD_ABSENT:Ljavax/smartcardio/CardTerminals$State;

    .line 210
    new-instance v0, Ljavax/smartcardio/CardTerminals$State;

    const-string v1, "CARD_INSERTION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljavax/smartcardio/CardTerminals$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/smartcardio/CardTerminals$State;->CARD_INSERTION:Ljavax/smartcardio/CardTerminals$State;

    .line 216
    new-instance v0, Ljavax/smartcardio/CardTerminals$State;

    const-string v1, "CARD_REMOVAL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ljavax/smartcardio/CardTerminals$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/smartcardio/CardTerminals$State;->CARD_REMOVAL:Ljavax/smartcardio/CardTerminals$State;

    .line 192
    invoke-static {}, Ljavax/smartcardio/CardTerminals$State;->$values()[Ljavax/smartcardio/CardTerminals$State;

    move-result-object v0

    sput-object v0, Ljavax/smartcardio/CardTerminals$State;->$VALUES:[Ljavax/smartcardio/CardTerminals$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 192
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/smartcardio/CardTerminals$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 192
    const-class v0, Ljavax/smartcardio/CardTerminals$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/smartcardio/CardTerminals$State;

    return-object v0
.end method

.method public static values()[Ljavax/smartcardio/CardTerminals$State;
    .locals 1

    .line 192
    sget-object v0, Ljavax/smartcardio/CardTerminals$State;->$VALUES:[Ljavax/smartcardio/CardTerminals$State;

    invoke-virtual {v0}, [Ljavax/smartcardio/CardTerminals$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/smartcardio/CardTerminals$State;

    return-object v0
.end method
