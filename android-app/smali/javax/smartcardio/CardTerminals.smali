.class public abstract Ljavax/smartcardio/CardTerminals;
.super Ljava/lang/Object;
.source "CardTerminals.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/smartcardio/CardTerminals$State;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method


# virtual methods
.method public getTerminal(Ljava/lang/String;)Ljavax/smartcardio/CardTerminal;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 114
    if-eqz p1, :cond_2

    .line 118
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljavax/smartcardio/CardTerminals;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/smartcardio/CardTerminal;

    .line 119
    .local v2, "terminal":Ljavax/smartcardio/CardTerminal;
    invoke-virtual {v2}, Ljavax/smartcardio/CardTerminal;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljavax/smartcardio/CardException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 120
    return-object v2

    .line 122
    .end local v2    # "terminal":Ljavax/smartcardio/CardTerminal;
    :cond_0
    goto :goto_0

    .line 123
    :cond_1
    return-object v0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljavax/smartcardio/CardException;
    return-object v0

    .line 115
    .end local v1    # "e":Ljavax/smartcardio/CardException;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/smartcardio/CardTerminal;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 72
    sget-object v0, Ljavax/smartcardio/CardTerminals$State;->ALL:Ljavax/smartcardio/CardTerminals$State;

    invoke-virtual {p0, v0}, Ljavax/smartcardio/CardTerminals;->list(Ljavax/smartcardio/CardTerminals$State;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract list(Ljavax/smartcardio/CardTerminals$State;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/smartcardio/CardTerminals$State;",
            ")",
            "Ljava/util/List<",
            "Ljavax/smartcardio/CardTerminal;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation
.end method

.method public waitForChange()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 141
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/smartcardio/CardTerminals;->waitForChange(J)Z

    .line 142
    return-void
.end method

.method public abstract waitForChange(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation
.end method
