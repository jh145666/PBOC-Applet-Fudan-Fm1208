.class Lorg/pboc/fm1208/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/pboc/fm1208/MainActivity;->doCustomApdu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/pboc/fm1208/MainActivity;

.field final synthetic val$apduInput:Landroid/widget/EditText;

.field final synthetic val$descTv:Landroid/widget/TextView;

.field final synthetic val$presets:[[Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/pboc/fm1208/MainActivity;[[Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 788
    iput-object p1, p0, Lorg/pboc/fm1208/MainActivity$1;->this$0:Lorg/pboc/fm1208/MainActivity;

    iput-object p2, p0, Lorg/pboc/fm1208/MainActivity$1;->val$presets:[[Ljava/lang/String;

    iput-object p3, p0, Lorg/pboc/fm1208/MainActivity$1;->val$descTv:Landroid/widget/TextView;

    iput-object p4, p0, Lorg/pboc/fm1208/MainActivity$1;->val$apduInput:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 791
    iget-object p1, p0, Lorg/pboc/fm1208/MainActivity$1;->val$presets:[[Ljava/lang/String;

    aget-object p1, p1, p3

    .line 792
    iget-object p2, p0, Lorg/pboc/fm1208/MainActivity$1;->val$descTv:Landroid/widget/TextView;

    const/16 p3, 0x8

    aget-object p3, p1, p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 795
    const/4 p3, 0x1

    aget-object p3, p1, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const/4 p5, 0x2

    aget-object p5, p1, p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const/4 p5, 0x3

    aget-object p5, p1, p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const/4 p5, 0x4

    aget-object p5, p1, p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    const/4 p3, 0x5

    aget-object p5, p1, p3

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_0

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    aget-object p3, p1, p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    :cond_0
    const/4 p3, 0x6

    aget-object p5, p1, p3

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_1

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    aget-object p3, p1, p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    :cond_1
    const/4 p3, 0x7

    aget-object p5, p1, p3

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    aget-object p1, p1, p3

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    :cond_2
    iget-object p1, p0, Lorg/pboc/fm1208/MainActivity$1;->val$apduInput:Landroid/widget/EditText;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 800
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 802
    return-void
.end method
