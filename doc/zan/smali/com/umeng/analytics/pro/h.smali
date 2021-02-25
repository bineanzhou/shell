.class public Lcom/umeng/analytics/pro/h;
.super Ljava/lang/Object;
.source "AutoViewPageTracker.java"


# static fields
.field public static a:Ljava/lang/String;

.field private static e:Lorg/json/JSONArray;

.field private static f:Ljava/lang/Object;


# instance fields
.field b:Z

.field c:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/app/Application;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    .line 42
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/h;->e:Lorg/json/JSONArray;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/h;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/umeng/analytics/pro/h;->d:Ljava/util/Map;

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/umeng/analytics/pro/h;->g:Landroid/app/Application;

    .line 46
    iput-boolean v2, p0, Lcom/umeng/analytics/pro/h;->h:Z

    .line 55
    iput-boolean v2, p0, Lcom/umeng/analytics/pro/h;->b:Z

    .line 140
    new-instance v1, Lcom/umeng/analytics/pro/h$1;

    invoke-direct {v1, p0}, Lcom/umeng/analytics/pro/h$1;-><init>(Lcom/umeng/analytics/pro/h;)V

    iput-object v1, p0, Lcom/umeng/analytics/pro/h;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 58
    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/umeng/analytics/pro/h;->g:Landroid/app/Application;

    if-nez v1, :cond_1

    .line 60
    if-eqz p1, :cond_1

    .line 62
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 63
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/analytics/pro/h;->g:Landroid/app/Application;

    .line 67
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/umeng/analytics/pro/h;->g:Landroid/app/Application;

    if-eqz v1, :cond_1

    .line 68
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/h;->b(Landroid/content/Context;)V

    .line 74
    :cond_1
    monitor-exit p0

    .line 76
    return-void

    .line 64
    :cond_2
    instance-of v1, p1, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 65
    move-object v0, p1

    check-cast v0, Landroid/app/Application;

    move-object v1, v0

    iput-object v1, p0, Lcom/umeng/analytics/pro/h;->g:Landroid/app/Application;

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private a(Landroid/app/Activity;)V
    .locals 6

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    .line 224
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    if-eqz v0, :cond_5

    .line 226
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 227
    const-string v0, "_$!pv_b"

    sget-object v2, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    const-string v0, "_$!ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 230
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/b;->j()Lorg/json/JSONObject;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 232
    const-string v2, "_$!sp"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o;->c()Ljava/lang/String;

    move-result-object v0

    .line 235
    const-string v2, "__ii"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "-1"

    :cond_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    const-string v0, "__ii"

    const-string v2, "-1"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    :cond_2
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/umeng/analytics/b;->h(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 245
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 246
    if-eqz v2, :cond_4

    .line 247
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_4

    .line 249
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 250
    sget-object v4, Lcom/umeng/analytics/pro/b;->au:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 251
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 253
    :catch_0
    move-exception v3

    goto :goto_0

    .line 257
    :cond_4
    :try_start_2
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x2001

    .line 259
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v3

    .line 257
    invoke-static {v0, v2, v3, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 264
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/umeng/analytics/pro/h;->d:Ljava/util/Map;

    monitor-enter v1

    .line 265
    :try_start_3
    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->d:Ljava/util/Map;

    sget-object v2, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    monitor-exit v1

    .line 267
    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 260
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 115
    if-eqz p0, :cond_0

    .line 117
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 118
    sget-object v1, Lcom/umeng/analytics/pro/h;->f:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :try_start_1
    sget-object v2, Lcom/umeng/analytics/pro/h;->e:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    sput-object v3, Lcom/umeng/analytics/pro/h;->e:Lorg/json/JSONArray;

    .line 122
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 125
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 126
    const-string v2, "__b"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    invoke-static {p0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    .line 128
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/o;->d()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/umeng/analytics/pro/g$a;->a:Lcom/umeng/analytics/pro/g$a;

    .line 127
    invoke-virtual {v1, v2, v0, v3}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/g$a;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 122
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 133
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/analytics/pro/h;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .locals 6

    .prologue
    .line 271
    const-wide/16 v0, 0x0

    .line 272
    :try_start_0
    iget-object v2, p0, Lcom/umeng/analytics/pro/h;->d:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :try_start_1
    sget-object v3, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 274
    if-eqz p1, :cond_0

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    .line 278
    :cond_0
    sget-object v3, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 279
    iget-object v3, p0, Lcom/umeng/analytics/pro/h;->d:Ljava/util/Map;

    sget-object v4, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->d:Ljava/util/Map;

    sget-object v1, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v4, v0

    .line 281
    iget-object v3, p0, Lcom/umeng/analytics/pro/h;->d:Ljava/util/Map;

    sget-object v4, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    :try_start_2
    sget-object v2, Lcom/umeng/analytics/pro/h;->f:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 288
    :try_start_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 290
    const-string v4, "page_name"

    sget-object v5, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    const-string v4, "duration"

    invoke-virtual {v3, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 292
    sget-object v0, Lcom/umeng/analytics/pro/h;->e:Lorg/json/JSONArray;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 295
    :goto_0
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 301
    :goto_1
    return-void

    .line 284
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 296
    :catch_0
    move-exception v0

    goto :goto_1

    .line 295
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    .line 293
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 83
    iget-boolean v0, p0, Lcom/umeng/analytics/pro/h;->h:Z

    if-nez v0, :cond_1

    .line 84
    iput-boolean v2, p0, Lcom/umeng/analytics/pro/h;->h:Z

    .line 85
    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->g:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->g:Landroid/app/Application;

    iget-object v1, p0, Lcom/umeng/analytics/pro/h;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 88
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 89
    sget-object v0, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 90
    iput-boolean v2, p0, Lcom/umeng/analytics/pro/h;->b:Z

    .line 91
    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/app/Activity;)V

    .line 95
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/umeng/analytics/pro/h;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/h;->b(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/umeng/analytics/pro/h;->h:Z

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/analytics/pro/h;->h:Z

    .line 102
    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->g:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->g:Landroid/app/Application;

    iget-object v1, p0, Lcom/umeng/analytics/pro/h;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/h;->g:Landroid/app/Application;

    .line 106
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/h;->b(Landroid/app/Activity;)V

    .line 110
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/h;->b()V

    .line 111
    return-void
.end method
