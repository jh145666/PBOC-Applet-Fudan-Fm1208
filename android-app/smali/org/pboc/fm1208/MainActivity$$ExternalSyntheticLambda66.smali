.class public final synthetic Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda66;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/pboc/fm1208/MainActivity;

.field public final synthetic f$1:Landroid/nfc/tech/IsoDep;

.field public final synthetic f$2:Landroid/nfc/Tag;

.field public final synthetic f$3:[B

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/pboc/fm1208/MainActivity;Landroid/nfc/tech/IsoDep;Landroid/nfc/Tag;[BLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda66;->f$0:Lorg/pboc/fm1208/MainActivity;

    iput-object p2, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda66;->f$1:Landroid/nfc/tech/IsoDep;

    iput-object p3, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda66;->f$2:Landroid/nfc/Tag;

    iput-object p4, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda66;->f$3:[B

    iput-object p5, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda66;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda66;->f$0:Lorg/pboc/fm1208/MainActivity;

    iget-object v1, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda66;->f$1:Landroid/nfc/tech/IsoDep;

    iget-object v2, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda66;->f$2:Landroid/nfc/Tag;

    iget-object v3, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda66;->f$3:[B

    iget-object v4, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda66;->f$4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/pboc/fm1208/MainActivity;->lambda$handleIntent$21$org-pboc-fm1208-MainActivity(Landroid/nfc/tech/IsoDep;Landroid/nfc/Tag;[BLjava/lang/String;)V

    return-void
.end method
