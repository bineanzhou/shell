.class Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder$3;
.super Ljava/lang/Object;
.source "PhotoAdaptar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->c(Lcom/open/likehelper/ui/pic/Photo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/open/likehelper/ui/pic/Photo;

.field final synthetic b:Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;


# direct methods
.method constructor <init>(Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;Lcom/open/likehelper/ui/pic/Photo;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder$3;->b:Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;

    iput-object p2, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder$3;->a:Lcom/open/likehelper/ui/pic/Photo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder$3;->b:Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;

    invoke-static {v0}, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->a(Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;)Lcom/open/likehelper/ui/pic/PhotoAdaptar$OnPhotoItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder$3;->a:Lcom/open/likehelper/ui/pic/Photo;

    invoke-interface {v0, p1, v1}, Lcom/open/likehelper/ui/pic/PhotoAdaptar$OnPhotoItemClickListener;->a(Landroid/view/View;Lcom/open/likehelper/ui/pic/Photo;)V

    .line 134
    return-void
.end method
