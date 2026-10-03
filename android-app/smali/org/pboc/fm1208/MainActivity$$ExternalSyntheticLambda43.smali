.class public final synthetic Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda43;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/pboc/fm1208/MainActivity;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/pboc/fm1208/MainActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda43;->f$0:Lorg/pboc/fm1208/MainActivity;

    iput-boolean p2, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda43;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda43;->f$0:Lorg/pboc/fm1208/MainActivity;

    iget-boolean v1, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda43;->f$1:Z

    invoke-virtual {v0, v1}, Lorg/pboc/fm1208/MainActivity;->lambda$doExternalAuth$56$org-pboc-fm1208-MainActivity(Z)V

    return-void
.end method
