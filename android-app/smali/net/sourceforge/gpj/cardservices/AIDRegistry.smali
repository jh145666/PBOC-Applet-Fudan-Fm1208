.class public Lnet/sourceforge/gpj/cardservices/AIDRegistry;
.super Ljava/lang/Object;
.source "AIDRegistry.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;",
        ">;"
    }
.end annotation


# instance fields
.field entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/AIDRegistry;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;)V
    .locals 1
    .param p1, "entry"    # Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;

    .line 46
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/AIDRegistry;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public allApplets()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;>;"
    iget-object v1, p0, Lnet/sourceforge/gpj/cardservices/AIDRegistry;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;

    .line 82
    .local v2, "e":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    invoke-virtual {v2}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->isApplet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v2    # "e":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    :cond_0
    goto :goto_0

    .line 85
    :cond_1
    return-object v0
.end method

.method public allPackages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;>;"
    iget-object v1, p0, Lnet/sourceforge/gpj/cardservices/AIDRegistry;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;

    .line 68
    .local v2, "e":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    invoke-virtual {v2}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->isPackage()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;->isSecurityDomain()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .end local v2    # "e":Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    :cond_1
    goto :goto_0

    .line 71
    :cond_2
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/AIDRegistry;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
