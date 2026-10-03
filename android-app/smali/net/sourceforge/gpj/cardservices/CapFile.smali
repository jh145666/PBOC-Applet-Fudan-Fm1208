.class public Lnet/sourceforge/gpj/cardservices/CapFile;
.super Ljava/lang/Object;
.source "CapFile.java"


# static fields
.field public static final componentNames:[Ljava/lang/String;


# instance fields
.field private appletAIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sourceforge/gpj/cardservices/AID;",
            ">;"
        }
    .end annotation
.end field

.field private capComponents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private dapBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private installTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private loadTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private packageAID:Lnet/sourceforge/gpj/cardservices/AID;

.field private packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Header"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Directory"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Import"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Applet"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Class"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Method"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "StaticField"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "Export"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "ConstantPool"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "RefLocation"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "Descriptor"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "Debug"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lnet/sourceforge/gpj/cardservices/CapFile;->componentNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/sourceforge/gpj/cardservices/CapFile;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 12
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/CapFile;->capComponents:Ljava/util/HashMap;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/CapFile;->packageName:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/CapFile;->packageAID:Lnet/sourceforge/gpj/cardservices/AID;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/CapFile;->appletAIDs:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/CapFile;->dapBlocks:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/CapFile;->loadTokens:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/CapFile;->installTokens:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 64
    .local v0, "zip":Ljava/util/zip/ZipInputStream;
    invoke-direct {p0, v0}, Lnet/sourceforge/gpj/cardservices/CapFile;->getEntries(Ljava/util/zip/ZipInputStream;)Ljava/util/Map;

    move-result-object v1

    .line 65
    .local v1, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    const-string v2, "/javacard/"

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 68
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 69
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/String;>;"
    const-string v7, "Header.cap"

    .line 70
    .local v7, "lookFor":Ljava/lang/String;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 71
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 72
    .local v8, "s":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 73
    invoke-virtual {v8, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 74
    goto :goto_1

    .line 76
    .end local v8    # "s":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 78
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/String;>;"
    .end local v7    # "lookFor":Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "packagePath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnet/sourceforge/gpj/cardservices/GPUtil;->debug(Ljava/lang/Object;)V

    .line 79
    nop

    .line 80
    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 79
    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/sourceforge/gpj/cardservices/CapFile;->packageName:Ljava/lang/String;

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/sourceforge/gpj/cardservices/CapFile;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/sourceforge/gpj/cardservices/GPUtil;->debug(Ljava/lang/Object;)V

    .line 82
    sget-object v2, Lnet/sourceforge/gpj/cardservices/CapFile;->componentNames:[Ljava/lang/String;

    array-length v3, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_3

    aget-object v7, v2, v6

    .line 83
    .local v7, "name":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".cap"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 84
    .local v8, "fullName":Ljava/lang/String;
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 85
    .local v9, "contents":[B
    iget-object v10, p0, Lnet/sourceforge/gpj/cardservices/CapFile;->capComponents:Ljava/util/HashMap;

    invoke-virtual {v10, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "fullName":Ljava/lang/String;
    .end local v9    # "contents":[B
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 87
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v2, "tables":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    iget-object v3, p0, Lnet/sourceforge/gpj/cardservices/CapFile;->dapBlocks:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v3, p0, Lnet/sourceforge/gpj/cardservices/CapFile;->loadTokens:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v3, p0, Lnet/sourceforge/gpj/cardservices/CapFile;->installTokens:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v6, "dap"

    aput-object v6, v3, v5

    const-string v5, "lt"

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const-string v5, "it"

    const/4 v7, 0x2

    aput-object v5, v3, v7

    .line 92
    .local v3, "names":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    array-length v8, v3

    if-ge v5, v8, :cond_5

    .line 93
    const/4 v8, 0x0

    .line 95
    .local v8, "index":I
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "meta-inf/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x2d

    invoke-virtual {p2, v4, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v3, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 97
    .local v9, "fullName":Ljava/lang/String;
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 98
    .local v10, "contents":[B
    if-nez v10, :cond_4

    .line 92
    .end local v8    # "index":I
    .end local v9    # "fullName":Ljava/lang/String;
    .end local v10    # "contents":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 99
    .restart local v8    # "index":I
    .restart local v9    # "fullName":Ljava/lang/String;
    .restart local v10    # "contents":[B
    :cond_4
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    nop

    .end local v9    # "fullName":Ljava/lang/String;
    .end local v10    # "contents":[B
    add-int/lit8 v8, v8, 0x1

    .line 101
    goto :goto_4

    .line 103
    .end local v5    # "i":I
    .end local v8    # "index":I
    :cond_5
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 104
    iget-object v4, p0, Lnet/sourceforge/gpj/cardservices/CapFile;->capComponents:Ljava/util/HashMap;

    const-string v5, "Header"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 105
    .local v4, "header":[B
    const/4 v5, 0x0

    .line 107
    .restart local v5    # "i":I
    add-int/2addr v5, v6

    .line 109
    add-int/2addr v5, v6

    .line 111
    add-int/2addr v5, v6

    .line 113
    add-int/lit8 v5, v5, 0x4

    .line 115
    add-int/2addr v5, v7

    .line 117
    add-int/2addr v5, v6

    .line 119
    add-int/2addr v5, v7

    .line 121
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "i":I
    .local v7, "i":I
    aget-byte v5, v4, v5

    .line 122
    .local v5, "len":I
    new-instance v8, Lnet/sourceforge/gpj/cardservices/AID;

    invoke-direct {v8, v4, v7, v5}, Lnet/sourceforge/gpj/cardservices/AID;-><init>([BII)V

    iput-object v8, p0, Lnet/sourceforge/gpj/cardservices/CapFile;->packageAID:Lnet/sourceforge/gpj/cardservices/AID;

    .line 123
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "package AID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lnet/sourceforge/gpj/cardservices/CapFile;->packageAID:Lnet/sourceforge/gpj/cardservices/AID;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnet/sourceforge/gpj/cardservices/GPUtil;->debug(Ljava/lang/Object;)V

    .line 126
    iget-object v8, p0, Lnet/sourceforge/gpj/cardservices/CapFile;->capComponents:Ljava/util/HashMap;

    const-string v9, "Applet"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 127
    .local v8, "applet":[B
    if-eqz v8, :cond_7

    .line 128
    const/4 v7, 0x0

    .line 130
    add-int/2addr v7, v6

    .line 132
    add-int/2addr v7, v6

    .line 134
    add-int/2addr v7, v6

    .line 136
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i":I
    .local v6, "i":I
    aget-byte v7, v8, v7

    .line 137
    .local v7, "num":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_5
    if-ge v9, v7, :cond_6

    .line 138
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "i":I
    .local v10, "i":I
    aget-byte v5, v8, v6

    .line 139
    iget-object v6, p0, Lnet/sourceforge/gpj/cardservices/CapFile;->appletAIDs:Ljava/util/List;

    new-instance v11, Lnet/sourceforge/gpj/cardservices/AID;

    invoke-direct {v11, v8, v10, v5}, Lnet/sourceforge/gpj/cardservices/AID;-><init>([BII)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v6, v5, 0x2

    add-int/2addr v6, v10

    .line 137
    .end local v10    # "i":I
    .restart local v6    # "i":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 142
    .end local v9    # "j":I
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applet AIDs: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lnet/sourceforge/gpj/cardservices/CapFile;->appletAIDs:Ljava/util/List;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lnet/sourceforge/gpj/cardservices/GPUtil;->debug(Ljava/lang/Object;)V

    .line 143
    .end local v7    # "num":I
    move v7, v6

    goto :goto_6

    .line 144
    .end local v6    # "i":I
    .local v7, "i":I
    :cond_7
    const-string v6, "No Applet component."

    invoke-static {v6}, Lnet/sourceforge/gpj/cardservices/GPUtil;->debug(Ljava/lang/Object;)V

    .line 146
    :goto_6
    return-void
.end method

.method private createHeader(Z)[B
    .locals 4
    .param p1, "includeDebug"    # Z

    .line 193
    invoke-virtual {p0, p1}, Lnet/sourceforge/gpj/cardservices/CapFile;->getCodeLength(Z)I

    move-result v0

    .line 194
    .local v0, "len":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 195
    .local v1, "bo":Ljava/io/ByteArrayOutputStream;
    const/16 v2, -0x3c

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 196
    const/16 v2, 0x80

    if-ge v0, v2, :cond_0

    .line 197
    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 198
    :cond_0
    const/16 v2, 0xff

    if-gt v0, v2, :cond_1

    .line 199
    const/16 v2, -0x7f

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 200
    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 201
    :cond_1
    const v2, 0xffff

    const v3, 0xff00

    if-gt v0, v2, :cond_2

    .line 202
    const/16 v2, -0x7e

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 203
    and-int v2, v0, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 204
    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 206
    :cond_2
    const/16 v2, -0x7d

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 207
    const/high16 v2, 0xff0000

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 208
    and-int v2, v0, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 209
    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 211
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method private getEntries(Ljava/util/zip/ZipInputStream;)Ljava/util/Map;
    .locals 7
    .param p1, "in"    # Ljava/util/zip/ZipInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :goto_0
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 152
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    if-nez v1, :cond_0

    .line 153
    nop

    .line 165
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    return-object v0

    .line 155
    .restart local v1    # "entry":Ljava/util/zip/ZipEntry;
    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MANIFEST.MF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 156
    goto :goto_0

    .line 158
    :cond_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 159
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 161
    .local v3, "buf":[B
    :goto_1
    invoke-virtual {p1, v3}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "c":I
    if-lez v4, :cond_2

    .line 162
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 163
    :cond_2
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "buf":[B
    .end local v5    # "c":I
    goto :goto_0
.end method

.method private getRawCode(Z)[B
    .locals 9
    .param p1, "includeDebug"    # Z

    .line 254
    invoke-virtual {p0, p1}, Lnet/sourceforge/gpj/cardservices/CapFile;->getCodeLength(Z)I

    move-result v0

    new-array v0, v0, [B

    .line 255
    .local v0, "result":[B
    const/4 v1, 0x0

    .line 256
    .local v1, "offset":S
    sget-object v2, Lnet/sourceforge/gpj/cardservices/CapFile;->componentNames:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    .line 257
    .local v6, "name":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 258
    const-string v7, "Debug"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "Descriptor"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 259
    goto :goto_1

    .line 260
    :cond_0
    iget-object v7, p0, Lnet/sourceforge/gpj/cardservices/CapFile;->capComponents:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 261
    .local v7, "currentComponent":[B
    if-nez v7, :cond_1

    .line 262
    goto :goto_1

    .line 263
    :cond_1
    array-length v8, v7

    invoke-static {v7, v4, v0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    array-length v8, v7

    add-int/2addr v8, v1

    int-to-short v1, v8

    .line 256
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "currentComponent":[B
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 267
    :cond_3
    return-object v0
.end method

.method private splitArray([BI)Ljava/util/List;
    .locals 7
    .param p1, "array"    # [B
    .param p2, "blockSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<[B>;"
    array-length v1, p1

    .line 283
    .local v1, "len":I
    const/4 v2, 0x0

    .line 284
    .local v2, "offset":I
    sub-int v3, v1, v2

    .line 285
    .local v3, "left":I
    :goto_0
    if-lez v3, :cond_1

    .line 286
    const/4 v4, 0x0

    .line 287
    .local v4, "currentLen":I
    if-lt v3, p2, :cond_0

    .line 288
    move v4, p2

    goto :goto_1

    .line 290
    :cond_0
    move v4, v3

    .line 292
    :goto_1
    new-array v5, v4, [B

    .line 293
    .local v5, "block":[B
    const/4 v6, 0x0

    invoke-static {p1, v2, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    sub-int/2addr v3, v4

    .line 296
    add-int/2addr v2, v4

    .line 297
    .end local v4    # "currentLen":I
    .end local v5    # "block":[B
    goto :goto_0

    .line 298
    :cond_1
    return-object v0
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 10

    .line 302
    const-string v0, ""

    .line 303
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lnet/sourceforge/gpj/cardservices/CapFile;->componentNames:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const-string v5, "\n"

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 304
    .local v6, "name":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".cap:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    iget-object v7, p0, Lnet/sourceforge/gpj/cardservices/CapFile;->capComponents:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 306
    .local v7, "b":[B
    if-eqz v7, :cond_0

    .line 307
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Lnet/sourceforge/gpj/cardservices/GPUtil;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 309
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "(empty)\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "b":[B
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 312
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v1, "tables":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    iget-object v2, p0, Lnet/sourceforge/gpj/cardservices/CapFile;->dapBlocks:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v2, p0, Lnet/sourceforge/gpj/cardservices/CapFile;->loadTokens:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v2, p0, Lnet/sourceforge/gpj/cardservices/CapFile;->installTokens:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "DAP Blocks"

    aput-object v4, v2, v3

    const-string v3, "Load Tokens"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "Install Tokens"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 317
    .local v2, "names":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 318
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, v2, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 320
    .local v6, "o":[B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Lnet/sourceforge/gpj/cardservices/GPUtil;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    .end local v6    # "o":[B
    goto :goto_3

    .line 317
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 324
    .end local v3    # "i":I
    :cond_3
    return-object v0
.end method

.method public getAppletAIDs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sourceforge/gpj/cardservices/AID;",
            ">;"
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lnet/sourceforge/gpj/cardservices/AID;>;"
    iget-object v1, p0, Lnet/sourceforge/gpj/cardservices/CapFile;->appletAIDs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    return-object v0
.end method

.method public getCodeLength(Z)I
    .locals 7
    .param p1, "includeDebug"    # Z

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "result":I
    sget-object v1, Lnet/sourceforge/gpj/cardservices/CapFile;->componentNames:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 181
    .local v4, "name":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 182
    const-string v5, "Debug"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "Descriptor"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 183
    goto :goto_1

    .line 184
    :cond_0
    iget-object v5, p0, Lnet/sourceforge/gpj/cardservices/CapFile;->capComponents:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 185
    .local v5, "data":[B
    if-eqz v5, :cond_1

    .line 186
    array-length v6, v5

    add-int/2addr v0, v6

    .line 180
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "data":[B
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 189
    :cond_2
    return v0
.end method

.method public getLoadBlocks(ZZI)Ljava/util/List;
    .locals 8
    .param p1, "includeDebug"    # Z
    .param p2, "separateComponents"    # Z
    .param p3, "blockSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZI)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 216
    const/4 v0, 0x0

    .line 218
    .local v0, "blocks":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-nez p2, :cond_0

    .line 219
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 221
    .local v1, "bo":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-direct {p0, p1}, Lnet/sourceforge/gpj/cardservices/CapFile;->createHeader(Z)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 222
    invoke-direct {p0, p1}, Lnet/sourceforge/gpj/cardservices/CapFile;->getRawCode(Z)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    goto :goto_0

    .line 223
    :catch_0
    move-exception v2

    .line 226
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lnet/sourceforge/gpj/cardservices/CapFile;->splitArray([BI)Ljava/util/List;

    move-result-object v0

    .line 227
    .end local v1    # "bo":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 228
    :cond_0
    sget-object v1, Lnet/sourceforge/gpj/cardservices/CapFile;->componentNames:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 229
    .local v4, "name":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 230
    const-string v5, "Debug"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "Descriptor"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 231
    goto :goto_3

    .line 233
    :cond_1
    iget-object v5, p0, Lnet/sourceforge/gpj/cardservices/CapFile;->capComponents:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 234
    .local v5, "currentComponent":[B
    if-nez v5, :cond_2

    .line 235
    goto :goto_3

    .line 237
    :cond_2
    const-string v6, "Header"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 238
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 240
    .local v6, "bo":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-direct {p0, p1}, Lnet/sourceforge/gpj/cardservices/CapFile;->createHeader(Z)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 241
    invoke-virtual {v6, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    goto :goto_2

    .line 242
    :catch_1
    move-exception v7

    .line 245
    :goto_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 247
    .end local v6    # "bo":Ljava/io/ByteArrayOutputStream;
    :cond_3
    invoke-direct {p0, v5, p3}, Lnet/sourceforge/gpj/cardservices/CapFile;->splitArray([BI)Ljava/util/List;

    move-result-object v0

    .line 228
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "currentComponent":[B
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 250
    :cond_5
    :goto_4
    return-object v0
.end method

.method public getLoadFileDataHash(Z)[B
    .locals 2
    .param p1, "includeDebug"    # Z

    .line 272
    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 273
    invoke-direct {p0, p1}, Lnet/sourceforge/gpj/cardservices/CapFile;->getRawCode(Z)[B

    move-result-object v1

    .line 272
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "Not possible?"

    invoke-static {v1}, Lnet/sourceforge/gpj/cardservices/GPUtil;->debug(Ljava/lang/Object;)V

    .line 276
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPackageAID()Lnet/sourceforge/gpj/cardservices/AID;
    .locals 1

    .line 169
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/CapFile;->packageAID:Lnet/sourceforge/gpj/cardservices/AID;

    return-object v0
.end method
