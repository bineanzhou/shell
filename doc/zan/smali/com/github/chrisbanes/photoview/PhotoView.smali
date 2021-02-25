.class public Lcom/github/chrisbanes/photoview/PhotoView;
.super Landroid/widget/ImageView;
.source "PhotoView.java"


# instance fields
.field private a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

.field private b:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/chrisbanes/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/chrisbanes/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/PhotoView;->init()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/PhotoView;->init()V

    .line 54
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-direct {v0, p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 60
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 62
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->b:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->b:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/github/chrisbanes/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->b:Landroid/widget/ImageView$ScaleType;

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public getAttacher()Lcom/github/chrisbanes/photoview/PhotoViewAttacher;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    return-object v0
.end method

.method public getDisplayMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->b(Landroid/graphics/Matrix;)V

    .line 169
    return-void
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->b()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->j()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumScale()F
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->e()F

    move-result v0

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->d()F

    move-result v0

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->c()F

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->f()F

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->g()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method public getSuppMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->c(Landroid/graphics/Matrix;)V

    .line 177
    return-void
.end method

.method public isZoomEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->a()Z

    move-result v0

    return v0
.end method

.method public isZoomable()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->h()Z

    move-result v0

    return v0
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->a(Z)V

    .line 201
    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->a(Landroid/graphics/Matrix;)Z

    move-result v0

    return v0
.end method

.method protected setFrame(IIII)Z
    .locals 2

    .prologue
    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->i()V

    .line 139
    :cond_0
    return v0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->i()V

    .line 115
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->i()V

    .line 123
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 128
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->i()V

    .line 131
    :cond_0
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->f(F)V

    .line 213
    return-void
.end method

.method public setMediumScale(F)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->e(F)V

    .line 209
    return-void
.end method

.method public setMinimumScale(F)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->d(F)V

    .line 205
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->a(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->a(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 257
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->a(Landroid/view/View$OnLongClickListener;)V

    .line 92
    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/github/chrisbanes/photoview/OnMatrixChangedListener;)V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->a(Lcom/github/chrisbanes/photoview/OnMatrixChangedListener;)V

    .line 221
    return-void
.end method

.method public setOnOutsidePhotoTapListener(Lcom/github/chrisbanes/photoview/OnOutsidePhotoTapListener;)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->a(Lcom/github/chrisbanes/photoview/OnOutsidePhotoTapListener;)V

    .line 229
    return-void
.end method

.method public setOnPhotoTapListener(Lcom/github/chrisbanes/photoview/OnPhotoTapListener;)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->a(Lcom/github/chrisbanes/photoview/OnPhotoTapListener;)V

    .line 225
    return-void
.end method

.method public setOnScaleChangeListener(Lcom/github/chrisbanes/photoview/OnScaleChangedListener;)V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->a(Lcom/github/chrisbanes/photoview/OnScaleChangedListener;)V

    .line 261
    return-void
.end method

.method public setOnSingleFlingListener(Lcom/github/chrisbanes/photoview/OnSingleFlingListener;)V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->a(Lcom/github/chrisbanes/photoview/OnSingleFlingListener;)V

    .line 265
    return-void
.end method

.method public setOnViewDragListener(Lcom/github/chrisbanes/photoview/OnViewDragListener;)V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->a(Lcom/github/chrisbanes/photoview/OnViewDragListener;)V

    .line 237
    return-void
.end method

.method public setOnViewTapListener(Lcom/github/chrisbanes/photoview/OnViewTapListener;)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->a(Lcom/github/chrisbanes/photoview/OnViewTapListener;)V

    .line 233
    return-void
.end method

.method public setRotationBy(F)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->c(F)V

    .line 148
    return-void
.end method

.method public setRotationTo(F)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->b(F)V

    .line 144
    return-void
.end method

.method public setScale(F)V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->g(F)V

    .line 241
    return-void
.end method

.method public setScale(FFFZ)V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->a(FFFZ)V

    .line 249
    return-void
.end method

.method public setScale(FZ)V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->a(FZ)V

    .line 245
    return-void
.end method

.method public setScaleLevels(FFF)V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->a(FFF)V

    .line 217
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    if-nez v0, :cond_0

    .line 102
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoView;->b:Landroid/widget/ImageView$ScaleType;

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->a(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method public setSuppMatrix(Landroid/graphics/Matrix;)Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->a(Landroid/graphics/Matrix;)Z

    move-result v0

    return v0
.end method

.method public setZoomTransitionDuration(I)V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->a(I)V

    .line 253
    return-void
.end method

.method public setZoomable(Z)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->b(Z)V

    .line 161
    return-void
.end method
