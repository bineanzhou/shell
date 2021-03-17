.class Lcom/umeng/socialize/shareboard/IndicatorView;
.super Landroid/view/View;
.source "IndicatorView.java"


# instance fields
.field private mIndicatorMargin:I

.field private mIndicatorWidth:I

.field private mLeftPosition:F

.field private mNormalPaint:Landroid/graphics/Paint;

.field private mPageCount:I

.field private mSelectPaint:Landroid/graphics/Paint;

.field private mSelectPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    return-void
.end method

.method private measureHeight(I)I
    .locals 4

    .prologue
    .line 75
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 76
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 78
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v2, v1, :cond_0

    .line 88
    :goto_0
    return v0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/socialize/shareboard/IndicatorView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/umeng/socialize/shareboard/IndicatorView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mIndicatorWidth:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    .line 82
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    .line 83
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 85
    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 5

    .prologue
    .line 56
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 57
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 59
    invoke-virtual {p0}, Lcom/umeng/socialize/shareboard/IndicatorView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/umeng/socialize/shareboard/IndicatorView;->getPaddingRight()I

    move-result v3

    add-int/2addr v0, v3

    iget v3, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mIndicatorWidth:I

    iget v4, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mPageCount:I

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iget v3, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mIndicatorMargin:I

    iget v4, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mPageCount:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 61
    invoke-virtual {p0}, Lcom/umeng/socialize/shareboard/IndicatorView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/umeng/socialize/shareboard/IndicatorView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mLeftPosition:F

    .line 62
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 63
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 66
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected dip2px(F)I
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/umeng/socialize/shareboard/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 140
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 99
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mSelectPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mNormalPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 109
    :cond_0
    return-void

    .line 102
    :cond_1
    iget v0, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mLeftPosition:F

    .line 103
    iget v1, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mIndicatorWidth:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 104
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mPageCount:I

    if-ge v0, v2, :cond_0

    .line 106
    iget v2, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mIndicatorWidth:I

    int-to-float v3, v2

    iget v2, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mIndicatorWidth:I

    int-to-float v4, v2

    iget v2, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mSelectPosition:I

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mSelectPaint:Landroid/graphics/Paint;

    :goto_1
    invoke-virtual {p1, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 107
    iget v2, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mIndicatorMargin:I

    iget v3, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mIndicatorWidth:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_2
    iget-object v2, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mNormalPaint:Landroid/graphics/Paint;

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/umeng/socialize/shareboard/IndicatorView;->measureWidth(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/umeng/socialize/shareboard/IndicatorView;->measureHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/shareboard/IndicatorView;->setMeasuredDimension(II)V

    .line 47
    return-void
.end method

.method public setIndicator(II)V
    .locals 1

    .prologue
    .line 122
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/shareboard/IndicatorView;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mIndicatorMargin:I

    .line 123
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/shareboard/IndicatorView;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mIndicatorWidth:I

    .line 124
    return-void
.end method

.method public setIndicatorColor(II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 127
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mSelectPaint:Landroid/graphics/Paint;

    .line 128
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mSelectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 129
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mSelectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 130
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mSelectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mNormalPaint:Landroid/graphics/Paint;

    .line 133
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mNormalPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 134
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    return-void
.end method

.method public setPageCount(I)V
    .locals 0

    .prologue
    .line 117
    iput p1, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mPageCount:I

    .line 118
    invoke-virtual {p0}, Lcom/umeng/socialize/shareboard/IndicatorView;->invalidate()V

    .line 119
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0

    .prologue
    .line 112
    iput p1, p0, Lcom/umeng/socialize/shareboard/IndicatorView;->mSelectPosition:I

    .line 113
    invoke-virtual {p0}, Lcom/umeng/socialize/shareboard/IndicatorView;->invalidate()V

    .line 114
    return-void
.end method
