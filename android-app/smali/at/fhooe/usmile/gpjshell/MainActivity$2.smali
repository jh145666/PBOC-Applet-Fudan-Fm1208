.class Lat/fhooe/usmile/gpjshell/MainActivity$2;
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

    .line 172
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$2;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 176
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$2;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    const-class v2, Lat/fhooe/usmile/gpjshell/AddChannelSetActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$2;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    const/16 v2, 0x67

    invoke-virtual {v1, v0, v2}, Lat/fhooe/usmile/gpjshell/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 179
    return-void
.end method
