.class public Lcom/umeng/message/view/UCloseView;
.super Landroid/widget/Button;
.source "UCloseView.java"


# instance fields
.field private cx:F

.field private cy:F

.field private lineWith:F

.field private mPaint:Landroid/graphics/Paint;

.field private p:F

.field private radius:F

.field private remain:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/message/view/UCloseView;->setBackgroundColor(I)V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/view/UCloseView;->mPaint:Landroid/graphics/Paint;

    .line 29
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/umeng/message/proguard/j;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/view/UCloseView;->remain:I

    .line 30
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Lcom/umeng/message/proguard/j;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/umeng/message/view/UCloseView;->lineWith:F

    .line 31
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 36
    invoke-virtual {p0}, Lcom/umeng/message/view/UCloseView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/umeng/message/view/UCloseView;->cx:F

    .line 37
    invoke-virtual {p0}, Lcom/umeng/message/view/UCloseView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/umeng/message/view/UCloseView;->cy:F

    .line 39
    invoke-virtual {p0}, Lcom/umeng/message/view/UCloseView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/umeng/message/view/UCloseView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/umeng/message/view/UCloseView;->remain:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/umeng/message/view/UCloseView;->radius:F

    .line 40
    iget v0, p0, Lcom/umeng/message/view/UCloseView;->radius:F

    const v1, 0x3fb50481    # 1.4142f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/umeng/message/view/UCloseView;->p:F

    .line 41
    iget-object v0, p0, Lcom/umeng/message/view/UCloseView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object v0, p0, Lcom/umeng/message/view/UCloseView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object v0, p0, Lcom/umeng/message/view/UCloseView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    iget v0, p0, Lcom/umeng/message/view/UCloseView;->cx:F

    iget v1, p0, Lcom/umeng/message/view/UCloseView;->cy:F

    iget v2, p0, Lcom/umeng/message/view/UCloseView;->radius:F

    iget-object v3, p0, Lcom/umeng/message/view/UCloseView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 45
    iget-object v0, p0, Lcom/umeng/message/view/UCloseView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v0, p0, Lcom/umeng/message/view/UCloseView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/umeng/message/view/UCloseView;->lineWith:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    iget-object v0, p0, Lcom/umeng/message/view/UCloseView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget v0, p0, Lcom/umeng/message/view/UCloseView;->cx:F

    iget v1, p0, Lcom/umeng/message/view/UCloseView;->cy:F

    iget v2, p0, Lcom/umeng/message/view/UCloseView;->radius:F

    iget-object v3, p0, Lcom/umeng/message/view/UCloseView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 49
    iget v0, p0, Lcom/umeng/message/view/UCloseView;->cx:F

    iget v1, p0, Lcom/umeng/message/view/UCloseView;->p:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/umeng/message/view/UCloseView;->cy:F

    iget v2, p0, Lcom/umeng/message/view/UCloseView;->p:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/umeng/message/view/UCloseView;->cx:F

    iget v3, p0, Lcom/umeng/message/view/UCloseView;->p:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/umeng/message/view/UCloseView;->cy:F

    iget v4, p0, Lcom/umeng/message/view/UCloseView;->p:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/umeng/message/view/UCloseView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 50
    iget v0, p0, Lcom/umeng/message/view/UCloseView;->cx:F

    iget v1, p0, Lcom/umeng/message/view/UCloseView;->p:F

    add-float/2addr v1, v0

    iget v0, p0, Lcom/umeng/message/view/UCloseView;->cy:F

    iget v2, p0, Lcom/umeng/message/view/UCloseView;->p:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/umeng/message/view/UCloseView;->cx:F

    iget v3, p0, Lcom/umeng/message/view/UCloseView;->p:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/umeng/message/view/UCloseView;->cy:F

    iget v4, p0, Lcom/umeng/message/view/UCloseView;->p:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/umeng/message/view/UCloseView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 51
    return-void
.end method
