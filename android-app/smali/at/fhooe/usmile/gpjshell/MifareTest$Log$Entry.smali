.class Lat/fhooe/usmile/gpjshell/MifareTest$Log$Entry;
.super Ljava/lang/Object;
.source "MifareTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/fhooe/usmile/gpjshell/MifareTest$Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation


# instance fields
.field public final blocks:I

.field public final durationMs:I

.field final synthetic this$1:Lat/fhooe/usmile/gpjshell/MifareTest$Log;


# direct methods
.method constructor <init>(Lat/fhooe/usmile/gpjshell/MifareTest$Log;II)V
    .locals 0
    .param p2, "b"    # I
    .param p3, "d"    # I

    .line 320
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/MifareTest$Log$Entry;->this$1:Lat/fhooe/usmile/gpjshell/MifareTest$Log;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput p2, p0, Lat/fhooe/usmile/gpjshell/MifareTest$Log$Entry;->blocks:I

    .line 322
    iput p3, p0, Lat/fhooe/usmile/gpjshell/MifareTest$Log$Entry;->durationMs:I

    .line 323
    return-void
.end method
