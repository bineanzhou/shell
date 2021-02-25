.class Lcom/umeng/socialize/handler/UMWXHandler$8;
.super Ljava/lang/Object;
.source "UMWXHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/handler/UMWXHandler;->fetchUserInfo(Lcom/umeng/socialize/UMAuthListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/handler/UMWXHandler;

.field final synthetic val$listener:Lcom/umeng/socialize/UMAuthListener;

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/handler/UMWXHandler;Lcom/umeng/socialize/UMAuthListener;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/umeng/socialize/handler/UMWXHandler$8;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    iput-object p2, p0, Lcom/umeng/socialize/handler/UMWXHandler$8;->val$listener:Lcom/umeng/socialize/UMAuthListener;

    iput-object p3, p0, Lcom/umeng/socialize/handler/UMWXHandler$8;->val$map:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 388
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler$8;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    iget-object v1, p0, Lcom/umeng/socialize/handler/UMWXHandler$8;->val$listener:Lcom/umeng/socialize/UMAuthListener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/handler/UMWXHandler;->getAuthListener(Lcom/umeng/socialize/UMAuthListener;)Lcom/umeng/socialize/UMAuthListener;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/umeng/socialize/handler/UMWXHandler$8;->val$map:Ljava/util/Map;

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/socialize/UMAuthListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/util/Map;)V

    .line 389
    return-void
.end method
