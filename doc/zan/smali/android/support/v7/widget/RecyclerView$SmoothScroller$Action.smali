.class public Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final a:I = -0x80000000


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/view/animation/Interpolator;

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 10914
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 10915
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .prologue
    .line 10923
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 10924
    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10899
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->e:I

    .line 10903
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->g:Z

    .line 10907
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->h:I

    .line 10934
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->b:I

    .line 10935
    iput p2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->c:I

    .line 10936
    iput p3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->d:I

    .line 10937
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->f:Landroid/view/animation/Interpolator;

    .line 10938
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 10996
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->f:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->d:I

    if-ge v0, v1, :cond_0

    .line 10997
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10999
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->d:I

    if-ge v0, v1, :cond_1

    .line 11000
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11002
    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 10956
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->e:I

    .line 10957
    return-void
.end method

.method public a(IIILandroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 11055
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->b:I

    .line 11056
    iput p2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->c:I

    .line 11057
    iput p3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->d:I

    .line 11058
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->f:Landroid/view/animation/Interpolator;

    .line 11059
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->g:Z

    .line 11060
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 10964
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->e:I

    if-ltz v0, :cond_0

    .line 10965
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->e:I

    .line 10966
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->e:I

    .line 10967
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    .line 10968
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->g:Z

    .line 10993
    :goto_0
    return-void

    .line 10971
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->g:Z

    if-eqz v0, :cond_4

    .line 10972
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->f()V

    .line 10973
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->f:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_3

    .line 10974
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->d:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_2

    .line 10975
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->R:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->b:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b(II)V

    .line 10982
    :goto_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->h:I

    .line 10983
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->h:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    .line 10986
    const-string v0, "RecyclerView"

    const-string v1, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10989
    :cond_1
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->g:Z

    goto :goto_0

    .line 10977
    :cond_2
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->R:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->b:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->c:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->d:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a(III)V

    goto :goto_1

    .line 10980
    :cond_3
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->R:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->b:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->c:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->d:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->f:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a(IIILandroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 10991
    :cond_4
    iput v5, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->h:I

    goto :goto_0
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 11042
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->g:Z

    .line 11043
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->f:Landroid/view/animation/Interpolator;

    .line 11044
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 10960
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->e:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 11005
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->b:I

    return v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 11009
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->g:Z

    .line 11010
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->b:I

    .line 11011
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 11014
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->c:I

    return v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 11018
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->g:Z

    .line 11019
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->c:I

    .line 11020
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 11023
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->d:I

    return v0
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 11027
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->g:Z

    .line 11028
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->d:I

    .line 11029
    return-void
.end method

.method public e()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 11032
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->f:Landroid/view/animation/Interpolator;

    return-object v0
.end method
