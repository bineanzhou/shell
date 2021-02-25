.class public Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
.super Landroid/support/v7/widget/RecyclerView$LayoutParams;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final a:I = -0x1


# instance fields
.field b:I

.field c:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 1107
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 1098
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b:I

    .line 1100
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->c:I

    .line 1108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 1103
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1098
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b:I

    .line 1100
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->c:I

    .line 1104
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V
    .locals 1

    .prologue
    .line 1119
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V

    .line 1098
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b:I

    .line 1100
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->c:I

    .line 1120
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 1115
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1098
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b:I

    .line 1100
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->c:I

    .line 1116
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 1111
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1098
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b:I

    .line 1100
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->c:I

    .line 1112
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1137
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 1147
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->c:I

    return v0
.end method
