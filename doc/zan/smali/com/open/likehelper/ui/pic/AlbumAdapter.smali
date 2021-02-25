.class public Lcom/open/likehelper/ui/pic/AlbumAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AlbumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/open/likehelper/common/OnRecyclerViewItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/open/likehelper/common/OnRecyclerViewItemClickListener",
            "<",
            "Lcom/open/likehelper/ui/pic/Album;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/open/likehelper/ui/pic/Album;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/open/likehelper/common/OnRecyclerViewItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/open/likehelper/ui/pic/Album;",
            ">;",
            "Lcom/open/likehelper/common/OnRecyclerViewItemClickListener",
            "<",
            "Lcom/open/likehelper/ui/pic/Album;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/open/likehelper/ui/pic/AlbumAdapter;->b:Ljava/util/List;

    .line 26
    iput-object p2, p0, Lcom/open/likehelper/ui/pic/AlbumAdapter;->a:Lcom/open/likehelper/common/OnRecyclerViewItemClickListener;

    .line 27
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/AlbumAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/open/likehelper/ui/pic/AlbumAdapter;->c(Landroid/view/ViewGroup;I)Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/open/likehelper/ui/pic/AlbumAdapter;->a(Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;I)V

    return-void
.end method

.method public a(Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;I)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/AlbumAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/ui/pic/Album;

    .line 39
    invoke-static {p1, v0}, Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;->a(Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;Lcom/open/likehelper/ui/pic/Album;)V

    .line 40
    return-void
.end method

.method public b(I)J
    .locals 2

    .prologue
    .line 44
    int-to-long v0, p1

    return-wide v0
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;
    .locals 3

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040026

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;

    iget-object v2, p0, Lcom/open/likehelper/ui/pic/AlbumAdapter;->a:Lcom/open/likehelper/common/OnRecyclerViewItemClickListener;

    invoke-direct {v1, v0, v2}, Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;-><init>(Landroid/view/View;Lcom/open/likehelper/common/OnRecyclerViewItemClickListener;)V

    .line 33
    return-object v1
.end method
