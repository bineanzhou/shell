.class Lcom/tencent/smtt/sdk/n;
.super Lcom/tencent/smtt/export/external/proxy/X5ProxyWebChromeClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/n$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/smtt/sdk/WebView;

.field private b:Lcom/tencent/smtt/sdk/WebChromeClient;


# direct methods
.method public constructor <init>(Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient;Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/WebChromeClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/smtt/export/external/proxy/X5ProxyWebChromeClient;-><init>(Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient;)V

    iput-object p2, p0, Lcom/tencent/smtt/sdk/n;->a:Lcom/tencent/smtt/sdk/WebView;

    iput-object p3, p0, Lcom/tencent/smtt/sdk/n;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onCloseWindow(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/n;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebChromeClient;->onCloseWindow(Lcom/tencent/smtt/sdk/WebView;)V

    return-void
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onConsoleMessage(Lcom/tencent/smtt/export/external/interfaces/ConsoleMessage;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebChromeClient;->onConsoleMessage(Lcom/tencent/smtt/export/external/interfaces/ConsoleMessage;)Z

    move-result v0

    return v0
.end method

.method public onCreateWindow(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;ZZLandroid/os/Message;)Z
    .locals 3

    new-instance v0, Lcom/tencent/smtt/sdk/WebView$WebViewTransport;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/n;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/WebView$WebViewTransport;-><init>(Lcom/tencent/smtt/sdk/WebView;)V

    invoke-virtual {p4}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/tencent/smtt/sdk/o;

    invoke-direct {v2, p0, v0, p4}, Lcom/tencent/smtt/sdk/o;-><init>(Lcom/tencent/smtt/sdk/n;Lcom/tencent/smtt/sdk/WebView$WebViewTransport;Landroid/os/Message;)V

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/n;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v2, p2, p3, v1}, Lcom/tencent/smtt/sdk/WebChromeClient;->onCreateWindow(Lcom/tencent/smtt/sdk/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLcom/tencent/smtt/export/external/interfaces/QuotaUpdater;)V
    .locals 13

    iget-object v3, p0, Lcom/tencent/smtt/sdk/n;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    new-instance v12, Lcom/tencent/smtt/sdk/n$a;

    move-object/from16 v0, p9

    invoke-direct {v12, p0, v0}, Lcom/tencent/smtt/sdk/n$a;-><init>(Lcom/tencent/smtt/sdk/n;Lcom/tencent/smtt/export/external/interfaces/QuotaUpdater;)V

    move-object v4, p1

    move-object v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    invoke-virtual/range {v3 .. v12}, Lcom/tencent/smtt/sdk/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLcom/tencent/smtt/sdk/WebStorage$QuotaUpdater;)V

    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/GeolocationPermissionsCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/GeolocationPermissionsCallback;)V

    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebChromeClient;->onHideCustomView()V

    return-void
.end method

.method public onJsAlert(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/n;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebChromeClient;->onJsAlert(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsBeforeUnload(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/n;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebChromeClient;->onJsBeforeUnload(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsConfirm(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/n;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebChromeClient;->onJsConfirm(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsPrompt(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;)Z
    .locals 6

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/n;->a:Lcom/tencent/smtt/sdk/WebView;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/sdk/WebChromeClient;->onJsPrompt(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;)Z

    move-result v0

    return v0
.end method

.method public onJsTimeout()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebChromeClient;->onJsTimeout()Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/n;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onProgressChanged(Lcom/tencent/smtt/sdk/WebView;I)V

    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLcom/tencent/smtt/export/external/interfaces/QuotaUpdater;)V
    .locals 7

    iget-object v1, p0, Lcom/tencent/smtt/sdk/n;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    new-instance v6, Lcom/tencent/smtt/sdk/n$a;

    invoke-direct {v6, p0, p5}, Lcom/tencent/smtt/sdk/n$a;-><init>(Lcom/tencent/smtt/sdk/n;Lcom/tencent/smtt/export/external/interfaces/QuotaUpdater;)V

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/smtt/sdk/WebChromeClient;->onReachedMaxAppCacheSize(JJLcom/tencent/smtt/sdk/WebStorage$QuotaUpdater;)V

    return-void
.end method

.method public onReceivedIcon(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/n;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onReceivedIcon(Lcom/tencent/smtt/sdk/WebView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedTitle(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/n;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onReceivedTitle(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedTouchIconUrl(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/n;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v1, p2, p3}, Lcom/tencent/smtt/sdk/WebChromeClient;->onReceivedTouchIconUrl(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public onRequestFocus(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/n;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebChromeClient;->onRequestFocus(Lcom/tencent/smtt/sdk/WebView;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebChromeClient;->onShowCustomView(Landroid/view/View;ILcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onShowCustomView(Landroid/view/View;Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowFileChooser(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Landroid/webkit/ValueCallback;Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$FileChooserParams;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    new-instance v0, Lcom/tencent/smtt/sdk/q;

    invoke-direct {v0, p0, p2}, Lcom/tencent/smtt/sdk/q;-><init>(Lcom/tencent/smtt/sdk/n;Landroid/webkit/ValueCallback;)V

    new-instance v1, Lcom/tencent/smtt/sdk/r;

    invoke-direct {v1, p0, p3}, Lcom/tencent/smtt/sdk/r;-><init>(Lcom/tencent/smtt/sdk/n;Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$FileChooserParams;)V

    iget-object v2, p0, Lcom/tencent/smtt/sdk/n;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v2, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    iget-object v2, p0, Lcom/tencent/smtt/sdk/n;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/n;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v2, v3, v0, v1}, Lcom/tencent/smtt/sdk/WebChromeClient;->onShowFileChooser(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/ValueCallback;Lcom/tencent/smtt/sdk/WebChromeClient$FileChooserParams;)Z

    move-result v0

    return v0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/sdk/n;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    new-instance v1, Lcom/tencent/smtt/sdk/p;

    invoke-direct {v1, p0, p1}, Lcom/tencent/smtt/sdk/p;-><init>(Lcom/tencent/smtt/sdk/n;Landroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/tencent/smtt/sdk/WebChromeClient;->openFileChooser(Lcom/tencent/smtt/sdk/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
