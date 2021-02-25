.class Lcom/umeng/socialize/handler/UMWXHandler$3$1;
.super Ljava/lang/Object;
.source "UMWXHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/handler/UMWXHandler$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/umeng/socialize/handler/UMWXHandler$3;

.field final synthetic val$finalMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/handler/UMWXHandler$3;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/umeng/socialize/handler/UMWXHandler$3$1;->this$1:Lcom/umeng/socialize/handler/UMWXHandler$3;

    iput-object p2, p0, Lcom/umeng/socialize/handler/UMWXHandler$3$1;->val$finalMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 275
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler$3$1;->val$finalMap:Ljava/util/Map;

    const-string v1, "errcode"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler$3$1;->this$1:Lcom/umeng/socialize/handler/UMWXHandler$3;

    iget-object v0, v0, Lcom/umeng/socialize/handler/UMWXHandler$3;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    iget-object v1, p0, Lcom/umeng/socialize/handler/UMWXHandler$3$1;->this$1:Lcom/umeng/socialize/handler/UMWXHandler$3;

    iget-object v1, v1, Lcom/umeng/socialize/handler/UMWXHandler$3;->val$listener:Lcom/umeng/socialize/UMAuthListener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/handler/UMWXHandler;->getAuthListener(Lcom/umeng/socialize/UMAuthListener;)Lcom/umeng/socialize/UMAuthListener;

    move-result-object v1

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v3, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/umeng/socialize/bean/UmengErrorCode;->AuthorizeFailed:Lcom/umeng/socialize/bean/UmengErrorCode;

    invoke-virtual {v4}, Lcom/umeng/socialize/bean/UmengErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler$3$1;->val$finalMap:Ljava/util/Map;

    const-string v5, "errmsg"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v6, v3}, Lcom/umeng/socialize/UMAuthListener;->onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/lang/Throwable;)V

    .line 281
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler$3$1;->val$finalMap:Ljava/util/Map;

    const-string v1, "aid"

    iget-object v2, p0, Lcom/umeng/socialize/handler/UMWXHandler$3$1;->this$1:Lcom/umeng/socialize/handler/UMWXHandler$3;

    iget-object v2, v2, Lcom/umeng/socialize/handler/UMWXHandler$3;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    invoke-static {v2}, Lcom/umeng/socialize/handler/UMWXHandler;->access$500(Lcom/umeng/socialize/handler/UMWXHandler;)Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;

    move-result-object v2

    iget-object v2, v2, Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;->appId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler$3$1;->val$finalMap:Ljava/util/Map;

    const-string v1, "as"

    iget-object v2, p0, Lcom/umeng/socialize/handler/UMWXHandler$3$1;->this$1:Lcom/umeng/socialize/handler/UMWXHandler$3;

    iget-object v2, v2, Lcom/umeng/socialize/handler/UMWXHandler$3;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    invoke-static {v2}, Lcom/umeng/socialize/handler/UMWXHandler;->access$500(Lcom/umeng/socialize/handler/UMWXHandler;)Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;

    move-result-object v2

    iget-object v2, v2, Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;->appkey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler$3$1;->val$finalMap:Ljava/util/Map;

    const-string v1, "uid"

    iget-object v2, p0, Lcom/umeng/socialize/handler/UMWXHandler$3$1;->val$finalMap:Ljava/util/Map;

    const-string v3, "openid"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler$3$1;->val$finalMap:Ljava/util/Map;

    const-string v1, "unionid"

    iget-object v2, p0, Lcom/umeng/socialize/handler/UMWXHandler$3$1;->val$finalMap:Ljava/util/Map;

    const-string v3, "unionid"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler$3$1;->this$1:Lcom/umeng/socialize/handler/UMWXHandler$3;

    iget-object v0, v0, Lcom/umeng/socialize/handler/UMWXHandler$3;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    iget-object v1, p0, Lcom/umeng/socialize/handler/UMWXHandler$3$1;->this$1:Lcom/umeng/socialize/handler/UMWXHandler$3;

    iget-object v1, v1, Lcom/umeng/socialize/handler/UMWXHandler$3;->val$listener:Lcom/umeng/socialize/UMAuthListener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/handler/UMWXHandler;->getAuthListener(Lcom/umeng/socialize/UMAuthListener;)Lcom/umeng/socialize/UMAuthListener;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iget-object v2, p0, Lcom/umeng/socialize/handler/UMWXHandler$3$1;->val$finalMap:Ljava/util/Map;

    invoke-interface {v0, v1, v6, v2}, Lcom/umeng/socialize/UMAuthListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/util/Map;)V

    goto :goto_0
.end method
