.class Landroid/support/v7/widget/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewFlinger"
.end annotation


# instance fields
.field a:Landroid/view/animation/Interpolator;

.field final synthetic b:Landroid/support/v7/widget/RecyclerView;

.field private c:I

.field private d:I

.field private e:Landroid/support/v4/widget/ScrollerCompat;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4643
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4634
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->ad:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/view/animation/Interpolator;

    .line 4638
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->f:Z

    .line 4641
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->g:Z

    .line 4644
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/RecyclerView;->ad:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->e:Landroid/support/v4/widget/ScrollerCompat;

    .line 4645
    return-void
.end method

.method private a(F)F
    .locals 4

    .prologue
    .line 4804
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    .line 4805
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 4806
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private b(IIII)I
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 4810
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4811
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 4812
    if-le v2, v3, :cond_0

    const/4 v0, 0x1

    .line 4813
    :goto_0
    mul-int v1, p3, p3

    mul-int v4, p4, p4

    add-int/2addr v1, v4

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 4814
    mul-int v1, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v1, v5

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 4815
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    .line 4816
    :goto_1
    div-int/lit8 v6, v1, 0x2

    .line 4817
    int-to-float v5, v5

    mul-float/2addr v5, v8

    int-to-float v7, v1

    div-float/2addr v5, v7

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 4818
    int-to-float v7, v6

    int-to-float v6, v6

    .line 4819
    invoke-direct {p0, v5}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a(F)F

    move-result v5

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 4822
    if-lez v4, :cond_2

    .line 4823
    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v1, v4

    div-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 4828
    :goto_2
    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 4812
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4815
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    goto :goto_1

    .line 4825
    :cond_2
    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    int-to-float v0, v0

    .line 4826
    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v8

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2

    :cond_3
    move v0, v3

    .line 4825
    goto :goto_3
.end method

.method private c()V
    .locals 1

    .prologue
    .line 4767
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->g:Z

    .line 4768
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->f:Z

    .line 4769
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 4772
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->f:Z

    .line 4773
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->g:Z

    if-eqz v0, :cond_0

    .line 4774
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a()V

    .line 4776
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 4779
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->f:Z

    if-eqz v0, :cond_0

    .line 4780
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->g:Z

    .line 4785
    :goto_0
    return-void

    .line 4782
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4783
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 9

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    .line 4788
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 4789
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->d:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->c:I

    .line 4790
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->e:Landroid/support/v4/widget/ScrollerCompat;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 4792
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a()V

    .line 4793
    return-void
.end method

.method public a(III)V
    .locals 1

    .prologue
    .line 4832
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->ad:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a(IIILandroid/view/animation/Interpolator;)V

    .line 4833
    return-void
.end method

.method public a(IIII)V
    .locals 1

    .prologue
    .line 4800
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a(III)V

    .line 4801
    return-void
.end method

