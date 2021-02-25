.class public Lcom/umeng/analytics/pro/m;
.super Ljava/lang/Object;
.source "EventTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/m$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "fs_lc_tl"

.field private static final f:Ljava/lang/String; = "-1"

.field private static g:Landroid/content/Context;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private h:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0x80

    iput v0, p0, Lcom/umeng/analytics/pro/m;->b:I

    .line 41
    const/16 v0, 0x100

    iput v0, p0, Lcom/umeng/analytics/pro/m;->c:I

    .line 42
    const/16 v0, 0x400

    iput v0, p0, Lcom/umeng/analytics/pro/m;->d:I

    .line 43
    const/16 v0, 0xa

    iput v0, p0, Lcom/umeng/analytics/pro/m;->e:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/m;->h:Lorg/json/JSONObject;

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/m;->h:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lcom/umeng/analytics/pro/m;->g:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/m;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/m$1;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/umeng/analytics/pro/m;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/m;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/umeng/analytics/pro/m;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 64
    if-eqz p0, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/m;->g:Landroid/content/Context;

    .line 69
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/pro/m$a;->a()Lcom/umeng/analytics/pro/m;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 479
    .line 481
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 484
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 487
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_2

    .line 489
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 490
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 491
    if-eqz v1, :cond_0

    .line 493
    const/16 v5, 0x80

    invoke-static {v1, v5}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 495
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 496
    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 499
    instance-of v1, v0, [I

    if-eqz v1, :cond_3

    .line 500
    check-cast v0, [I

    check-cast v0, [I

    .line 501
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    move v1, v2

    .line 502
    :goto_1
    array-length v7, v0

    if-ge v1, v7, :cond_1

    .line 503
    aget v7, v0, v1

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 502
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 505
    :cond_1
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 603
    :catch_0
    move-exception v0

    .line 604
    :try_start_2
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 607
    :catch_1
    move-exception v0

    .line 612
    :cond_2
    return-object v3

    .line 506
    :cond_3
    :try_start_3
    instance-of v1, v0, [D

    if-eqz v1, :cond_5

    .line 507
    check-cast v0, [D

    check-cast v0, [D

    .line 508
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    move v1, v2

    .line 509
    :goto_2
    array-length v7, v0

    if-ge v1, v7, :cond_4

    .line 510
    aget-wide v8, v0, v1

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 509
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 512
    :cond_4
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 513
    :cond_5
    instance-of v1, v0, [J

    if-eqz v1, :cond_7

    .line 514
    check-cast v0, [J

    check-cast v0, [J

    .line 515
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    move v1, v2

    .line 516
    :goto_3
    array-length v7, v0

    if-ge v1, v7, :cond_6

    .line 517
    aget-wide v8, v0, v1

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 516
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 519
    :cond_6
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 520
    :cond_7
    instance-of v1, v0, [F

    if-eqz v1, :cond_9

    .line 521
    check-cast v0, [F

    check-cast v0, [F

    .line 522
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    move v1, v2

    .line 523
    :goto_4
    array-length v7, v0

    if-ge v1, v7, :cond_8

    .line 524
    aget v7, v0, v1

    float-to-double v8, v7

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 523
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 526
    :cond_8
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 527
    :cond_9
    instance-of v1, v0, [S

    if-eqz v1, :cond_0

    .line 528
    check-cast v0, [S

    check-cast v0, [S

    .line 529
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    move v1, v2

    .line 530
    :goto_5
    array-length v7, v0

    if-ge v1, v7, :cond_a

    .line 531
    aget-short v7, v0, v1

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 530
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 533
    :cond_a
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 540
    :cond_b
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_f

    .line 541
    check-cast v0, Ljava/util/List;

    .line 542
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    move v1, v2

    .line 544
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_e

    .line 545
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 546
    instance-of v8, v7, Ljava/lang/String;

    if-nez v8, :cond_c

    instance-of v8, v7, Ljava/lang/Long;

    if-nez v8, :cond_c

    instance-of v8, v7, Ljava/lang/Integer;

    if-nez v8, :cond_c

    instance-of v8, v7, Ljava/lang/Float;

    if-nez v8, :cond_c

    instance-of v8, v7, Ljava/lang/Double;

    if-nez v8, :cond_c

    instance-of v7, v7, Ljava/lang/Short;

    if-eqz v7, :cond_d

    .line 553
    :cond_c
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 544
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 556
    :cond_e
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 557
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 559
    :cond_f
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 560
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 562
    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 563
    :cond_10
    instance-of v1, v0, Ljava/lang/Long;

    if-nez v1, :cond_11

    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_11

    instance-of v1, v0, Ljava/lang/Float;

    if-nez v1, :cond_11

    instance-of v1, v0, Ljava/lang/Double;

    if-nez v1, :cond_11

    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_12

    .line 569
    :cond_11
    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 594
    :cond_12
    const-string v0, "The param has not support type. please check !"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method private a()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v0, 0x0

    .line 320
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/m;->g:Landroid/content/Context;

    const-string v2, "track_list"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 322
    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 323
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 325
    iget-object v1, p0, Lcom/umeng/analytics/pro/m;->h:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    move v1, v0

    .line 327
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 328
    aget-object v4, v2, v1

    const/16 v5, 0x80

    invoke-static {v4, v5}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 329
    iget-object v5, p0, Lcom/umeng/analytics/pro/m;->h:Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 330
    iget-object v5, p0, Lcom/umeng/analytics/pro/m;->h:Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/umeng/analytics/pro/m;->h:Lorg/json/JSONObject;

    .line 337
    array-length v1, v2

    if-lt v1, v6, :cond_2

    .line 338
    :goto_1
    if-ge v0, v6, :cond_3

    .line 339
    aget-object v1, v2, v0

    invoke-direct {p0, v1, v3}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 342
    :cond_2
    :goto_2
    array-length v1, v2

    if-ge v0, v1, :cond_3

    .line 343
    aget-object v1, v2, v0

    invoke-direct {p0, v1, v3}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 347
    :cond_3
    sget-object v0, Lcom/umeng/analytics/pro/m;->g:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/m;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :cond_4
    :goto_3
    return-void

    .line 351
    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 361
    const/16 v0, 0x80

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;Z)V

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 371
    :try_start_0
    const-string v0, "$st_fl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "du"

    .line 372
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "id"

    .line 373
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ts"

    .line 374
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/umeng/analytics/pro/m;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/umeng/analytics/pro/m;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 379
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 617
    if-eqz p1, :cond_0

    .line 618
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    .line 620
    if-lez v0, :cond_0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_0

    .line 621
    const/4 v0, 0x1

    .line 632
    :goto_0
    return v0

    .line 625
    :cond_0
    const-string v0, "Event id is empty or too long in tracking Event"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 626
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 302
    :try_start_0
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 303
    const-string v1, "fs_lc_tl"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/umeng/analytics/pro/m;->h:Lorg/json/JSONObject;

    .line 310
    :cond_0
    invoke-direct {p0}, Lcom/umeng/analytics/pro/m;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 637
    if-nez p1, :cond_1

    .line 648
    :cond_0
    :goto_0
    return v0

    .line 639
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x100

    if-le v1, v2, :cond_0

    .line 642
    const-string v0, "Event label or value is empty or too long in tracking Event"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 643
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private b(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 671
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    :cond_0
    const-string v0, "map is null or empty in onEvent"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 673
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10006"

    const/4 v3, 0x0

    const-string v4, "\\|"

    invoke-interface {v0, v1, v3, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    move v0, v2

    .line 712
    :goto_0
    return v0

    .line 677
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 678
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 679
    const-string v0, "map has NULL key. please check!"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 680
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10007"

    const/4 v3, 0x0

    const-string v4, "\\|"

    invoke-interface {v0, v1, v3, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    move v0, v2

    .line 681
    goto :goto_0

    .line 684
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 685
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10008"

    const/4 v3, 0x0

    const-string v4, "\\|"

    invoke-interface {v0, v1, v3, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    move v0, v2

    .line 686
    goto :goto_0

    .line 689
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 691
    const-string v1, "_$!link"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 692
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/m;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 693
    goto :goto_0

    .line 696
    :cond_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/m;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 697
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10009"

    const/4 v3, 0x0

    const-string v4, "\\|"

    invoke-interface {v0, v1, v3, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 698
    goto/16 :goto_0

    .line 707
    :catch_0
    move-exception v0

    .line 712
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/m;->h:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 394
    sget-object v0, Lcom/umeng/analytics/pro/m;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 395
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fs_lc_tl"

    iget-object v2, p0, Lcom/umeng/analytics/pro/m;->h:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 397
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 653
    if-nez p1, :cond_0

    .line 654
    :try_start_0
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v3, "A_10121"

    const/4 v4, 0x0

    const-string v5, "\\|"

    invoke-interface {v2, v3, v4, v5}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 666
    :goto_0
    return v0

    .line 656
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x400

    if-gt v2, v3, :cond_1

    .line 657
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v3, "A_10122"

    const/4 v4, 0x0

    const-string v5, "\\|"

    invoke-interface {v2, v3, v4, v5}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 661
    :catch_0
    move-exception v0

    :goto_1
    move v0, v1

    .line 666
    goto :goto_0

    .line 660
    :cond_1
    const-string v0, "DeepLink value too long in tracking Event."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 167
    :try_start_0
    check-cast p1, Lcom/umeng/analytics/pro/i$d;

    .line 169
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/i$d;->c()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/i$d;->a()Ljava/util/Map;

    move-result-object v1

    .line 171
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/i$d;->b()Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/i$d;->d()J

    move-result-wide v4

    .line 174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    :goto_0
    return-void

    .line 178
    :cond_0
    const/16 v3, 0x80

    invoke-static {v0, v3}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 180
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 181
    const-string v0, "_$!id"

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    const-string v0, "_$!ts"

    invoke-virtual {v6, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 184
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o;->c()Ljava/lang/String;

    move-result-object v0

    .line 186
    const-string v4, "__ii"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v0, "-1"

    :cond_1
    invoke-virtual {v6, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_2

    .line 190
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 192
    const-string v2, "_$!sp"

    invoke-virtual {v6, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    :cond_2
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/umeng/analytics/pro/m;->a()V

    .line 199
    if-eqz v1, :cond_4

    .line 200
    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/m;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 203
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 205
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-eqz v0, :cond_4

    .line 207
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 208
    sget-object v4, Lcom/umeng/analytics/pro/b;->at:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 209
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 213
    :catch_0
    move-exception v0

    .line 214
    :try_start_4
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 241
    :catch_1
    move-exception v0

    goto :goto_0

    .line 211
    :cond_3
    :try_start_5
    const-string v0, "the key in map about track interface is invalid.  "

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 220
    :cond_4
    :try_start_6
    iget-object v0, p0, Lcom/umeng/analytics/pro/m;->h:Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    .line 221
    iget-object v0, p0, Lcom/umeng/analytics/pro/m;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 222
    iget-object v0, p0, Lcom/umeng/analytics/pro/m;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 227
    if-nez v0, :cond_5

    .line 228
    const-string v0, "$st_fl"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 229
    iget-object v0, p0, Lcom/umeng/analytics/pro/m;->h:Lorg/json/JSONObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 230
    sget-object v0, Lcom/umeng/analytics/pro/m;->g:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/m;->c(Landroid/content/Context;)V

    .line 238
    :cond_5
    sget-object v0, Lcom/umeng/analytics/pro/m;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v1, v2}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/Object;IZ)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 194
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 5

    .prologue
    .line 127
    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/umeng/analytics/pro/m;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10021"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 131
    :cond_1
    sget-object v0, Lcom/umeng/analytics/pro/b;->as:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    const-string v0, "the id is valid!"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 133
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10022"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    goto :goto_0

    .line 136
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 137
    const-string v0, "id"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string v0, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 139
    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-lez v0, :cond_3

    .line 140
    const-string v0, "du"

    invoke-virtual {v1, v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 142
    :cond_3
    const-string v0, "__t"

    const/16 v2, 0x801

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    if-nez p2, :cond_4

    const-string p2, ""

    :cond_4
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o;->c()Ljava/lang/String;

    move-result-object v0

    .line 146
    const-string v2, "__i"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v0, "-1"

    :cond_5
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    sget-object v0, Lcom/umeng/analytics/pro/m;->g:Landroid/content/Context;

    const/16 v2, 0x1001

    sget-object v3, Lcom/umeng/analytics/pro/m;->g:Landroid/content/Context;

    .line 149
    invoke-static {v3}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v3

    .line 148
    invoke-static {v0, v2, v3, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 250
    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    :goto_0
    return-void

    .line 253
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 254
    const-string v1, "id"

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 256
    const-string v1, "du"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 257
    const-string v1, "__t"

    const/16 v3, 0x802

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 259
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    .line 263
    :goto_1
    const/16 v0, 0xa

    if-ge v1, v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 264
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 265
    const-string v4, "$st_fl"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "du"

    .line 266
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "id"

    .line 267
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "ts"

    .line 268
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 269
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 270
    instance-of v5, v4, Ljava/lang/String;

    if-nez v5, :cond_1

    instance-of v5, v4, Ljava/lang/Integer;

    if-nez v5, :cond_1

    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_2

    .line 271
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 276
    :cond_3
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o;->c()Ljava/lang/String;

    move-result-object v0

    .line 277
    const-string v1, "__i"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v0, "-1"

    :cond_4
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    sget-object v0, Lcom/umeng/analytics/pro/m;->g:Landroid/content/Context;

    const/16 v1, 0x1002

    sget-object v3, Lcom/umeng/analytics/pro/m;->g:Landroid/content/Context;

    .line 280
    invoke-static {v3}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v3

    .line 279
    invoke-static {v0, v1, v3, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 282
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 77
    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10005"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-direct {p0, p2}, Lcom/umeng/analytics/pro/m;->b(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    sget-object v1, Lcom/umeng/analytics/pro/b;->as:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    const-string v0, "the id is valid!"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10001"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    goto :goto_0

    .line 91
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 92
    const-string v1, "id"

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 94
    const-wide/16 v4, 0x0

    cmp-long v1, p3, v4

    if-lez v1, :cond_3

    .line 95
    const-string v1, "du"

    invoke-virtual {v2, v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 97
    :cond_3
    const-string v1, "__t"

    const/16 v3, 0x801

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    .line 102
    :goto_1
    const/16 v0, 0xa

    if-ge v1, v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 103
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 104
    sget-object v4, Lcom/umeng/analytics/pro/b;->as:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 105
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 106
    instance-of v5, v4, Ljava/lang/String;

    if-nez v5, :cond_4

    instance-of v5, v4, Ljava/lang/Integer;

    if-nez v5, :cond_4

    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_5

    .line 107
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    :cond_5
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 110
    :cond_6
    const-string v0, "the key in map is invalid.  "

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 111
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v4, "A_10004"

    const/4 v5, 0x0

    const-string v6, "\\|"

    invoke-interface {v0, v4, v5, v6}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 115
    :cond_7
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o;->c()Ljava/lang/String;

    move-result-object v0

    .line 116
    const-string v1, "__i"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v0, "-1"

    :cond_8
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    sget-object v0, Lcom/umeng/analytics/pro/m;->g:Landroid/content/Context;

    const/16 v1, 0x1001

    sget-object v3, Lcom/umeng/analytics/pro/m;->g:Landroid/content/Context;

    .line 118
    invoke-static {v3}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v3

    .line 117
    invoke-static {v0, v1, v3, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x5

    const/4 v0, 0x0

    .line 412
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 413
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15019"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 463
    :goto_0
    return-void

    .line 416
    :cond_1
    invoke-direct {p0}, Lcom/umeng/analytics/pro/m;->a()V

    .line 418
    iget-object v1, p0, Lcom/umeng/analytics/pro/m;->h:Lorg/json/JSONObject;

    if-nez v1, :cond_6

    .line 419
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/umeng/analytics/pro/m;->h:Lorg/json/JSONObject;

    .line 420
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    .line 421
    :goto_1
    if-ge v1, v2, :cond_5

    .line 423
    iget-object v0, p0, Lcom/umeng/analytics/pro/m;->h:Lorg/json/JSONObject;

    if-nez v0, :cond_4

    .line 424
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/m;->h:Lorg/json/JSONObject;

    .line 431
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 432
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 433
    const/16 v3, 0x80

    invoke-static {v0, v3}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 434
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;Z)V

    .line 421
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 426
    :cond_4
    iget-object v0, p0, Lcom/umeng/analytics/pro/m;->h:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lt v0, v4, :cond_2

    .line 437
    :cond_5
    sget-object v0, Lcom/umeng/analytics/pro/m;->g:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/m;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 458
    :catch_0
    move-exception v0

    goto :goto_0

    .line 439
    :cond_6
    iget-object v1, p0, Lcom/umeng/analytics/pro/m;->h:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lt v1, v4, :cond_7

    .line 440
    const-string v0, "already setFistLaunchEvent, igone."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move v1, v0

    .line 443
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 444
    iget-object v0, p0, Lcom/umeng/analytics/pro/m;->h:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lt v0, v4, :cond_8

    .line 445
    const-string v0, " add setFistLaunchEvent over."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :cond_8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v2, 0x80

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 449
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;Z)V

    .line 443
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 452
    :cond_9
    sget-object v0, Lcom/umeng/analytics/pro/m;->g:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/m;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method
