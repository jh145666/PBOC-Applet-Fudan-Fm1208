.class public final synthetic Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda51;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/pboc/fm1208/MainActivity;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lorg/pboc/fm1208/MainActivity;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda51;->f$0:Lorg/pboc/fm1208/MainActivity;

    iput-object p2, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda51;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda51;->f$0:Lorg/pboc/fm1208/MainActivity;

    iget-object v1, p0, Lorg/pboc/fm1208/MainActivity$$ExternalSyntheticLambda51;->f$1:Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1, p2}, Lorg/pboc/fm1208/MainActivity;->lambda$doCustomApdu$61$org-pboc-fm1208-MainActivity(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
