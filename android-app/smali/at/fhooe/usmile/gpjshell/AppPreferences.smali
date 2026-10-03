.class public Lat/fhooe/usmile/gpjshell/AppPreferences;
.super Ljava/lang/Object;
.source "AppPreferences.java"


# static fields
.field private static final APP_SHARED_PREFS:Ljava/lang/String;

.field public static final KEY_PREFS_DEFAULT_APPLET_AID:Ljava/lang/String; = "default_applet_aid"

.field public static final KEY_PREFS_SELECTED_CAP:Ljava/lang/String; = "applet_selected_cap"


# instance fields
.field private mPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lat/fhooe/usmile/gpjshell/AppPreferences;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lat/fhooe/usmile/gpjshell/AppPreferences;->APP_SHARED_PREFS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lat/fhooe/usmile/gpjshell/AppPreferences;->APP_SHARED_PREFS:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/AppPreferences;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 28
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AppPreferences;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lat/fhooe/usmile/gpjshell/AppPreferences;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 29
    return-void
.end method


# virtual methods
.method public clearDefaultAppletAID()V
    .locals 2

    .line 50
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AppPreferences;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "default_applet_aid"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AppPreferences;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    return-void
.end method

.method public getDefaultAppletAID()Ljava/lang/String;
    .locals 3

    .line 41
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AppPreferences;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "default_applet_aid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedCap()Ljava/lang/String;
    .locals 3

    .line 32
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AppPreferences;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "applet_selected_cap"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveDefaultAppletAID(Ljava/lang/String;)V
    .locals 2
    .param p1, "aid"    # Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AppPreferences;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "default_applet_aid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AppPreferences;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    return-void
.end method

.method public saveSelectedCap(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AppPreferences;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "applet_selected_cap"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 37
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/AppPreferences;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    return-void
.end method
