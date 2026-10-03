.class public final synthetic Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/pboc/fm1208/MainActivity$AmountCallback;


# instance fields
.field public final synthetic f$0:Lorg/pboc/fm1208/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/pboc/fm1208/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda40;->f$0:Lorg/pboc/fm1208/MainActivity;

    return-void
.end method


# virtual methods
.method public final onAmount(I)V
    .locals 1

    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda40;->f$0:Lorg/pboc/fm1208/MainActivity;

    invoke-virtual {v0, p1}, Lorg/pboc/fm1208/MainActivity;->lambda$doPurchase$43$org-pboc-fm1208-MainActivity(I)V

    return-void
.end method
