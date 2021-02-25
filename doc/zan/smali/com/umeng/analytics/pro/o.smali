.class public Lcom/umeng/analytics/pro/o;
.super Ljava/lang/Object;
.source "SessionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/o$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "session_start_time"

.field private static final b:Ljava/lang/String; = "session_end_time"

.field private static final c:Ljava/lang/String; = "session_id"

.field private static f:Ljava/lang/String;

.field private static g:Landroid/content/Context;


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    sput-object v0, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    .line 41
    sput-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "a_start_time"

    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->d:Ljava/lang/String;

    .line 37
    const-string v0, "a_end_time"

    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->e:Ljava/lang/String;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/o$1;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;-><init>()V

    return-void
.end method

.method public static a()Lcom/umeng/analytics/pro/o;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/umeng/analytics/pro/o$a;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/content/SharedPreferences;J)Ljava/lang/String;
    .locals 7

    .prologue
    .line 357
    sget-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 358
    if-eqz p1, :cond_0

    .line 359
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    .line 362
    :cond_0
    sget-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 366
    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/o;->d(Landroid/content/Context;)V

    .line 368
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 369
    const-string v2, "__e"

    invoke-virtual {v1, v2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 370
    sget-object v2, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v2

    sget-object v3, Lcom/umeng/analytics/pro/g$a;->c:Lcom/umeng/analytics/pro/g$a;

    invoke-virtual {v2, v0, v1, v3}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/g$a;)Z

    .line 372
    sget-object v1, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;)Z

    .line 374
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 376
    const-string v2, "session_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 377
    const-string v2, "session_start_time"

    invoke-interface {v1, v2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 378
    const-string v2, "session_end_time"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 380
    const-string v2, "a_start_time"

    invoke-interface {v1, v2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 381
    const-string v2, "a_end_time"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 382
    const-string v2, "versioncode"

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 383
    const-string v2, "versionname"

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 384
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 387
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 389
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/b;->j()Lorg/json/JSONObject;

    move-result-object v2

    .line 390
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 391
    const-string v3, "_$!sp"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 393
    :cond_1
    const-string v2, "_$!s_b"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    const-string v2, "__ii"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    const-string v2, "_$!ts_b"

    invoke-virtual {v1, v2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 396
    sget-object v2, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/umeng/analytics/pro/i;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :goto_0
    return-object v0

    .line 398
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Landroid/content/SharedPreferences;)V
    .locals 2

    .prologue
    .line 117
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    const-string v1, "session_start_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    const-string v1, "session_end_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 121
    const-string v1, "a_start_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 122
    const-string v1, "a_end_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    return-void
.end method

.method private a(Landroid/content/SharedPreferences;J)Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    const-wide/16 v8, 0x0

    .line 279
    const-string v1, "a_start_time"

    invoke-interface {p1, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 280
    const-string v1, "a_end_time"

    invoke-interface {p1, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 283
    cmp-long v1, v2, v8

    if-eqz v1, :cond_1

    sub-long v2, p2, v2

    sget-wide v6, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    cmp-long v1, v2, v6

    if-gez v1, :cond_1

    .line 284
    const-string v1, "onResume called before onPause"

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;)V

    .line 345
    :cond_0
    :goto_0
    return v0

    .line 291
    :cond_1
    sub-long v2, p2, v4

    sget-wide v4, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 293
    :try_start_0
    const-string v0, "session_id"

    const-string v1, "-1"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 294
    const-string v0, "session_end_time"

    const-wide/16 v4, 0x0

    invoke-interface {p1, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 296
    const-string v3, "-1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 299
    cmp-long v3, v0, v8

    if-nez v3, :cond_2

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 303
    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 304
    const-string v4, "__f"

    invoke-virtual {v3, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 305
    sget-object v4, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v4

    sget-object v5, Lcom/umeng/analytics/pro/g$a;->d:Lcom/umeng/analytics/pro/g$a;

    invoke-virtual {v4, v2, v3, v5}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/g$a;)Z

    .line 308
    sget-boolean v3, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    if-eqz v3, :cond_6

    .line 309
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 311
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/analytics/b;->j()Lorg/json/JSONObject;

    move-result-object v4

    .line 312
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 313
    const-string v5, "_$!sp"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    :cond_3
    const-string v4, "_$!s_e"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    const-string v4, "__ii"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    const-string v2, "_$!ts_e"

    invoke-virtual {v3, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 320
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/b;->h(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 321
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 322
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 323
    if-eqz v1, :cond_5

    .line 324
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_5

    .line 326
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 327
    sget-object v4, Lcom/umeng/analytics/pro/b;->au:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 328
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 330
    :catch_0
    move-exception v2

    goto :goto_1

    .line 334
    :cond_5
    :try_start_2
    sget-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/Object;IZ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 343
    :cond_6
    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 341
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private d(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 410
    invoke-static {p1}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/i;->b(Landroid/content/Context;)V

    .line 412
    invoke-static {p1}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/i;->a()V

    .line 413
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 145
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 146
    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    .line 150
    :cond_0
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 151
    sget-object v2, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 152
    if-nez v2, :cond_1

    .line 222
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 158
    const-string v4, "versionname"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 159
    sget-object v5, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 160
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 161
    const-string v5, "versioncode"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 163
    const-string v6, "pre_date"

    const-string v7, ""

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 164
    const-string v7, "pre_version"

    const-string v8, ""

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 165
    const-string v8, "versionname"

    const-string v9, ""

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 167
    const-string v9, "vers_date"

    invoke-interface {v3, v9, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 168
    const-string v9, "vers_pre_version"

    invoke-interface {v3, v9, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    const-string v9, "cur_version"

    invoke-interface {v3, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    const-string v9, "dp_vers_date"

    invoke-interface {v3, v9, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 172
    const-string v6, "dp_vers_pre_version"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 173
    const-string v6, "dp_cur_version"

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    const-string v6, "vers_code"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 186
    const-string v6, "vers_name"

    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 188
    const-string v6, "dp_vers_code"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 189
    const-string v5, "dp_vers_name"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    const-string v4, "a_end_time"

    const-wide/16 v6, 0x0

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 193
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/o;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 194
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;Landroid/content/SharedPreferences;J)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    .line 197
    :cond_2
    sget-object v2, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-virtual {p0, v2, v0, v1}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;J)Z

    .line 198
    sget-object v2, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-virtual {p0, v2, v0, v1}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;J)V

    goto/16 :goto_0

    .line 218
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 202
    :cond_3
    invoke-direct {p0, v2, v0, v1}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/SharedPreferences;J)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 203
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;Landroid/content/SharedPreferences;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start new session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;)V

    .line 205
    const-string v0, "MobclickRT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start new session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 207
    :cond_4
    const-string v4, "session_id"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    .line 208
    const-string v2, "a_start_time"

    invoke-interface {v3, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 209
    const-string v0, "a_end_time"

    const-wide/16 v4, 0x0

    invoke-interface {v3, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 210
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Extend current session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;)V

    .line 212
    const-string v0, "MobclickRT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extend current session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/o;->d(Landroid/content/Context;)V

    .line 215
    sget-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/i;->a(Z)V

    .line 216
    sget-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/i;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 12

    .prologue
    .line 55
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 56
    const-string v0, "session_id"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    if-nez v2, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0

    .line 61
    :cond_0
    const-string v0, "session_start_time"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 62
    const-string v0, "session_end_time"

    const-wide/16 v6, 0x0

    invoke-interface {v1, v0, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 65
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_1

    .line 66
    sub-long v8, v6, v4

    .line 67
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    cmp-long v0, v8, v10

    if-lez v0, :cond_1

    .line 73
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 74
    const-string v0, "__ii"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v0, "__e"

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 76
    const-string v0, "__f"

    invoke-virtual {v3, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 78
    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->getLocation()[D

    move-result-object v0

    .line 79
    if-eqz v0, :cond_2

    .line 80
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 81
    const-string v5, "lat"

    const/4 v6, 0x0

    aget-wide v6, v0, v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 82
    const-string v5, "lng"

    const/4 v6, 0x1

    aget-wide v6, v0, v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 83
    const-string v0, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 84
    const-string v0, "__d"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    :cond_2
    const-string v0, "android.net.TrafficStats"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 88
    const-string v4, "getUidRxBytes"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 89
    const-string v5, "getUidTxBytes"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 91
    const/4 v0, -0x1

    if-ne v6, v0, :cond_3

    .line 92
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 94
    :cond_3
    const/4 v0, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 95
    const/4 v0, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-virtual {v5, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 96
    const-wide/16 v6, 0x0

    cmp-long v0, v8, v6

    if-lez v0, :cond_4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_5

    .line 105
    :cond_4
    :goto_1
    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    sget-object v4, Lcom/umeng/analytics/pro/g$a;->e:Lcom/umeng/analytics/pro/g$a;

    invoke-virtual {v0, v2, v3, v4}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/g$a;)Z

    .line 106
    sget-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/p;->a(Landroid/content/Context;)V

    .line 107
    sget-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V

    .line 108
    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/SharedPreferences;)V

    .line 113
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 99
    :cond_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 100
    const-string v6, "download_traffic"

    invoke-virtual {v0, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 101
    const-string v6, "upload_traffic"

    invoke-virtual {v0, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 102
    const-string v4, "__c"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public a(Landroid/content/Context;J)Z
    .locals 12

    .prologue
    const/4 v1, 0x1

    const-wide/16 v10, 0x0

    .line 423
    const/4 v0, 0x0

    .line 426
    :try_start_0
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 427
    if-nez v2, :cond_1

    .line 497
    :cond_0
    :goto_0
    return v0

    .line 431
    :cond_1
    const-string v3, "session_id"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 433
    if-eqz v3, :cond_0

    .line 437
    const-string v4, "a_start_time"

    const-wide/16 v6, 0x0

    invoke-interface {v2, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 438
    const-string v6, "a_end_time"

    const-wide/16 v8, 0x0

    invoke-interface {v2, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v6

    .line 441
    cmp-long v2, v4, v10

    if-lez v2, :cond_8

    cmp-long v2, v6, v10

    if-nez v2, :cond_8

    .line 443
    :try_start_1
    sget-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 447
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 448
    const-string v2, "__f"

    invoke-virtual {v0, v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 449
    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v2

    sget-object v4, Lcom/umeng/analytics/pro/g$a;->d:Lcom/umeng/analytics/pro/g$a;

    invoke-virtual {v2, v3, v0, v4}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/g$a;)Z

    .line 452
    sget-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/i;->b()V

    .line 455
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    if-eqz v0, :cond_7

    .line 459
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 461
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/b;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 462
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-ge v4, v1, :cond_3

    .line 463
    :cond_2
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/b;->j()Lorg/json/JSONObject;

    move-result-object v0

    .line 465
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 466
    const-string v4, "_$!sp"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 468
    :cond_4
    const-string v0, "_$!s_e"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 469
    const-string v0, "__ii"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    const-string v0, "_$!ts_e"

    invoke-virtual {v2, v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 473
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    sget-object v3, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/umeng/analytics/b;->h(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 474
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 475
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 476
    if-eqz v3, :cond_6

    .line 477
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    if-eqz v4, :cond_6

    .line 479
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 480
    sget-object v5, Lcom/umeng/analytics/pro/b;->au:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 481
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 483
    :catch_0
    move-exception v4

    goto :goto_1

    .line 487
    :cond_6
    :try_start_4
    sget-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/Object;IZ)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_7
    move v0, v1

    .line 495
    :cond_8
    :goto_2
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 496
    :catch_1
    move-exception v1

    goto/16 :goto_0

    .line 490
    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_2

    .line 496
    :catch_3
    move-exception v0

    move v0, v1

    goto/16 :goto_0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 129
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 133
    if-nez v1, :cond_0

    .line 134
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Appkey is null or empty, Please check!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    .line 140
    sget-object v0, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;J)V
    .locals 4

    .prologue
    .line 506
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 507
    if-nez v0, :cond_0

    .line 541
    :goto_0
    return-void

    .line 510
    :cond_0
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    .line 513
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 514
    const-string v1, "session_id"

    sget-object v2, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 515
    const-string v1, "session_start_time"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 516
    const-string v1, "session_end_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 517
    const-string v1, "a_start_time"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 518
    const-string v1, "a_end_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 519
    const-string v1, "versioncode"

    sget-object v2, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    .line 520
    invoke-static {v2}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 519
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 521
    const-string v1, "versionname"

    sget-object v2, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 522
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 524
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 525
    const-string v1, "__e"

    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 526
    sget-object v1, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    sget-object v3, Lcom/umeng/analytics/pro/g$a;->c:Lcom/umeng/analytics/pro/g$a;

    invoke-virtual {v1, v2, v0, v3}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/g$a;)Z

    .line 528
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 530
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/b;->j()Lorg/json/JSONObject;

    move-result-object v1

    .line 531
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 532
    const-string v2, "_$!sp"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 534
    :cond_1
    const-string v1, "_$!s_b"

    sget-object v2, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 535
    const-string v1, "__ii"

    sget-object v2, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 536
    const-string v1, "_$!ts_b"

    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 537
    sget-object v1, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/pro/i;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 538
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 226
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 227
    if-eqz p1, :cond_0

    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    .line 231
    :cond_0
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 232
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 233
    if-nez v2, :cond_1

    .line 251
    :goto_0
    return-void

    .line 237
    :cond_1
    const-string v3, "a_start_time"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 239
    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v3, :cond_2

    .line 240
    const-string v0, "onPause called before onResume"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    goto :goto_0

    .line 243
    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 245
    const-string v3, "a_end_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 246
    const-string v3, "session_end_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 247
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public b()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    .line 259
    sget-object v1, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 260
    if-nez v1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v0

    .line 264
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 265
    const-string v4, "a_start_time"

    invoke-interface {v1, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 266
    const-string v6, "a_end_time"

    invoke-interface {v1, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 268
    cmp-long v1, v4, v8

    if-eqz v1, :cond_2

    sub-long v4, v2, v4

    sget-wide v8, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    cmp-long v1, v4, v8

    if-ltz v1, :cond_0

    .line 272
    :cond_2
    sub-long/2addr v2, v6

    sget-wide v4, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 273
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    sget-object v0, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 549
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 550
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "session_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 553
    :goto_0
    return-object v0

    .line 552
    :catch_0
    move-exception v0

    .line 553
    :cond_0
    sget-object v0, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    sget-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/o;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
