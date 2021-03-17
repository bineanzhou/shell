.class public Lcom/umeng/socialize/handler/WeixinPreferences;
.super Ljava/lang/Object;
.source "WeixinPreferences.java"


# static fields
.field private static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field private static final KEY_EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field private static final KEY_OPENID:Ljava/lang/String; = "openid"

.field private static final KEY_REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"

.field private static final KEY_REFRESH_TOKEN_TTL:Ljava/lang/String; = "rt_expires_in"

.field private static final KEY_UID:Ljava/lang/String; = "unionid"


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mAccessTokenTTL:J

.field private mOpenid:Ljava/lang/String;

.field private mRefreshToken:Ljava/lang/String;

.field private mRefreshTokenTTL:J

.field private mUID:Ljava/lang/String;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v2, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "full"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 32
    iget-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "unionid"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mUID:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "openid"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mOpenid:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "access_token"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mAccessToken:Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "expires_in"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mAccessTokenTTL:J

    .line 36
    iget-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "refresh_token"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mRefreshToken:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "rt_expires_in"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mRefreshTokenTTL:J

    .line 38
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "unionid"

    iget-object v2, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mUID:Ljava/lang/String;

    .line 116
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "openid"

    iget-object v2, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mOpenid:Ljava/lang/String;

    .line 117
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "access_token"

    iget-object v2, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mAccessToken:Ljava/lang/String;

    .line 118
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "refresh_token"

    iget-object v2, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mRefreshToken:Ljava/lang/String;

    .line 119
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rt_expires_in"

    iget-wide v2, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mRefreshTokenTTL:J

    .line 120
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "expires_in"

    iget-wide v2, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mAccessTokenTTL:J

    .line 121
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 123
    return-void
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mAccessToken:Ljava/lang/String;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mRefreshToken:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mRefreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mUID:Ljava/lang/String;

    return-object v0
.end method

.method public getmAccessTokenTTL()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mAccessTokenTTL:J

    return-wide v0
.end method

.method public getmOpenid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mOpenid:Ljava/lang/String;

    return-object v0
.end method

.method public getmap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mAccessToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "unionid"

    iget-object v2, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mUID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "openid"

    iget-object v2, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mOpenid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "refresh_token"

    iget-object v2, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mRefreshToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "expires_in"

    iget-wide v2, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mAccessTokenTTL:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-object v0
.end method

.method public isAccessTokenAvailable()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    iget-object v2, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mAccessToken:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 85
    iget-wide v4, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mAccessTokenTTL:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gtz v2, :cond_0

    move v2, v0

    .line 86
    :goto_0
    if-nez v3, :cond_1

    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 85
    goto :goto_0

    :cond_1
    move v0, v1

    .line 86
    goto :goto_1
.end method

.method public isAuth()Z
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/umeng/socialize/handler/WeixinPreferences;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 105
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAuthValid()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 98
    iget-object v2, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mRefreshToken:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 99
    iget-wide v4, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mRefreshTokenTTL:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gtz v2, :cond_0

    move v2, v0

    .line 100
    :goto_0
    if-nez v3, :cond_1

    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 99
    goto :goto_0

    :cond_1
    move v0, v1

    .line 100
    goto :goto_1
.end method

.method public setBundle(Landroid/os/Bundle;)Lcom/umeng/socialize/handler/WeixinPreferences;
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 41
    const-string v0, "unionid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "unionid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mUID:Ljava/lang/String;

    .line 44
    :cond_0
    const-string v0, "openid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    const-string v0, "openid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mOpenid:Ljava/lang/String;

    .line 48
    :cond_1
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mAccessToken:Ljava/lang/String;

    .line 49
    const-string v0, "refresh_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mRefreshToken:Ljava/lang/String;

    .line 50
    const-string v0, "expires_in"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 52
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    mul-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mAccessTokenTTL:J

    .line 54
    :cond_2
    const-string v0, "refresh_token_expires"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 55
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    .line 56
    mul-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mRefreshTokenTTL:J

    .line 58
    :cond_3
    invoke-virtual {p0}, Lcom/umeng/socialize/handler/WeixinPreferences;->commit()V

    .line 59
    return-object p0
.end method
