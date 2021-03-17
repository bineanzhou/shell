.class public abstract Landroid/support/v7/widget/RecyclerView$SmoothScroller;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;,
        Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private d:Z

.field private e:Z

.field private f:Landroid/view/View;

.field private final g:Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10658
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->a:I

    .line 10673
    new-instance v0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;-><init>(II)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->g:Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    .line 10674
    return-void
.end method

.method private a(II)V
    .locals 4

    .prologue
    .line 10768
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->b:Landroid/support/v7/widget/RecyclerView;

    .line 10769
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->e:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    .line 10770
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->f()V

    .line 10772
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->d:Z

    .line 10773
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->f:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 10775
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->f:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->a(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->a:I

    if-ne v1, v2, :cond_4

    .line 10776
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->f:Landroid/view/View;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->U:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->g:Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V

    .line 10777
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->g:Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 10778
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->f()V

    .line 10784
    :cond_2
    :goto_0
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->e:Z

    if-eqz v1, :cond_3

    .line 10785
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->U:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->g:Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->a(IILandroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V

    .line 10786
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->g:Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->a()Z

    move-result v1

    .line 10787
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->g:Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 10788
    if-eqz v1, :cond_3

    .line 10790
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->e:Z

    if-eqz v1, :cond_5

    .line 10791
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->d:Z

    .line 10792
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->R:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a()V

    .line 10798
    :cond_3
    :goto_1
    return-void

    .line 10780
    :cond_4
    const-string v1, "RecyclerView"

    const-string v2, "Passed over target position while smooth scrolling."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10781
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->f:Landroid/view/View;

    goto :goto_0

    .line 10794
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->f()V

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V
    .locals 0

    .prologue
    .line 10656
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->a(II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 10804
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method protected abstract a()V
.end method

.method protected abstract a(IILandroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method protected a(Landroid/graphics/PointF;)V
    .locals 4

    .prologue
    .line 10844
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 10846
    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 10847
    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    div-double v0, v2, v0

    double-to-float v0, v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 10848
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 10689
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->b:Landroid/support/v7/widget/RecyclerView;

    .line 10690
    iput-object p2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->c:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 10691
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 10692
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid target position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10694
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->U:Landroid/support/v7/widget/RecyclerView$State;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->a:I

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$State;->a(Landroid/support/v7/widget/RecyclerView$State;I)I

    .line 10695
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->e:Z

    .line 10696
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->d:Z

    .line 10697
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->i()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->e(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->f:Landroid/view/View;

    .line 10698
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->a()V

    .line 10699
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->R:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a()V

    .line 10700
    return-void
.end method

.method protected abstract a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method protected abstract b()V
.end method

.method protected b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 10831
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->a(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->i()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 10832
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->f:Landroid/view/View;

    .line 10837
    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 10703
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->a:I

    .line 10704
    return-void
.end method

.method public e()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 10712
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->c:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public e(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 10818
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 10722
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->e:Z

    if-nez v0, :cond_0

    .line 10736
    :goto_0
    return-void

    .line 10725
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->b()V

    .line 10726
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->U:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView$State;->a(Landroid/support/v7/widget/RecyclerView$State;I)I

    .line 10727
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->f:Landroid/view/View;

    .line 10728
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->a:I

    .line 10729
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->d:Z

    .line 10730
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->e:Z

    .line 10732
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->c:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-static {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 10734
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->c:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 10735
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->b:Landroid/support/v7/widget/RecyclerView;

    goto :goto_0
.end method

.method public f(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 10827
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 10828
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 10746
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->d:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 10754
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->e:Z

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 10764
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->a:I

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 10811
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->G()I

    move-result v0

    return v0
.end method
