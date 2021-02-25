.class public Lcom/open/likehelper/ui/WelcomeActivity_ViewBinding;
.super Ljava/lang/Object;
.source "WelcomeActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/open/likehelper/ui/WelcomeActivity;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/open/likehelper/ui/WelcomeActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/open/likehelper/ui/WelcomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/open/likehelper/ui/WelcomeActivity_ViewBinding;-><init>(Lcom/open/likehelper/ui/WelcomeActivity;Landroid/view/View;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/open/likehelper/ui/WelcomeActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const v3, 0x7f0c0074

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/open/likehelper/ui/WelcomeActivity_ViewBinding;->a:Lcom/open/likehelper/ui/WelcomeActivity;

    .line 31
    const v0, 0x7f0c0073

    const-string v1, "field \'mImg\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/open/likehelper/ui/WelcomeActivity;->mImg:Landroid/widget/ImageView;

    .line 32
    const-string v0, "field \'mTimer\' and method \'clickTimer\'"

    invoke-static {p2, v3, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 33
    const-string v0, "field \'mTimer\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {v1, v3, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/open/likehelper/ui/WelcomeActivity;->mTimer:Landroid/widget/TextView;

    .line 34
    iput-object v1, p0, Lcom/open/likehelper/ui/WelcomeActivity_ViewBinding;->b:Landroid/view/View;

    .line 35
    new-instance v0, Lcom/open/likehelper/ui/WelcomeActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/open/likehelper/ui/WelcomeActivity_ViewBinding$1;-><init>(Lcom/open/likehelper/ui/WelcomeActivity_ViewBinding;Lcom/open/likehelper/ui/WelcomeActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v0, 0x7f0c0071

    const-string v1, "field \'mWelcomeNameText\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/open/likehelper/ui/WelcomeActivity;->mWelcomeNameText:Landroid/widget/TextView;

    .line 42
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 47
    iget-object v0, p0, Lcom/open/likehelper/ui/WelcomeActivity_ViewBinding;->a:Lcom/open/likehelper/ui/WelcomeActivity;

    .line 48
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object v1, p0, Lcom/open/likehelper/ui/WelcomeActivity_ViewBinding;->a:Lcom/open/likehelper/ui/WelcomeActivity;

    .line 51
    iput-object v1, v0, Lcom/open/likehelper/ui/WelcomeActivity;->mImg:Landroid/widget/ImageView;

    .line 52
    iput-object v1, v0, Lcom/open/likehelper/ui/WelcomeActivity;->mTimer:Landroid/widget/TextView;

    .line 53
    iput-object v1, v0, Lcom/open/likehelper/ui/WelcomeActivity;->mWelcomeNameText:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lcom/open/likehelper/ui/WelcomeActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iput-object v1, p0, Lcom/open/likehelper/ui/WelcomeActivity_ViewBinding;->b:Landroid/view/View;

    .line 57
    return-void
.end method
