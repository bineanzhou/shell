.class Lcom/open/likehelper/ui/pic/PhotoAlbumActivity$1;
.super Ljava/lang/Object;
.source "PhotoAlbumActivity.java"

# interfaces
.implements Lcom/open/likehelper/common/OnRecyclerViewItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/open/likehelper/common/OnRecyclerViewItemClickListener",
        "<",
        "Lcom/open/likehelper/ui/pic/Album;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;


# direct methods
.method constructor <init>(Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity$1;->a:Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/open/likehelper/ui/pic/Album;)V
    .locals 3

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 76
    const-string v1, "album"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity$1;->a:Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, v0}, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->setResult(ILandroid/content/Intent;)V

    .line 78
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity$1;->a:Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;

    invoke-virtual {v0}, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->finish()V

    .line 79
    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 72
    check-cast p2, Lcom/open/likehelper/ui/pic/Album;

    invoke-virtual {p0, p1, p2}, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity$1;->a(Landroid/view/View;Lcom/open/likehelper/ui/pic/Album;)V

    return-void
.end method
