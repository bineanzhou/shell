.class public Lcom/umeng/analytics/pro/i;
.super Ljava/lang/Object;
.source "CoreProtocolImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/i$c;,
        Lcom/umeng/analytics/pro/i$a;,
        Lcom/umeng/analytics/pro/i$d;,
        Lcom/umeng/analytics/pro/i$b;
    }
.end annotation


# static fields
.field private static A:Z = false

.field private static final B:Ljava/lang/String; = "n_sess_dp"

.field private static final C:Ljava/lang/String; = "n_sess_dp_type"

.field private static a:Landroid/content/Context; = null

.field private static final q:Ljava/lang/String; = "first_activate_time"

.field private static final r:Ljava/lang/String; = "ana_is_f"

.field private static final s:Ljava/lang/String; = "thtstart"

.field private static final t:Ljava/lang/String; = "dstk_last_time"

.field private static final u:Ljava/lang/String; = "dstk_cnt"

.field private static final v:Ljava/lang/String; = "gkvc"

.field private static final w:Ljava/lang/String; = "ekvc"

.field private static final y:Ljava/lang/String; = "-1"

.field private static z:Z


# instance fields
.field private b:Lcom/umeng/commonsdk/statistics/noise/ABTest;

.field private c:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

.field private d:Lcom/umeng/analytics/pro/i$c;

.field private e:Landroid/content/SharedPreferences;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:I

.field private l:Lorg/json/JSONArray;

.field private final m:I

.field private n:I

.field private o:I

.field private p:J

