.class public Lcom/open/likehelper/ui/edit/WebViewActivity;
.super Lcom/open/likehelper/base/BaseActivity;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/open/likehelper/ui/edit/WebViewActivity$JavaScriptObject;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field mTitleBar:Lcom/open/likehelper/widget/TitleBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c002e
    .end annotation
.end field

.field mWebView:Landroid/webkit/WebView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0075
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/open/likehelper/base/BaseActivity;-><init>()V

    .line 284
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/open/likehelper/ui/edit/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/open/likehelper/ui/edit/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->a:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/open/likehelper/ui/edit/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->b:Ljava/lang/String;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->mTitleBar:Lcom/open/likehelper/widget/TitleBar;

    iget-object v1, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/open/likehelper/widget/TitleBar;->setTitleText(Ljava/lang/String;)Lcom/open/likehelper/widget/TitleBar;

    move-result-object v0

    const/4 v1, 0x0

    .line 73
    invoke-virtual {v0, v1}, Lcom/open/likehelper/widget/TitleBar;->setLeftImageVisibility(I)Lcom/open/likehelper/widget/TitleBar;

    move-result-object v0

    iget-object v1, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->mTitleBar:Lcom/open/likehelper/widget/TitleBar;

    .line 74
    invoke-virtual {v1}, Lcom/open/likehelper/widget/TitleBar;->getDefaultListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/open/likehelper/widget/TitleBar;->setLeftImageClick(Landroid/view/View$OnClickListener;)Lcom/open/likehelper/widget/TitleBar;

    .line 76
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/open/likehelper/ui/edit/WebViewActivity;->a(Landroid/webkit/WebSettings;)V

    .line 77
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/open/likehelper/ui/edit/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    check-cast p0, Landroid/app/Activity;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 55
    return-void
.end method

.method private a(Landroid/webkit/WebSettings;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 112
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 114
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 116
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 118
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 122
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 127
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    .line 129
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 131
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 136
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 138
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 139
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 143
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 144
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setHorizontalScrollbarOverlay(Z)V

    .line 145
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 147
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 149
    new-instance v0, Lcom/open/likehelper/ui/edit/WebViewActivity$1;

    invoke-direct {v0, p0}, Lcom/open/likehelper/ui/edit/WebViewActivity$1;-><init>(Lcom/open/likehelper/ui/edit/WebViewActivity;)V

    .line 225
    new-instance v1, Lcom/open/likehelper/ui/edit/WebViewActivity$2;

    invoke-direct {v1, p0}, Lcom/open/likehelper/ui/edit/WebViewActivity$2;-><init>(Lcom/open/likehelper/ui/edit/WebViewActivity;)V

    .line 264
    iget-object v2, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 265
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 267
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/open/likehelper/ui/edit/WebViewActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 275
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/open/likehelper/ui/edit/WebViewActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/open/likehelper/ui/edit/WebViewActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 278
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 279
    const-string v1, "location"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/open/likehelper/ui/edit/WebViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 281
    invoke-virtual {p0}, Lcom/open/likehelper/ui/edit/WebViewActivity;->finish()V

    .line 282
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/open/likehelper/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f040022

    invoke-virtual {p0, v0}, Lcom/open/likehelper/ui/edit/WebViewActivity;->setContentView(I)V

    .line 61
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 63
    invoke-direct {p0}, Lcom/open/likehelper/ui/edit/WebViewActivity;->a()V

    .line 64
    return-void
.end method

.method public setNoLocation()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0c0065
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/open/likehelper/ui/edit/WebViewActivity;->a(Ljava/lang/String;)V

    .line 48
    return-void
.end method
