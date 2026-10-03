.class public Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;
.super Ljava/lang/Object;
.source "ChannelSetDataSource.java"


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

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;->mConnection:Lat/fhooe/usmile/gpjshell/db/DatabaseConnection;

    .line 32
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 39
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;->mConnection:Lat/fhooe/usmile/gpjshell/db/DatabaseConnection;

    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/db/DatabaseConnection;->close()V

    .line 40
    return-void
.end method

.method public getChannelSets()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    .local v0, "channelSetsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;>;"
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    const-string v8, "stringname DESC"

    const-string v2, "channelset"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 59
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 60
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 61
    const-string v3, "stringname"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "nameString":Ljava/lang/String;
    const-string v4, "scpversion"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 63
    .local v4, "scpVersion":I
    const-string v5, "securitylevel"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 64
    .local v5, "securityLevel":I
    const-string v6, "gemalto"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    .line 66
    .local v7, "isGemalto":Z
    :goto_1
    new-instance v6, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;

    invoke-direct {v6, v3, v4, v5, v7}, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;-><init>(Ljava/lang/String;IIZ)V

    .line 68
    .local v6, "channel":Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;
    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 60
    .end local v3    # "nameString":Ljava/lang/String;
    .end local v4    # "scpVersion":I
    .end local v5    # "securityLevel":I
    .end local v6    # "channel":Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;
    .end local v7    # "isGemalto":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public insertChannelSet(Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;)V
    .locals 12
    .param p1, "channelSet"    # Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;

    .line 43
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 44
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->getChannelNameString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stringname"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->getScpVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "scpversion"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 46
    invoke-virtual {p1}, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->getSecurityLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "securitylevel"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    invoke-virtual {p1}, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->isGemalto()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "gemalto"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 49
    iget-object v4, p0, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v2, v6, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stringname=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->getChannelNameString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v5, "channelset"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v4, 0x0

    const-string v5, "channelset"

    const-string v6, ""

    if-lez v1, :cond_0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lat/fhooe/usmile/gpjshell/objects/GPChannelSet;->getChannelNameString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v5, v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "channels updated: "

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v5, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "channel inserted at row: "

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_0
    return-void
.end method

.method public open()V
    .locals 1

    .line 35
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;->mConnection:Lat/fhooe/usmile/gpjshell/db/DatabaseConnection;

    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/db/DatabaseConnection;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    return-void
.end method

.method public remove(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/db/ChannelSetDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stringname=\'"

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

    const-string v3, "channelset"

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
