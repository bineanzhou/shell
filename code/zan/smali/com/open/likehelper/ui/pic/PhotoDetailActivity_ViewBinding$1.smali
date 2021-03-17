.class Lcom/open/likehelper/ui/pic/PhotoDetailActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "PhotoDetailActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/ui/pic/PhotoDetailActivity_ViewBinding;-><init>(Lcom/open/likehelper/ui/pic/PhotoDetailActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/open/likehelper/ui/pic/PhotoDetailActivity;

.field final synthetic b:Lcom/open/likehelper/ui/pic/PhotoDetailActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/open/likehelper/ui/pic/PhotoDetailActivity_ViewBinding;Lcom/open/likehelper/ui/pic/PhotoDetailActivity;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity_ViewBinding$1;->b:Lcom/open/likehelper/ui/pic/PhotoDetailActivity_ViewBinding;

    iput-object p2, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity_ViewBinding$1;->a:Lcom/open/likehelper/ui/pic/PhotoDetailActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity_ViewBinding$1;->a:Lcom/open/likehelper/ui/pic/PhotoDetailActivity;

    invoke-virtual {v0, p1}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->onViewClicked(Landroid/view/View;)V

    .line 42
    return-void
.end method
