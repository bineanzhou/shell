.class public Lcom/open/likehelper/ui/pic/PhotoAlbumActivity_ViewBinding;
.super Ljava/lang/Object;
.source "PhotoAlbumActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity_ViewBinding;-><init>(Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;Landroid/view/View;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const v3, 0x7f0c0092

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity_ViewBinding;->a:Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;

    .line 32
    const v0, 0x7f0c008f

    const-string v1, "field \'topReturn\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->topReturn:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f0c0090

    const-string v1, "field \'topTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->topTitle:Landroid/widget/TextView;

    .line 34
    const-string v0, "field \'topRightIcon\' and method \'onViewClicked\'"

    invoke-static {p2, v3, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 35
    const-string v0, "field \'topRightIcon\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {v1, v3, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->topRightIcon:Landroid/widget/ImageView;

    .line 36
    iput-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity_ViewBinding;->b:Landroid/view/View;

    .line 37
    new-instance v0, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity_ViewBinding$1;-><init>(Lcom/open/likehelper/ui/pic/PhotoAlbumActivity_ViewBinding;Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v0, 0x7f0c006f

    const-string v1, "field \'albumListView\'"

    const-class v2, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->albumListView:Landroid/support/v7/widget/RecyclerView;

    .line 44
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 49
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity_ViewBinding;->a:Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;

    .line 50
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity_ViewBinding;->a:Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;

    .line 53
    iput-object v1, v0, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->topReturn:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->topTitle:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->topRightIcon:Landroid/widget/ImageView;

    .line 56
    iput-object v1, v0, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->albumListView:Landroid/support/v7/widget/RecyclerView;

    .line 58
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iput-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity_ViewBinding;->b:Landroid/view/View;

    .line 60
    return-void
.end method
