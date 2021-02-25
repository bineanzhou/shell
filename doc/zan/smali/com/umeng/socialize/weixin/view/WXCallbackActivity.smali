.class public abstract Lcom/umeng/socialize/weixin/view/WXCallbackActivity;
.super Landroid/app/Activity;
.source "WXCallbackActivity.java"

# interfaces
.implements Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mWxHandler:Lcom/umeng/socialize/handler/UMWXHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const-class v0, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->mWxHandler:Lcom/umeng/socialize/handler/UMWXHandler;

    return-void
.end method


# virtual methods
.method protected handleIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->mWxHandler:Lcom/umeng/socialize/handler/UMWXHandler;

    invoke-virtual {v0}, Lcom/umeng/socialize/handler/UMWXHandler;->getWXApi()Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    .line 40
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const-string v0, "WXCallbackActivity onCreate"

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->I(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/UMShareAPI;->get(Landroid/content/Context;)Lcom/umeng/socialize/UMShareAPI;

    move-result-object v0

    .line 32
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/UMShareAPI;->getHandler(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Lcom/umeng/socialize/handler/UMSSOHandler;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/handler/UMWXHandler;

    iput-object v0, p0, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->mWxHandler:Lcom/umeng/socialize/handler/UMWXHandler;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WXCallbackActivity mWxHandler\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->mWxHandler:Lcom/umeng/socialize/handler/UMWXHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->I(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->mWxHandler:Lcom/umeng/socialize/handler/UMWXHandler;

    invoke-virtual {p0}, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v2}, Lcom/umeng/socialize/PlatformConfig;->getPlatform(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Lcom/umeng/socialize/PlatformConfig$Platform;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/handler/UMWXHandler;->onCreate(Landroid/content/Context;Lcom/umeng/socialize/PlatformConfig$Platform;)V

    .line 35
    invoke-virtual {p0}, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->handleIntent(Landroid/content/Intent;)V

    .line 36
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 47
    const-string v0, "WXCallbackActivity onNewIntent"

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->I(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->setIntent(Landroid/content/Intent;)V

    .line 49
    invoke-virtual {p0}, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/UMShareAPI;->get(Landroid/content/Context;)Lcom/umeng/socialize/UMShareAPI;

    move-result-object v0

    .line 50
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/UMShareAPI;->getHandler(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Lcom/umeng/socialize/handler/UMSSOHandler;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/handler/UMWXHandler;

    iput-object v0, p0, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->mWxHandler:Lcom/umeng/socialize/handler/UMWXHandler;

    .line 51
    iget-object v0, p0, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->mWxHandler:Lcom/umeng/socialize/handler/UMWXHandler;

    invoke-virtual {p0}, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v2}, Lcom/umeng/socialize/PlatformConfig;->getPlatform(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Lcom/umeng/socialize/PlatformConfig$Platform;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/handler/UMWXHandler;->onCreate(Landroid/content/Context;Lcom/umeng/socialize/PlatformConfig$Platform;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->handleIntent(Landroid/content/Intent;)V

    .line 53
    return-void
.end method

.method public onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->mWxHandler:Lcom/umeng/socialize/handler/UMWXHandler;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->mWxHandler:Lcom/umeng/socialize/handler/UMWXHandler;

    invoke-virtual {v0}, Lcom/umeng/socialize/handler/UMWXHandler;->getWXEventHandler()Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;->onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->finish()V

    .line 80
    return-void
.end method

.method public onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .locals 1

    .prologue
    .line 60
    const-string v0, "WXCallbackActivity \u5206\u53d1\u56de\u8c03"

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->I(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->mWxHandler:Lcom/umeng/socialize/handler/UMWXHandler;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->mWxHandler:Lcom/umeng/socialize/handler/UMWXHandler;

    invoke-virtual {v0}, Lcom/umeng/socialize/handler/UMWXHandler;->getWXEventHandler()Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;->onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->finish()V

    .line 69
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
