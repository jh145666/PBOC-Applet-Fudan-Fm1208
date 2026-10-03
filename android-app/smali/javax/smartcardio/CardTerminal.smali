.class public abstract Ljavax/smartcardio/CardTerminal;
.super Ljava/lang/Object;
.source "CardTerminal.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method


# virtual methods
.method public abstract connect(Ljava/lang/String;)Ljavax/smartcardio/Card;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isCardPresent()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation
.end method

.method public abstract waitForCardAbsent(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation
.end method

.method public abstract waitForCardPresent(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation
.end method
