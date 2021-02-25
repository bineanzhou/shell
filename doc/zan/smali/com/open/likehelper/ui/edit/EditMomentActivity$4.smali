.class Lcom/open/likehelper/ui/edit/EditMomentActivity$4;
.super Ljava/lang/Object;
.source "EditMomentActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/ui/edit/EditMomentActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/open/likehelper/ui/edit/EditMomentActivity;


# direct methods
.method constructor <init>(Lcom/open/likehelper/ui/edit/EditMomentActivity;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$4;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 293
    if-eqz p1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$4;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    iget-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$4;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    iget-object v1, v1, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mNicknameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->b(Lcom/open/likehelper/ui/edit/EditMomentActivity;Ljava/lang/String;)V

    .line 296
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 289
    return-void
.end method
