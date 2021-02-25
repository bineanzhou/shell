.class Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "PhotoActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding;-><init>(Lcom/open/likehelper/ui/pic/PhotoActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/open/likehelper/ui/pic/PhotoActivity;

.field final synthetic b:Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding;Lcom/open/likehelper/ui/pic/PhotoActivity;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding$3;->b:Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding;

    iput-object p2, p0, Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding$3;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding$3;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    invoke-virtual {v0, p1}, Lcom/open/likehelper/ui/pic/PhotoActivity;->onViewClicked(Landroid/view/View;)V

    .line 64
    return-void
.end method
