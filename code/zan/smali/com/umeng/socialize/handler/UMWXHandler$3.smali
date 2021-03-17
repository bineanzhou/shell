.class Lcom/umeng/socialize/handler/UMWXHandler$3;
.super Ljava/lang/Object;
.source "UMWXHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/handler/UMWXHandler;->getAuthWithCode(Ljava/lang/String;Lcom/umeng/socialize/UMAuthListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/handler/UMWXHandler;

.field final synthetic val$authURL:Ljava/lang/StringBuilder;

.field final synthetic val$listener:Lcom/umeng/socialize/UMAuthListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/handler/UMWXHandler;Ljava/lang/StringBuilder;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/umeng/socialize/handler/UMWXHandler$3;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    iput-object p2, p0, Lcom/umeng/socialize/handler/UMWXHandler$3;->val$authURL:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/umeng/socialize/handler/UMWXHandler$3;->val$listener:Lcom/umeng/socialize/UMAuthListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler$3;->val$authURL:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/weixin/net/WXAuthUtils;->request(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    :try_start_0
    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->jsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 265
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 266
    :cond_0
    iget-object v2, p0, Lcom/umeng/socialize/handler/UMWXHandler$3;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    invoke-static {v2}, Lcom/umeng/socialize/handler/UMWXHandler;->access$200(Lcom/umeng/socialize/handler/UMWXHandler;)Ljava/util/Map;

    .line 268
    :cond_1
    iget-object v2, p0, Lcom/umeng/socialize/handler/UMWXHandler$3;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    invoke-static {v2, v0}, Lcom/umeng/socialize/handler/UMWXHandler;->access$300(Lcom/umeng/socialize/handler/UMWXHandler;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 269
    iget-object v2, p0, Lcom/umeng/socialize/handler/UMWXHandler$3;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    invoke-static {v2, v0}, Lcom/umeng/socialize/handler/UMWXHandler;->access$400(Lcom/umeng/socialize/handler/UMWXHandler;Landroid/os/Bundle;)V

    .line 271
    new-instance v0, Lcom/umeng/socialize/handler/UMWXHandler$3$1;

    invoke-direct {v0, p0, v1}, Lcom/umeng/socialize/handler/UMWXHandler$3$1;-><init>(Lcom/umeng/socialize/handler/UMWXHandler$3;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
