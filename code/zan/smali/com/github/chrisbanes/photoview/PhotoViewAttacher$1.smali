.class Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Lcom/github/chrisbanes/photoview/OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/chrisbanes/photoview/PhotoViewAttacher;
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
    .line 94
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 97
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->a(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Lcom/github/chrisbanes/photoview/CustomGestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->b(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Lcom/github/chrisbanes/photoview/OnViewDragListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->b(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Lcom/github/chrisbanes/photoview/OnViewDragListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/github/chrisbanes/photoview/OnViewDragListener;->a(FF)V

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->c(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 105
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->d(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)V

    .line 116
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->e(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->f(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->a(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Lcom/github/chrisbanes/photoview/CustomGestureDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->a()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->g(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 118
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->h(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 119
    invoke-static {v1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->h(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)I

    move-result v1

    if-nez v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-gez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 120
    invoke-static {v1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->h(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)I

    move-result v1

    if-ne v1, v3, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 121
    :cond_4
    if-eqz v0, :cond_0

    .line 122
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 126
    :cond_5
    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public a(FFF)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 142
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->f()F

    move-result v0

    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->j(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    cmpg-float v0, p1, v2

    if-gez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->f()F

    move-result v0

    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->k(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    cmpl-float v0, p1, v2

    if-lez v0, :cond_3

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->l(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Lcom/github/chrisbanes/photoview/OnScaleChangedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->l(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Lcom/github/chrisbanes/photoview/OnScaleChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/github/chrisbanes/photoview/OnScaleChangedListener;->a(FFF)V

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->c(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 147
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->d(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)V

    .line 149
    :cond_3
    return-void
.end method

.method public a(FFFF)V
    .locals 5

    .prologue
    .line 134
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    new-instance v1, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$FlingRunnable;

    iget-object v2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    iget-object v3, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v3}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->e(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$FlingRunnable;-><init>(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->a(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;Lcom/github/chrisbanes/photoview/PhotoViewAttacher$FlingRunnable;)Lcom/github/chrisbanes/photoview/PhotoViewAttacher$FlingRunnable;

    .line 135
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->i(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Lcom/github/chrisbanes/photoview/PhotoViewAttacher$FlingRunnable;

    move-result-object v0

    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    iget-object v2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v2}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->e(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->a(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;Landroid/widget/ImageView;)I

    move-result v1

    iget-object v2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    iget-object v3, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 136
    invoke-static {v3}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->e(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->b(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;Landroid/widget/ImageView;)I

    move-result v2

    float-to-int v3, p3

    float-to-int v4, p4

    .line 135
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$FlingRunnable;->a(IIII)V

    .line 137
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->e(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->i(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Lcom/github/chrisbanes/photoview/PhotoViewAttacher$FlingRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 138
    return-void
.end method
