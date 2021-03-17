.class Lcom/open/likehelper/ui/pic/PhotoManager$GetPhotoAlbumList;
.super Landroid/os/AsyncTask;
.source "PhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/open/likehelper/ui/pic/PhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetPhotoAlbumList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/open/likehelper/ui/pic/Album;",
        ">;>;"
    }
.end annotation


# instance fields
.field a:Lcom/open/likehelper/ui/pic/PhotoManager$OnAlbumListGetListener;

.field final synthetic b:Lcom/open/likehelper/ui/pic/PhotoManager;


# direct methods
.method public constructor <init>(Lcom/open/likehelper/ui/pic/PhotoManager;Lcom/open/likehelper/ui/pic/PhotoManager$OnAlbumListGetListener;)V
    .locals 0
    .param p2    # Lcom/open/likehelper/ui/pic/PhotoManager$OnAlbumListGetListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 101
    iput-object p1, p0, Lcom/open/likehelper/ui/pic/PhotoManager$GetPhotoAlbumList;->b:Lcom/open/likehelper/ui/pic/PhotoManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/open/likehelper/ui/pic/PhotoManager$GetPhotoAlbumList;->a:Lcom/open/likehelper/ui/pic/PhotoManager$OnAlbumListGetListener;

    .line 103
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/open/likehelper/ui/pic/Album;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoManager$GetPhotoAlbumList;->b:Lcom/open/likehelper/ui/pic/PhotoManager;

    invoke-static {v0}, Lcom/open/likehelper/ui/pic/PhotoManager;->a(Lcom/open/likehelper/ui/pic/PhotoManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/open/likehelper/ui/pic/Album;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoManager$GetPhotoAlbumList;->a:Lcom/open/likehelper/ui/pic/PhotoManager$OnAlbumListGetListener;

    invoke-interface {v0, p1}, Lcom/open/likehelper/ui/pic/PhotoManager$OnAlbumListGetListener;->a(Ljava/util/List;)V

    .line 113
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/open/likehelper/ui/pic/PhotoManager$GetPhotoAlbumList;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 98
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/open/likehelper/ui/pic/PhotoManager$GetPhotoAlbumList;->a(Ljava/util/List;)V

    return-void
.end method
