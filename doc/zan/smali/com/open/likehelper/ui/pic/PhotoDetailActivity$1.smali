.class Lcom/open/likehelper/ui/pic/PhotoDetailActivity$1;
.super Ljava/lang/Object;
.source "PhotoDetailActivity.java"

# interfaces
.implements Lcom/github/chrisbanes/photoview/OnPhotoTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/open/likehelper/ui/pic/PhotoDetailActivity;


# direct methods
.method constructor <init>(Lcom/open/likehelper/ui/pic/PhotoDetailActivity;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity$1;->a:Lcom/open/likehelper/ui/pic/PhotoDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;FF)V
    .locals 4

    .prologue
    .line 110
    check-cast p1, Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {p1}, Lcom/github/chrisbanes/photoview/PhotoView;->getScale()F

    move-result v0

    float-to-double v0, v0

    .line 111
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity$1;->a:Lcom/open/likehelper/ui/pic/PhotoDetailActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->a(Lcom/open/likehelper/ui/pic/PhotoDetailActivity;)V

    .line 113
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity$1;->a:Lcom/open/likehelper/ui/pic/PhotoDetailActivity;

    invoke-virtual {v0}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->finish()V

    .line 115
    :cond_0
    return-void
.end method
