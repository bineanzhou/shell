.class Lcom/tencent/smtt/sdk/be;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/DownloadListener;

.field final synthetic b:Lcom/tencent/smtt/sdk/WebView;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/DownloadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/be;->b:Lcom/tencent/smtt/sdk/WebView;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/be;->a:Lcom/tencent/smtt/sdk/DownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/be;->a:Lcom/tencent/smtt/sdk/DownloadListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/be;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/sdk/WebView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v1, v1}, Lcom/tencent/smtt/sdk/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/tencent/smtt/sdk/WebView;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/tencent/smtt/sdk/be;->a:Lcom/tencent/smtt/sdk/DownloadListener;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/tencent/smtt/sdk/DownloadListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method
