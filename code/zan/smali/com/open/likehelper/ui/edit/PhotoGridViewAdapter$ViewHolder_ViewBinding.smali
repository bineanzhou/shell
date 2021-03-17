.class public Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "PhotoGridViewAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$ViewHolder_ViewBinding;->a:Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$ViewHolder;

    .line 22
    const v0, 0x7f0c008b

    const-string v1, "field \'imageView\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 23
    const v0, 0x7f0c008c

    const-string v1, "field \'deleteImageView\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$ViewHolder;->deleteImageView:Landroid/widget/ImageView;

    .line 24
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 29
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$ViewHolder_ViewBinding;->a:Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$ViewHolder;

    .line 30
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    iput-object v1, p0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$ViewHolder_ViewBinding;->a:Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$ViewHolder;

    .line 33
    iput-object v1, v0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 34
    iput-object v1, v0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$ViewHolder;->deleteImageView:Landroid/widget/ImageView;

    .line 35
    return-void
.end method
