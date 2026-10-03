.class public Lcom/gpjpboc/toolkit/FileSysActivity$Node;
.super Ljava/lang/Object;
.source "FileSysActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpjpboc/toolkit/FileSysActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation


# instance fields
.field public aidName:[B

.field public binLen:I

.field public fci:Ljava/lang/String;

.field public fid:I

.field public kids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/gpjpboc/toolkit/FileSysActivity$Node;",
            ">;"
        }
    .end annotation
.end field

.field public probe:Ljava/lang/String;

.field public recCnt:I

.field public recLen:I

.field public sfi:I

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "DF"

    iput-object v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->type:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->fci:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->probe:Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->aidName:[B

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->sfi:I

    .line 41
    iput v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->recLen:I

    .line 42
    iput v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->recCnt:I

    .line 43
    iput v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->binLen:I

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->kids:Ljava/util/ArrayList;

    return-void
.end method
