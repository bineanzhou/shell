.class Lcom/open/likehelper/ui/pic/PhotoDetailActivity$2;
.super Ljava/lang/Object;
.source "PhotoDetailActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->e()V
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
    .line 124
    iput-object p1, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity$2;->a:Lcom/open/likehelper/ui/pic/PhotoDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity$2;->a:Lcom/open/likehelper/ui/pic/PhotoDetailActivity;

    invoke-static {v0, p1}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->a(Lcom/open/likehelper/ui/pic/PhotoDetailActivity;I)I

    .line 133
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity$2;->a:Lcom/open/likehelper/ui/pic/PhotoDetailActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->c(Lcom/open/likehelper/ui/pic/PhotoDetailActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity$2;->a:Lcom/open/likehelper/ui/pic/PhotoDetailActivity;

    invoke-static {v1}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->b(Lcom/open/likehelper/ui/pic/PhotoDetailActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/ui/pic/Photo;

    .line 134
    iget-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity$2;->a:Lcom/open/likehelper/ui/pic/PhotoDetailActivity;

    iget-object v1, v1, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->topRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/open/likehelper/ui/pic/Photo;->b()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 135
    return-void
.end method
