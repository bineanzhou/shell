.class public Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "AlbumAdapter$AlbumViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;


# direct methods
.method public constructor <init>(Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder_ViewBinding;->a:Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;

    .line 23
    const v0, 0x7f0c0082

    const-string v1, "field \'cover\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;->cover:Landroid/widget/ImageView;

    .line 24
    const v0, 0x7f0c0083

    const-string v1, "field \'albumName\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;->albumName:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f0c0084

    const-string v1, "field \'albumImageCount\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;->albumImageCount:Landroid/widget/TextView;

    .line 26
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 31
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder_ViewBinding;->a:Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;

    .line 32
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iput-object v1, p0, Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder_ViewBinding;->a:Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;

    .line 35
    iput-object v1, v0, Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;->cover:Landroid/widget/ImageView;

    .line 36
    iput-object v1, v0, Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;->albumName:Landroid/widget/TextView;

    .line 37
    iput-object v1, v0, Lcom/open/likehelper/ui/pic/AlbumAdapter$AlbumViewHolder;->albumImageCount:Landroid/widget/TextView;

    .line 38
    return-void
.end method
