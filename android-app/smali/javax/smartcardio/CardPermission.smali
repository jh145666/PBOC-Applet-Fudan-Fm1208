.class public Ljavax/smartcardio/CardPermission;
.super Ljava/security/Permission;
.source "CardPermission.java"


# static fields
.field private static final ARRAY_MASKS:[I

.field private static final ARRAY_STRINGS:[Ljava/lang/String;

.field private static final A_ALL:I = 0x3f

.field private static final A_CONNECT:I = 0x1

.field private static final A_EXCLUSIVE:I = 0x2

.field private static final A_GET_BASIC_CHANNEL:I = 0x4

.field private static final A_OPEN_LOGICAL_CHANNEL:I = 0x8

.field private static final A_RESET:I = 0x10

.field private static final A_TRANSMIT_CONTROL:I = 0x20

.field private static final S_ALL:Ljava/lang/String; = "*"

.field private static final S_CONNECT:Ljava/lang/String; = "connect"

.field private static final S_EXCLUSIVE:Ljava/lang/String; = "exclusive"

.field private static final S_GET_BASIC_CHANNEL:Ljava/lang/String; = "getBasicChannel"

.field private static final S_OPEN_LOGICAL_CHANNEL:Ljava/lang/String; = "openLogicalChannel"

.field private static final S_RESET:Ljava/lang/String; = "reset"

.field private static final S_TRANSMIT_CONTROL:Ljava/lang/String; = "transmitControl"

.field private static final serialVersionUID:J = 0x632e7db648197ccdL


# instance fields
.field private volatile actions:Ljava/lang/String;

.field private transient mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 87
    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Ljavax/smartcardio/CardPermission;->ARRAY_MASKS:[I

    .line 106
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "connect"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "exclusive"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "getBasicChannel"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "openLogicalChannel"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "reset"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "transmitControl"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Ljavax/smartcardio/CardPermission;->ARRAY_STRINGS:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x3f
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "terminalName"    # Ljava/lang/String;
    .param p2, "actions"    # Ljava/lang/String;

    .line 141
    invoke-direct {p0, p1}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    .line 142
    if-eqz p1, :cond_0

    .line 145
    invoke-static {p2}, Ljavax/smartcardio/CardPermission;->getMask(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavax/smartcardio/CardPermission;->mask:I

    .line 146
    return-void

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static getActions(I)Ljava/lang/String;
    .locals 5
    .param p0, "mask"    # I

    .line 180
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_0

    .line 181
    const-string v0, "*"

    return-object v0

    .line 183
    :cond_0
    const/4 v0, 0x1

    .line 184
    .local v0, "first":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Ljavax/smartcardio/CardPermission;->ARRAY_MASKS:[I

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 186
    sget-object v3, Ljavax/smartcardio/CardPermission;->ARRAY_MASKS:[I

    aget v3, v3, v2

    .line 187
    .local v3, "action":I
    and-int v4, p0, v3

    if-ne v4, v3, :cond_2

    .line 188
    if-nez v0, :cond_1

    .line 189
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 191
    :cond_1
    const/4 v0, 0x0

    .line 193
    :goto_1
    sget-object v4, Ljavax/smartcardio/CardPermission;->ARRAY_STRINGS:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .end local v3    # "action":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getMask(Ljava/lang/String;)I
    .locals 8
    .param p0, "actions"    # Ljava/lang/String;

    .line 149
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    .line 154
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Ljavax/smartcardio/CardPermission;->ARRAY_STRINGS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 155
    sget-object v1, Ljavax/smartcardio/CardPermission;->ARRAY_STRINGS:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-ne p0, v1, :cond_0

    .line 156
    sget-object v1, Ljavax/smartcardio/CardPermission;->ARRAY_MASKS:[I

    aget v1, v1, v0

    return v1

    .line 154
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    .end local v0    # "i":I
    :cond_1
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "\'"

    if-nez v1, :cond_5

    .line 163
    const/4 v1, 0x0

    .line 164
    .local v1, "mask":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "split":[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    .line 167
    .local v5, "s":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    sget-object v7, Ljavax/smartcardio/CardPermission;->ARRAY_STRINGS:[Ljava/lang/String;

    array-length v7, v7

    if-ge v6, v7, :cond_3

    .line 168
    sget-object v7, Ljavax/smartcardio/CardPermission;->ARRAY_STRINGS:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 169
    sget-object v7, Ljavax/smartcardio/CardPermission;->ARRAY_MASKS:[I

    aget v7, v7, v6

    or-int/2addr v1, v7

    .line 170
    nop

    .line 166
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "i":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 167
    .restart local v5    # "s":Ljava/lang/String;
    .restart local v6    # "i":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 173
    .end local v6    # "i":I
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid action: \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 176
    .end local v5    # "s":Ljava/lang/String;
    :cond_4
    return v1

    .line 161
    .end local v0    # "split":[Ljava/lang/String;
    .end local v1    # "mask":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid actions: \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "actions must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 297
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 298
    iget-object v0, p0, Ljavax/smartcardio/CardPermission;->actions:Ljava/lang/String;

    invoke-static {v0}, Ljavax/smartcardio/CardPermission;->getMask(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavax/smartcardio/CardPermission;->mask:I

    .line 299
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Ljavax/smartcardio/CardPermission;->actions:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 289
    invoke-virtual {p0}, Ljavax/smartcardio/CardPermission;->getActions()Ljava/lang/String;

    .line 291
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 292
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 266
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 267
    return v0

    .line 269
    :cond_0
    instance-of v1, p1, Ljavax/smartcardio/CardPermission;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 270
    return v2

    .line 272
    :cond_1
    move-object v1, p1

    check-cast v1, Ljavax/smartcardio/CardPermission;

    .line 273
    .local v1, "other":Ljavax/smartcardio/CardPermission;
    invoke-virtual {p0}, Ljavax/smartcardio/CardPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljavax/smartcardio/CardPermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Ljavax/smartcardio/CardPermission;->mask:I

    iget v4, v1, Ljavax/smartcardio/CardPermission;->mask:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getActions()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Ljavax/smartcardio/CardPermission;->actions:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 210
    iget v0, p0, Ljavax/smartcardio/CardPermission;->mask:I

    invoke-static {v0}, Ljavax/smartcardio/CardPermission;->getActions(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/smartcardio/CardPermission;->actions:Ljava/lang/String;

    .line 212
    :cond_0
    iget-object v0, p0, Ljavax/smartcardio/CardPermission;->actions:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 282
    invoke-virtual {p0}, Ljavax/smartcardio/CardPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Ljavax/smartcardio/CardPermission;->mask:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 5
    .param p1, "permission"    # Ljava/security/Permission;

    .line 232
    instance-of v0, p1, Ljavax/smartcardio/CardPermission;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 233
    return v1

    .line 235
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/smartcardio/CardPermission;

    .line 236
    .local v0, "other":Ljavax/smartcardio/CardPermission;
    iget v2, p0, Ljavax/smartcardio/CardPermission;->mask:I

    iget v3, v0, Ljavax/smartcardio/CardPermission;->mask:I

    and-int/2addr v2, v3

    iget v3, v0, Ljavax/smartcardio/CardPermission;->mask:I

    if-eq v2, v3, :cond_1

    .line 237
    return v1

    .line 239
    :cond_1
    invoke-virtual {p0}, Ljavax/smartcardio/CardPermission;->getName()Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "thisName":Ljava/lang/String;
    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 241
    return v4

    .line 243
    :cond_2
    invoke-virtual {v0}, Ljavax/smartcardio/CardPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 244
    return v4

    .line 246
    :cond_3
    return v1
.end method
