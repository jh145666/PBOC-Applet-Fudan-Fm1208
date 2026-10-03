.class public Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
.super Ljava/lang/Object;
.source "AIDRegistryEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;
    }
.end annotation


# instance fields
.field private aid:Lnet/sourceforge/gpj/cardservices/AID;

.field private executableAIDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sourceforge/gpj/cardservices/AID;",
            ">;"
        }
    .end annotation
.end field

.field private kind:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

.field private lifeCycleState:I

.field private privileges:I


# direct methods
.method public constructor <init>(Lnet/sourceforge/gpj/cardservices/AID;IILnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;)V
    .locals 1
    .param p1, "aid"    # Lnet/sourceforge/gpj/cardservices/AID;
    .param p2, "lifeCycleState"    # I
    .param p3, "privileges"    # I
    .param p4, "kind"    # Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->aid:Lnet/sourceforge/gpj/cardservices/AID;

    .line 94
    and-int/lit16 v0, p2, 0xff

    iput v0, p0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->lifeCycleState:I

    .line 95
    and-int/lit16 v0, p3, 0xff

    iput v0, p0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->privileges:I

    .line 96
    iput-object p4, p0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->kind:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->executableAIDS:Ljava/util/List;

    .line 98
    return-void
.end method


# virtual methods
.method public addExecutableAID(Lnet/sourceforge/gpj/cardservices/AID;)V
    .locals 1
    .param p1, "aid"    # Lnet/sourceforge/gpj/cardservices/AID;

    .line 107
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->executableAIDS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public getAID()Lnet/sourceforge/gpj/cardservices/AID;
    .locals 1

    .line 116
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->aid:Lnet/sourceforge/gpj/cardservices/AID;

    return-object v0
.end method

.method public getExecutableAIDs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sourceforge/gpj/cardservices/AID;",
            ">;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lnet/sourceforge/gpj/cardservices/AID;>;"
    iget-object v1, p0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->executableAIDS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 173
    return-object v0
.end method

.method public getKind()Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;
    .locals 1

    .line 143
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->kind:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    return-object v0
.end method

.method public getLifeCycleState()I
    .locals 1

    .line 125
    iget v0, p0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->lifeCycleState:I

    return v0
.end method

.method public getPrivileges()I
    .locals 1

    .line 134
    iget v0, p0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->privileges:I

    return v0
.end method

.method public isApplet()Z
    .locals 2

    .line 162
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->kind:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    sget-object v1, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->Application:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPackage()Z
    .locals 2

    .line 152
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->kind:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    sget-object v1, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->ExecutableLoadFilesAndModules:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->kind:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    sget-object v1, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->ExecutableLoadFiles:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSecurityDomain()Z
    .locals 2

    .line 192
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->kind:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    sget-object v1, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->SecurityDomain:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->kind:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    sget-object v1, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->IssuerSecurityDomain:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 182
    const-string v0, ""

    .line 183
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->aid:Lnet/sourceforge/gpj/cardservices/AID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", LC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->lifeCycleState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->privileges:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Kind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->kind:Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;

    .line 184
    invoke-virtual {v2}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry$Kind;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->executableAIDS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sourceforge/gpj/cardservices/AID;

    .line 186
    .local v2, "a":Lnet/sourceforge/gpj/cardservices/AID;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    .end local v2    # "a":Lnet/sourceforge/gpj/cardservices/AID;
    goto :goto_0

    .line 188
    :cond_0
    return-object v0
.end method
