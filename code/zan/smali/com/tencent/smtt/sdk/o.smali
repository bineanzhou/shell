.class Lcom/tencent/smtt/sdk/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/WebView$WebViewTransport;

.field final synthetic b:Landroid/os/Message;

.field final synthetic c:Lcom/tencent/smtt/sdk/n;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/n;Lcom/tencent/smtt/sdk/WebView$WebViewTransport;Landroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/o;->c:Lcom/tencent/smtt/sdk/n;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/o;->a:Lcom/tencent/smtt/sdk/WebView$WebViewTransport;

    iput-object p3, p0, Lcom/tencent/smtt/sdk/o;->b:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/o;->a:Lcom/tencent/smtt/sdk/WebView$WebViewTransport;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView$WebViewTransport;->getWebView()Lcom/tencent/smtt/sdk/WebView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/o;->b:Landroid/os/Message;

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$WebViewTransport;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->b()Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$WebViewTransport;->setWebView(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/o;->b:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
