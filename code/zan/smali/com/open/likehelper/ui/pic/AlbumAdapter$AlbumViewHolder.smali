.class Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AlbumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/open/likehelper/ui/pic/AlbumAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlbumViewHolder"
.end annotation


# instance fields
.field private final B:Lcom/open/likehelper/common/OnRecyclerViewItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/open/likehelper/common/OnRecyclerViewItemClickListener",
            "<",
            "Lcom/open/likehelper/ui/pic/Album;",
            ">;"
        }
    .end annotation
.end field

.field albumImageCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0084
    .end annotation
.end field

.field albumName:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0083
    .end annotation
.end field

.field cover:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0082
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/open/likehelper/common/OnRecyclerViewItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/open/likehelper/common/OnRecyclerViewItemClickListener",
            "<",
            "Lcom/open/likehelper/ui/pic/Album;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 63
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 64
    iput-object p2, p0, Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;->B:Lcom/open/likehelper/common/OnRecyclerViewItemClickListener;

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;)Lcom/open/likehelper/common/OnRecyclerViewItemClickListener;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;->B:Lcom/open/likehelper/common/OnRecyclerViewItemClickListener;

    return-object v0
.end method

.method private a(Lcom/open/likehelper/ui/pic/Album;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;->albumName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/open/likehelper/ui/pic/Album;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;->albumImageCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/open/likehelper/ui/pic/Album;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->c(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 71
    invoke-virtual {p1}, Lcom/open/likehelper/ui/pic/Album;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->d()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->f()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;->cover:Landroid/widget/ImageView;

    .line 74
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 75
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;->a:Landroid/view/View;

    new-instance v1, Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder$1;-><init>(Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;Lcom/open/likehelper/ui/pic/Album;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;Lcom/open/likehelper/ui/pic/Album;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;->a(Lcom/open/likehelper/ui/pic/Album;)V

    return-void
.end method
