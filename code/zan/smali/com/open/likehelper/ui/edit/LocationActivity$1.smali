.class Lcom/open/likehelper/ui/edit/LocationActivity$1;
.super Lcom/tencent/smtt/sdk/WebViewClient;
.source "LocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/ui/edit/LocationActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/open/likehelper/ui/edit/LocationActivity;


# direct methods
.method constructor <init>(Lcom/open/likehelper/ui/edit/LocationActivity;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/open/likehelper/ui/edit/LocationActivity$1;->b:Lcom/open/likehelper/ui/edit/LocationActivity;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 85
    const-string v0, "http://likehelper.open.com/location/callback.html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const-string v0, "url=%s"

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-static {v0, v2}, Ltimber/log/Timber;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 89
    :try_start_1
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 95
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/open/likehelper/ui/edit/LocationActivity$1;->b:Lcom/open/likehelper/ui/edit/LocationActivity;

    invoke-static {v2, v0}, Lcom/open/likehelper/ui/edit/LocationActivity;->a(Lcom/open/likehelper/ui/edit/LocationActivity;Ljava/lang/String;)V

    .line 96
    const-string v2, "url=%s"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ltimber/log/Timber;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 100
    :goto_1
    return v0

    .line 92
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, p2

    .line 93
    :goto_2
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p1, p2}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    .line 100
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 92
    :catch_1
    move-exception v2

    goto :goto_2
.end method
