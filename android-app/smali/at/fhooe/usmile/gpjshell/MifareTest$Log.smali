.class Lat/fhooe/usmile/gpjshell/MifareTest$Log;
.super Ljava/lang/Object;
.source "MifareTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/fhooe/usmile/gpjshell/MifareTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Log"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/fhooe/usmile/gpjshell/MifareTest$Log$Entry;
    }
.end annotation


# instance fields
.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lat/fhooe/usmile/gpjshell/MifareTest$Log$Entry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lat/fhooe/usmile/gpjshell/MifareTest;


# direct methods
.method constructor <init>(Lat/fhooe/usmile/gpjshell/MifareTest;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/MifareTest$Log;->this$0:Lat/fhooe/usmile/gpjshell/MifareTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/MifareTest$Log;->mEntries:Ljava/util/List;

    .line 295
    return-void
.end method


# virtual methods
.method public addEntry(II)V
    .locals 2
    .param p1, "blocks"    # I
    .param p2, "ms"    # I

    .line 298
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MifareTest$Log;->mEntries:Ljava/util/List;

    new-instance v1, Lat/fhooe/usmile/gpjshell/MifareTest$Log$Entry;

    invoke-direct {v1, p0, p1, p2}, Lat/fhooe/usmile/gpjshell/MifareTest$Log$Entry;-><init>(Lat/fhooe/usmile/gpjshell/MifareTest$Log;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    return-void
.end method

.method public writeToFile(Ljava/lang/String;)V
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 303
    .local v0, "writer":Ljava/io/BufferedWriter;
    const/4 v1, 0x0

    .line 304
    .local v1, "i":I
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MifareTest$Log;->mEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lat/fhooe/usmile/gpjshell/MifareTest$Log$Entry;

    .line 306
    .local v3, "entry":Lat/fhooe/usmile/gpjshell/MifareTest$Log$Entry;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v3, Lat/fhooe/usmile/gpjshell/MifareTest$Log$Entry;->blocks:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lat/fhooe/usmile/gpjshell/MifareTest$Log$Entry;->durationMs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 308
    nop

    .end local v3    # "entry":Lat/fhooe/usmile/gpjshell/MifareTest$Log$Entry;
    add-int/lit8 v1, v1, 0x1

    .line 309
    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 314
    return-void
.end method
