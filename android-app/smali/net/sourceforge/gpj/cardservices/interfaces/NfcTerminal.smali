.class public Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;
.super Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;
.source "NfcTerminal.java"


# static fields
.field private static _INSTANCE:Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;


# instance fields
.field private mAvailableTag:Landroid/nfc/tech/IsoDep;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;->_INSTANCE:Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "con"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;->mAvailableTag:Landroid/nfc/tech/IsoDep;

    .line 17
    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;->mContext:Landroid/content/Context;

    .line 31
    iput-object p1, p0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;
    .locals 2
    .param p0, "con"    # Landroid/content/Context;

    .line 22
    const-class v0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;->_INSTANCE:Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;

    invoke-direct {v1, p0}, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;-><init>(Landroid/content/Context;)V

    sput-object v1, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;->_INSTANCE:Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;

    .line 26
    :cond_0
    sget-object v1, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;->_INSTANCE:Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;

    monitor-exit v0

    return-object v1

    .line 27
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public connect(Ljava/lang/String;)Ljavax/smartcardio/Card;
    .locals 2
    .param p1, "unused"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    # ==== gpjpboc-v1.3.5 (connect_adopted) ====
    invoke-direct {p0}, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;->adoptShared()V

    .line 35
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;->mAvailableTag:Landroid/nfc/tech/IsoDep;

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcard;

    iget-object v1, p0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;->mAvailableTag:Landroid/nfc/tech/IsoDep;

    invoke-direct {v0, v1}, Lnet/sourceforge/gpj/cardservices/interfaces/NfcSmartcard;-><init>(Landroid/nfc/tech/IsoDep;)V

    return-object v0

    .line 38
    :cond_0
    new-instance v0, Ljavax/smartcardio/CardException;

    const-string v1, "NFC card not present"

    invoke-direct {v0, v1}, Ljavax/smartcardio/CardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReader()I
    .locals 1

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public isCardPresent()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    # ==== gpjpboc-v1.3.5 (isCardPresent adopted) ====
    invoke-direct {p0}, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;->adoptShared()V

    .line 48
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;->mAvailableTag:Landroid/nfc/tech/IsoDep;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnected()Z
    .locals 1

    # ==== gpjpboc-v1.4.3: 切页保持连接——无标签时先复用 PBOC 主页会话 ====
    invoke-direct {p0}, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;->adoptShared()V

    .line 84
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;->mAvailableTag:Landroid/nfc/tech/IsoDep;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private adoptShared()V
    .locals 2
    # ==== gpjpboc-v1.3.5: 统一 NFC 会话——无可用标签时复用 PBOC 主页连接 ====
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;->mAvailableTag:Landroid/nfc/tech/IsoDep;
    if-eqz v0, :try_adopt
    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->isConnected()Z
    move-result v1
    if-nez v1, :adopt_done
    :try_adopt
    invoke-static {}, Lcom/gpjpboc/toolkit/PageLauncher;->getIsoDep()Landroid/nfc/tech/IsoDep;
    move-result-object v0
    if-eqz v0, :adopt_done
    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->isConnected()Z
    move-result v1
    if-eqz v1, :adopt_done
    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;->mAvailableTag:Landroid/nfc/tech/IsoDep;
    :adopt_done
    return-void
.end method

.method public passTag(Landroid/nfc/Tag;)Z
    .locals 1
    .param p1, "tag"    # Landroid/nfc/Tag;

    .line 89
    invoke-static {p1}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;->mAvailableTag:Landroid/nfc/tech/IsoDep;

    .line 90
    iget-object v0, p0, Lnet/sourceforge/gpj/cardservices/interfaces/NfcTerminal;->mAvailableTag:Landroid/nfc/tech/IsoDep;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setReader(I)V
    .locals 0
    .param p1, "mReader"    # I

    .line 73
    return-void
.end method

.method public shutdown()V
    .locals 0

    .line 79
    return-void
.end method

.method public waitForCardAbsent(J)Z
    .locals 1
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public waitForCardPresent(J)Z
    .locals 1
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/smartcardio/CardException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    return v0
.end method
