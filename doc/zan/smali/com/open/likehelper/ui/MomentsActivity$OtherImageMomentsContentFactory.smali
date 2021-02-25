.class Lcom/open/likehelper/ui/MomentsActivity$OtherImageMomentsContentFactory;
.super Lcom/open/likehelper/ui/MomentsActivity$ImageMomentsContentFactory;
.source "MomentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/open/likehelper/ui/MomentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OtherImageMomentsContentFactory"
.end annotation


# static fields
.field private static final d:I = 0x3


# instance fields
.field final synthetic a:Lcom/open/likehelper/ui/MomentsActivity;

.field private e:Ljava/util/List;
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
    .locals 1
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
    .line 482
    iput-object p1, p0, Lcom/open/likehelper/ui/MomentsActivity$OtherImageMomentsContentFactory;->a:Lcom/open/likehelper/ui/MomentsActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/open/likehelper/ui/MomentsActivity$ImageMomentsContentFactory;-><init>(Lcom/open/likehelper/ui/MomentsActivity;Lcom/open/likehelper/ui/MomentsActivity$1;)V

    .line 483
    iput-object p2, p0, Lcom/open/likehelper/ui/MomentsActivity$OtherImageMomentsContentFactory;->e:Ljava/util/List;

    .line 484
    return-void
.end method


# virtual methods
.method a()Landroid/view/View;
    .locals 4

    .prologue
    .line 488
    new-instance v0, Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/open/likehelper/ui/MomentsActivity$OtherImageMomentsContentFactory;->a:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-static {v1}, Lcom/open/likehelper/ui/MomentsActivity;->a(Lcom/open/likehelper/ui/MomentsActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 489
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/open/likehelper/ui/MomentsActivity$OtherImageMomentsContentFactory;->a:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-static {v2}, Lcom/open/likehelper/ui/MomentsActivity;->a(Lcom/open/likehelper/ui/MomentsActivity;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 490
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 491
    new-instance v1, Lcom/open/likehelper/ui/MomentsActivity$Adapter;

    iget-object v2, p0, Lcom/open/likehelper/ui/MomentsActivity$OtherImageMomentsContentFactory;->a:Lcom/open/likehelper/ui/MomentsActivity;

    iget-object v3, p0, Lcom/open/likehelper/ui/MomentsActivity$OtherImageMomentsContentFactory;->e:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/open/likehelper/ui/MomentsActivity$Adapter;-><init>(Lcom/open/likehelper/ui/MomentsActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 492
    new-instance v1, Lcom/open/likehelper/ui/MomentsActivity$ImageItemDecoration;

    iget-object v2, p0, Lcom/open/likehelper/ui/MomentsActivity$OtherImageMomentsContentFactory;->a:Lcom/open/likehelper/ui/MomentsActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/open/likehelper/ui/MomentsActivity$ImageItemDecoration;-><init>(Lcom/open/likehelper/ui/MomentsActivity;Lcom/open/likehelper/ui/MomentsActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 493
    return-object v0
.end method
