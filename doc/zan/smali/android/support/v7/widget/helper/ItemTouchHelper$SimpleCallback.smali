.class public abstract Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleCallback"
.end annotation


# instance fields
.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 2199
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    .line 2200
    iput p2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->d:I

    .line 2201
    iput p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->e:I

    .line 2202
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 2

    .prologue
    .line 2252
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->g(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 2253
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->f(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v1

    .line 2252
    invoke-static {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->b(II)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 2211
    iput p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->d:I

    .line 2212
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 2221
    iput p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->e:I

    .line 2222
    return-void
.end method

.method public f(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 1

    .prologue
    .line 2234
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->d:I

    return v0
.end method

.method public g(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 1

    .prologue
    .line 2247
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->e:I

    return v0
.end method
