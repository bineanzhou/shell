.class public Lcom/open/likehelper/ui/pic/PhotoDetailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "PhotoDetailActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/open/likehelper/ui/pic/PhotoDetailActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/open/likehelper/ui/pic/PhotoDetailActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p1}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity_ViewBinding;-><init>(Lcom/open/likehelper/ui/pic/PhotoDetailActivity;Landroid/view/View;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/open/likehelper/ui/pic/PhotoDetailActivity;Landroid/view/View;)V
    .locals 5
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const v4, 0x7f0c0092

    const v3, 0x7f0c008f

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity_ViewBinding;->a:Lcom/open/likehelper/ui/pic/PhotoDetailActivity;

    .line 34
    const v0, 0x7f0c0070

    const-string v1, "field \'viewPager\'"

    const-class v2, Landroid/support/v4/view/ViewPager;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p1, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 35
    const-string v0, "field \'topReturn\' and method \'onViewClicked\'"

    invoke-static {p2, v3, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 36
    const-string v0, "field \'topReturn\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {v1, v3, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->topReturn:Landroid/widget/TextView;

    .line 37
    iput-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity_ViewBinding;->b:Landroid/view/View;

    .line 38
    new-instance v0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity_ViewBinding$1;-><init>(Lcom/open/likehelper/ui/pic/PhotoDetailActivity_ViewBinding;Lcom/open/likehelper/ui/pic/PhotoDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v0, 0x7f0c0090

    const-string v1, "field \'topTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->topTitle:Landroid/widget/TextView;

    .line 45
    const-string v0, "field \'topRightIcon\' and method \'onViewClicked\'"

    invoke-static {p2, v4, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 46
    const-string v0, "field \'topRightIcon\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {v1, v4, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->topRightIcon:Landroid/widget/ImageView;

    .line 47
    iput-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity_ViewBinding;->c:Landroid/view/View;

    .line 48
    new-instance v0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity_ViewBinding$2;-><init>(Lcom/open/likehelper/ui/pic/PhotoDetailActivity_ViewBinding;Lcom/open/likehelper/ui/pic/PhotoDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity_ViewBinding;->a:Lcom/open/likehelper/ui/pic/PhotoDetailActivity;

    .line 60
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iput-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity_ViewBinding;->a:Lcom/open/likehelper/ui/pic/PhotoDetailActivity;

    .line 63
    iput-object v1, v0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 64
    iput-object v1, v0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->topReturn:Landroid/widget/TextView;

    .line 65
    iput-object v1, v0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->topTitle:Landroid/widget/TextView;

    .line 66
    iput-object v1, v0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->topRightIcon:Landroid/widget/ImageView;

    .line 68
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iput-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity_ViewBinding;->b:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iput-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity_ViewBinding;->c:Landroid/view/View;

    .line 72
    return-void
.end method
