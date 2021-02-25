.class Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder$2;
.super Ljava/lang/Object;
.source "PhotoAdaptar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->c(Lcom/open/likehelper/ui/pic/Photo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/open/likehelper/ui/pic/Photo;

.field final synthetic b:Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;


# direct methods
.method constructor <init>(Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;Lcom/open/likehelper/ui/pic/Photo;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder$2;->b:Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;

    iput-object p2, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder$2;->a:Lcom/open/likehelper/ui/pic/Photo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 120
    iget-object v2, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder$2;->b:Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;

    iget-object v2, v2, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->B:Lcom/open/likehelper/ui/pic/PhotoAdaptar;

    invoke-static {v2}, Lcom/open/likehelper/ui/pic/PhotoAdaptar;->b(Lcom/open/likehelper/ui/pic/PhotoAdaptar;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder$2;->a:Lcom/open/likehelper/ui/pic/Photo;

    invoke-virtual {v2}, Lcom/open/likehelper/ui/pic/Photo;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder$2;->b:Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;

    iget-object v2, v2, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder$2;->b:Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;

    iget-object v3, v3, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070033

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder$2;->b:Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;

    iget-object v5, v5, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->B:Lcom/open/likehelper/ui/pic/PhotoAdaptar;

    invoke-static {v5}, Lcom/open/likehelper/ui/pic/PhotoAdaptar;->c(Lcom/open/likehelper/ui/pic/PhotoAdaptar;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/open/likehelper/util/ToastUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder$2;->b:Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;

    invoke-static {v2}, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->a(Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;)Lcom/open/likehelper/ui/pic/PhotoAdaptar$OnPhotoItemClickListener;

    move-result-object v2

    iget-object v3, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder$2;->a:Lcom/open/likehelper/ui/pic/Photo;

    invoke-interface {v2, p1, v3}, Lcom/open/likehelper/ui/pic/PhotoAdaptar$OnPhotoItemClickListener;->b(Landroid/view/View;Lcom/open/likehelper/ui/pic/Photo;)V

    .line 125
    iget-object v2, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder$2;->a:Lcom/open/likehelper/ui/pic/Photo;

    iget-object v3, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder$2;->a:Lcom/open/likehelper/ui/pic/Photo;

    invoke-virtual {v3}, Lcom/open/likehelper/ui/pic/Photo;->b()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/open/likehelper/ui/pic/Photo;->a(Z)V

    .line 126
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder$2;->b:Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;

    iget-object v0, v0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->selectIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder$2;->a:Lcom/open/likehelper/ui/pic/Photo;

    invoke-virtual {v2}, Lcom/open/likehelper/ui/pic/Photo;->b()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 127
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder$2;->b:Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;

    iget-object v0, v0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->shadow:Landroid/view/View;

    iget-object v2, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder$2;->a:Lcom/open/likehelper/ui/pic/Photo;

    invoke-virtual {v2}, Lcom/open/likehelper/ui/pic/Photo;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 125
    goto :goto_1

    .line 127
    :cond_2
    const/16 v1, 0x8

    goto :goto_2
.end method
