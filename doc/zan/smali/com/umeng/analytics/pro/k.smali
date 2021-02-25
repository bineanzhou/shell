.class public Lcom/umeng/analytics/pro/k;
.super Ljava/lang/Object;
.source "DataSpliter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONArray;)J
    .locals 2

    .prologue
    .line 268
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static a(Lorg/json/JSONObject;)J
    .locals 2

    .prologue
    .line 258
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private static a(Landroid/content/Context;J)Lorg/json/JSONObject;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 194
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 196
    :try_start_0
    const-string v0, "splitAnalyticsData========"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 200
    invoke-static {p0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/umeng/analytics/pro/i;->b(Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 201
    if-eqz v1, :cond_4

    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 203
    invoke-static {v1}, Lcom/umeng/analytics/pro/k;->a(Lorg/json/JSONObject;)J

    move-result-wide v4

    cmp-long v0, v4, p1

    if-lez v0, :cond_4

    .line 205
    const/4 v0, 0x0

    .line 207
    const-string v4, "sessions"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 209
    const-string v3, "sessions"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 211
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 212
    if-eqz v3, :cond_0

    .line 213
    const-string v0, "id"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    const-string v4, "autopages"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 218
    const-string v4, "pages"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 220
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 221
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 222
    const-string v3, "sessions"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    :cond_0
    :goto_0
    const-string v3, "ekv"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 229
    const-string v3, "ekv"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 232
    :cond_1
    const-string v3, "gkv"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 233
    const-string v3, "gkv"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    :cond_2
    const-string v3, "error"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 237
    const-string v3, "error"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 239
    :cond_3
    invoke-static {p0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/umeng/analytics/pro/g;->a(ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    move-object v0, v1

    .line 248
    :goto_1
    return-object v0

    :cond_5
    move v2, v3

    .line 225
    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 246
    :goto_2
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 245
    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;JLorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 35
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 38
    :try_start_0
    invoke-static {p0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->a()V

    .line 39
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 40
    const-wide/16 v0, 0x0

    .line 42
    const-string v4, "header"

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    const-string v2, "header"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 44
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 45
    invoke-static {v2}, Lcom/umeng/analytics/pro/k;->a(Lorg/json/JSONObject;)J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 51
    :cond_0
    :goto_0
    const-string v4, "content"

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 52
    const-string v4, "content"

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 53
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 55
    invoke-static {p0, v0, v1, v4, v3}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;JLorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 56
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 57
    invoke-static {p0, v0, v1, v4, v3}, Lcom/umeng/analytics/pro/k;->b(Landroid/content/Context;JLorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 60
    :cond_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 62
    if-eqz v2, :cond_2

    .line 63
    const-string v0, "header"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_2
    :goto_1
    return-object v3

    .line 47
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;JLorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 85
    :try_start_0
    const-string v0, "dplus"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const-string v0, "dplus"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 90
    invoke-static {v0}, Lcom/umeng/analytics/pro/k;->a(Lorg/json/JSONObject;)J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-lez v1, :cond_0

    .line 92
    invoke-static {p0, p1, p2, v0}, Lcom/umeng/analytics/pro/k;->b(Landroid/content/Context;JLorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 95
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 96
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 97
    const-string v2, "dplus"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v0, "content"

    invoke-virtual {p4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;JLorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 145
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 147
    :try_start_0
    const-string v1, "session"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    const-string v1, "session"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 149
    invoke-static {v1}, Lcom/umeng/analytics/pro/k;->a(Lorg/json/JSONArray;)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_1

    .line 150
    const-string v1, "session"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    invoke-static {p0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/pro/g;->a(I)V

    .line 153
    invoke-static {p0, p1, p2, p3}, Lcom/umeng/analytics/pro/k;->b(Landroid/content/Context;JLorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 183
    :cond_0
    :goto_0
    return-object v0

    .line 155
    :cond_1
    const-string v2, "session"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 181
    :catch_0
    move-exception v1

    goto :goto_0

    .line 158
    :cond_2
    const-string v1, "events"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 159
    const-string v1, "events"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 160
    invoke-static {v1}, Lcom/umeng/analytics/pro/k;->a(Lorg/json/JSONArray;)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_3

    .line 161
    const-string v1, "events"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    invoke-static {p0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/pro/g;->a(I)V

    .line 164
    invoke-static {p0, p1, p2, p3}, Lcom/umeng/analytics/pro/k;->b(Landroid/content/Context;JLorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_3
    const-string v2, "events"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 169
    :cond_4
    const-string v1, "pageview"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const-string v1, "pageview"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 171
    invoke-static {v1}, Lcom/umeng/analytics/pro/k;->a(Lorg/json/JSONArray;)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_5

    .line 172
    const-string v1, "pageview"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    invoke-static {p0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/pro/g;->a(I)V

    .line 175
    invoke-static {p0, p1, p2, p3}, Lcom/umeng/analytics/pro/k;->b(Landroid/content/Context;JLorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_5
    const-string v2, "pageview"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;JLorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 117
    :try_start_0
    const-string v0, "analytics"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    const-string v0, "analytics"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 121
    invoke-static {v0}, Lcom/umeng/analytics/pro/k;->a(Lorg/json/JSONObject;)J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-lez v1, :cond_0

    .line 122
    invoke-static {p0, p1, p2}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 124
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 125
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 126
    const-string v2, "analytics"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v0, "content"

    invoke-virtual {p4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_1
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    goto :goto_0
.end method
