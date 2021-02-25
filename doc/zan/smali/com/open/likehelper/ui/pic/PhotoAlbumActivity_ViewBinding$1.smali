.class Lcom/open/likehelper/ui/pic/PhotoAlbumActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "PhotoAlbumActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/ui/pic/PhotoAlbumActivity_ViewBinding;-><init>(Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;

.field final synthetic b:Lcom/open/likehelper/ui/pic/PhotoAlbumActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/open/likehelper/ui/pic/PhotoAlbumActivity_ViewBinding;Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity_ViewBinding$1;->b:Lcom/open/likehelper/ui/pic/PhotoAlbumActivity_ViewBinding;

    iput-object p2, p0, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity_ViewBinding$1;->a:Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity_ViewBinding$1;->a:Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;

    invoke-virtual {v0, p1}, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->onViewClicked(Landroid/view/View;)V

    .line 41
    return-void
.end method
