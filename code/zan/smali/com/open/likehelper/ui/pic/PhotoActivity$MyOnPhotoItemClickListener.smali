.class Lcom/open/likehelper/ui/pic/PhotoActivity$MyOnPhotoItemClickListener;
.super Ljava/lang/Object;
.source "PhotoActivity.java"

# interfaces
.implements Lcom/open/likehelper/ui/pic/PhotoAdaptar$OnPhotoItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/open/likehelper/ui/pic/PhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnPhotoItemClickListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/open/likehelper/ui/pic/PhotoActivity;


# direct methods
.method private constructor <init>(Lcom/open/likehelper/ui/pic/PhotoActivity;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/open/likehelper/ui/pic/PhotoActivity$MyOnPhotoItemClickListener;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/open/likehelper/ui/pic/PhotoActivity;Lcom/open/likehelper/ui/pic/PhotoActivity$1;)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/open/likehelper/ui/pic/PhotoActivity$MyOnPhotoItemClickListener;-><init>(Lcom/open/likehelper/ui/pic/PhotoActivity;)V

    return-void
.end method

.method private a(Lcom/open/likehelper/ui/pic/Photo;)V
    .locals 7

    .prologue
    .line 187
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity$MyOnPhotoItemClickListener;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/pic/PhotoActivity;->d(Lcom/open/likehelper/ui/pic/PhotoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity$MyOnPhotoItemClickListener;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/pic/PhotoActivity;->e(Lcom/open/likehelper/ui/pic/PhotoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity$MyOnPhotoItemClickListener;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/pic/PhotoActivity;->f(Lcom/open/likehelper/ui/pic/PhotoActivity;)V

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v6, p0, Lcom/open/likehelper/ui/pic/PhotoActivity$MyOnPhotoItemClickListener;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity$MyOnPhotoItemClickListener;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    iget-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoActivity$MyOnPhotoItemClickListener;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    invoke-static {v1}, Lcom/open/likehelper/ui/pic/PhotoActivity;->b(Lcom/open/likehelper/ui/pic/PhotoActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/open/likehelper/ui/pic/PhotoActivity$MyOnPhotoItemClickListener;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    iget-object v2, v2, Lcom/open/likehelper/ui/pic/PhotoActivity;->topTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/open/likehelper/ui/pic/PhotoActivity$MyOnPhotoItemClickListener;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    invoke-static {v3}, Lcom/open/likehelper/ui/pic/PhotoActivity;->b(Lcom/open/likehelper/ui/pic/PhotoActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/open/likehelper/ui/pic/PhotoActivity$MyOnPhotoItemClickListener;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    invoke-static {v4}, Lcom/open/likehelper/ui/pic/PhotoActivity;->e(Lcom/open/likehelper/ui/pic/PhotoActivity;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/open/likehelper/ui/pic/PhotoActivity$MyOnPhotoItemClickListener;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    invoke-static {v5}, Lcom/open/likehelper/ui/pic/PhotoActivity;->g(Lcom/open/likehelper/ui/pic/PhotoActivity;)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->a(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v6, v0, v1}, Lcom/open/likehelper/ui/pic/PhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private b(Lcom/open/likehelper/ui/pic/Photo;)V
    .locals 6

    .prologue
    .line 201
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity$MyOnPhotoItemClickListener;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/pic/PhotoActivity;->e(Lcom/open/likehelper/ui/pic/PhotoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity$MyOnPhotoItemClickListener;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/pic/PhotoActivity;->e(Lcom/open/likehelper/ui/pic/PhotoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 206
    :goto_0
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity$MyOnPhotoItemClickListener;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/pic/PhotoActivity;->c(Lcom/open/likehelper/ui/pic/PhotoActivity;)Lcom/open/likehelper/ui/pic/PhotoAdaptar;

    move-result-object v0

    iget-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoActivity$MyOnPhotoItemClickListener;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    invoke-static {v1}, Lcom/open/likehelper/ui/pic/PhotoActivity;->g(Lcom/open/likehelper/ui/pic/PhotoActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/open/likehelper/ui/pic/PhotoActivity$MyOnPhotoItemClickListener;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    invoke-static {v2}, Lcom/open/likehelper/ui/pic/PhotoActivity;->e(Lcom/open/likehelper/ui/pic/PhotoActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/open/likehelper/ui/pic/PhotoAdaptar;->f(I)V

    .line 207
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity$MyOnPhotoItemClickListener;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    iget-object v0, v0, Lcom/open/likehelper/ui/pic/PhotoActivity;->sendBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoActivity$MyOnPhotoItemClickListener;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    const v2, 0x7f07003b

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/open/likehelper/ui/pic/PhotoActivity$MyOnPhotoItemClickListener;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    invoke-static {v5}, Lcom/open/likehelper/ui/pic/PhotoActivity;->e(Lcom/open/likehelper/ui/pic/PhotoActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/open/likehelper/ui/pic/PhotoActivity$MyOnPhotoItemClickListener;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    invoke-static {v5}, Lcom/open/likehelper/ui/pic/PhotoActivity;->g(Lcom/open/likehelper/ui/pic/PhotoActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/open/likehelper/ui/pic/PhotoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity$MyOnPhotoItemClickListener;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/pic/PhotoActivity;->e(Lcom/open/likehelper/ui/pic/PhotoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/open/likehelper/ui/pic/Photo;)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0, p2}, Lcom/open/likehelper/ui/pic/PhotoActivity$MyOnPhotoItemClickListener;->a(Lcom/open/likehelper/ui/pic/Photo;)V

    .line 184
    return-void
.end method

.method public b(Landroid/view/View;Lcom/open/likehelper/ui/pic/Photo;)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0, p2}, Lcom/open/likehelper/ui/pic/PhotoActivity$MyOnPhotoItemClickListener;->b(Lcom/open/likehelper/ui/pic/Photo;)V

    .line 198
    return-void
.end method
