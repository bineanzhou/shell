.class public Lcom/open/likehelper/widget/GridSpacingItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "GridSpacingItemDecoration.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 18
    iput p1, p0, Lcom/open/likehelper/widget/GridSpacingItemDecoration;->a:I

    .line 19
    iput p2, p0, Lcom/open/likehelper/widget/GridSpacingItemDecoration;->b:I

    .line 20
    iput p3, p0, Lcom/open/likehelper/widget/GridSpacingItemDecoration;->c:I

    .line 21
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5

    .prologue
    .line 25
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 26
    iget v1, p0, Lcom/open/likehelper/widget/GridSpacingItemDecoration;->c:I

    rem-int v1, v0, v1

    .line 28
    iget v2, p0, Lcom/open/likehelper/widget/GridSpacingItemDecoration;->c:I

    iget v3, p0, Lcom/open/likehelper/widget/GridSpacingItemDecoration;->a:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/open/likehelper/widget/GridSpacingItemDecoration;->c:I

    add-int/lit8 v3, v3, 0x1

    div-int/2addr v2, v3

    .line 30
    mul-int v3, v1, v2

    iget v4, p0, Lcom/open/likehelper/widget/GridSpacingItemDecoration;->c:I

    div-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 31
    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v2

    iget v3, p0, Lcom/open/likehelper/widget/GridSpacingItemDecoration;->c:I

    div-int/2addr v1, v3

    sub-int v1, v2, v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 32
    iget v1, p0, Lcom/open/likehelper/widget/GridSpacingItemDecoration;->c:I

    if-lt v0, v1, :cond_0

    .line 33
    iget v0, p0, Lcom/open/likehelper/widget/GridSpacingItemDecoration;->b:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 37
    :cond_0
    return-void
.end method
