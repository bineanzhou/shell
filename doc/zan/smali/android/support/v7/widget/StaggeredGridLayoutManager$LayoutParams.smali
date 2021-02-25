.class public Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
.super Landroid/support/v7/widget/RecyclerView$LayoutParams;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final a:I = -0x1


# instance fields
.field b:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

.field c:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 2380
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 2381
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 2376
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2377
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V
    .locals 0

    .prologue
    .line 2392
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V

    .line 2393
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 2388
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2389
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .prologue
    .line 2384
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2385
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 2404
    iput-boolean p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->c:Z

    .line 2405
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 2414
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->c:Z

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 2424
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    if-nez v0, :cond_0

    .line 2425
    const/4 v0, -0x1

    .line 2427
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:I

    goto :goto_0
.end method