.field private final x:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    .line 82
    sput-boolean v1, Lcom/umeng/analytics/pro/i;->z:Z

    .line 88
    sput-boolean v1, Lcom/umeng/analytics/pro/i;->A:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->b:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    .line 52
    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->c:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    .line 53
    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->d:Lcom/umeng/analytics/pro/i$c;

    .line 55
    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    .line 56
    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->f:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->g:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->h:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->i:Ljava/lang/String;

    .line 62
    iput-wide v2, p0, Lcom/umeng/analytics/pro/i;->j:J

    .line 64
    const/16 v0, 0xa

    iput v0, p0, Lcom/umeng/analytics/pro/i;->k:I

    .line 66
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    .line 67
    const/16 v0, 0x1388

    iput v0, p0, Lcom/umeng/analytics/pro/i;->m:I

    .line 68
    iput v1, p0, Lcom/umeng/analytics/pro/i;->n:I

    .line 69
    iput v1, p0, Lcom/umeng/analytics/pro/i;->o:I

    .line 70
    iput-wide v2, p0, Lcom/umeng/analytics/pro/i;->p:J

    .line 78
    const-wide/32 v0, 0x1b77400

    iput-wide v0, p0, Lcom/umeng/analytics/pro/i;->x:J

    .line 95
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    const-string v1, "thtstart"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/umeng/analytics/pro/i;->p:J

    .line 97
    const-string v1, "gkvc"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/umeng/analytics/pro/i;->n:I

    .line 98
    const-string v1, "ekvc"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/umeng/analytics/pro/i;->o:I

    .line 99
    new-instance v0, Lcom/umeng/analytics/pro/i$c;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/i$c;-><init>(Lcom/umeng/analytics/pro/i;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->d:Lcom/umeng/analytics/pro/i$c;

    .line 100
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->b:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    .line 101
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->getService(Landroid/content/Context;Lcom/umeng/commonsdk/statistics/internal/StatTracer;)Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->c:Lcom/umeng/commonsdk/statistics/noise/ImLatent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/i$1;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 111
    if-eqz p0, :cond_0

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    .line 115
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/pro/i$b;->a()Lcom/umeng/analytics/pro/i;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/analytics/pro/i;)Lcom/umeng/commonsdk/statistics/noise/ABTest;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->b:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;J)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 655
    :try_start_0
    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->a(Lorg/json/JSONObject;)J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-lez v0, :cond_0

    .line 656
    const-string v0, "header"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 658
    const-string v1, "eof"

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->a(Lorg/json/JSONObject;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 659
    const-string v1, "header"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 662
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0, p2, p3, p1}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;JLorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 666
    :cond_0
    :goto_0
    return-object p1

    .line 665
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(JI)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 1127
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    .line 1132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1133
    sub-long/2addr v2, p1

    const-wide/32 v4, 0x1b77400

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 1134
    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->l()V

    .line 1144
    :cond_0
    :goto_0
    return v0

    .line 1137
    :cond_1
    const/16 v1, 0x1388

    if-lt p3, v1, :cond_0

    .line 1140
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    .line 1450
    if-nez p1, :cond_1

    .line 1532
    :cond_0
    :goto_0
    return-void

    .line 1452
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1453
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1455
    const-string v0, "analytics"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1456
    const-string v0, "analytics"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1457
    const-string v0, "ekv"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1458
    const-string v0, "ekv"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1459
    const-string v3, "ekv"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1461
    :cond_2
    const-string v0, "gkv"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1462
    const-string v0, "gkv"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1463
    const-string v3, "gkv"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1465
    :cond_3
    const-string v0, "error"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1466
    const-string v0, "error"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1467
    const-string v3, "error"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1469
    :cond_4
    const-string v0, "sessions"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1470
    const-string v0, "sessions"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1472
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 1474
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_7

    .line 1475
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1476
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 1477
    const-string v6, "autopages"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1478
    const-string v6, "autopages"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1480
    :cond_5
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1474
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1483
    :cond_7
    const-string v0, "sessions"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1485
    :cond_8
    const-string v0, "activate_msg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1486
    const-string v0, "activate_msg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1487
    const-string v3, "activate_msg"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1489
    :cond_9
    const-string v0, "active_user"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1490
    const-string v0, "active_user"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1491
    const-string v2, "active_user"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1495
    :cond_a
    const-string v0, "dplus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1496
    const-string v0, "dplus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1497
    const-string v2, "dplus"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1500
    :cond_b
    const-string v0, "header"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1501
    const-string v0, "header"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1502
    const-string v0, "header"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1503
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_11

    .line 1504
    const-string v2, "sdk_version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1505
    const-string v2, "sdk_version"

    const-string v3, "sdk_version"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1507
    :cond_c
    const-string v2, "device_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1508
    const-string v2, "device_id"

    const-string v3, "device_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1510
    :cond_d
    const-string v2, "device_model"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1511
    const-string v2, "device_model"

    const-string v3, "device_model"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1513
    :cond_e
    const-string v2, "version_code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1514
    const-string v2, "version"

    const-string v3, "version_code"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1516
    :cond_f
    const-string v2, "appkey"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1517
    const-string v2, "appkey"

    const-string v3, "appkey"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1519
    :cond_10
    const-string v2, "channel"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1520
    const-string v2, "channel"

    const-string v3, "channel"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1525
    :cond_11
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructMessage:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 1527
    const-string v0, "MobclickRT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "constructMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1529
    :catch_0
    move-exception v0

    .line 1530
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 1584
    :try_start_0
    const-string v0, "header"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1585
    const-string v1, "eof"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1587
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1588
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1592
    :cond_0
    const-string v0, "analytics"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1597
    const-string v0, "analytics"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1599
    const-string v1, "sessions"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1600
    const-string v1, "sessions"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1601
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 1602
    if-eqz v0, :cond_1

    .line 1603
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1604
    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/umeng/analytics/pro/g;->a(ZLjava/lang/String;)V

    .line 1624
    :cond_1
    :goto_0
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->a()V

    .line 1656
    :goto_1
    return-void

    .line 1607
    :cond_2
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->g()V

    goto :goto_0

    .line 1654
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1609
    :cond_3
    const-string v0, "dplus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1613
    const-string v0, "dplus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1614
    const-string v1, "events"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1615
    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/pro/g;->b(I)V

    .line 1617
    :cond_4
    const-string v1, "session"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1618
    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/pro/g;->b(I)V

    .line 1620
    :cond_5
    const-string v1, "pageview"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1621
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/g;->b(I)V

    goto :goto_0

    .line 1628
    :cond_6
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1629
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1632
    :cond_7
    const-string v0, "analytics"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1633
    const-string v0, "analytics"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1634
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 1636
    const-string v1, "sessions"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1637
    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/umeng/analytics/pro/g;->a(ZZ)V

    .line 1639
    :cond_8
    const-string v1, "ekv"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "gkv"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1640
    :cond_9
    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/g;->d()V

    .line 1643
    :cond_a
    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1644
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->e()V

    .line 1648
    :cond_b
    const-string v0, "dplus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1649
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->f()V

    .line 1652
    :cond_c
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1
.end method

