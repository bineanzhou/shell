.class Lcom/umeng/socialize/view/OauthDialog$c;
.super Landroid/webkit/WebViewClient;
.source "OauthDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/view/OauthDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/umeng/socialize/view/OauthDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/umeng/socialize/view/OauthDialog;)V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 160
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/OauthDialog$c;->a:Ljava/lang/ref/WeakReference;

    .line 161
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/socialize/view/OauthDialog;Lcom/umeng/socialize/view/OauthDialog$1;)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/OauthDialog$c;-><init>(Lcom/umeng/socialize/view/OauthDialog;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog$c;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 250
    :goto_0
    if-eqz v0, :cond_0

    .line 251
    const/4 v1, 0x1

    iput v1, v0, Lcom/umeng/socialize/view/OauthDialog;->mFlag:I

    .line 252
    invoke-static {p1}, Lcom/umeng/socialize/utils/SocializeUtils;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/umeng/socialize/view/OauthDialog;->mValues:Landroid/os/Bundle;

    .line 253
    invoke-virtual {v0}, Lcom/umeng/socialize/view/OauthDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->safeCloseDialog(Landroid/app/Dialog;)V

    .line 257
    :cond_0
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/view/OauthDialog;

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog$c;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 262
    :goto_0
    if-eqz v0, :cond_0

    .line 263
    const/4 v1, 0x1

    iput v1, v0, Lcom/umeng/socialize/view/OauthDialog;->mFlag:I

    .line 264
    invoke-static {p1}, Lcom/umeng/socialize/net/utils/SocializeNetUtils;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/umeng/socialize/view/OauthDialog;->mValues:Landroid/os/Bundle;

    .line 269
    invoke-virtual {v0}, Lcom/umeng/socialize/view/OauthDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->safeCloseDialog(Landroid/app/Dialog;)V

    .line 273
    :cond_0
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/view/OauthDialog;

    goto :goto_0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog$c;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 233
    :goto_0
    if-eqz v0, :cond_0

    .line 234
    iget-object v1, v0, Lcom/umeng/socialize/view/OauthDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 235
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 236
    iget v1, v0, Lcom/umeng/socialize/view/OauthDialog;->mFlag:I

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/umeng/socialize/view/OauthDialog;->mWaitUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0, p2}, Lcom/umeng/socialize/view/OauthDialog$c;->a(Ljava/lang/String;)V

    .line 240
    :cond_0
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/view/OauthDialog;

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog$c;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    move-object v1, v0

    .line 210
    :goto_0
    if-eqz v1, :cond_4

    .line 211
    const-string v0, ""

    .line 212
    const-string v2, "?ud_get="

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    invoke-static {v1, p2}, Lcom/umeng/socialize/view/OauthDialog;->access$200(Lcom/umeng/socialize/view/OauthDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_0
    const-string v2, "access_key"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "access_secret"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    iget-object v0, v1, Lcom/umeng/socialize/view/OauthDialog;->mWaitUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    invoke-direct {p0, p2}, Lcom/umeng/socialize/view/OauthDialog$c;->a(Ljava/lang/String;)V

    .line 228
    :cond_1
    :goto_1
    return-void

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/view/OauthDialog;

    move-object v1, v0

    goto :goto_0

    .line 222
    :cond_3
    invoke-static {}, Lcom/umeng/socialize/view/OauthDialog;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 223
    invoke-direct {p0, p2}, Lcom/umeng/socialize/view/OauthDialog$c;->b(Ljava/lang/String;)V

    .line 227
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog$c;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 190
    :goto_0
    if-eqz v0, :cond_0

    .line 191
    iget-object v1, v0, Lcom/umeng/socialize/view/OauthDialog;->mProgressbar:Landroid/view/View;

    .line 192
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 193
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 196
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 197
    if-eqz v0, :cond_1

    .line 198
    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->safeCloseDialog(Landroid/app/Dialog;)V

    .line 200
    :cond_1
    return-void

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/view/OauthDialog;

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 204
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 205
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog$c;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 168
    :goto_0
    if-eqz v0, :cond_3

    .line 169
    iget-object v1, v0, Lcom/umeng/socialize/view/OauthDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 171
    invoke-static {v1}, Lcom/umeng/socialize/utils/DeviceConfig;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$NET;->NET_INAVALIBLE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 173
    const/4 v0, 0x1

    .line 183
    :goto_1
    return v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/view/OauthDialog;

    goto :goto_0

    .line 175
    :cond_1
    const-string v1, "?ud_get="

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    invoke-static {v0, p2}, Lcom/umeng/socialize/view/OauthDialog;->access$200(Lcom/umeng/socialize/view/OauthDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 179
    :cond_2
    iget-object v0, v0, Lcom/umeng/socialize/view/OauthDialog;->mWaitUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    invoke-direct {p0, p2}, Lcom/umeng/socialize/view/OauthDialog$c;->a(Ljava/lang/String;)V

    .line 183
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1
.end method
