.class Lcom/open/likehelper/ui/edit/WebViewActivity$1;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/ui/edit/WebViewActivity;->a(Landroid/webkit/WebSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/open/likehelper/ui/edit/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/open/likehelper/ui/edit/WebViewActivity;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/open/likehelper/ui/edit/WebViewActivity$1;->a:Lcom/open/likehelper/ui/edit/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 202
    const-string v0, ".apk"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tel:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mailto:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 204
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 205
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity$1;->a:Lcom/open/likehelper/ui/edit/WebViewActivity;

    invoke-virtual {v0, v1}, Lcom/open/likehelper/ui/edit/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 221
    :goto_0
    return-void

    .line 206
    :cond_1
    const-string v0, "http://likehelper.open.com/location/callback.html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    const-string v0, "url=%s"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Ltimber/log/Timber;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 210
    :try_start_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 216
    :cond_2
    :goto_1
    const-string v1, "url=%s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ltimber/log/Timber;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    iget-object v1, p0, Lcom/open/likehelper/ui/edit/WebViewActivity$1;->a:Lcom/open/likehelper/ui/edit/WebViewActivity;

    invoke-static {v1, v0}, Lcom/open/likehelper/ui/edit/WebViewActivity;->a(Lcom/open/likehelper/ui/edit/WebViewActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p2

    .line 214
    :goto_2
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 219
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :catch_1
    move-exception v1

    goto :goto_2
.end method
