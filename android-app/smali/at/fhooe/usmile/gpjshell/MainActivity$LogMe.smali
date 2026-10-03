.class public Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/fhooe/usmile/gpjshell/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogMe"
.end annotation


# instance fields
.field final synthetic this$0:Lat/fhooe/usmile/gpjshell/MainActivity;


# direct methods
.method public constructor <init>(Lat/fhooe/usmile/gpjshell/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 1036
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "_tag"    # Ljava/lang/String;
    .param p2, "_text"    # Ljava/lang/String;

    .line 1055
    invoke-virtual {p0, p1, p2}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "_tag"    # Ljava/lang/String;
    .param p2, "_text"    # Ljava/lang/String;

    .line 1047
    invoke-virtual {p0, p1, p2}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "_tag"    # Ljava/lang/String;
    .param p2, "_text"    # Ljava/lang/String;
    .param p3, "_e"    # Ljava/lang/Exception;

    .line 1051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "_tag"    # Ljava/lang/String;
    .param p2, "_text"    # Ljava/lang/String;

    .line 1059
    invoke-virtual {p0, p1, p2}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "_tag"    # Ljava/lang/String;
    .param p2, "_text"    # Ljava/lang/String;

    .line 1038
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const-string v0, "<br>|<br/>"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1040
    .local v0, "lines":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1041
    .local v3, "line":Ljava/lang/String;
    iget-object v4, p0, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v4}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$1900(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<font color=\"#ff0000\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</font> : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<br>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 1040
    .end local v3    # "line":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1044
    :cond_0
    return-void
.end method
