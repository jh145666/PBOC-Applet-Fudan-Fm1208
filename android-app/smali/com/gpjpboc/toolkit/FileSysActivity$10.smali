.class Lcom/gpjpboc/toolkit/FileSysActivity$10;
.super Ljava/lang/Object;
.source "FileSysActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpjpboc/toolkit/FileSysActivity;->editTree()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

.field private final synthetic val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/gpjpboc/toolkit/FileSysActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 944
    iput-object p1, p0, Lcom/gpjpboc/toolkit/FileSysActivity$10;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    iput-object p2, p0, Lcom/gpjpboc/toolkit/FileSysActivity$10;->val$et:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .line 946
    new-instance p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;

    invoke-direct {p1}, Lcom/gpjpboc/toolkit/FileSysActivity$Node;-><init>()V

    const/16 p2, 0x3f00

    .line 947
    iput p2, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->fid:I

    .line 948
    const-string v0, "MF"

    iput-object v0, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->type:Ljava/lang/String;

    .line 949
    const-string v0, "\u624b\u5de5\u6587\u4ef6\u6811"

    iput-object v0, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->probe:Ljava/lang/String;

    .line 950
    iget-object v0, p0, Lcom/gpjpboc/toolkit/FileSysActivity$10;->val$et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 951
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_0

    .line 965
    iget-object p2, p0, Lcom/gpjpboc/toolkit/FileSysActivity$10;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    invoke-static {p2, p1}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$3(Lcom/gpjpboc/toolkit/FileSysActivity;Lcom/gpjpboc/toolkit/FileSysActivity$Node;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/gpjpboc/toolkit/Config;->structJson:Ljava/lang/String;

    .line 966
    iget-object p2, p0, Lcom/gpjpboc/toolkit/FileSysActivity$10;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    invoke-static {p2}, Lcom/gpjpboc/toolkit/Config;->save(Landroid/content/Context;)V

    .line 967
    iget-object p2, p0, Lcom/gpjpboc/toolkit/FileSysActivity$10;->this$0:Lcom/gpjpboc/toolkit/FileSysActivity;

    const-string v0, "\u6309\u6587\u4ef6\u6811\u5728\u5361\u4e0a\u5efa\u7acb\u6587\u4ef6\u7ed3\u6784\uff1f\uff08\u5df2\u5b58\u5728\u7684\u81ea\u52a8\u8df3\u8fc7\uff09"

    invoke-static {p2, v0, p1}, Lcom/gpjpboc/toolkit/FileSysActivity;->access$4(Lcom/gpjpboc/toolkit/FileSysActivity;Ljava/lang/String;Lcom/gpjpboc/toolkit/FileSysActivity$Node;)V

    return-void

    .line 951
    :cond_0
    aget-object v4, v0, v3

    .line 952
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 953
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_1

    goto :goto_3

    .line 954
    :cond_1
    const-string v5, "[ ,;\\t]+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 956
    :try_start_0
    aget-object v5, v4, v2

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 957
    new-instance v6, Lcom/gpjpboc/toolkit/FileSysActivity$Node;

    invoke-direct {v6}, Lcom/gpjpboc/toolkit/FileSysActivity$Node;-><init>()V

    .line 958
    iput v5, v6, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->fid:I

    .line 959
    array-length v7, v4

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    aget-object v7, v4, v8

    goto :goto_1

    :cond_2
    const-string v7, "EF"

    :goto_1
    iput-object v7, v6, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->type:Ljava/lang/String;

    .line 960
    array-length v7, v4

    const/4 v8, 0x2

    if-le v7, v8, :cond_3

    aget-object v4, v4, v8

    goto :goto_2

    :cond_3
    const-string v4, ""

    :goto_2
    iput-object v4, v6, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->probe:Ljava/lang/String;

    if-eq v5, p2, :cond_4

    .line 961
    iget-object v4, p1, Lcom/gpjpboc/toolkit/FileSysActivity$Node;->kids:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
