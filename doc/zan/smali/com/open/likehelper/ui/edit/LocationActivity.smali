.class public Lcom/open/likehelper/ui/edit/LocationActivity;
.super Lcom/open/likehelper/base/BaseActivity;
.source "LocationActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field mTitleBar:Lcom/open/likehelper/widget/TitleBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c002e
    .end annotation
.end field

.field mWebView:Lcom/tencent/smtt/sdk/WebView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0066
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/open/likehelper/base/BaseActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/open/likehelper/ui/edit/LocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/open/likehelper/ui/edit/LocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/open/likehelper/ui/edit/LocationActivity;->a:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/open/likehelper/ui/edit/LocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/open/likehelper/ui/edit/LocationActivity;->b:Ljava/lang/String;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/LocationActivity;->mTitleBar:Lcom/open/likehelper/widget/TitleBar;

    iget-object v1, p0, Lcom/open/likehelper/ui/edit/LocationActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/open/likehelper/widget/TitleBar;->setTitleText(Ljava/lang/String;)Lcom/open/likehelper/widget/TitleBar;

    move-result-object v0

    const/4 v1, 0x0

    .line 69
    invoke-virtual {v0, v1}, Lcom/open/likehelper/widget/TitleBar;->setLeftImageVisibility(I)Lcom/open/likehelper/widget/TitleBar;

    move-result-object v0

    iget-object v1, p0, Lcom/open/likehelper/ui/edit/LocationActivity;->mTitleBar:Lcom/open/likehelper/widget/TitleBar;

    .line 70
    invoke-virtual {v1}, Lcom/open/likehelper/widget/TitleBar;->getDefaultListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/open/likehelper/widget/TitleBar;->setLeftImageClick(Landroid/view/View$OnClickListener;)Lcom/open/likehelper/widget/TitleBar;

    .line 72
    invoke-direct {p0}, Lcom/open/likehelper/ui/edit/LocationActivity;->b()V

    .line 73
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/open/likehelper/ui/edit/LocationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    check-cast p0, Landroid/app/Activity;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/open/likehelper/ui/edit/LocationActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/open/likehelper/ui/edit/LocationActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 115
    const-string v1, "location"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/open/likehelper/ui/edit/LocationActivity;->setResult(ILandroid/content/Intent;)V

    .line 117
    invoke-virtual {p0}, Lcom/open/likehelper/ui/edit/LocationActivity;->finish()V

    .line 118
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/LocationActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/LocationActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptEnabled(Z)V

    .line 81
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/LocationActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    iget-object v1, p0, Lcom/open/likehelper/ui/edit/LocationActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/LocationActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v1, Lcom/open/likehelper/ui/edit/LocationActivity$1;

    invoke-direct {v1, p0}, Lcom/open/likehelper/ui/edit/LocationActivity$1;-><init>(Lcom/open/likehelper/ui/edit/LocationActivity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V

    .line 104
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/LocationActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v1, Lcom/open/likehelper/ui/edit/LocationActivity$2;

    invoke-direct {v1, p0}, Lcom/open/likehelper/ui/edit/LocationActivity$2;-><init>(Lcom/open/likehelper/ui/edit/LocationActivity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setWebChromeClient(Lcom/tencent/smtt/sdk/WebChromeClient;)V

    .line 111
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
    .line 55
    invoke-super {p0, p1}, Lcom/open/likehelper/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lcom/open/likehelper/ui/edit/LocationActivity;->setContentView(I)V

    .line 57
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 59
    invoke-direct {p0}, Lcom/open/likehelper/ui/edit/LocationActivity;->a()V

    .line 60
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
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/open/likehelper/ui/edit/LocationActivity;->a(Ljava/lang/String;)V

    .line 44
    return-void
.end method
