.class Lcom/github/chrisbanes/photoview/PhotoViewAttacher$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoViewAttacher.java"


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
    .line 166
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$2;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 179
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$2;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->n(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Lcom/github/chrisbanes/photoview/OnSingleFlingListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$2;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->f()F

    move-result v1

    invoke-static {}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->k()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v0

    .line 184
    :cond_1
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v1

    invoke-static {}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->l()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 185
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v1

    invoke-static {}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->l()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 189
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$2;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->n(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Lcom/github/chrisbanes/photoview/OnSingleFlingListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/github/chrisbanes/photoview/OnSingleFlingListener;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$2;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->m(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$2;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->m(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$2;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->e(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 174
    :cond_0
    return-void
.end method
