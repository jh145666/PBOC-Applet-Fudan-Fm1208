.class public final synthetic Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/pboc/fm1208/MainActivity;

.field public final synthetic f$1:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lorg/pboc/fm1208/MainActivity;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda5;->f$0:Lorg/pboc/fm1208/MainActivity;

    iput-object p2, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda5;->f$0:Lorg/pboc/fm1208/MainActivity;

    iget-object v1, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lorg/pboc/fm1208/MainActivity;->lambda$doScanFileSystem$64$org-pboc-fm1208-MainActivity(Ljava/lang/Exception;)V

    return-void
.end method
