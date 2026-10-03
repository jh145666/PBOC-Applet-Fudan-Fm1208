.class final Lnet/sourceforge/gpj/cardservices/GlobalPlatformService$1InstallEntry;
.super Ljava/lang/Object;
.source "GlobalPlatformService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;->openService([Ljava/lang/String;Ljavax/smartcardio/CardTerminal;)Lnet/sourceforge/gpj/cardservices/GlobalPlatformService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InstallEntry"
.end annotation


# instance fields
.field appletAID:Lnet/sourceforge/gpj/cardservices/AID;

.field packageAID:Lnet/sourceforge/gpj/cardservices/AID;

.field params:[B

.field priv:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
