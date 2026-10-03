.class public Lat/fhooe/usmile/gpjshell/CAPFile;
.super Ljava/lang/Object;
.source "CAPFile.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readAID(Ljava/lang/String;)Lnet/sourceforge/gpj/cardservices/AID;
    .locals 3
    .param p0, "_url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    new-instance v0, Lnet/sourceforge/gpj/cardservices/CapFile;

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/gpj/cardservices/CapFile;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 25
    .local v0, "cpFile":Lnet/sourceforge/gpj/cardservices/CapFile;
    invoke-virtual {v0}, Lnet/sourceforge/gpj/cardservices/CapFile;->getPackageAID()Lnet/sourceforge/gpj/cardservices/AID;

    move-result-object v1

    return-object v1
.end method
