.class public Landroid/support/v7/widget/PagerSnapHelper;
.super Landroid/support/v7/widget/SnapHelper;
.source "PagerSnapHelper.java"


# static fields
.field private static final c:I = 0x64


# instance fields
.field private d:Landroid/support/v7/widget/OrientationHelper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private e:Landroid/support/v7/widget/OrientationHelper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v7/widget/SnapHelper;-><init>()V

    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;)I
    .locals 3
    .param p1    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 152
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/OrientationHelper;->a(Landroid/view/View;)I

    move-result v0

    .line 153
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/OrientationHelper;->e(Landroid/view/View;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 155
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->c()I

    move-result v0

    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->f()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 160
    :goto_0
    sub-int v0, v1, v0

    return v0

    .line 158
    :cond_0
    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->e()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)Landroid/view/View;
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 175
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->G()I

    move-result v6

    .line 176
    if-nez v6, :cond_1

    .line 201
    :cond_0
    return-object v4

    .line 182
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    invoke-virtual {p2}, Landroid/support/v7/widget/OrientationHelper;->c()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/OrientationHelper;->f()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 187
    :goto_0
    const v2, 0x7fffffff

    .line 189
    const/4 v1, 0x0

    move v5, v1

    :goto_1
    if-ge v5, v6, :cond_0

    .line 190
    invoke-virtual {p1, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->j(I)Landroid/view/View;

    move-result-object v3

    .line 191
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/OrientationHelper;->a(Landroid/view/View;)I

    move-result v1

    .line 192
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/OrientationHelper;->e(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v1, v7

    .line 193
    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 196
    if-ge v1, v2, :cond_3

    move-object v2, v3

    .line 189
    :goto_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v4, v2

    move v2, v1

    goto :goto_1

    .line 185
    :cond_2
    invoke-virtual {p2}, Landroid/support/v7/widget/OrientationHelper;->e()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_3
    move v1, v2

    move-object v2, v4

    goto :goto_2
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)Landroid/view/View;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 216
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->G()I

    move-result v5

    .line 217
    if-nez v5, :cond_1

    .line 234
    :cond_0
    return-object v3

    .line 222
    :cond_1
    const v1, 0x7fffffff

    .line 224
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_0

    .line 225
    invoke-virtual {p1, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->j(I)Landroid/view/View;

    move-result-object v2

    .line 226
    invoke-virtual {p2, v2}, Landroid/support/v7/widget/OrientationHelper;->a(Landroid/view/View;)I

    move-result v0

    .line 229
    if-ge v0, v1, :cond_2

    move-object v1, v2

    .line 224
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    move-object v1, v3

    goto :goto_1
.end method

.method private c(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Landroid/support/v7/widget/PagerSnapHelper;->d:Landroid/support/v7/widget/OrientationHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/PagerSnapHelper;->d:Landroid/support/v7/widget/OrientationHelper;

    iget-object v0, v0, Landroid/support/v7/widget/OrientationHelper;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_1

    .line 240
    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/OrientationHelper;->b(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/PagerSnapHelper;->d:Landroid/support/v7/widget/OrientationHelper;

    .line 242
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/PagerSnapHelper;->d:Landroid/support/v7/widget/OrientationHelper;

    return-object v0
.end method

.method private d(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Landroid/support/v7/widget/PagerSnapHelper;->e:Landroid/support/v7/widget/OrientationHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/PagerSnapHelper;->e:Landroid/support/v7/widget/OrientationHelper;

    iget-object v0, v0, Landroid/support/v7/widget/OrientationHelper;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_1

    .line 249
    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/OrientationHelper;->a(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/PagerSnapHelper;->e:Landroid/support/v7/widget/OrientationHelper;

    .line 251
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/PagerSnapHelper;->e:Landroid/support/v7/widget/OrientationHelper;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView$LayoutManager;II)I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 80
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->U()I

    move-result v4

    .line 81
    if-nez v4, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    const/4 v3, 0x0

    .line 86
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->h()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 87
    invoke-direct {p0, p1}, Landroid/support/v7/widget/PagerSnapHelper;->c(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Landroid/support/v7/widget/PagerSnapHelper;->b(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v3

    .line 92
    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    .line 95
    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->e(Landroid/view/View;)I

    move-result v3

    .line 96
    if-eq v3, v0, :cond_0

    .line 101
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 102
    if-lez p2, :cond_6

    move v0, v1

    .line 107
    :goto_2
    instance-of v5, p1, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-eqz v5, :cond_4

    .line 108
    check-cast p1, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    .line 110
    add-int/lit8 v4, v4, -0x1

    invoke-interface {p1, v4}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->d(I)Landroid/graphics/PointF;

    move-result-object v4

    .line 111
    if-eqz v4, :cond_4

    .line 112
    iget v5, v4, Landroid/graphics/PointF;->x:F

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_3

    iget v4, v4, Landroid/graphics/PointF;->y:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_4

    :cond_3
    move v2, v1

    .line 115
    :cond_4
    if-eqz v2, :cond_a

    if-eqz v0, :cond_9

    add-int/lit8 v0, v3, -0x1

    goto :goto_0

    .line 88
    :cond_5
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->g()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 89
    invoke-direct {p0, p1}, Landroid/support/v7/widget/PagerSnapHelper;->d(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Landroid/support/v7/widget/PagerSnapHelper;->b(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    :cond_6
    move v0, v2

    .line 102
    goto :goto_2

    .line 104
    :cond_7
    if-lez p3, :cond_8

    move v0, v1

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_2

    :cond_9
    move v0, v3

    .line 115
    goto :goto_0

    :cond_a
    if-eqz v0, :cond_b

    add-int/lit8 v0, v3, 0x1

    goto :goto_0

    :cond_b
    move v0, v3

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0, p1}, Landroid/support/v7/widget/PagerSnapHelper;->c(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/PagerSnapHelper;->a(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-direct {p0, p1}, Landroid/support/v7/widget/PagerSnapHelper;->d(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/PagerSnapHelper;->a(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 4
    .param p1    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 50
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-direct {p0, p1}, Landroid/support/v7/widget/PagerSnapHelper;->d(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v1

    .line 51
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/PagerSnapHelper;->a(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;)I

    move-result v1

    aput v1, v0, v2

    .line 57
    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    invoke-direct {p0, p1}, Landroid/support/v7/widget/PagerSnapHelper;->c(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v1

    .line 58
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/PagerSnapHelper;->a(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;)I

    move-result v1

    aput v1, v0, v3

    .line 63
    :goto_1
    return-object v0

    .line 54
    :cond_0
    aput v2, v0, v2

    goto :goto_0

    .line 61
    :cond_1
    aput v2, v0, v3

    goto :goto_1
.end method

.method protected b(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/LinearSmoothScroller;
    .locals 2

    .prologue
    .line 122
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/PagerSnapHelper$1;

    iget-object v1, p0, Landroid/support/v7/widget/PagerSnapHelper;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/PagerSnapHelper$1;-><init>(Landroid/support/v7/widget/PagerSnapHelper;Landroid/content/Context;)V

    goto :goto_0
.end method
