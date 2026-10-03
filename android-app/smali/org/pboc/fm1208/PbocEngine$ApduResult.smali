.class Lorg/pboc/fm1208/PbocEngine$ApduResult;
.super Ljava/lang/Object;
.source "PbocEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pboc/fm1208/PbocEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApduResult"
.end annotation


# instance fields
.field data:[B

.field sw:I


# direct methods
.method constructor <init>([BI)V
    .locals 0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/pboc/fm1208/PbocEngine$ApduResult;->data:[B

    iput p2, p0, Lorg/pboc/fm1208/PbocEngine$ApduResult;->sw:I

    return-void
.end method