.method private c(Z)V
    .locals 4

    .prologue
    .line 446
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 447
    if-eqz p1, :cond_1

    .line 448
    sget-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    if-eqz v1, :cond_4

    .line 451
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->maxDataSpace(Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/umeng/analytics/pro/i;->b(J)Lorg/json/JSONObject;

    move-result-object v0

    move-object v1, v0

    .line 459
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_2

    .line 483
    :cond_0
    :goto_1
    return-void

    .line 456
    :cond_1
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->maxDataSpace(Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/umeng/analytics/pro/i;->a(J)Lorg/json/JSONObject;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 460
    :cond_2
    const-string v0, "header"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 461
    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 463
    sget-object v2, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 465
    sget-object v2, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 468
    if-eqz v0, :cond_0

    .line 470
    :try_start_0
    const-string v1, "exception"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 471
    const-string v1, "MobclickRT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Build envelope error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "exception"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :cond_3
    :goto_2
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/i;->b(Lorg/json/JSONObject;)V

    .line 478
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 473
    :catch_0
    move-exception v1

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method private d(Z)Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 670
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 672
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 673
    const-string v0, "wrapper_version"

    sget-object v2, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 674
    const-string v0, "wrapper_type"

    sget-object v2, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 677
    :cond_0
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    .line 678
    sget-object v2, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v2}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 679
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    .line 680
    sget-object v0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v0}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v0

    .line 687
    :goto_0
    const-string v2, "vertical_type"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 688
    const-string v0, "sdk_version"

    const-string v2, "7.5.0"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 691
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getSecretKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 692
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 693
    const-string v2, "secret"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 696
    :cond_1
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    const-string v2, "pr_ve"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    sget-object v2, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 699
    if-eqz p1, :cond_6

    .line 701
    const-string v3, "$pr_ve"

    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 702
    const-string v3, "$ud_da"

    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 707
    if-eqz v2, :cond_3

    .line 709
    const-string v3, "dp_vers_name"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 710
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 711
    const-string v4, "app_version"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 712
    const-string v4, "version_code"

    const-string v5, "dp_vers_code"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 713
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    .line 714
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 717
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 719
    const-string v0, "$pr_ve"

    const-string v5, "dp_vers_pre_version"

    const-string v6, "0"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 721
    const-string v0, "$ud_da"

    const-string v5, "dp_vers_date"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 725
    :cond_2
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 726
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "dp_pre_version"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "dp_cur_version"

    .line 727
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "dp_pre_date"

    .line 728
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "dp_vers_name"

    .line 729
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "dp_vers_code"

    .line 730
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "dp_vers_date"

    .line 731
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "dp_vers_pre_version"

    .line 732
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 733
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 782
    :cond_3
    :goto_1
    return-object v1

    .line 681
    :cond_4
    sget-object v2, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_GAME:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v2}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 682
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    .line 683
    sget-object v0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_GAME:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v0}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v0

    goto/16 :goto_0

    .line 685
    :cond_5
    const/4 v2, 0x0

    sput-boolean v2, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 779
    :catch_0
    move-exception v0

    .line 780
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 738
    :cond_6
    :try_start_1
    const-string v3, "$pr_ve"

    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 739
    const-string v3, "$ud_da"

    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 744
    if-eqz v2, :cond_3

    .line 746
    const-string v3, "vers_name"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 747
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 748
    const-string v4, "app_version"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 749
    const-string v4, "version_code"

    const-string v5, "vers_code"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 750
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    .line 751
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 754
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 756
    const-string v0, "$pr_ve"

    const-string v5, "vers_pre_version"

    const-string v6, "0"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 758
    const-string v0, "$ud_da"

    const-string v5, "vers_date"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 762
    :cond_7
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 763
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "pre_version"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "cur_version"

    .line 764
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pre_date"

    .line 765
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "vers_name"

    .line 766
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "vers_code"

    .line 767
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "vers_date"

    .line 768
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "vers_pre_version"

    .line 769
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 770
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private d(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1086
    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    .line 1087
    const/16 v0, 0x802

    const-string v1, "__t"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 1088
    iget-wide v0, p0, Lcom/umeng/analytics/pro/i;->p:J

    iget v2, p0, Lcom/umeng/analytics/pro/i;->n:I

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/analytics/pro/i;->a(JI)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1110
    :cond_0
    :goto_0
    return-void

    .line 1091
    :cond_1
    iget v0, p0, Lcom/umeng/analytics/pro/i;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/analytics/pro/i;->n:I

    .line 1099
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    iget v1, p0, Lcom/umeng/analytics/pro/i;->k:I

    if-lt v0, v1, :cond_3

    .line 1100
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/g;->a(Lorg/json/JSONArray;)V

    .line 1101
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    .line 1103
    :cond_3
    iget-wide v0, p0, Lcom/umeng/analytics/pro/i;->p:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 1104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/pro/i;->p:J

    .line 1106
    :cond_4
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1107
    :catch_0
    move-exception v0

    .line 1108
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1092
    :cond_5
    const/16 v0, 0x801

    :try_start_1
    const-string v1, "__t"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1093
    iget-wide v0, p0, Lcom/umeng/analytics/pro/i;->p:J

    iget v2, p0, Lcom/umeng/analytics/pro/i;->o:I

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/analytics/pro/i;->a(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1096
    iget v0, p0, Lcom/umeng/analytics/pro/i;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/analytics/pro/i;->o:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic e()Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    return-object v0
.end method

.method private e(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 1871
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/i;->b(Landroid/content/Context;)V

    .line 1872
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/i;->a()V

    .line 1874
    check-cast p1, Lorg/json/JSONObject;

    .line 1875
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1892
    :cond_0
    :goto_0
    return-void

    .line 1876
    :cond_1
    const-string v0, "provider"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1877
    const-string v1, "uid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1879
    sget-object v2, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    .line 1880
    if-eqz v2, :cond_2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1881
    :cond_2
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v2

    sget-object v3, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    .line 1882
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1881
    invoke-virtual {v2, v3, v4, v5}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;J)Z

    move-result v2

    .line 1883
    sget-object v3, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    if-eqz v2, :cond_0

    .line 1885
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1889
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private e(Z)Z
    .locals 3

    .prologue
    .line 1207
    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1228
    :cond_0
    :goto_0
    return v0

    .line 1208
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->d:Lcom/umeng/analytics/pro/i$c;

    if-nez v0, :cond_2

    .line 1209
    new-instance v0, Lcom/umeng/analytics/pro/i$c;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/i$c;-><init>(Lcom/umeng/analytics/pro/i;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->d:Lcom/umeng/analytics/pro/i$c;

    .line 1212
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->d:Lcom/umeng/analytics/pro/i$c;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/i$c;->a()V

    .line 1214
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->d:Lcom/umeng/analytics/pro/i$c;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/i$c;->c()Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v1

    .line 1215
    invoke-virtual {v1, p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;->shouldSendMessage(Z)Z

    move-result v0

    .line 1218
    if-eqz v0, :cond_0

    .line 1219
    instance-of v2, v1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    if-nez v2, :cond_3

    instance-of v1, v1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;

    if-eqz v1, :cond_0

    .line 1222
    :cond_3
    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1223
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/i;->a()V

    goto :goto_0
.end method

.method private f()V
    .locals 5

    .prologue
    .line 261
    :try_start_0
    const-string v0, "com.umeng.analytics.vismode.event.VisualHelper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 262
    const-string v1, "loadNativeData"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 263
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private f(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 1896
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, v0

    .line 1897
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1898
    const-string v2, "__ii"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1899
    const-string v2, "__ii"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1900
    const-string v3, "__ii"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1901
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1902
    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1908
    :cond_0
    :goto_0
    return-void

    .line 1906
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private g()V
    .locals 5

    .prologue
    .line 273
    :try_start_0
    const-string v0, "com.umeng.analytics.vismode.event.VisualHelper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 274
    const-string v1, "processCommond"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 275
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private h()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 870
    .line 872
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    const-string v1, "pr_ve"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 873
    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 874
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->f:Ljava/lang/String;

    .line 905
    :goto_0
    return-object v0

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    .line 882
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    const-string v1, "pre_version"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 883
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 885
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 886
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pre_version"

    const-string v4, "0"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cur_version"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 887
    const-string v0, "0"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 903
    :goto_1
    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->f:Ljava/lang/String;

    goto :goto_0

    .line 889
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    const-string v4, "cur_version"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 890
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 891
    iget-object v1, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "pre_version"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "cur_version"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 892
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 901
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 895
    goto :goto_1

    .line 901
    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_1
.end method

.method private i()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 914
    .line 916
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    const-string v1, "ud_da"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 918
    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 919
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->g:Ljava/lang/String;

    .line 944
    :goto_0
    return-object v0

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    .line 923
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    const-string v1, "pre_date"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 924
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 925
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    .line 926
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 927
    iget-object v1, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "pre_date"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 943
    :goto_1
    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->g:Ljava/lang/String;

    goto :goto_0

    .line 930
    :cond_2
    :try_start_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    .line 931
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 932
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 933
    iget-object v1, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "pre_date"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 941
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 936
    goto :goto_1

    .line 941
    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_1
.end method

.method private j()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 953
    .line 955
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    const-string v1, "pr_ve"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 956
    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 957
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->h:Ljava/lang/String;

    .line 988
    :goto_0
    return-object v0

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    .line 965
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    const-string v1, "dp_pre_version"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 966
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 968
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 969
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dp_pre_version"

    const-string v4, "0"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dp_cur_version"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 970
    const-string v0, "0"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 986
    :goto_1
    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->h:Ljava/lang/String;

    goto :goto_0

    .line 972
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    const-string v4, "dp_cur_version"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 973
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 974
    iget-object v1, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "dp_pre_version"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "dp_cur_version"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 975
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 984
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 978
    goto :goto_1

    .line 984
    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_1
.end method

.method private k()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 997
    .line 999
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    const-string v1, "ud_da"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1001
    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1002
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->i:Ljava/lang/String;

    .line 1027
    :goto_0
    return-object v0

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    .line 1006
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    const-string v1, "dp_pre_date"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1007
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1008
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    .line 1009
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1010
    iget-object v1, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "dp_pre_date"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1026
    :goto_1
    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->i:Ljava/lang/String;

    goto :goto_0

    .line 1013
    :cond_2
    :try_start_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    .line 1014
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1015
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1016
    iget-object v1, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "dp_pre_date"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1024
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 1019
    goto :goto_1

    .line 1024
    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_1
.end method

.method private l()V
    .locals 4

    .prologue
    .line 1150
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/umeng/analytics/pro/i;->n:I

    .line 1151
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/analytics/pro/i;->o:I

    .line 1152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/pro/i;->p:J

    .line 1154
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1155
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dstk_last_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dstk_cnt"

    const/4 v2, 0x0

    .line 1156
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1158
    :goto_0
    return-void

    .line 1157
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private m()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1240
    :try_start_0
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/o;->c()Ljava/lang/String;

    move-result-object v1

    .line 1241
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1242
    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/i;->b(Landroid/content/Context;)V

    .line 1245
    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v0

    .line 1248
    :goto_0
    iget-object v2, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1249
    iget-object v2, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1250
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1251
    const-string v3, "__i"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1252
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "-1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    .line 1262
    :cond_1
    :goto_1
    return v0

    .line 1248
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1260
    :catch_0
    move-exception v0

    .line 1262
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private n()V
    .locals 5

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 1757
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1758
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1760
    :try_start_0
    iget-object v1, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1761
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1762
    const-string v1, "__i"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1763
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "-1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1764
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/o;->c()Ljava/lang/String;

    move-result-object v1

    .line 1765
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1766
    const-string v1, "-1"

    .line 1768
    :cond_1
    const-string v4, "__i"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1770
    :cond_2
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1758
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1772
    :cond_3
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1774
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1776
    :cond_4
    iput-object v2, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    .line 1778
    :cond_5
    return-void
.end method

.method private o()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1785
    :try_start_0
    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1786
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1787
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1788
    if-eqz v0, :cond_0

    .line 1789
    const-string v1, "first_activate_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1790
    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1791
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1792
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_activate_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1798
    :cond_0
    :goto_0
    return-void

    .line 1797
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private p()Z
    .locals 4

    .prologue
    .line 1832
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1833
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1834
    if-eqz v0, :cond_0

    .line 1835
    const-string v1, "ana_is_f"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1836
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1837
    const/4 v0, 0x1

    .line 1842
    :goto_0
    return v0

    .line 1841
    :catch_0
    move-exception v0

    .line 1842
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()V
    .locals 4

    .prologue
    .line 1848
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/i;->b(Landroid/content/Context;)V

    .line 1849
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/i;->a()V

    .line 1851
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 1852
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1854
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    .line 1855
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1854
    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;J)Z

    move-result v0

    .line 1856
    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/c;->b(Landroid/content/Context;)V

    .line 1857
    if-eqz v0, :cond_0

    .line 1858
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1866
    :cond_0
    :goto_0
    return-void

    .line 1861
    :catch_0
    move-exception v0

    .line 1862
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1863
    const-string v1, " Excepthon  in  onProfileSignOff"

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(J)Lorg/json/JSONObject;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v0, 0x0

    .line 498
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/pro/o;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-object v0

    .line 503
    :cond_1
    invoke-virtual {p0, v6}, Lcom/umeng/analytics/pro/i;->b(Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 505
    invoke-static {}, Lcom/umeng/analytics/pro/l;->a()Lcom/umeng/analytics/pro/l;

    move-result-object v2

    sget-object v3, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/pro/l;->a(Landroid/content/Context;)I

    move-result v2

    .line 510
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 515
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 516
    const-string v3, "active_user"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 519
    if-ne v2, v5, :cond_0

    .line 521
    :cond_2
    const-string v3, "userlevel"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 524
    if-ne v2, v5, :cond_0

    .line 538
    :cond_3
    invoke-direct {p0, v6}, Lcom/umeng/analytics/pro/i;->d(Z)Lorg/json/JSONObject;

    move-result-object v3

    .line 540
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 542
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 543
    if-ne v2, v5, :cond_8

    .line 544
    const-string v1, "analytics"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 550
    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 551
    const-string v1, "header"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 554
    :cond_5
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 555
    const-string v1, "content"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 558
    :cond_6
    invoke-direct {p0, v0, p1, p2}, Lcom/umeng/analytics/pro/i;->a(Lorg/json/JSONObject;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 527
    :cond_7
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 528
    const-string v3, "active_user"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "userlevel"

    .line 529
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 532
    if-eq v2, v5, :cond_3

    goto/16 :goto_0

    .line 546
    :cond_8
    if-eqz v1, :cond_4

    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 547
    const-string v2, "analytics"

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 559
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 1035
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1036
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/g;->a(Lorg/json/JSONArray;)V

    .line 1037
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    .line 1039
    :cond_0
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1040
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "thtstart"

    iget-wide v2, p0, Lcom/umeng/analytics/pro/i;->p:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gkvc"

    iget v2, p0, Lcom/umeng/analytics/pro/i;->n:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ekvc"

    iget v2, p0, Lcom/umeng/analytics/pro/i;->o:I

    .line 1041
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    :goto_0
    return-void

    .line 1042
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1554
    if-eqz p1, :cond_0

    .line 1555
    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    .line 1560
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1561
    const-string v0, "exception"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1562
    const/16 v0, 0x65

    const-string v1, "exception"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1573
    :cond_0
    :goto_0
    return-void

    .line 1565
    :cond_1
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/i;->c(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 1572
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1568
    :cond_2
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/i;->c(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    .line 121
    sparse-switch p2, :sswitch_data_0

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 127
    :sswitch_0
    if-eqz p1, :cond_1

    .line 128
    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/Object;)V

    .line 130
    :cond_1
    check-cast p1, Lorg/json/JSONObject;

    .line 131
    const-string v0, "__i"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/i;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    goto :goto_0

    .line 142
    :sswitch_1
    if-eqz p1, :cond_2

    .line 143
    :try_start_1
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/Object;)V

    .line 145
    :cond_2
    check-cast p1, Lorg/json/JSONObject;

    .line 146
    const-string v0, "__i"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/i;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 150
    :catch_1
    move-exception v0

    goto :goto_0

    .line 157
    :sswitch_2
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/p;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 163
    :sswitch_3
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 170
    :sswitch_4
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 177
    :sswitch_5
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/Object;IZ)V

    goto :goto_0

    .line 184
    :sswitch_6
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/i;->a()V

    goto :goto_0

    .line 191
    :sswitch_7
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/i;->f(Ljava/lang/Object;)V

    goto :goto_0

    .line 197
    :sswitch_8
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/i;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 203
    :sswitch_9
    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->q()V

    goto :goto_0

    .line 209
    :sswitch_a
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 215
    :sswitch_b
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/b;->k()V

    goto :goto_0

    .line 221
    :sswitch_c
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/b;->i()V

    goto :goto_0

    .line 228
    :sswitch_d
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 235
    :sswitch_e
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 239
    :sswitch_f
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->g()V

    goto/16 :goto_0

    .line 244
    :sswitch_10
    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->f()V

    goto/16 :goto_0

    .line 248
    :sswitch_11
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/b;->b(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 251
    :sswitch_12
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/b;->b(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 121
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1002 -> :sswitch_1
        0x1003 -> :sswitch_2
        0x1004 -> :sswitch_3
        0x1005 -> :sswitch_8
        0x1006 -> :sswitch_9
        0x1007 -> :sswitch_d
        0x1008 -> :sswitch_e
        0x1009 -> :sswitch_6
        0x100a -> :sswitch_7
        0x2001 -> :sswitch_5
        0x2002 -> :sswitch_4
        0x2003 -> :sswitch_a
        0x2004 -> :sswitch_b
        0x2005 -> :sswitch_c
        0x2006 -> :sswitch_f
        0x2007 -> :sswitch_11
        0x2008 -> :sswitch_11
        0x2009 -> :sswitch_12
        0x200a -> :sswitch_10
    .end sparse-switch
.end method

.method public a(Ljava/lang/Object;IZ)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 292
    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    .line 293
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 294
    const-string v1, "__ii"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 301
    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 306
    if-nez p2, :cond_0

    .line 307
    const-string v1, "dstk_last_time"

    const-wide/16 v4, 0x0

    invoke-interface {v3, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 308
    const-string v1, "dstk_cnt"

    const/4 v6, 0x0

    invoke-interface {v3, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 310
    invoke-direct {p0, v4, v5, v1}, Lcom/umeng/analytics/pro/i;->a(JI)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 312
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "dstk_last_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "dstk_cnt"

    const/16 v6, 0x1388

    if-ne v1, v6, :cond_3

    move v1, v0

    .line 313
    :goto_0
    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 314
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 321
    :cond_0
    const-string v1, "n_sess_dp"

    const-string v4, ""

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 322
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 323
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 328
    :goto_1
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v4

    .line 329
    invoke-virtual {v4}, Lcom/umeng/analytics/b;->j()Lorg/json/JSONObject;

    move-result-object v4

    .line 332
    const-string v5, "-1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 334
    const-string v0, "n_sess_dp_type"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 335
    const-string v0, "_$!sp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 337
    const-string v0, "_$!sp"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    :cond_1
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 342
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "n_sess_dp"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 421
    :cond_2
    :goto_2
    return-void

    .line 312
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    :cond_4
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 419
    :catch_0
    move-exception v0

    goto :goto_2

    .line 346
    :cond_5
    const/4 v5, 0x3

    if-eq p2, v5, :cond_9

    .line 347
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 350
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_8

    .line 351
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 353
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_7

    .line 354
    const-string v6, "n_sess_dp_type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 356
    const-string v7, "_$!sp"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 357
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 358
    const-string v7, "_$!sp"

    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 362
    :cond_6
    packed-switch v6, :pswitch_data_0

    .line 379
    :goto_4
    const-string v7, "__ii"

    invoke-virtual {v5, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    const-string v7, "n_sess_dp_type"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 382
    sget-object v7, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/umeng/analytics/pro/g;->a(Lorg/json/JSONObject;I)V

    .line 350
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 367
    :pswitch_0
    const-string v7, "_$!ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_4

    .line 373
    :pswitch_1
    const-string v7, "_$!ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_4

    .line 386
    :cond_8
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/b;->c()V

    .line 387
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "n_sess_dp"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 391
    :cond_9
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/umeng/analytics/pro/g;->a(Lorg/json/JSONObject;I)V

    .line 398
    if-eqz p3, :cond_a

    .line 399
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/i;->c(Z)V

    goto/16 :goto_2

    .line 401
    :cond_a
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    sget-object v1, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_DPLUS:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isReadyBuild(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/Defcon;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 405
    new-instance v1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    sget-object v2, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;Lcom/umeng/commonsdk/statistics/noise/Defcon;)V

    const/4 v0, 0x0

    .line 406
    invoke-virtual {v1, v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;->shouldSendMessage(Z)Z

    move-result v0

    .line 407
    if-eqz v0, :cond_2

    .line 408
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/i;->c(Z)V

    goto/16 :goto_2

    .line 412
    :cond_b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/i;->c(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 362
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 1967
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    sget-object v1, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_DPLUS:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isReadyBuild(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1971
    if-eqz p1, :cond_0

    .line 1973
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/i;->d(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 1974
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1975
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1976
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1977
    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1978
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1979
    const-string v4, "session"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1980
    const-string v2, "dplus"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1981
    sget-object v2, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1983
    sget-object v2, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1990
    :cond_0
    :goto_0
    return-void

    .line 1988
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/i;->e(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    sget-object v1, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_APP:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isReadyBuild(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/i;->c(Z)V

    .line 435
    :cond_0
    return-void
.end method

.method public b(J)Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 579
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    if-nez v0, :cond_0

    move-object v0, v1

    .line 643
    :goto_0
    return-object v0

    .line 588
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v0

    sget-object v2, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/umeng/analytics/pro/o;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 589
    goto :goto_0

    .line 592
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 593
    sget-boolean v2, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    if-eqz v2, :cond_2

    .line 595
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 597
    invoke-static {}, Lcom/umeng/analytics/pro/l;->a()Lcom/umeng/analytics/pro/l;

    move-result-object v2

    sget-object v3, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-virtual {v2, v0, v3}, Lcom/umeng/analytics/pro/l;->a(Lorg/json/JSONObject;Landroid/content/Context;)V

    .line 600
    sget-object v2, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/Defcon;

    move-result-object v2

    .line 601
    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 602
    new-instance v3, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    sget-object v4, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;Lcom/umeng/commonsdk/statistics/noise/Defcon;)V

    const/4 v2, 0x0

    .line 604
    invoke-virtual {v3, v2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;->shouldSendMessage(Z)Z

    move-result v2

    .line 605
    if-nez v2, :cond_2

    .line 606
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 614
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-gtz v2, :cond_3

    move-object v0, v1

    .line 616
    goto :goto_0

    .line 620
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/i;->d(Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 622
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 624
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 625
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 626
    const-string v4, "dplus"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 629
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 630
    const-string v0, "header"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 633
    :cond_5
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 634
    const-string v0, "content"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 637
    :cond_6
    invoke-direct {p0, v1, p1, p2}, Lcom/umeng/analytics/pro/i;->a(Lorg/json/JSONObject;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 638
    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0
.end method

.method public b(Z)Lorg/json/JSONObject;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 793
    const/4 v0, 0x0

    .line 803
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/umeng/analytics/pro/g;->a(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 804
    if-nez v0, :cond_0

    .line 805
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    .line 811
    :cond_0
    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 812
    if-eqz v1, :cond_1

    .line 813
    const-string v2, "userlevel"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 814
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 815
    const-string v3, "userlevel"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 824
    :cond_1
    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->p()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 825
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/i;->c()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/umeng/analytics/pro/i;->j:J

    .line 826
    iget-wide v2, p0, Lcom/umeng/analytics/pro/i;->j:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 827
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 828
    const-string v3, "ts"

    iget-wide v4, p0, Lcom/umeng/analytics/pro/i;->j:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 829
    const-string v3, "activate_msg"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 830
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ana_is_f"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 837
    :cond_2
    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 838
    if-eqz v1, :cond_3

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 839
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 840
    const-string v3, "provider"

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 841
    const-string v3, "puid"

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 842
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "active_user"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 847
    :cond_3
    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 848
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 849
    sget-object v2, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getGroupInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 850
    const-string v2, "group_info"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 853
    :cond_4
    invoke-static {}, Lcom/umeng/analytics/pro/l;->a()Lcom/umeng/analytics/pro/l;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/umeng/analytics/pro/l;->b(Lorg/json/JSONObject;Landroid/content/Context;)V

    .line 855
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 856
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 857
    const-string v2, "analytics"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    :cond_5
    :goto_0
    return-object v0

    .line 859
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 1702
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/analytics/pro/i;->z:Z

    .line 1703
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/i;->c(Z)V

    .line 1704
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1692
    :try_start_0
    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->b()V

    .line 1694
    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->n()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1696
    :goto_0
    return-void

    .line 1695
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1659
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/analytics/pro/i;->z:Z

    .line 1660
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/i;->b(Landroid/content/Context;)V

    .line 1661
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/i;->a()V

    .line 1663
    invoke-direct {p0, v4}, Lcom/umeng/analytics/pro/i;->c(Z)V

    .line 1665
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    if-eqz v0, :cond_3

    .line 1667
    check-cast p1, Lorg/json/JSONObject;

    .line 1668
    if-nez p1, :cond_0

    .line 1669
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 1672
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/b;->h(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1673
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1674
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1675
    if-eqz v1, :cond_2

    .line 1676
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1678
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1679
    sget-object v3, Lcom/umeng/analytics/pro/b;->au:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1680
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1682
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1686
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, v4}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/Object;IZ)V

    .line 1688
    :cond_3
    return-void
.end method

.method public c()J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 1807
    .line 1809
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1810
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1811
    if-eqz v4, :cond_1

    .line 1812
    const-string v0, "first_activate_time"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v0, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1813
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1814
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1815
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "first_activate_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1821
    :cond_0
    :goto_0
    return-wide v0

    .line 1819
    :catch_0
    move-exception v0

    move-wide v0, v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1712
    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->o()V

    .line 1713
    sput-boolean v0, Lcom/umeng/analytics/pro/i;->A:Z

    .line 1715
    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->h()Ljava/lang/String;

    .line 1716
    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->i()Ljava/lang/String;

    .line 1718
    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->j()Ljava/lang/String;

    .line 1719
    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->k()Ljava/lang/String;

    .line 1721
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/i;->a(Z)V

    .line 1723
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    if-eqz v0, :cond_3

    .line 1724
    check-cast p1, Lorg/json/JSONObject;

    .line 1725
    if-nez p1, :cond_0

    .line 1726
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 1729
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/b;->h(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1730
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1731
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1732
    if-eqz v1, :cond_2

    .line 1733
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1735
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1736
    sget-object v3, Lcom/umeng/analytics/pro/b;->au:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1737
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1739
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1743
    :cond_2
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/Object;IZ)V

    .line 1745
    :cond_3
    return-void
.end method

.method public d()V
    .locals 10

    .prologue
    .line 1912
    :try_start_0
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o;->c()Ljava/lang/String;

    move-result-object v2

    .line 1913
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1915
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1916
    const-string v0, "n_sess_dp"

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1918
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1919
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move-object v1, v0

    .line 1924
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1926
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1927
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1929
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 1930
    const-string v5, "n_sess_dp_type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1932
    packed-switch v5, :pswitch_data_0

    .line 1943
    :goto_2
    const-string v6, "__ii"

    invoke-virtual {v4, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1944
    const-string v6, "n_sess_dp_type"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1946
    sget-object v6, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/umeng/analytics/pro/g;->a(Lorg/json/JSONObject;I)V

    .line 1926
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1921
    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    .line 1934
    :pswitch_0
    const-string v6, "_$!ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_2

    .line 1956
    :catch_0
    move-exception v0

    .line 1958
    :cond_2
    :goto_3
    return-void

    .line 1937
    :pswitch_1
    const-string v6, "_$!ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_2

    .line 1949
    :cond_3
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "n_sess_dp"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1951
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    sget-object v1, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_DPLUS:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isReadyBuild(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1952
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/i;->c(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1932
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
