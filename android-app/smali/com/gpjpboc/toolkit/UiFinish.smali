.class public Lcom/gpjpboc/toolkit/UiFinish;
.super Ljava/lang/Object;
.source "UiFinish.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final act:Lcom/gpjpboc/toolkit/FileSysActivity;

.field private final stopped:Z

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gpjpboc/toolkit/FileSysActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/gpjpboc/toolkit/UiFinish;->act:Lcom/gpjpboc/toolkit/FileSysActivity;

    .line 11
    iput-object p2, p0, Lcom/gpjpboc/toolkit/UiFinish;->text:Ljava/lang/String;

    .line 12
    iput-boolean p3, p0, Lcom/gpjpboc/toolkit/UiFinish;->stopped:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/gpjpboc/toolkit/UiFinish;->act:Lcom/gpjpboc/toolkit/FileSysActivity;

    iget-object v1, p0, Lcom/gpjpboc/toolkit/UiFinish;->text:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/gpjpboc/toolkit/UiFinish;->stopped:Z

    invoke-virtual {v0, v1, v2}, Lcom/gpjpboc/toolkit/FileSysActivity;->finishCustomUi(Ljava/lang/String;Z)V

    return-void
.end method
