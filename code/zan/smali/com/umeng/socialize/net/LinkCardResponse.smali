.class public Lcom/umeng/socialize/net/LinkCardResponse;
.super Lcom/umeng/socialize/net/base/SocializeReseponse;
.source "LinkCardResponse.java"


# instance fields
.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/net/base/SocializeReseponse;-><init>(Ljava/lang/Integer;Lorg/json/JSONObject;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/umeng/socialize/net/base/SocializeReseponse;-><init>(Lorg/json/JSONObject;)V

    .line 19
    return-void
.end method


# virtual methods
.method public parseJsonObject()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/umeng/socialize/net/LinkCardResponse;->mJsonData:Lorg/json/JSONObject;

    .line 29
    if-nez v0, :cond_0

    .line 30
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$NET;->JSONNULL:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 35
    :goto_0
    return-void

    .line 32
    :cond_0
    const-string v1, "linkcard_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/net/LinkCardResponse;->url:Ljava/lang/String;

    goto :goto_0
.end method
