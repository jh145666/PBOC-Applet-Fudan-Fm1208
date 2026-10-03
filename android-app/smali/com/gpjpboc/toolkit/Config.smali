.class public Lcom/gpjpboc/toolkit/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static TERMINAL_ID:[B = null

.field public static aid:Ljava/lang/String; = "A00000000386980701"

.field public static atcMode:I = 0x0

.field public static atcVal:I = 0x0

.field public static authOn:Z = false

.field public static extKey:Ljava/lang/String; = ""

.field public static fci:Ljava/lang/String; = ""

.field public static fciMf:Ljava/lang/String; = ""

.field public static intKey:Ljava/lang/String; = ""

.field public static macKey:Ljava/lang/String; = ""

.field public static macMode:I = 0x0

.field public static pin:Ljava/lang/String; = "123455"

.field public static recordsOn:Z = true

.field public static scanJson:Ljava/lang/String; = ""

.field public static structJson:Ljava/lang/String; = ""

.field public static termId:Ljava/lang/String; = "000000000001"

.field public static uid:Ljava/lang/String; = ""

.field public static walletMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyEngine()V
    .locals 5

    .line 65
    :try_start_0
    sget-object v0, Lcom/gpjpboc/toolkit/Config;->macKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/gpjpboc/toolkit/Config;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 66
    array-length v2, v0

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    array-length v2, v0

    const/16 v4, 0x10

    if-ne v2, v4, :cond_2

    .line 67
    :cond_0
    sput-object v0, Lorg/pboc/fm1208/PbocEngine;->MASTER_KEY:[B

    .line 68
    array-length v0, v0

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    sput v0, Lorg/pboc/fm1208/PbocEngine;->MAC_ALGO_MODE:I

    .line 70
    :cond_2
    sget v0, Lcom/gpjpboc/toolkit/Config;->macMode:I

    if-lt v0, v1, :cond_3

    const/4 v1, 0x3

    if-gt v0, v1, :cond_3

    .line 71
    sput v0, Lorg/pboc/fm1208/PbocEngine;->MAC_ALGO_MODE:I

    .line 73
    :cond_3
    sget-object v0, Lcom/gpjpboc/toolkit/Config;->pin:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4

    sget-object v0, Lcom/gpjpboc/toolkit/Config;->pin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-gt v0, v1, :cond_4

    .line 74
    sget-object v0, Lcom/gpjpboc/toolkit/Config;->pin:Ljava/lang/String;

    sput-object v0, Lorg/pboc/fm1208/PbocEngine;->DEFAULT_PIN:Ljava/lang/String;

    .line 76
    :cond_4
    sget-object v0, Lcom/gpjpboc/toolkit/Config;->termId:Ljava/lang/String;

    invoke-static {v0}, Lcom/gpjpboc/toolkit/Config;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_5

    .line 77
    array-length v1, v0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    .line 78
    sput-object v0, Lorg/pboc/fm1208/PbocEngine;->TERMINAL_ID:[B

    .line 79
    sput-object v0, Lcom/gpjpboc/toolkit/Config;->TERMINAL_ID:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    .line 152
    const-string p0, ""

    return-object p0

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 154
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_1

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 155
    :cond_1
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const-string v3, "%02X"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 138
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 140
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_2

    return-object v2

    :cond_2
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, v4, 0x2

    .line 143
    :try_start_0
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static load(Landroid/content/Context;)V
    .locals 4

    .line 34
    invoke-static {p0}, Lcom/gpjpboc/toolkit/Config;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 35
    const-string v0, "macKey"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gpjpboc/toolkit/Config;->macKey:Ljava/lang/String;

    .line 36
    const-string v0, "extKey"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gpjpboc/toolkit/Config;->extKey:Ljava/lang/String;

    .line 37
    const-string v0, "intKey"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gpjpboc/toolkit/Config;->intKey:Ljava/lang/String;

    .line 38
    const-string v0, "pin"

    const-string v2, "123455"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gpjpboc/toolkit/Config;->pin:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    .line 40
    :cond_0
    sput-object v2, Lcom/gpjpboc/toolkit/Config;->pin:Ljava/lang/String;

    .line 42
    :cond_1
    const-string v0, "authOn"

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/gpjpboc/toolkit/Config;->authOn:Z

    .line 43
    const-string v0, "atcMode"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/gpjpboc/toolkit/Config;->atcMode:I

    .line 44
    const-string v0, "atcVal"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/gpjpboc/toolkit/Config;->atcVal:I

    .line 45
    const-string v0, "walletMode"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/gpjpboc/toolkit/Config;->walletMode:I

    .line 46
    const-string v0, "recordsOn"

    const/4 v3, 0x1

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/gpjpboc/toolkit/Config;->recordsOn:Z

    .line 47
    const-string v0, "uid"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gpjpboc/toolkit/Config;->uid:Ljava/lang/String;

    .line 48
    const-string v0, "macMode"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/gpjpboc/toolkit/Config;->macMode:I

    .line 49
    const-string v0, "termId"

    const-string v2, "000000000001"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gpjpboc/toolkit/Config;->termId:Ljava/lang/String;

    .line 50
    const-string v0, "aid"

    const-string v2, "A00000000386980701"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gpjpboc/toolkit/Config;->aid:Ljava/lang/String;

    .line 52
    const-string v3, "A00000000386980700"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    sput-object v2, Lcom/gpjpboc/toolkit/Config;->aid:Ljava/lang/String;

    .line 55
    :cond_2
    const-string v0, "scanJson"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gpjpboc/toolkit/Config;->scanJson:Ljava/lang/String;

    .line 56
    const-string v0, "fci"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gpjpboc/toolkit/Config;->fci:Ljava/lang/String;

    .line 57
    const-string v0, "fciMf"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gpjpboc/toolkit/Config;->fciMf:Ljava/lang/String;

    .line 58
    const-string v0, "structJson"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gpjpboc/toolkit/Config;->structJson:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/gpjpboc/toolkit/Config;->applyEngine()V

    return-void
.end method

.method public static persistEngine(Landroid/content/Context;)V
    .locals 3

    .line 88
    :try_start_0
    sget-object v0, Lorg/pboc/fm1208/PbocEngine;->MASTER_KEY:[B

    if-eqz v0, :cond_1

    .line 90
    sget-object v0, Lorg/pboc/fm1208/PbocEngine;->MASTER_KEY:[B

    .line 89
    invoke-static {v0}, Lorg/pboc/fm1208/PbocEngine;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 92
    :cond_0
    sput-object v0, Lcom/gpjpboc/toolkit/Config;->macKey:Ljava/lang/String;

    .line 95
    :cond_1
    sget-object v0, Lorg/pboc/fm1208/PbocEngine;->TERMINAL_ID:[B

    if-eqz v0, :cond_2

    .line 96
    sget-object v0, Lorg/pboc/fm1208/PbocEngine;->TERMINAL_ID:[B

    array-length v0, v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 98
    sget-object v0, Lorg/pboc/fm1208/PbocEngine;->TERMINAL_ID:[B

    .line 97
    invoke-static {v0}, Lorg/pboc/fm1208/PbocEngine;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 100
    sput-object v0, Lcom/gpjpboc/toolkit/Config;->termId:Ljava/lang/String;

    .line 101
    sget-object v0, Lorg/pboc/fm1208/PbocEngine;->TERMINAL_ID:[B

    sput-object v0, Lcom/gpjpboc/toolkit/Config;->TERMINAL_ID:[B

    .line 104
    :cond_2
    sget-object v0, Lorg/pboc/fm1208/PbocEngine;->DEFAULT_PIN:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 105
    sget-object v0, Lorg/pboc/fm1208/PbocEngine;->DEFAULT_PIN:Ljava/lang/String;

    sput-object v0, Lcom/gpjpboc/toolkit/Config;->pin:Ljava/lang/String;

    .line 107
    :cond_3
    sget v0, Lorg/pboc/fm1208/PbocEngine;->MAC_ALGO_MODE:I

    sput v0, Lcom/gpjpboc/toolkit/Config;->macMode:I

    .line 108
    invoke-static {p0}, Lcom/gpjpboc/toolkit/Config;->save(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static save(Landroid/content/Context;)V
    .locals 2

    .line 114
    invoke-static {p0}, Lcom/gpjpboc/toolkit/Config;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 115
    const-string v0, "macKey"

    sget-object v1, Lcom/gpjpboc/toolkit/Config;->macKey:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 116
    const-string v0, "extKey"

    sget-object v1, Lcom/gpjpboc/toolkit/Config;->extKey:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 117
    const-string v0, "intKey"

    sget-object v1, Lcom/gpjpboc/toolkit/Config;->intKey:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    const-string v0, "pin"

    sget-object v1, Lcom/gpjpboc/toolkit/Config;->pin:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 119
    const-string v0, "authOn"

    sget-boolean v1, Lcom/gpjpboc/toolkit/Config;->authOn:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 120
    const-string v0, "atcMode"

    sget v1, Lcom/gpjpboc/toolkit/Config;->atcMode:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 121
    const-string v0, "atcVal"

    sget v1, Lcom/gpjpboc/toolkit/Config;->atcVal:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 122
    const-string v0, "walletMode"

    sget v1, Lcom/gpjpboc/toolkit/Config;->walletMode:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 123
    const-string v0, "recordsOn"

    sget-boolean v1, Lcom/gpjpboc/toolkit/Config;->recordsOn:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 124
    const-string v0, "uid"

    sget-object v1, Lcom/gpjpboc/toolkit/Config;->uid:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    const-string v0, "macMode"

    sget v1, Lcom/gpjpboc/toolkit/Config;->macMode:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 126
    const-string v0, "termId"

    sget-object v1, Lcom/gpjpboc/toolkit/Config;->termId:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 127
    const-string v0, "aid"

    sget-object v1, Lcom/gpjpboc/toolkit/Config;->aid:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 128
    const-string v0, "scanJson"

    sget-object v1, Lcom/gpjpboc/toolkit/Config;->scanJson:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 129
    const-string v0, "fci"

    sget-object v1, Lcom/gpjpboc/toolkit/Config;->fci:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 130
    const-string v0, "fciMf"

    sget-object v1, Lcom/gpjpboc/toolkit/Config;->fciMf:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 131
    const-string v0, "structJson"

    sget-object v1, Lcom/gpjpboc/toolkit/Config;->structJson:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 132
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 133
    invoke-static {}, Lcom/gpjpboc/toolkit/Config;->applyEngine()V

    return-void
.end method

.method private static sp(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 30
    const-string v0, "javapboc"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method
