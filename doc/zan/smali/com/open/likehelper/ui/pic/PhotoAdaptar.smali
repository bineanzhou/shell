.class Lcom/open/likehelper/ui/pic/PhotoAdaptar;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PhotoAdaptar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;,
        Lcom/open/likehelper/ui/pic/PhotoAdaptar$OnPhotoItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/open/likehelper/ui/pic/PhotoAdaptar$OnPhotoItemClickListener;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/open/likehelper/ui/pic/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Ljava/util/List;ILcom/open/likehelper/ui/pic/PhotoAdaptar$OnPhotoItemClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/open/likehelper/ui/pic/Photo;",
            ">;I",
            "Lcom/open/likehelper/ui/pic/PhotoAdaptar$OnPhotoItemClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 33
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar;->b:Ljava/util/List;

    .line 35
    iput p2, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar;->c:I

    .line 36
    iput p2, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar;->d:I

    .line 37
    if-ne p2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar;->e:Z

    .line 38
    iput-object p3, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar;->a:Lcom/open/likehelper/ui/pic/PhotoAdaptar$OnPhotoItemClickListener;

    .line 39
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/open/likehelper/ui/pic/PhotoAdaptar;I)I
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar;->f:I

    return p1
.end method

.method static synthetic a(Lcom/open/likehelper/ui/pic/PhotoAdaptar;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/open/likehelper/ui/pic/PhotoAdaptar;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar;->d:I

    return v0
.end method

.method static synthetic c(Lcom/open/likehelper/ui/pic/PhotoAdaptar;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar;->c:I

    return v0
.end method

.method static synthetic d(Lcom/open/likehelper/ui/pic/PhotoAdaptar;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar;->f:I

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/open/likehelper/ui/pic/PhotoAdaptar;->c(Landroid/view/ViewGroup;I)Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/open/likehelper/ui/pic/PhotoAdaptar;->a(Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;I)V

    return-void
.end method

.method public a(Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;I)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/ui/pic/Photo;

    .line 51
    invoke-static {p1, v0}, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->a(Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;Lcom/open/likehelper/ui/pic/Photo;)V

    .line 52
    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04002a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 44
    new-instance v1, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;

    iget-object v2, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar;->a:Lcom/open/likehelper/ui/pic/PhotoAdaptar$OnPhotoItemClickListener;

    invoke-direct {v1, p0, v0, v2}, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;-><init>(Lcom/open/likehelper/ui/pic/PhotoAdaptar;Landroid/view/View;Lcom/open/likehelper/ui/pic/PhotoAdaptar$OnPhotoItemClickListener;)V

    .line 45
    return-object v1
.end method

.method public f(I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar;->d:I

    .line 61
    return-void
.end method
