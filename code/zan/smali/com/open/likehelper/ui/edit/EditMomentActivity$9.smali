.class Lcom/open/likehelper/ui/edit/EditMomentActivity$9;
.super Ljava/lang/Object;
.source "EditMomentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/ui/edit/EditMomentActivity;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/open/likehelper/ui/edit/EditMomentActivity;


# direct methods
.method constructor <init>(Lcom/open/likehelper/ui/edit/EditMomentActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$9;->b:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    iput-object p2, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$9;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 383
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$9;->b:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    iget-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$9;->b:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    const v2, 0x7f070043

    invoke-virtual {v1, v2}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->c(Lcom/open/likehelper/ui/edit/EditMomentActivity;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$9;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$9;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$9;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 387
    :cond_0
    return-void
.end method
