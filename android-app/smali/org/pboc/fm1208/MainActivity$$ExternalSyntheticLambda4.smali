.class public final synthetic Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/pboc/fm1208/MainActivity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/pboc/fm1208/MainActivity;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda4;->f$0:Lorg/pboc/fm1208/MainActivity;

    iput-boolean p2, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda4;->f$1:Z

    iput-object p3, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda4;->f$0:Lorg/pboc/fm1208/MainActivity;

    iget-boolean v1, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda4;->f$1:Z

    iget-object v2, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/pboc/fm1208/MainActivity;->lambda$doScanFileSystem$63$org-pboc-fm1208-MainActivity(ZLjava/lang/String;)V

    return-void
.end method