.method public a(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 4841
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    .line 4842
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/view/animation/Interpolator;

    .line 4843
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->e:Landroid/support/v4/widget/ScrollerCompat;

    .line 4845
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 4846
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->d:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->c:I

    .line 4847
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->e:Landroid/support/v4/widget/ScrollerCompat;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 4848
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a()V

    .line 4849
    return-void
.end method

.method public a(IILandroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4836
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b(IIII)I

    move-result v0

    if-nez p3, :cond_0

    sget-object p3, Landroid/support/v7/widget/RecyclerView;->ad:Landroid/view/animation/Interpolator;

    :cond_0
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a(IIILandroid/view/animation/Interpolator;)V

    .line 4838
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 4852
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4853
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->e:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 4854
    return-void
.end method

.method public b(II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4796
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a(IIII)V

    .line 4797
    return-void
.end method

.method public run()V
    .locals 15

    .prologue
    .line 4649
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 4650
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b()V

    .line 4764
    :goto_0
    return-void

    .line 4653
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->c()V

    .line 4654
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 4657
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->e:Landroid/support/v4/widget/ScrollerCompat;

    .line 4658
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->w:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .line 4659
    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4660
    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v9

    .line 4661
    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v10

    .line 4662
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->c:I

    sub-int v11, v9, v0

    .line 4663
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->d:I

    sub-int v12, v10, v0

    .line 4664
    const/4 v3, 0x0

    .line 4665
    const/4 v1, 0x0

    .line 4666
    iput v9, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->c:I

    .line 4667
    iput v10, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->d:I

    .line 4668
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 4669
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v4, :cond_16

    .line 4670
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 4671
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 4672
    const-string v4, "RV Scroll"

    invoke-static {v4}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 4673
    if-eqz v11, :cond_1

    .line 4674
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->U:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2, v11, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v3

    .line 4675
    sub-int v2, v11, v3

    .line 4677
    :cond_1
    if-eqz v12, :cond_2

    .line 4678
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->U:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v12, v1, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    .line 4679
    sub-int v0, v12, v1

    .line 4681
    :cond_2
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 4682
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->repositionShadowingViews()V

    .line 4684
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 4685
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 4687
    if-eqz v8, :cond_16

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->g()Z

    move-result v4

    if-nez v4, :cond_16

    .line 4688
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->h()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 4689
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->U:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$State;->i()I

    move-result v4

    .line 4690
    if-nez v4, :cond_14

    .line 4691
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->f()V

    move v14, v2

    move v2, v1

    move v1, v14

    .line 4700
    :goto_1
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->E:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 4701
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 4703
    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    .line 4704
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v11, v12}, Landroid/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 4706
    :cond_4
    if-nez v1, :cond_5

    if-eqz v0, :cond_a

    .line 4707
    :cond_5
    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->getCurrVelocity()F

    move-result v4

    float-to-int v5, v4

    .line 4709
    const/4 v4, 0x0

    .line 4710
    if-eq v1, v9, :cond_1f

    .line 4711
    if-gez v1, :cond_17

    neg-int v4, v5

    :goto_2
    move v6, v4

    .line 4714
    :goto_3
    const/4 v4, 0x0

    .line 4715
    if-eq v0, v10, :cond_1e

    .line 4716
    if-gez v0, :cond_19

    neg-int v5, v5

    .line 4719
    :cond_6
    :goto_4
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v4

    const/4 v13, 0x2

    if-eq v4, v13, :cond_7

    .line 4720
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v6, v5}, Landroid/support/v7/widget/RecyclerView;->absorbGlows(II)V

    .line 4722
    :cond_7
    if-nez v6, :cond_8

    if-eq v1, v9, :cond_8

    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->getFinalX()I

    move-result v1

    if-nez v1, :cond_a

    :cond_8
    if-nez v5, :cond_9

    if-eq v0, v10, :cond_9

    .line 4723
    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I

    move-result v0

    if-nez v0, :cond_a

    .line 4724
    :cond_9
    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 4727
    :cond_a
    if-nez v3, :cond_b

    if-eqz v2, :cond_c

    .line 4728
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3, v2}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 4731
    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$500(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 4732
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 4735
    :cond_d
    if-eqz v12, :cond_1a

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->h()Z

    move-result v0

    if-eqz v0, :cond_1a

    if-ne v2, v12, :cond_1a

    const/4 v0, 0x1

    move v1, v0

    .line 4737
    :goto_5
    if-eqz v11, :cond_1b

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->g()Z

    move-result v0

    if-eqz v0, :cond_1b

    if-ne v3, v11, :cond_1b

    const/4 v0, 0x1

    .line 4739
    :goto_6
    if-nez v11, :cond_e

    if-eqz v12, :cond_f

    :cond_e
    if-nez v0, :cond_f

    if-eqz v1, :cond_1c

    :cond_f
    const/4 v0, 0x1

    .line 4742
    :goto_7
    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_10

    if-nez v0, :cond_1d

    .line 4743
    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 4744
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$600()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4745
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v0}, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->a()V

    .line 4755
    :cond_11
    :goto_8
    if-eqz v8, :cond_13

    .line 4756
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->g()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4757
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v8, v0, v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->a(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    .line 4759
    :cond_12
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->g:Z

    if-nez v0, :cond_13

    .line 4760
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->f()V

    .line 4763
    :cond_13
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->d()V

    goto/16 :goto_0

    .line 4692
    :cond_14
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->i()I

    move-result v5

    if-lt v5, v4, :cond_15

    .line 4693
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v8, v4}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->d(I)V

    .line 4694
    sub-int v4, v11, v2

    sub-int v5, v12, v0

    invoke-static {v8, v4, v5}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->a(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    move v14, v2

    move v2, v1

    move v1, v14

    goto/16 :goto_1

    .line 4696
    :cond_15
    sub-int v4, v11, v2

    sub-int v5, v12, v0

    invoke-static {v8, v4, v5}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->a(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    :cond_16
    move v14, v2

    move v2, v1

    move v1, v14

    goto/16 :goto_1

    .line 4711
    :cond_17
    if-lez v1, :cond_18

    move v4, v5

    goto/16 :goto_2

    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 4716
    :cond_19
    if-gtz v0, :cond_6

    const/4 v5, 0x0

    goto/16 :goto_4

    .line 4735
    :cond_1a
    const/4 v0, 0x0

    move v1, v0

    goto :goto_5

    .line 4737
    :cond_1b
    const/4 v0, 0x0

    goto :goto_6

    .line 4739
    :cond_1c
    const/4 v0, 0x0

    goto :goto_7

    .line 4748
    :cond_1d
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a()V

    .line 4749
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/support/v7/widget/GapWorker;

    if-eqz v0, :cond_11

    .line 4750
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/support/v7/widget/GapWorker;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, v11, v12}, Landroid/support/v7/widget/GapWorker;->a(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_8

    :cond_1e
    move v5, v4

    goto/16 :goto_4

    :cond_1f
    move v6, v4

    goto/16 :goto_3
.end method
