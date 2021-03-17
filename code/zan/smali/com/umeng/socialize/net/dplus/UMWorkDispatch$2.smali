.class final Lcom/umeng/socialize/net/dplus/UMWorkDispatch$2;
.super Ljava/lang/Object;
.source "UMWorkDispatch.java"

# interfaces
.implements Lcom/umeng/socialize/net/dplus/cache/DplusCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/net/dplus/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/umeng/socialize/net/dplus/UMWorkDispatch$2;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/umeng/socialize/net/dplus/UMWorkDispatch$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 41
    new-instance v1, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;

    invoke-direct {v1}, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;-><init>()V

    .line 42
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/UMWorkDispatch$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;->buildSLBaseHeader(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 43
    iget-object v2, p0, Lcom/umeng/socialize/net/dplus/UMWorkDispatch$2;->val$context:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/umeng/socialize/net/dplus/UMWorkDispatch;->access$000(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 45
    invoke-static {}, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->getInstance()Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;

    move-result-object v0

    iget-object v3, p0, Lcom/umeng/socialize/net/dplus/UMWorkDispatch$2;->val$context:Landroid/content/Context;

    iget v4, p0, Lcom/umeng/socialize/net/dplus/UMWorkDispatch$2;->val$type:I

    invoke-virtual {v0, v3, v4}, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->readFileAsnc(Landroid/content/Context;I)Lorg/json/JSONObject;

    move-result-object v3

    .line 46
    const/4 v0, 0x0

    .line 47
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 48
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/UMWorkDispatch$2;->val$context:Landroid/content/Context;

    sget-object v4, Lcom/umeng/socialize/net/dplus/UMWorkDispatch;->URL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;->buildSLEnvelope(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 52
    :cond_0
    if-eqz v0, :cond_3

    .line 53
    const-string v1, "exception"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    const-string v1, "exception"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    .line 55
    invoke-static {}, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->getInstance()Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/net/dplus/UMWorkDispatch$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->deleteFileAsnc(Landroid/content/Context;)V

    .line 70
    :cond_1
    :goto_0
    return-void

    .line 58
    :cond_2
    invoke-static {}, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->getInstance()Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/net/dplus/UMWorkDispatch$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->deleteFileAsnc(Landroid/content/Context;)V

    goto :goto_0

    .line 61
    :cond_3
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$NET;->BODYNULL:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    goto :goto_0
.end method
