.class public final synthetic Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/pboc/fm1208/PbocEngine$CardCallback;


# instance fields
.field public final synthetic f$0:Lorg/pboc/fm1208/MainActivity;

.field public final synthetic f$1:Landroid/nfc/tech/IsoDep;


# direct methods
.method public synthetic constructor <init>(Lorg/pboc/fm1208/MainActivity;Landroid/nfc/tech/IsoDep;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda24;->f$0:Lorg/pboc/fm1208/MainActivity;

    iput-object p2, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda24;->f$1:Landroid/nfc/tech/IsoDep;

    return-void
.end method


# virtual methods
.method public final transceive([B)[B
    .locals 2

    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda24;->f$0:Lorg/pboc/fm1208/MainActivity;

    iget-object v1, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda24;->f$1:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0, v1, p1}, Lorg/pboc/fm1208/MainActivity;->lambda$handleIntent$13$org-pboc-fm1208-MainActivity(Landroid/nfc/tech/IsoDep;[B)[B

    move-result-object p1

    return-object p1
.end method
