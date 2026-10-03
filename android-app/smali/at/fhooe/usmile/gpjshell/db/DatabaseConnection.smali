.class public Lat/fhooe/usmile/gpjshell/db/DatabaseConnection;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseConnection.java"


# static fields
.field public static final COLUMN1_CHANNEL_STRING_NAME:Ljava/lang/String; = "stringname"

.field public static final COLUMN1_KEYSET_ID:Ljava/lang/String; = "keysetid"

.field public static final COLUMN2_CHANNEL_SCPVERSION:Ljava/lang/String; = "scpversion"

.field public static final COLUMN2_VERSION:Ljava/lang/String; = "version"

.field public static final COLUMN3_MAC:Ljava/lang/String; = "mac"

.field public static final COLUMN3_SECURITY_LEVEL:Ljava/lang/String; = "securitylevel"

.field public static final COLUMN4_ENC:Ljava/lang/String; = "dek"

.field public static final COLUMN4_GEMALTO:Ljava/lang/String; = "gemalto"

.field public static final COLUMN5_KEK:Ljava/lang/String; = "kek"

.field public static final COLUMN6_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN7_READER:Ljava/lang/String; = "reader"

.field public static final COLUMN_CH_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final DB_CREATE_CHANNEL:Ljava/lang/String; = "create table channelset(_id integer primary key autoincrement, scpversion INTEGER, securitylevel INTEGER, gemalto BOOL, stringname TEXT);"

.field private static final DB_CREATE_KEYSET:Ljava/lang/String; = "create table keysets(_id integer primary key autoincrement, keysetid INTEGER not null,version INTEGER, mac TEXT, dek TEXT, kek TEXT, name TEXT, reader TEXT);"

.field public static final DB_NAME:Ljava/lang/String; = "GPDroid_DB"

.field public static final TABLE_CHANNELSET:Ljava/lang/String; = "channelset"

.field public static final TABLE_KEYSETS:Ljava/lang/String; = "keysets"

.field private static final VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "GPDroid_DB"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 74
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 78
    const-string v0, "create table keysets(_id integer primary key autoincrement, keysetid INTEGER not null,version INTEGER, mac TEXT, dek TEXT, kek TEXT, name TEXT, reader TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    const-string v0, "create table channelset(_id integer primary key autoincrement, scpversion INTEGER, securitylevel INTEGER, gemalto BOOL, stringname TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 84
    const-class v0, Lat/fhooe/usmile/gpjshell/db/DatabaseConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v0, "DROP TABLE IF EXISTS keysets"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, p1}, Lat/fhooe/usmile/gpjshell/db/DatabaseConnection;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 89
    return-void
.end method
