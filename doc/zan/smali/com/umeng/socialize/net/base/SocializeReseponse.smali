.class public Lcom/umeng/socialize/net/base/SocializeReseponse;
.super Lcom/umeng/socialize/net/utils/UResponse;
.source "SocializeReseponse.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "SocializeReseponse"


# instance fields
.field private mHttpCode:I

.field protected mJsonData:Lorg/json/JSONObject;

.field public mMsg:Ljava/lang/String;

.field public mStCode:I


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p2}, Lcom/umeng/socialize/net/base/SocializeReseponse;-><init>(Lorg/json/JSONObject;)V

    .line 51
    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/umeng/socialize/net/base/SocializeReseponse;->mHttpCode:I

    .line 52
    return-void

    .line 51
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/umeng/socialize/net/utils/UResponse;-><init>(Lorg/json/JSONObject;)V

    .line 35
    const/16 v0, -0x67

    iput v0, p0, Lcom/umeng/socialize/net/base/SocializeReseponse;->mStCode:I

    .line 45
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/net/base/SocializeReseponse;->parseStatus(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/net/base/SocializeReseponse;->mJsonData:Lorg/json/JSONObject;

    .line 46
    invoke-virtual {p0}, Lcom/umeng/socialize/net/base/SocializeReseponse;->parseJsonObject()V

    .line 47
    return-void
.end method

.method private parseErrorMsg(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 112
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 115
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 118
    const-string v3, "msg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 124
    const-string v3, "platform_error"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    .line 130
    :cond_1
    return-void
.end method


# virtual methods
.method public getJsonData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/umeng/socialize/net/base/SocializeReseponse;->mJsonData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public isHttpOK()Z
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lcom/umeng/socialize/net/base/SocializeReseponse;->mHttpCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOk()Z
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/umeng/socialize/net/base/SocializeReseponse;->mStCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseJsonObject()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public parseStatus(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 72
    .line 73
    if-nez p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-object v0

    .line 78
    :cond_1
    :try_start_0
    const-string v1, "st"

    const/16 v2, 0x7ce

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/umeng/socialize/net/base/SocializeReseponse;->mStCode:I

    .line 81
    iget v1, p0, Lcom/umeng/socialize/net/base/SocializeReseponse;->mStCode:I

    if-eqz v1, :cond_0

    .line 84
    const-string v1, "msg"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/net/base/SocializeReseponse;->mMsg:Ljava/lang/String;

    .line 86
    const-string v1, "data"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    iget v1, p0, Lcom/umeng/socialize/net/base/SocializeReseponse;->mStCode:I

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_2

    .line 92
    invoke-direct {p0, v2}, Lcom/umeng/socialize/net/base/SocializeReseponse;->parseErrorMsg(Ljava/lang/String;)V

    .line 94
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    sget-object v2, Lcom/umeng/socialize/utils/UmengText$NET;->PARSEERROR:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
