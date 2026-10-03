.class public Lcom/gpjpboc/toolkit/CardPoller;
.super Ljava/lang/Object;
.source "CardPoller.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final act:Lorg/pboc/fm1208/MainActivity;


# direct methods
.method public constructor <init>(Lorg/pboc/fm1208/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpjpboc/toolkit/CardPoller;->act:Lorg/pboc/fm1208/MainActivity;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/gpjpboc/toolkit/CardPoller;->act:Lorg/pboc/fm1208/MainActivity;

    invoke-virtual {v0}, Lorg/pboc/fm1208/MainActivity;->pollCard()V

    iget-object v0, v0, Lorg/pboc/fm1208/MainActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x320

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
