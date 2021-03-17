.class public Lcom/open/likehelper/ui/MomentsActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MomentsActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/open/likehelper/ui/MomentsActivity;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/open/likehelper/ui/MomentsActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/open/likehelper/ui/MomentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/open/likehelper/ui/MomentsActivity_ViewBinding;-><init>(Lcom/open/likehelper/ui/MomentsActivity;Landroid/view/View;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/open/likehelper/ui/MomentsActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/open/likehelper/ui/MomentsActivity_ViewBinding;->a:Lcom/open/likehelper/ui/MomentsActivity;

    .line 31
    const v0, 0x7f0c006a

    const-string v1, "field \'mRecyclerView\'"

    const-class v2, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/open/likehelper/ui/MomentsActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 32
    const v0, 0x7f0c0067

    const-string v1, "field \'mArrowImageView\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/open/likehelper/ui/MomentsActivity;->mArrowImageView:Landroid/widget/ImageView;

    .line 33
    const v0, 0x7f0c0069

    const-string v1, "method \'capture\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity_ViewBinding;->b:Landroid/view/View;

    .line 35
    new-instance v1, Lcom/open/likehelper/ui/MomentsActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/open/likehelper/ui/MomentsActivity_ViewBinding$1;-><init>(Lcom/open/likehelper/ui/MomentsActivity_ViewBinding;Lcom/open/likehelper/ui/MomentsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 46
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity_ViewBinding;->a:Lcom/open/likehelper/ui/MomentsActivity;

    .line 47
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput-object v1, p0, Lcom/open/likehelper/ui/MomentsActivity_ViewBinding;->a:Lcom/open/likehelper/ui/MomentsActivity;

    .line 50
    iput-object v1, v0, Lcom/open/likehelper/ui/MomentsActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 51
    iput-object v1, v0, Lcom/open/likehelper/ui/MomentsActivity;->mArrowImageView:Landroid/widget/ImageView;

    .line 53
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iput-object v1, p0, Lcom/open/likehelper/ui/MomentsActivity_ViewBinding;->b:Landroid/view/View;

    .line 55
    return-void
.end method
