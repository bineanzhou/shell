.class Landroid/support/v7/util/DiffUtil$DiffResult$1;
.super Ljava/lang/Object;
.source "DiffUtil.java"

# interfaces
.implements Landroid/support/v7/util/ListUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/util/DiffUtil$DiffResult;->a(Landroid/support/v7/widget/RecyclerView$Adapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$Adapter;

.field final synthetic b:Landroid/support/v7/util/DiffUtil$DiffResult;


# direct methods
.method constructor <init>(Landroid/support/v7/util/DiffUtil$DiffResult;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0

    .prologue
    .line 659
    iput-object p1, p0, Landroid/support/v7/util/DiffUtil$DiffResult$1;->b:Landroid/support/v7/util/DiffUtil$DiffResult;

    iput-object p2, p0, Landroid/support/v7/util/DiffUtil$DiffResult$1;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult$1;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->c(II)V

    .line 663
    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult$1;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->a(IILjava/lang/Object;)V

    .line 678
    return-void
.end method

.method public b(II)V
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult$1;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->d(II)V

    .line 668
    return-void
.end method

.method public c(II)V
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult$1;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->b(II)V

    .line 673
    return-void
.end method
