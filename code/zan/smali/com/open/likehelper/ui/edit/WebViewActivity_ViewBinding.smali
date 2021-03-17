.class public Lcom/open/likehelper/ui/edit/WebViewActivity_ViewBinding;
.super Ljava/lang/Object;
.source "WebViewActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/open/likehelper/ui/edit/WebViewActivity;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/open/likehelper/ui/edit/WebViewActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/open/likehelper/ui/edit/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/open/likehelper/ui/edit/WebViewActivity_ViewBinding;-><init>(Lcom/open/likehelper/ui/edit/WebViewActivity;Landroid/view/View;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/open/likehelper/ui/edit/WebViewActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/open/likehelper/ui/edit/WebViewActivity_ViewBinding;->a:Lcom/open/likehelper/ui/edit/WebViewActivity;

    .line 31
    const v0, 0x7f0c002e

    const-string v1, "field \'mTitleBar\'"

    const-class v2, Lcom/open/likehelper/widget/TitleBar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/widget/TitleBar;

    iput-object v0, p1, Lcom/open/likehelper/ui/edit/WebViewActivity;->mTitleBar:Lcom/open/likehelper/widget/TitleBar;

    .line 32
    const v0, 0x7f0c0075

    const-string v1, "field \'mWebView\'"

    const-class v2, Landroid/webkit/WebView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p1, Lcom/open/likehelper/ui/edit/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 33
    const v0, 0x7f0c0065

    const-string v1, "method \'setNoLocation\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity_ViewBinding;->b:Landroid/view/View;

    .line 35
    new-instance v1, Lcom/open/likehelper/ui/edit/WebViewActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/open/likehelper/ui/edit/WebViewActivity_ViewBinding$1;-><init>(Lcom/open/likehelper/ui/edit/WebViewActivity_ViewBinding;Lcom/open/likehelper/ui/edit/WebViewActivity;)V

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
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity_ViewBinding;->a:Lcom/open/likehelper/ui/edit/WebViewActivity;

    .line 47
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput-object v1, p0, Lcom/open/likehelper/ui/edit/WebViewActivity_ViewBinding;->a:Lcom/open/likehelper/ui/edit/WebViewActivity;

    .line 50
    iput-object v1, v0, Lcom/open/likehelper/ui/edit/WebViewActivity;->mTitleBar:Lcom/open/likehelper/widget/TitleBar;

    .line 51
    iput-object v1, v0, Lcom/open/likehelper/ui/edit/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 53
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iput-object v1, p0, Lcom/open/likehelper/ui/edit/WebViewActivity_ViewBinding;->b:Landroid/view/View;

    .line 55
    return-void
.end method
