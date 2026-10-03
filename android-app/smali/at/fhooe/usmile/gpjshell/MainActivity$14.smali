.class Lat/fhooe/usmile/gpjshell/MainActivity$14;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/usmile/gpjshell/MainActivity;->addReaderItemsOnSpinner([Lorg/simalliance/openmobileapi/Reader;)V
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

    .line 753
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/MainActivity$14;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 16
    .param p1, "v"    # Landroid/view/View;

    .line 756
    move-object/from16 v1, p0

    const-string v2, "9000"

    iget-object v0, v1, Lat/fhooe/usmile/gpjshell/MainActivity$14;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$1500(Lat/fhooe/usmile/gpjshell/MainActivity;)Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

    move-result-object v0

    const-string v3, "GPJShell"

    if-eqz v0, :cond_7

    iget-object v0, v1, Lat/fhooe/usmile/gpjshell/MainActivity$14;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$1500(Lat/fhooe/usmile/gpjshell/MainActivity;)Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 761
    :cond_0
    iget-object v0, v1, Lat/fhooe/usmile/gpjshell/MainActivity$14;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$1700(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 762
    .local v4, "licenseStr":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 763
    invoke-static {}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$800()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    move-result-object v0

    const-string v2, "\u8bf7\u8f93\u5165\u8bb8\u53ef\u8bc1\uff01"

    invoke-virtual {v0, v3, v2}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    return-void

    .line 769
    :cond_1
    :try_start_0
    iget-object v0, v1, Lat/fhooe/usmile/gpjshell/MainActivity$14;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v0}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$1800(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 771
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 772
    .local v0, "licenseData":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 773
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 772
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v5    # "i":I
    :cond_2
    goto :goto_1

    .line 778
    .end local v0    # "licenseData":[B
    :cond_3
    :try_start_1
    invoke-static {v4}, Lat/fhooe/usmile/gpjshell/GPUtils;->convertHexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 782
    .restart local v0    # "licenseData":[B
    goto :goto_1

    .line 779
    .end local v0    # "licenseData":[B
    :catch_0
    move-exception v0

    .line 780
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$800()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    move-result-object v5

    const-string v6, "\u65e0\u6548\u7684\u5341\u516d\u8fdb\u5236\uff01\u4f7f\u7528ASCII\u3002"

    invoke-virtual {v5, v3, v6}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    move-object v0, v5

    .line 785
    .local v0, "licenseData":[B
    :goto_1
    iget-object v5, v1, Lat/fhooe/usmile/gpjshell/MainActivity$14;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v5}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$1500(Lat/fhooe/usmile/gpjshell/MainActivity;)Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;

    move-result-object v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Lnet/sourceforge/gpj/cardservices/interfaces/GPTerminal;->connect(Ljava/lang/String;)Ljavax/smartcardio/Card;

    move-result-object v5

    .line 786
    .local v5, "card":Ljavax/smartcardio/Card;
    invoke-virtual {v5}, Ljavax/smartcardio/Card;->getBasicChannel()Ljavax/smartcardio/CardChannel;

    move-result-object v6

    .line 789
    .local v6, "channel":Ljavax/smartcardio/CardChannel;
    const/16 v7, 0xb

    new-array v7, v7, [B

    fill-array-data v7, :array_0

    .line 793
    .local v7, "selectApplet":[B
    invoke-static {}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$800()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    move-result-object v8

    const-string v9, "1. \u6b63\u5728\u9009\u62e9Applet..."

    invoke-virtual {v8, v3, v9}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    new-instance v8, Ljavax/smartcardio/CommandAPDU;

    invoke-direct {v8, v7}, Ljavax/smartcardio/CommandAPDU;-><init>([B)V

    invoke-virtual {v6, v8}, Ljavax/smartcardio/CardChannel;->transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;

    move-result-object v8

    .line 795
    .local v8, "selectResp":Ljavax/smartcardio/ResponseAPDU;
    invoke-static {}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$800()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u9009\u62e9\u56de\u5e94: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljavax/smartcardio/ResponseAPDU;->getBytes()[B

    move-result-object v11

    invoke-static {v11}, Lat/fhooe/usmile/gpjshell/GPUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    invoke-virtual {v8}, Ljavax/smartcardio/ResponseAPDU;->getBytes()[B

    move-result-object v9

    invoke-static {v9}, Lat/fhooe/usmile/gpjshell/GPUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_4

    .line 798
    invoke-static {}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$800()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    move-result-object v2

    const-string v9, "\u9009\u62e9\u5931\u8d25\u3002\u4e2d\u6b62\u6fc0\u6d3b\u3002"

    invoke-virtual {v2, v3, v9}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    invoke-virtual {v5, v10}, Ljavax/smartcardio/Card;->disconnect(Z)V

    .line 800
    return-void

    .line 804
    :cond_4
    array-length v9, v0

    const/4 v11, 0x5

    add-int/2addr v9, v11

    new-array v9, v9, [B

    .line 805
    .local v9, "activateCmd":[B
    const/16 v12, -0x80

    aput-byte v12, v9, v10

    .line 806
    const/16 v12, 0x22

    const/4 v13, 0x1

    aput-byte v12, v9, v13

    .line 807
    const/4 v12, 0x2

    aput-byte v10, v9, v12

    .line 808
    const/4 v12, 0x3

    aput-byte v10, v9, v12

    .line 809
    array-length v12, v0

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    const/4 v13, 0x4

    aput-byte v12, v9, v13

    .line 810
    array-length v12, v0

    invoke-static {v0, v10, v9, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 812
    invoke-static {}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$800()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "2. \u6b63\u5728\u6fc0\u6d3b\u5361\u7247 (\u6a21\u5f0f: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lat/fhooe/usmile/gpjshell/MainActivity$14;->this$0:Lat/fhooe/usmile/gpjshell/MainActivity;

    invoke-static {v13}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$1800(Lat/fhooe/usmile/gpjshell/MainActivity;)Landroid/widget/CheckBox;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_5

    const-string v13, "\u6570\u5b57"

    goto :goto_2

    :cond_5
    const-string v13, "\u5341\u516d\u8fdb\u5236"

    :goto_2
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v3, v12}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    invoke-static {}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$800()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u547d\u4ee4: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v9}, Lat/fhooe/usmile/gpjshell/GPUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v3, v12}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    new-instance v11, Ljavax/smartcardio/CommandAPDU;

    invoke-direct {v11, v9}, Ljavax/smartcardio/CommandAPDU;-><init>([B)V

    invoke-virtual {v6, v11}, Ljavax/smartcardio/CardChannel;->transmit(Ljavax/smartcardio/CommandAPDU;)Ljavax/smartcardio/ResponseAPDU;

    move-result-object v11

    .line 816
    .local v11, "activateResp":Ljavax/smartcardio/ResponseAPDU;
    invoke-virtual {v11}, Ljavax/smartcardio/ResponseAPDU;->getBytes()[B

    move-result-object v12

    invoke-static {v12}, Lat/fhooe/usmile/gpjshell/GPUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v12

    .line 817
    .local v12, "respHex":Ljava/lang/String;
    invoke-static {}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$800()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u56de\u5e94: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v3, v14}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    invoke-virtual {v12, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 820
    invoke-static {}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$800()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    move-result-object v2

    const-string v13, "\u6210\u529f: \u5361\u7247\u5df2\u6fc0\u6d3b\uff01"

    invoke-virtual {v2, v3, v13}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 822
    :cond_6
    invoke-static {}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$800()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    move-result-object v2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u5931\u8d25: \u6fc0\u6d3b\u9519\u8bef "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v3, v13}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    :goto_3
    invoke-virtual {v5, v10}, Ljavax/smartcardio/Card;->disconnect(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 829
    .end local v0    # "licenseData":[B
    .end local v5    # "card":Ljavax/smartcardio/Card;
    .end local v6    # "channel":Ljavax/smartcardio/CardChannel;
    .end local v7    # "selectApplet":[B
    .end local v8    # "selectResp":Ljavax/smartcardio/ResponseAPDU;
    .end local v9    # "activateCmd":[B
    .end local v11    # "activateResp":Ljavax/smartcardio/ResponseAPDU;
    .end local v12    # "respHex":Ljava/lang/String;
    goto :goto_4

    .line 826
    :catch_1
    move-exception v0

    .line 827
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$800()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6fc0\u6d3b\u8fc7\u7a0b\u4e2d\u51fa\u9519: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 830
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 757
    .end local v4    # "licenseStr":Ljava/lang/String;
    :cond_7
    :goto_5
    invoke-static {}, Lat/fhooe/usmile/gpjshell/MainActivity;->access$800()Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;

    move-result-object v0

    const-string v2, "\u8bf7\u5148\u8d34\u5361\uff01"

    invoke-virtual {v0, v3, v2}, Lat/fhooe/usmile/gpjshell/MainActivity$LogMe;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x6t
        -0x80t
        -0x7at
        -0x80t
        -0x78t
        0x1t
        0x3t
    .end array-data
.end method
