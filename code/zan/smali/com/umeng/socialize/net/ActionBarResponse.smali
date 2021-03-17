.class public Lcom/umeng/socialize/net/ActionBarResponse;
.super Lcom/umeng/socialize/net/base/SocializeReseponse;
.source "ActionBarResponse.java"


# instance fields
.field public mCommentCount:I

.field public mEntityKey:Ljava/lang/String;

.field public mFavorite:I

.field public mFirstTime:I

.field public mLikeCount:I

.field public mPv:I

.field public mShareCount:I

.field public mSid:Ljava/lang/String;

.field public mUid:Ljava/lang/String;

.field public mUk:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p2}, Lcom/umeng/socialize/net/base/SocializeReseponse;-><init>(Lorg/json/JSONObject;)V

    .line 47
    return-void
.end method


# virtual methods
.method public parseJsonObject()V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/umeng/socialize/net/ActionBarResponse;->mJsonData:Lorg/json/JSONObject;

    .line 52
    if-nez v0, :cond_1

    .line 53
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$NET;->JSONNULL:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->I(Ljava/lang/String;)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    :try_start_0
    const-string v1, "cm"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    const-string v1, "cm"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/umeng/socialize/net/ActionBarResponse;->mCommentCount:I

    .line 60
    :cond_2
    const-string v1, "ek"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61
    const-string v1, "ek"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/net/ActionBarResponse;->mEntityKey:Ljava/lang/String;

    .line 64
    :cond_3
    const-string v1, "ft"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 65
    const-string v1, "ft"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/umeng/socialize/net/ActionBarResponse;->mFirstTime:I

    .line 68
    :cond_4
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 69
    const-string v1, "fr"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/umeng/socialize/net/ActionBarResponse;->mFavorite:I

    .line 72
    :cond_5
    const-string v1, "lk"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 73
    const-string v1, "lk"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/umeng/socialize/net/ActionBarResponse;->mLikeCount:I

    .line 76
    :cond_6
    const-string v1, "pv"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 77
    const-string v1, "pv"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/umeng/socialize/net/ActionBarResponse;->mPv:I

    .line 80
    :cond_7
    const-string v1, "sid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 81
    const-string v1, "sid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/net/ActionBarResponse;->mSid:Ljava/lang/String;

    .line 84
    :cond_8
    const-string v1, "uid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 85
    const-string v1, "uid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/net/ActionBarResponse;->mUid:Ljava/lang/String;

    .line 88
    :cond_9
    const-string v1, "sn"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const-string v1, "sn"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/net/ActionBarResponse;->mShareCount:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    sget-object v1, Lcom/umeng/socialize/utils/UmengText$NET;->PARSEERROR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
