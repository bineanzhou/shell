.class Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemAnimatorRestoreListener"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 11505
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11506
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 11510
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(Z)V

    .line 11511
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->i:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_0

    .line 11512
    iput-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 11516
    :cond_0
    iput-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->i:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 11517
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11518
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11519
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 11522
    :cond_1
    return-void
.end method
