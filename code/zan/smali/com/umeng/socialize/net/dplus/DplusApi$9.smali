.class final Lcom/umeng/socialize/net/dplus/DplusApi$9;
.super Ljava/lang/Object;
.source "DplusApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/net/dplus/DplusApi;->uploadInfoStart(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$platform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/umeng/socialize/net/dplus/DplusApi$9;->val$platform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iput-object p2, p0, Lcom/umeng/socialize/net/dplus/DplusApi$9;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/umeng/socialize/net/dplus/DplusApi$9;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/DplusApi$9;->val$platform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iget-object v1, p0, Lcom/umeng/socialize/net/dplus/DplusApi$9;->val$tag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/socialize/net/dplus/DplusApi;->access$800(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/umeng/socialize/net/dplus/DplusApi$9;->val$mContext:Landroid/content/Context;

    const/16 v2, 0x6005

    invoke-static {v1, v2, v0}, Lcom/umeng/socialize/net/dplus/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
