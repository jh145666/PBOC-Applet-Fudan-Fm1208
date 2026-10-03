.class public Lat/fhooe/usmile/gpjshell/objects/GPAppletData;
.super Ljava/lang/Object;
.source "GPAppletData.java"


# instance fields
.field private mRegistry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedApplet:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .param p2, "mSelectedApplet"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;",
            ">;I)V"
        }
    .end annotation

    .line 21
    .local p1, "mRegistry":Ljava/util/List;, "Ljava/util/List<Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/objects/GPAppletData;->mRegistry:Ljava/util/List;

    .line 23
    iput p2, p0, Lat/fhooe/usmile/gpjshell/objects/GPAppletData;->mSelectedApplet:I

    .line 24
    return-void
.end method


# virtual methods
.method public clearAllApplets()V
    .locals 1

    .line 51
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/objects/GPAppletData;->mRegistry:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    return-void
.end method

.method public getRegistry()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/objects/GPAppletData;->mRegistry:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedApplet()Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;
    .locals 2

    .line 35
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/objects/GPAppletData;->mRegistry:Ljava/util/List;

    iget v1, p0, Lat/fhooe/usmile/gpjshell/objects/GPAppletData;->mSelectedApplet:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;

    return-object v0
.end method

.method public getSelectedAppletPosition()I
    .locals 1

    .line 43
    iget v0, p0, Lat/fhooe/usmile/gpjshell/objects/GPAppletData;->mSelectedApplet:I

    return v0
.end method

.method public removeApplet(Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;)V
    .locals 1
    .param p1, "entry"    # Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;

    .line 55
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/objects/GPAppletData;->mRegistry:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public removeSelectedAppletFromList()V
    .locals 2

    .line 47
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/objects/GPAppletData;->mRegistry:Ljava/util/List;

    iget v1, p0, Lat/fhooe/usmile/gpjshell/objects/GPAppletData;->mSelectedApplet:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public setRegistry(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p1, "_registry":Ljava/util/List;, "Ljava/util/List<Lnet/sourceforge/gpj/cardservices/AIDRegistryEntry;>;"
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/objects/GPAppletData;->mRegistry:Ljava/util/List;

    .line 32
    return-void
.end method

.method public setSelectedApplet(I)V
    .locals 0
    .param p1, "_selectedApplet"    # I

    .line 39
    iput p1, p0, Lat/fhooe/usmile/gpjshell/objects/GPAppletData;->mSelectedApplet:I

    .line 40
    return-void
.end method
