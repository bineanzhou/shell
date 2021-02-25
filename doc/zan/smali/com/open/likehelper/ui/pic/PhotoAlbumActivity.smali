.class public Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;
.super Lcom/open/likehelper/base/BaseActivity;
.source "PhotoAlbumActivity.java"


# static fields
.field public static final a:I = 0x3e8


# instance fields
.field albumListView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c006f
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

.field private c:Lcom/open/likehelper/ui/pic/AlbumAdapter;

.field topReturn:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c008f
    .end annotation
.end field

.field topRightIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0092
    .end annotation
.end field

.field topTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0090
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/open/likehelper/base/BaseActivity;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->b:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/open/likehelper/ui/pic/Album;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    const-string v1, "albumList"

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 42
    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "albumList"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    return-void
.end method

.method private b()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->c()V

    .line 60
    invoke-direct {p0}, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->d()V

    .line 61
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->topReturn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->topRightIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->topRightIcon:Landroid/widget/ImageView;

    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->topTitle:Landroid/widget/TextView;

    const v1, 0x7f07003c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 68
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 71
    new-instance v0, Lcom/open/likehelper/ui/pic/AlbumAdapter;

    iget-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->b:Ljava/util/List;

    new-instance v2, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity$1;

    invoke-direct {v2, p0}, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity$1;-><init>(Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/open/likehelper/ui/pic/AlbumAdapter;-><init>(Ljava/util/List;Lcom/open/likehelper/common/OnRecyclerViewItemClickListener;)V

    iput-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->c:Lcom/open/likehelper/ui/pic/AlbumAdapter;

    .line 81
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->albumListView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 82
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->albumListView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->c:Lcom/open/likehelper/ui/pic/AlbumAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 83
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 47
    const v0, 0x7f04001f

    invoke-virtual {p0, v0}, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->setContentView(I)V

    .line 48
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 49
    invoke-direct {p0}, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->a()V

    .line 50
    invoke-direct {p0}, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->b()V

    .line 51
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0c0092
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 89
    :pswitch_0
    invoke-virtual {p0}, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->finish()V

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x7f0c0092
        :pswitch_0
    .end packed-switch
.end method
