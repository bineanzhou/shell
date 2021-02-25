.class Lcom/open/likehelper/ui/MomentsActivity$Adapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MomentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/open/likehelper/ui/MomentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/open/likehelper/ui/MomentsActivity$Adapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/open/likehelper/ui/MomentsActivity$Adapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/open/likehelper/ui/MomentsActivity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/open/likehelper/ui/MomentsActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 530
    iput-object p1, p0, Lcom/open/likehelper/ui/MomentsActivity$Adapter;->a:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 531
    iput-object p2, p0, Lcom/open/likehelper/ui/MomentsActivity$Adapter;->b:Ljava/util/List;

    .line 532
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity$Adapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0, p1, p2}, Lcom/open/likehelper/ui/MomentsActivity$Adapter;->c(Landroid/view/ViewGroup;I)Lcom/open/likehelper/ui/MomentsActivity$Adapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 527
    check-cast p1, Lcom/open/likehelper/ui/MomentsActivity$Adapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/open/likehelper/ui/MomentsActivity$Adapter;->a(Lcom/open/likehelper/ui/MomentsActivity$Adapter$ViewHolder;I)V

    return-void
.end method

.method public a(Lcom/open/likehelper/ui/MomentsActivity$Adapter$ViewHolder;I)V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity$Adapter;->a:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-virtual {v0}, Lcom/open/likehelper/ui/MomentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->c(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity$Adapter;->b:Ljava/util/List;

    .line 542
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->f()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/open/likehelper/ui/MomentsActivity$Adapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 544
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 545
    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/open/likehelper/ui/MomentsActivity$Adapter$ViewHolder;
    .locals 4

    .prologue
    .line 536
    new-instance v0, Lcom/open/likehelper/ui/MomentsActivity$Adapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040028

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/open/likehelper/ui/MomentsActivity$Adapter$ViewHolder;-><init>(Lcom/open/likehelper/ui/MomentsActivity$Adapter;Landroid/view/View;)V

    return-object v0
.end method
