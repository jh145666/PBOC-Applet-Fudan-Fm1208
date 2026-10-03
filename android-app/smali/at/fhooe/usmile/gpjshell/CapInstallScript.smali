.class public Lat/fhooe/usmile/gpjshell/CapInstallScript;
.super Ljava/lang/Object;
.source "CapInstallScript.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CAP install script"


# instance fields
.field private mDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/CapInstallScript;->mDescriptors:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/CapInstallScript;->mDescriptors:Ljava/util/List;

    .line 28
    return-void
.end method

.method private addDescriptor(Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;)V
    .locals 1
    .param p1, "d"    # Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;

    .line 31
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/CapInstallScript;->mDescriptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public static getFromCapFile(Ljava/lang/String;)Lat/fhooe/usmile/gpjshell/CapInstallScript;
    .locals 18
    .param p0, "capUrl"    # Ljava/lang/String;

    .line 35
    move-object/from16 v1, p0

    const-string v2, "CAP install script"

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, ".cap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v17, 0x0

    goto/16 :goto_a

    .line 37
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 38
    .local v4, "lastIndex":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ".inst"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "scriptUrl":Ljava/lang/String;
    const-string v6, "file://"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 40
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v7, v6

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 39
    :cond_1
    move-object v6, v0

    .line 43
    .end local v0    # "scriptUrl":Ljava/lang/String;
    .local v6, "scriptUrl":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    .line 45
    .local v7, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    move-object v7, v0

    .line 49
    nop

    .line 51
    new-instance v0, Lat/fhooe/usmile/gpjshell/CapInstallScript;

    invoke-direct {v0}, Lat/fhooe/usmile/gpjshell/CapInstallScript;-><init>()V

    move-object v8, v0

    .line 52
    .local v8, "script":Lat/fhooe/usmile/gpjshell/CapInstallScript;
    const/4 v0, 0x0

    move-object v9, v0

    .line 54
    .local v9, "line":Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    if-eqz v0, :cond_7

    .line 55
    const-string v0, "#"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    const/16 v0, 0x23

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {v9, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 59
    :cond_2
    const-string v0, ","

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "fields":[Ljava/lang/String;
    array-length v10, v0

    const/4 v11, 0x4

    if-lt v10, v11, :cond_6

    .line 64
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    array-length v11, v0

    if-ge v10, v11, :cond_3

    .line 65
    aget-object v11, v0, v10

    const-string v12, " "

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v10

    .line 64
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 67
    .end local v10    # "i":I
    :cond_3
    new-instance v10, Lnet/sourceforge/gpj/cardservices/AID;

    aget-object v11, v0, v5

    invoke-static {v11}, Lat/fhooe/usmile/gpjshell/GPUtils;->convertHexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {v10, v11}, Lnet/sourceforge/gpj/cardservices/AID;-><init>([B)V

    .line 68
    .local v10, "appletAid":Lnet/sourceforge/gpj/cardservices/AID;
    new-instance v11, Lnet/sourceforge/gpj/cardservices/AID;

    const/4 v12, 0x1

    aget-object v12, v0, v12

    invoke-static {v12}, Lat/fhooe/usmile/gpjshell/GPUtils;->convertHexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v12

    invoke-direct {v11, v12}, Lnet/sourceforge/gpj/cardservices/AID;-><init>([B)V

    .line 69
    .local v11, "instAid":Lnet/sourceforge/gpj/cardservices/AID;
    const/4 v12, 0x2

    aget-object v13, v0, v12

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    rem-int/2addr v13, v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v14, "0"

    if-nez v13, :cond_4

    :try_start_2
    aget-object v13, v0, v12

    goto :goto_3

    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v15, v0, v12

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 70
    .local v13, "privStr":Ljava/lang/String;
    :goto_3
    invoke-static {v13}, Lat/fhooe/usmile/gpjshell/GPUtils;->convertHexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v15

    aget-byte v15, v15, v5

    .line 71
    .local v15, "privileges":B
    const/16 v16, 0x3

    aget-object v17, v0, v16

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    rem-int/lit8 v17, v17, 0x2

    if-nez v17, :cond_5

    aget-object v14, v0, v16
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v17, 0x0

    goto :goto_4

    :cond_5
    const/16 v17, 0x0

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v14, v0, v16

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 72
    .local v14, "paramStr":Ljava/lang/String;
    :goto_4
    invoke-static {v14}, Lat/fhooe/usmile/gpjshell/GPUtils;->convertHexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 73
    .local v3, "params":[B
    new-array v12, v12, [B

    fill-array-data v12, :array_0

    .line 74
    .end local v3    # "params":[B
    .local v12, "params":[B
    new-instance v3, Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;

    invoke-direct {v3, v10, v11, v15, v12}, Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;-><init>(Lnet/sourceforge/gpj/cardservices/AID;Lnet/sourceforge/gpj/cardservices/AID;B[B)V

    invoke-direct {v8, v3}, Lat/fhooe/usmile/gpjshell/CapInstallScript;->addDescriptor(Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;)V

    .line 75
    .end local v0    # "fields":[Ljava/lang/String;
    .end local v10    # "appletAid":Lnet/sourceforge/gpj/cardservices/AID;
    .end local v11    # "instAid":Lnet/sourceforge/gpj/cardservices/AID;
    .end local v12    # "params":[B
    .end local v13    # "privStr":Ljava/lang/String;
    .end local v14    # "paramStr":Ljava/lang/String;
    .end local v15    # "privileges":B
    goto/16 :goto_1

    .line 62
    .restart local v0    # "fields":[Ljava/lang/String;
    :cond_6
    const/16 v17, 0x0

    new-instance v3, Ljava/lang/Exception;

    const-string v5, "syntax error"

    invoke-direct {v3, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v4    # "lastIndex":I
    .end local v6    # "scriptUrl":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "script":Lat/fhooe/usmile/gpjshell/CapInstallScript;
    .end local v9    # "line":Ljava/lang/String;
    .end local p0    # "capUrl":Ljava/lang/String;
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    .end local v0    # "fields":[Ljava/lang/String;
    .restart local v4    # "lastIndex":I
    .restart local v6    # "scriptUrl":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "script":Lat/fhooe/usmile/gpjshell/CapInstallScript;
    .restart local v9    # "line":Ljava/lang/String;
    .restart local p0    # "capUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_6

    .line 83
    :cond_7
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 86
    goto :goto_5

    .line 84
    :catch_1
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 87
    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 89
    :goto_5
    return-object v8

    .line 82
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_8

    .line 78
    :catch_2
    move-exception v0

    const/16 v17, 0x0

    :goto_6
    move-object v3, v0

    .line 79
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing install script: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 80
    nop

    .line 83
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 86
    goto :goto_7

    .line 84
    :catch_3
    move-exception v0

    .line 85
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 80
    .end local v0    # "e":Ljava/io/IOException;
    :goto_7
    return-object v17

    .line 83
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_8
    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 86
    goto :goto_9

    .line 84
    :catch_4
    move-exception v0

    .line 85
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 87
    .end local v0    # "e":Ljava/io/IOException;
    :goto_9
    throw v2

    .line 46
    .end local v8    # "script":Lat/fhooe/usmile/gpjshell/CapInstallScript;
    .end local v9    # "line":Ljava/lang/String;
    :catch_5
    move-exception v0

    const/16 v17, 0x0

    .line 47
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t open install script "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-object v17

    .line 35
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "lastIndex":I
    .end local v6    # "scriptUrl":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :cond_8
    const/16 v17, 0x0

    .line 36
    :goto_a
    return-object v17

    nop

    :array_0
    .array-data 1
        -0x37t
        0x0t
    .end array-data
.end method


# virtual methods
.method public getDescriptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lat/fhooe/usmile/gpjshell/CapInstallScript$AppletInstallDescriptor;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/CapInstallScript;->mDescriptors:Ljava/util/List;

    return-object v0
.end method
