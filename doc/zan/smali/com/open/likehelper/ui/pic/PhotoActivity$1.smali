.class Lcom/open/likehelper/ui/pic/PhotoActivity$1;
.super Ljava/lang/Object;
.source "PhotoActivity.java"

# interfaces
.implements Lcom/open/likehelper/ui/pic/PhotoManager$OnAlbumListGetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/ui/pic/PhotoActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/open/likehelper/ui/pic/PhotoActivity;


# direct methods
.method constructor <init>(Lcom/open/likehelper/ui/pic/PhotoActivity;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/open/likehelper/ui/pic/PhotoActivity$1;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
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
    .line 81
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity$1;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/pic/PhotoActivity;->a(Lcom/open/likehelper/ui/pic/PhotoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity$1;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/pic/PhotoActivity;->a(Lcom/open/likehelper/ui/pic/PhotoActivity;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/ui/pic/Album;

    .line 86
    iget-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoActivity$1;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    invoke-static {v1}, Lcom/open/likehelper/ui/pic/PhotoActivity;->b(Lcom/open/likehelper/ui/pic/PhotoActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/open/likehelper/ui/pic/Album;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    iget-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoActivity$1;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    iget-object v1, v1, Lcom/open/likehelper/ui/pic/PhotoActivity;->topTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/open/likehelper/ui/pic/Album;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity$1;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/pic/PhotoActivity;->c(Lcom/open/likehelper/ui/pic/PhotoActivity;)Lcom/open/likehelper/ui/pic/PhotoAdaptar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/open/likehelper/ui/pic/PhotoAdaptar;->d()V

    goto :goto_0
.end method
