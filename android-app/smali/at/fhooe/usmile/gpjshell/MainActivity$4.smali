.class Lat/fhooe/usmile/gpjshell/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/usmile/gpjshell/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lat/fhooe/usmile/gpjshell/MainActivity;


# direct methods
.method constructor <init>(Lat/fhooe/usmile/gpjshell/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 203
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$4;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 207
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/MainActivity$4;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$500(Lat/fhooe/usmile/gpjshell/MainActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$4;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v1}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$400(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;

    .line 208
    .local v0, "keyset":Lat/fhooe/usmile/gpjshell/objects/GPKeyset;
    if-eqz v0, :cond_1

    .line 209
    new-instance v1, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;

    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity$4;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-direct {v1, v2}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;-><init>(Landroid/content/Context;)V

    .line 211
    .local v1, "keysetSource":Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;
    invoke-virtual {v1}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->open()V

    .line 212
    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->getUniqueID()I

    move-result v2

    invoke-virtual {v1, v2}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->remove(I)I

    .line 213
    invoke-virtual {v1}, Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;->close()V

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyset count"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lat/fhooe/usmile/gpjshell/MainActivity$4;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v4}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$600(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "name "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 216
    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    const-string v4, "GPJShell"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lat/fhooe/usmile/gpjshell/MainActivity$4;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v5}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$600(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 218
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keyset name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lat/fhooe/usmile/gpjshell/MainActivity$4;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    .line 219
    invoke-static {v6}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$600(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 218
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity$4;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v2}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$600(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lat/fhooe/usmile/gpjshell/objects/GPKeyset;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lat/fhooe/usmile/gpjshell/MainActivity$4;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v3}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$600(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v2, p0, Lat/fhooe/usmile/gpjshell/MainActivity$4;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v2}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$600(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 226
    .end local v1    # "keysetSource":Lat/fhooe/usmile/gpjshell/db/KeysetDataSource;
    :cond_1
    return-void
.end method
