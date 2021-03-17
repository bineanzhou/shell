.class Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder$1;
.super Ljava/lang/Object;
.source "AlbumAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;->a(Lcom/open/likehelper/ui/pic/Album;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/open/likehelper/ui/pic/Album;

.field final synthetic b:Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;


# direct methods
.method constructor <init>(Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;Lcom/open/likehelper/ui/pic/Album;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder$1;->b:Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;

    iput-object p2, p0, Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder$1;->a:Lcom/open/likehelper/ui/pic/Album;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder$1;->b:Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;

    invoke-static {v0}, Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;->a(Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;)Lcom/open/likehelper/common/OnRecyclerViewItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder$1;->a:Lcom/open/likehelper/ui/pic/Album;

    invoke-interface {v0, p1, v1}, Lcom/open/likehelper/common/OnRecyclerViewItemClickListener;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 79
    return-void
.end method
