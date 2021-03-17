.class Lcom/open/likehelper/ui/edit/EditMomentActivity$1;
.super Ljava/lang/Object;
.source "EditMomentActivity.java"

# interfaces
.implements Lcom/open/likehelper/util/PhotoSelectUtil$OnPhotoSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/ui/edit/EditMomentActivity;->d()V
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
    .line 201
    iput-object p1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$1;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 229
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$1;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->a(Lcom/open/likehelper/ui/edit/EditMomentActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$1;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-static {v0, p1}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->a(Lcom/open/likehelper/ui/edit/EditMomentActivity;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$1;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-virtual {v0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->c(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 233
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    const v1, 0x7f020067

    .line 234
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->d(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->d()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->f()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$1;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    iget-object v1, v1, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mAvatar:Landroid/widget/ImageView;

    .line 237
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 245
    :goto_0
    return-void

    .line 239
    :cond_0
    new-instance v0, Lcom/open/likehelper/ui/edit/PhotoItemBean;

    invoke-direct {v0}, Lcom/open/likehelper/ui/edit/PhotoItemBean;-><init>()V

    .line 240
    iget-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$1;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-static {v1}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->b(Lcom/open/likehelper/ui/edit/EditMomentActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/open/likehelper/ui/edit/PhotoItemBean;->b:I

    .line 241
    iput-object p1, v0, Lcom/open/likehelper/ui/edit/PhotoItemBean;->a:Ljava/lang/String;

    .line 242
    iget-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$1;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-static {v1}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->b(Lcom/open/likehelper/ui/edit/EditMomentActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$1;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->c(Lcom/open/likehelper/ui/edit/EditMomentActivity;)Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 204
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$1;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->a(Lcom/open/likehelper/ui/edit/EditMomentActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    iget-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$1;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->a(Lcom/open/likehelper/ui/edit/EditMomentActivity;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$1;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-virtual {v0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->c(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 211
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    const v1, 0x7f020067

    .line 212
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->d(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->d()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->f()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$1;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    iget-object v1, v1, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mAvatar:Landroid/widget/ImageView;

    .line 215
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    .line 217
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    new-instance v2, Lcom/open/likehelper/ui/edit/PhotoItemBean;

    invoke-direct {v2}, Lcom/open/likehelper/ui/edit/PhotoItemBean;-><init>()V

    .line 219
    iget-object v3, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$1;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-static {v3}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->b(Lcom/open/likehelper/ui/edit/EditMomentActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/open/likehelper/ui/edit/PhotoItemBean;->b:I

    .line 220
    iput-object v0, v2, Lcom/open/likehelper/ui/edit/PhotoItemBean;->a:Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$1;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->b(Lcom/open/likehelper/ui/edit/EditMomentActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 223
    :cond_3
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$1;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->c(Lcom/open/likehelper/ui/edit/EditMomentActivity;)Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method
