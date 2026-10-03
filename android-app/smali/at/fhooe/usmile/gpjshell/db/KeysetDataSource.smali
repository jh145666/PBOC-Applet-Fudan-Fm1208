.class public Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;
.super Ljava/lang/Object;
.source "KeysetDataSource.java"


# instance fields
.field private mConnection:Lat/fhooe/usmile/gpjshell/db/DatabaseConnection;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lat/fhooe/usmile/gpjshell/db/DatabaseConnection;

    invoke-direct {v0, p1}, Lat/fhooe/usmile/gpjshell/db/DatabaseConnection;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->mConnection:Lat/fhooe/usmile/gpjshell/db/DatabaseConnection;

    .line 32
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 39
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->mConnection:Lat/fhooe/usmile/gpjshell/db/DatabaseConnection;

    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/db/DatabaseConnection;->close()V

    .line 40
    return-void
.end method

.method public containsKeyset(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v1, "name"

    aput-object v1, v2, v8

    const/4 v9, 0x1

    const-string v1, "reader"

    aput-object v1, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v1, "keysets"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v8, 0x1

    .line 73
    :cond_0
    return v8
.end method

.method public containsUID(I)Z
    .locals 10
    .param p1, "id"    # I

    .line 83
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v8, 0x1

    new-array v2, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v1, "keysets"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 83
    :goto_0
    return v8
.end method

.method public getKeysets(Ljava/lang/String;)Ljava/util/Map;
    .locals 20
    .param p1, "reader"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lat/fhooe/usmile/gpjshell/objects/GPKeyset;",
            ">;"
        }
    .end annotation

    .line 90
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 91
    .local v1, "whereClause":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reader = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    .line 91
    :cond_0
    move-object v5, v1

    .line 95
    .end local v1    # "whereClause":Ljava/lang/String;
    .local v5, "whereClause":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v1, "keysets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lat/fhooe/usmile/gpjshell/objects/GPKeyset;>;"
    move-object/from16 v10, p0

    iget-object v2, v10, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v8, 0x0

    const-string v9, "keysetid DESC"

    const-string v3, "keysets"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 99
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 100
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 101
    nop

    .line 102
    const-string v4, "_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 101
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 103
    .local v12, "uid":I
    nop

    .line 104
    const-string v4, "name"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 103
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 105
    .local v13, "name":Ljava/lang/String;
    nop

    .line 106
    const-string v4, "keysetid"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 105
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 107
    .local v14, "id":I
    nop

    .line 108
    const-string v4, "version"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 107
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 109
    .local v15, "version":I
    nop

    .line 110
    const-string v4, "mac"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 109
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 111
    .local v16, "MAC":Ljava/lang/String;
    nop

    .line 112
    const-string v4, "dek"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 111
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 113
    .local v17, "DEK":Ljava/lang/String;
    nop

    .line 114
    const-string v4, "kek"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 113
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 115
    .local v18, "KEK":Ljava/lang/String;
    nop

    .line 116
    const-string v4, "reader"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 115
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 118
    .local v19, "readerName":Ljava/lang/String;
    new-instance v11, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;

    invoke-direct/range {v11 .. v19}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v16

    .line 120
    .end local v16    # "MAC":Ljava/lang/String;
    .local v4, "MAC":Ljava/lang/String;
    .local v11, "newKeyset":Lat/fhooe/usmile/gpjshell/objects/GPKeyset;
    invoke-virtual {v11}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 123
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; mac: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KeysetData"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v4    # "MAC":Ljava/lang/String;
    .end local v11    # "newKeyset":Lat/fhooe/usmile/gpjshell/objects/GPKeyset;
    .end local v12    # "uid":I
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "id":I
    .end local v15    # "version":I
    .end local v17    # "DEK":Ljava/lang/String;
    .end local v18    # "KEK":Ljava/lang/String;
    .end local v19    # "readerName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 125
    .end local v3    # "i":I
    :cond_1
    return-object v1
.end method

.method public insertKeyset(Lat/fhooe/usmile/gpjshell/objects/GPKeyset;)V
    .locals 8
    .param p1, "keyset"    # Lat/fhooe/usmile/gpjshell/objects/GPKeyset;

    .line 43
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 44
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->getID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "keysetid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 45
    invoke-virtual {p1}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 46
    const-string v1, "mac"

    invoke-virtual {p1}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->getMAC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "dek"

    invoke-virtual {p1}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->getENC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "kek"

    invoke-virtual {p1}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->getKEK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "name"

    invoke-virtual {p1}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->getReaderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reader"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->getUniqueID()I

    move-result v1

    const/4 v3, -0x1

    const-string v4, "\'"

    const/4 v5, 0x0

    const-string v6, "keysets"

    if-ne v1, v3, :cond_1

    .line 54
    invoke-virtual {p1}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->getReaderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->containsKeyset(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name=\'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 56
    invoke-virtual {p1}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\' AND "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 57
    invoke-virtual {p1}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->getReaderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-virtual {v1, v6, v0, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 60
    :cond_0
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v6, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p1}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->getUniqueID()I

    move-result v1

    invoke-virtual {p0, v1}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->containsUID(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 64
    invoke-virtual {p1}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->getUniqueID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual {v1, v6, v0, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :cond_2
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v6, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 70
    :goto_0
    return-void
.end method

.method public open()V
    .locals 1

    .line 35
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->mConnection:Lat/fhooe/usmile/gpjshell/db/DatabaseConnection;

    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/db/DatabaseConnection;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    return-void
.end method

.method public remove(I)I
    .locals 4
    .param p1, "uid"    # I

    .line 129
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "keysets"

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public removeByName(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "keysets"

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
