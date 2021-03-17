.class Lcom/github/chrisbanes/photoview/PhotoViewAttacher$3;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/chrisbanes/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;


# direct methods
.method constructor <init>(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$3;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$3;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->f()F

    move-result v0

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 239
    iget-object v3, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$3;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->d()F

    move-result v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 240
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$3;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    iget-object v3, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$3;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->d()F

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->a(FFFZ)V

    .line 250
    :goto_0
    return v5

    .line 241
    :cond_0
    iget-object v3, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$3;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->d()F

    move-result v3

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$3;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->e()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$3;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    iget-object v3, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$3;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->e()F

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->a(FFFZ)V

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    goto :goto_0

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$3;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    iget-object v3, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$3;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->c()F

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->a(FFFZ)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    .line 198
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$3;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->o(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$3;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->o(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$3;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->e(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$3;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->b()Landroid/graphics/RectF;

    move-result-object v0

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 205
    iget-object v3, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$3;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v3}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->p(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Lcom/github/chrisbanes/photoview/OnViewTapListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 206
    iget-object v3, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$3;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v3}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->p(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Lcom/github/chrisbanes/photoview/OnViewTapListener;

    move-result-object v3

    iget-object v4, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$3;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v4}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->e(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-interface {v3, v4, v1, v2}, Lcom/github/chrisbanes/photoview/OnViewTapListener;->a(Landroid/view/View;FF)V

    .line 209
    :cond_1
    if-eqz v0, :cond_4

    .line 212
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 214
    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v3

    .line 215
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v1, v3

    .line 216
    iget v3, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    .line 217
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v0, v2, v0

    .line 219
    iget-object v2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$3;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v2}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->q(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Lcom/github/chrisbanes/photoview/OnPhotoTapListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 220
    iget-object v2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$3;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v2}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->q(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Lcom/github/chrisbanes/photoview/OnPhotoTapListener;

    move-result-object v2

    iget-object v3, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$3;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v3}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->e(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-interface {v2, v3, v1, v0}, Lcom/github/chrisbanes/photoview/OnPhotoTapListener;->a(Landroid/widget/ImageView;FF)V

    .line 222
    :cond_2
    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$3;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->r(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Lcom/github/chrisbanes/photoview/OnOutsidePhotoTapListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 225
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$3;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->r(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Lcom/github/chrisbanes/photoview/OnOutsidePhotoTapListener;

    move-result-object v0

    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$3;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->e(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/chrisbanes/photoview/OnOutsidePhotoTapListener;->a(Landroid/widget/ImageView;)V

    .line 229
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
