.class public Lcom/umeng/analytics/b;
.super Ljava/lang/Object;
.source "InternalAgent.java"

# interfaces
.implements Lcom/umeng/analytics/pro/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/b$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "sp"

.field private static final h:Ljava/lang/String; = "prepp"

.field private static final n:I = 0x80

.field private static final o:I = 0x100

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/umeng/analytics/pro/r;

.field private c:Lcom/umeng/analytics/pro/j;

.field private d:Lcom/umeng/analytics/pro/p;

.field private e:Lcom/umeng/analytics/pro/o;

.field private f:Lcom/umeng/analytics/pro/h;

.field private i:Z

.field private volatile j:Lorg/json/JSONObject;

.field private volatile k:Lorg/json/JSONObject;

.field private volatile l:Lorg/json/JSONObject;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, ""

    sput-object v0, Lcom/umeng/analytics/b;->p:Ljava/lang/String;

    .line 69
    const-string v0, ""

    sput-object v0, Lcom/umeng/analytics/b;->q:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/umeng/analytics/pro/j;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/j;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/pro/j;

    .line 54
    new-instance v0, Lcom/umeng/analytics/pro/p;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/p;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/p;

    .line 55
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/pro/o;

    .line 56
    iput-object v1, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/pro/h;

    .line 59
    iput-boolean v2, p0, Lcom/umeng/analytics/b;->i:Z

    .line 60
    iput-object v1, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    .line 61
    iput-object v1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    .line 62
    iput-object v1, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;

    .line 63
    iput-boolean v2, p0, Lcom/umeng/analytics/b;->m:Z

    .line 72
    iget-object v0, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/pro/j;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/pro/j;->a(Lcom/umeng/analytics/pro/n;)V

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/b$1;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/umeng/analytics/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/umeng/analytics/b;
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/umeng/analytics/b$a;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 837
    :try_start_0
    iget-object v1, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    .line 838
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    .line 841
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 843
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 844
    instance-of v1, p2, [Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 846
    check-cast p2, [Ljava/lang/String;

    check-cast p2, [Ljava/lang/String;

    .line 847
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 848
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 849
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 848
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 851
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 924
    :cond_2
    :goto_1
    return-void

    .line 852
    :cond_3
    instance-of v1, p2, [J

    if-eqz v1, :cond_5

    .line 853
    check-cast p2, [J

    check-cast p2, [J

    .line 854
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 855
    :goto_2
    array-length v2, p2

    if-ge v0, v2, :cond_4

    .line 856
    aget-wide v2, p2, v0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 855
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 858
    :cond_4
    iget-object v0, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 921
    :catch_0
    move-exception v0

    goto :goto_1

    .line 859
    :cond_5
    instance-of v1, p2, [I

    if-eqz v1, :cond_7

    .line 860
    check-cast p2, [I

    check-cast p2, [I

    .line 861
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 862
    :goto_3
    array-length v2, p2

    if-ge v0, v2, :cond_6

    .line 863
    aget v2, p2, v0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 862
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 865
    :cond_6
    iget-object v0, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 866
    :cond_7
    instance-of v1, p2, [F

    if-eqz v1, :cond_9

    .line 867
    check-cast p2, [F

    check-cast p2, [F

    .line 868
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 869
    :goto_4
    array-length v2, p2

    if-ge v0, v2, :cond_8

    .line 870
    aget v2, p2, v0

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 869
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 872
    :cond_8
    iget-object v0, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 873
    :cond_9
    instance-of v1, p2, [D

    if-eqz v1, :cond_b

    .line 874
    check-cast p2, [D

    check-cast p2, [D

    .line 875
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 876
    :goto_5
    array-length v2, p2

    if-ge v0, v2, :cond_a

    .line 877
    aget-wide v2, p2, v0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 876
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 879
    :cond_a
    iget-object v0, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 880
    :cond_b
    instance-of v1, p2, [S

    if-eqz v1, :cond_2

    .line 881
    check-cast p2, [S

    check-cast p2, [S

    .line 882
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 883
    :goto_6
    array-length v2, p2

    if-ge v0, v2, :cond_c

    .line 884
    aget-short v2, p2, v0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 883
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 886
    :cond_c
    iget-object v0, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 891
    :cond_d
    instance-of v1, p2, Ljava/util/List;

    if-eqz v1, :cond_11

    .line 892
    check-cast p2, Ljava/util/List;

    .line 893
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 895
    :goto_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_10

    .line 896
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 897
    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_e

    instance-of v3, v2, Ljava/lang/Long;

    if-nez v3, :cond_e

    instance-of v3, v2, Ljava/lang/Integer;

    if-nez v3, :cond_e

    instance-of v3, v2, Ljava/lang/Float;

    if-nez v3, :cond_e

    instance-of v3, v2, Ljava/lang/Double;

    if-nez v3, :cond_e

    instance-of v2, v2, Ljava/lang/Short;

    if-eqz v2, :cond_f

    .line 904
    :cond_e
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 895
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 907
    :cond_10
    iget-object v0, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 908
    :cond_11
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_12

    instance-of v0, p2, Ljava/lang/Long;

    if-nez v0, :cond_12

    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_12

    instance-of v0, p2, Ljava/lang/Float;

    if-nez v0, :cond_12

    instance-of v0, p2, Ljava/lang/Double;

    if-nez v0, :cond_12

    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_2

    .line 915
    :cond_12
    iget-object v0, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 503
    if-nez p1, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 508
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 511
    :cond_2
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->i:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->m:Z

    if-nez v0, :cond_4

    .line 512
    :cond_3
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 514
    :cond_4
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/m;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;Ljava/util/Map;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 515
    :catch_0
    move-exception v0

    .line 516
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 517
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1291
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_1

    .line 1323
    :cond_0
    :goto_0
    return v0

    .line 1296
    :cond_1
    :try_start_1
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1299
    :goto_1
    const/16 v3, 0x80

    if-gt v2, v3, :cond_0

    .line 1303
    :try_start_2
    sget-object v2, Lcom/umeng/analytics/pro/b;->au:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1306
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1307
    check-cast p2, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x100

    if-gt v2, v3, :cond_0

    move v0, v1

    .line 1310
    goto :goto_0

    .line 1297
    :catch_0
    move-exception v2

    move v2, v0

    goto :goto_1

    .line 1312
    :cond_2
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    move v0, v1

    .line 1313
    goto :goto_0

    .line 1314
    :cond_3
    instance-of v2, p2, Ljava/lang/Long;

    if-eqz v2, :cond_4

    move v0, v1

    .line 1315
    goto :goto_0

    .line 1316
    :cond_4
    instance-of v2, p2, Ljava/lang/Double;

    if-eqz v2, :cond_5

    move v0, v1

    .line 1317
    goto :goto_0

    .line 1318
    :cond_5
    instance-of v2, p2, Ljava/lang/Float;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v2, :cond_0

    move v0, v1

    .line 1319
    goto :goto_0

    .line 1322
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private i(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 140
    if-nez p1, :cond_1

    .line 141
    :try_start_0
    const-string v0, "unexpected null context in getNativeSuperProperties"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 147
    :cond_2
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 148
    const-string v1, "sp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_4

    .line 151
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    .line 152
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    .line 153
    iget-object v1, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    if-nez v1, :cond_3

    .line 154
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    .line 156
    :cond_3
    iget-object v1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    if-nez v1, :cond_4

    .line 157
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 161
    :cond_4
    :goto_1
    :try_start_2
    const-string v1, "prepp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    if-nez v1, :cond_0

    .line 164
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;

    .line 165
    iget-object v0, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    goto :goto_0

    .line 170
    :catch_1
    move-exception v0

    goto :goto_0

    .line 159
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private j(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 287
    :try_start_0
    const-string v0, "com.umeng.visual.UMVisualAgent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-le v0, v1, :cond_0

    .line 290
    const/16 v0, 0x2006

    .line 292
    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 290
    invoke-static {p1, v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method a(DD)V
    .locals 3

    .prologue
    .line 712
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    if-nez v0, :cond_0

    .line 713
    const/4 v0, 0x2

    new-array v0, v0, [D

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    .line 716
    :cond_0
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 717
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 718
    return-void
.end method

.method a(J)V
    .locals 1

    .prologue
    .line 781
    sput-wide p1, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    .line 782
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/16 v6, 0xd

    .line 86
    if-nez p1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 94
    :cond_2
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->i:Z

    if-nez v0, :cond_3

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/analytics/b;->i:Z

    .line 99
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/b;->i(Landroid/content/Context;)V

    .line 102
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v6, :cond_6

    .line 103
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :try_start_1
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->m:Z

    if-nez v0, :cond_4

    .line 106
    new-instance v0, Lcom/umeng/analytics/pro/h;

    invoke-direct {v0, p1}, Lcom/umeng/analytics/pro/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/pro/h;

    .line 107
    iget-object v0, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/pro/h;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/h;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/analytics/b;->m:Z

    .line 111
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 120
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10090"

    const/4 v2, 0x3

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 123
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v6, :cond_0

    .line 124
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x200a

    iget-object v2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 126
    invoke-static {v2}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 124
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 114
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/analytics/b;->m:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method public a(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 219
    if-nez p1, :cond_0

    .line 220
    const-string v0, "unexpected null context in setVerticalType"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 230
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 224
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 226
    :cond_1
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->i:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->m:Z

    if-nez v0, :cond_3

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/umeng/analytics/AnalyticsConfig;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 727
    if-nez p1, :cond_1

    .line 728
    const-string v0, "unexpected null context in setScenarioType"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 732
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 734
    :cond_2
    if-eqz p2, :cond_3

    .line 735
    invoke-virtual {p2}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v0

    .line 739
    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 740
    sput-boolean v2, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    .line 746
    :goto_1
    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;I)V

    .line 748
    :cond_3
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->i:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->m:Z

    if-nez v0, :cond_0

    .line 749
    :cond_4
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 741
    :cond_5
    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_GAME:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 742
    sput-boolean v2, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    goto :goto_1

    .line 744
    :cond_6
    const/4 v1, 0x0

    sput-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    goto :goto_1
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 356
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10061"

    const-string v2, "\\|"

    invoke-interface {v0, v1, v3, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    if-nez p1, :cond_2

    .line 364
    const-string v0, "unexpected null context in reportError"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 365
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10060"

    const-string v2, "\\|"

    invoke-interface {v0, v1, v3, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_3

    .line 369
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 372
    :cond_3
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->i:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->m:Z

    if-nez v0, :cond_5

    .line 373
    :cond_4
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 375
    :cond_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 376
    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 377
    const-string v1, "error_source"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 378
    const-string v1, "context"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 379
    const-string v1, "__ii"

    iget-object v2, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/pro/o;

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/o;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v2, 0x100a

    iget-object v3, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 382
    invoke-static {v3}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v3

    .line 380
    invoke-static {v1, v2, v3, v0}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 383
    :catch_0
    move-exception v0

    .line 384
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 385
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 797
    monitor-enter p0

    if-nez p1, :cond_0

    .line 798
    :try_start_0
    const-string v0, "unexpected null context in registerSuperProperty"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 799
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15014"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 833
    :goto_0
    monitor-exit p0

    return-void

    .line 802
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 803
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 805
    :cond_1
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->i:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->m:Z

    if-nez v0, :cond_3

    .line 806
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 808
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p3, :cond_5

    .line 809
    :cond_4
    const-string v0, "please check key or value, must not NULL!"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 810
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15015"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 829
    :catch_0
    move-exception v0

    .line 830
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 797
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 815
    :cond_5
    const/16 v0, 0x80

    :try_start_3
    invoke-static {p2, v0}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 817
    sget-object v1, Lcom/umeng/analytics/pro/b;->at:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 818
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 819
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 821
    :cond_6
    invoke-direct {p0, v0, p3}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 822
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x2003

    iget-object v2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 824
    invoke-static {v2}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 822
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto :goto_0

    .line 826
    :cond_7
    const-string v0, "SuperProperty  key is invalid.  "

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 8

    .prologue
    .line 454
    if-eqz p1, :cond_0

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 456
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 459
    :cond_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->i:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->m:Z

    if-nez v0, :cond_2

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 462
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/m;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :cond_3
    :goto_0
    return-void

    .line 463
    :catch_0
    move-exception v0

    .line 464
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 465
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 339
    if-eqz p1, :cond_0

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 341
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 344
    :cond_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->i:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->m:Z

    if-nez v0, :cond_2

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/m;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :cond_3
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 350
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 561
    if-eqz p1, :cond_0

    .line 562
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 563
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 566
    :cond_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->i:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->m:Z

    if-nez v0, :cond_2

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 569
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 570
    const-string v0, "the eventName is empty! please check~"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 571
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15012"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 587
    :goto_0
    return-void

    .line 575
    :cond_3
    const-string v3, ""

    .line 576
    iget-object v0, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    if-nez v0, :cond_4

    .line 577
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    .line 581
    :goto_1
    iget-object v6, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v7, 0x2002

    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 583
    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v8

    new-instance v0, Lcom/umeng/analytics/pro/i$d;

    .line 584
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/umeng/analytics/pro/i$d;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)V

    .line 581
    invoke-static {v6, v7, v8, v0}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto :goto_0

    .line 585
    :catch_0
    move-exception v0

    goto :goto_0

    .line 579
    :cond_4
    iget-object v0, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 525
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    sget-object v0, Lcom/umeng/analytics/pro/b;->ar:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    const-string v0, "Event id uses reserved keywords, please use other event name. "

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 528
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10001"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 557
    :goto_0
    return-void

    .line 532
    :cond_0
    const-string v0, "Event id is empty, please check."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 533
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10002"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 550
    :catch_0
    move-exception v0

    .line 551
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 552
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    .line 556
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/umeng/analytics/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V

    goto :goto_0

    .line 537
    :cond_2
    :try_start_1
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 538
    const-string v0, "Map is empty, please check."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 539
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10003"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 542
    :cond_3
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 543
    sget-object v2, Lcom/umeng/analytics/pro/b;->ar:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 544
    const-string v0, "Map key uses reserved keywords[_$!link], please use other key."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 545
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10004"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 397
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 398
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10062"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 414
    :cond_1
    :goto_0
    return-void

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_3

    .line 402
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 405
    :cond_3
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->i:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->m:Z

    if-nez v0, :cond_5

    .line 406
    :cond_4
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 408
    :cond_5
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->convertExceptionToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 411
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1097
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1098
    :try_start_0
    const-string v0, "unexpected null context in setFirstLaunchEvent"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 1099
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15018"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1112
    :goto_0
    monitor-exit p0

    return-void

    .line 1102
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1103
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1105
    :cond_1
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->i:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->m:Z

    if-nez v0, :cond_3

    .line 1106
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 1108
    :cond_3
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/m;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/umeng/analytics/pro/m;->a(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1109
    :catch_0
    move-exception v0

    .line 1110
    :try_start_2
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1097
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 1122
    monitor-enter p0

    if-nez p1, :cond_1

    .line 1123
    :try_start_0
    const-string v0, "unexpected null context in setPreProperties"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 1124
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15020"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1163
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1127
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 1128
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1130
    :cond_2
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->i:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->m:Z

    if-nez v0, :cond_4

    .line 1131
    :cond_3
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 1133
    :cond_4
    iget-object v0, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;

    if-nez v0, :cond_5

    .line 1134
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;

    .line 1137
    :cond_5
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1138
    if-nez p2, :cond_6

    .line 1139
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15021"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 1143
    :cond_6
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 1144
    if-eqz v0, :cond_8

    .line 1145
    :cond_7
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_8

    .line 1147
    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1148
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1149
    invoke-direct {p0, v1, v2}, Lcom/umeng/analytics/b;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1150
    iget-object v3, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1152
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1157
    :cond_8
    :try_start_3
    iget-object v0, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x2007

    iget-object v2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1160
    invoke-static {v2}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1158
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/umeng/analytics/pro/r;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/umeng/analytics/b;->b:Lcom/umeng/analytics/pro/r;

    .line 216
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 933
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 934
    check-cast p1, Ljava/lang/String;

    .line 935
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 936
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 937
    const-string v1, "sp"

    iget-object v2, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 933
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 941
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 183
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v0, :cond_0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/p;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/p;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_0
    :goto_0
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_1

    .line 191
    new-array v4, v2, [Ljava/lang/String;

    const-string v0, "@"

    aput-object v0, v4, v1

    .line 192
    new-array v5, v2, [Ljava/lang/String;

    aput-object p1, v5, v1

    .line 193
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10102"

    const/4 v2, 0x2

    const-string v3, "\\|"

    move-object v7, v6

    invoke-interface/range {v0 .. v7}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 196
    :cond_1
    return-void

    .line 186
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 654
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 655
    const-string v1, "provider"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 656
    const-string v1, "uid"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 657
    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v2, 0x1005

    iget-object v3, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 659
    invoke-static {v3}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v3

    .line 657
    invoke-static {v1, v2, v3, v0}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 660
    :catch_0
    move-exception v0

    .line 661
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 662
    const-string v1, " Excepthon  in  onProfileSignIn"

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 620
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/p;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/p;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/p;->a()V

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/pro/h;

    if-eqz v0, :cond_1

    .line 624
    iget-object v0, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/pro/h;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/h;->c()V

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 627
    iget-object v0, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/pro/o;

    if-eqz v0, :cond_2

    .line 628
    iget-object v0, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/pro/o;

    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;Ljava/lang/Object;)V

    .line 630
    :cond_2
    if-eqz p1, :cond_3

    .line 631
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 632
    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 633
    const-string v1, "error_source"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 634
    const-string v1, "context"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->convertExceptionToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 635
    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/pro/o;

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/o;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 637
    :cond_3
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/i;->a()V

    .line 638
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/p;->a(Landroid/content/Context;)V

    .line 639
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V

    .line 640
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 644
    :cond_4
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->Quit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :cond_5
    :goto_0
    return-void

    .line 645
    :catch_0
    move-exception v0

    .line 646
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 647
    const-string v1, "Exception in onAppCrash"

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    .prologue
    .line 689
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getGPU(Ljavax/microedition/khronos/opengles/GL10;)[Ljava/lang/String;

    move-result-object v0

    .line 690
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 691
    const/4 v1, 0x0

    aget-object v1, v0, v1

    sput-object v1, Lcom/umeng/analytics/AnalyticsConfig;->GPU_VENDER:Ljava/lang/String;

    .line 692
    const/4 v1, 0x1

    aget-object v0, v0, v1

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_RENDERER:Ljava/lang/String;

    .line 694
    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 680
    sput-boolean p1, Lcom/umeng/analytics/AnalyticsConfig;->CATCH_EXCEPTION:Z

    .line 681
    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    return-object v0
.end method

.method b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 241
    if-nez p1, :cond_1

    .line 242
    const-string v0, "unexpected null context in onResume"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_7

    .line 252
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_3

    .line 253
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 257
    :cond_3
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->i:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->m:Z

    if-nez v0, :cond_5

    .line 258
    :cond_4
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 260
    :cond_5
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_6

    .line 261
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/p;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/p;->a(Ljava/lang/String;)V

    .line 264
    :cond_6
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->f()V

    .line 266
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/b;->j(Landroid/content/Context;)V

    .line 269
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/b;->p:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    const-string v1, "Exception occurred in Mobclick.onResume(). "

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 249
    :cond_7
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10031"

    const/4 v2, 0x2

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 472
    if-nez p1, :cond_1

    .line 473
    :try_start_0
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10120"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 478
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 480
    :cond_2
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->i:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->m:Z

    if-nez v0, :cond_4

    .line 481
    :cond_3
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 483
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 484
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 485
    const-string v0, "_$!link"

    invoke-interface {v3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const-string v2, "_$!deep_link"

    const-wide/16 v4, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/umeng/analytics/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 496
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 488
    :cond_5
    :try_start_1
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10121"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 489
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 490
    const-string v0, "please check your link!"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public declared-synchronized b(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1266
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1267
    if-eqz p1, :cond_1

    .line 1268
    check-cast p1, Ljava/lang/String;

    .line 1269
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1270
    const-string v1, "prepp"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1279
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1273
    :cond_1
    if-eqz v0, :cond_0

    .line 1274
    :try_start_1
    const-string v1, "prepp"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1277
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 199
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v0, :cond_0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/p;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/p;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_0
    :goto_0
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_1

    .line 207
    new-array v4, v2, [Ljava/lang/String;

    const-string v0, "@"

    aput-object v0, v4, v1

    .line 208
    new-array v5, v2, [Ljava/lang/String;

    aput-object p1, v5, v1

    .line 209
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10103"

    const/4 v2, 0x2

    const-string v3, "\\|"

    move-object v7, v6

    invoke-interface/range {v0 .. v7}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 212
    :cond_1
    return-void

    .line 202
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method b(Z)V
    .locals 0

    .prologue
    .line 702
    sput-boolean p1, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    .line 703
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    .line 180
    return-void
.end method

.method c(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 299
    if-nez p1, :cond_1

    .line 300
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10032"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 301
    const-string v0, "unexpected null context in onPause"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 305
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 308
    :cond_2
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 309
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_8

    .line 317
    :cond_3
    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->i:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->m:Z

    if-nez v0, :cond_5

    .line 318
    :cond_4
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 320
    :cond_5
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_6

    .line 321
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/p;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/p;->b(Ljava/lang/String;)V

    .line 323
    :cond_6
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :cond_7
    :goto_2
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/b;->q:Ljava/lang/String;

    goto :goto_0

    .line 312
    :cond_8
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10033"

    const/4 v2, 0x2

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 324
    :catch_0
    move-exception v0

    .line 325
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 326
    const-string v1, "Exception occurred in Mobclick.onRause(). "

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 761
    if-nez p1, :cond_0

    .line 762
    const-string v0, "unexpected null context in setSecret"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 763
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10070"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 773
    :goto_0
    return-void

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 767
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 769
    :cond_1
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->i:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->m:Z

    if-nez v0, :cond_3

    .line 770
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 772
    :cond_3
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/umeng/analytics/AnalyticsConfig;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lcom/umeng/analytics/b;->p:Ljava/lang/String;

    return-object v0
.end method

.method d(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 591
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 592
    if-eqz p1, :cond_0

    .line 593
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/pro/h;

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/pro/h;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/h;->c()V

    .line 599
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/p;

    if-eqz v0, :cond_2

    .line 600
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/p;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/p;->a()V

    .line 602
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 603
    iget-object v0, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/pro/o;

    if-eqz v0, :cond_3

    .line 604
    iget-object v0, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/pro/o;

    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;Ljava/lang/Object;)V

    .line 606
    :cond_3
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/i;->a()V

    .line 607
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/p;->a(Landroid/content/Context;)V

    .line 608
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V

    .line 609
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 612
    :cond_4
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->Quit()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :goto_0
    return-void

    .line 613
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 957
    monitor-enter p0

    if-nez p1, :cond_1

    .line 958
    :try_start_0
    const-string v0, "unexpected null context in unregisterSuperProperty"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 959
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15016"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 984
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 962
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 963
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 965
    :cond_2
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->i:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->m:Z

    if-nez v0, :cond_4

    .line 966
    :cond_3
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 968
    :cond_4
    const/16 v0, 0x80

    invoke-static {p2, v0}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 970
    iget-object v1, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    if-nez v1, :cond_5

    .line 971
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    .line 973
    :cond_5
    iget-object v1, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 974
    iget-object v1, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 976
    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v2, 0x2005

    iget-object v3, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 978
    invoke-static {v3}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v3

    .line 976
    invoke-static {v1, v2, v3, v0}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 981
    :catch_0
    move-exception v0

    .line 982
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 957
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1005
    monitor-enter p0

    if-nez p1, :cond_1

    .line 1006
    :try_start_0
    const-string v1, "unexpected null context in getSuperProperty"

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 1007
    sget-object v1, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v2, "A_15017"

    const/4 v3, 0x0

    const-string v4, "\\|"

    invoke-interface {v1, v2, v3, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1024
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1010
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v1, :cond_2

    .line 1011
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1013
    :cond_2
    iget-object v1, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    .line 1014
    const/16 v1, 0x80

    invoke-static {p2, v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1015
    iget-object v2, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1016
    iget-object v2, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1019
    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1021
    :catch_0
    move-exception v1

    .line 1022
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1005
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    sget-object v0, Lcom/umeng/analytics/b;->q:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized e(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1029
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1030
    :try_start_0
    const-string v1, "unexpected null context in getSuperProperties"

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 1031
    sget-object v1, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v2, "A_15017"

    const/4 v3, 0x0

    const-string v4, "\\|"

    invoke-interface {v1, v2, v3, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1045
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1034
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 1035
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1037
    :cond_1
    iget-object v1, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    .line 1038
    iget-object v1, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1040
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1042
    :catch_0
    move-exception v1

    .line 1043
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1029
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()V
    .locals 6

    .prologue
    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x1007

    iget-object v2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 421
    invoke-static {v2}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 419
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->b:Lcom/umeng/analytics/pro/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/analytics/b;->b:Lcom/umeng/analytics/pro/r;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/r;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :cond_1
    :goto_0
    return-void

    .line 424
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized f(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 1065
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1066
    :try_start_0
    const-string v0, "unexpected null context in clearSuperProperties"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 1067
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15016"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1080
    :goto_0
    monitor-exit p0

    return-void

    .line 1070
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1071
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1073
    :cond_1
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->i:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->m:Z

    if-nez v0, :cond_3

    .line 1074
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 1076
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    .line 1077
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x2004

    iget-object v2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1079
    invoke-static {v2}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    const/4 v3, 0x0

    .line 1077
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1065
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1172
    monitor-enter p0

    if-nez p1, :cond_1

    .line 1173
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected null context in clearPreProperties(context, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 1174
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15022"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1198
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1177
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 1178
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1180
    :cond_2
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->i:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->m:Z

    if-nez v0, :cond_4

    .line 1181
    :cond_3
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 1183
    :cond_4
    iget-object v0, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;

    if-nez v0, :cond_5

    .line 1184
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;

    .line 1186
    :cond_5
    iget-object v0, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1187
    iget-object v0, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1189
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x2008

    iget-object v2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1191
    invoke-static {v2}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1189
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1193
    :cond_6
    :try_start_2
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15023"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public g()V
    .locals 6

    .prologue
    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x1008

    iget-object v2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 433
    invoke-static {v2}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 431
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 434
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x1004

    iget-object v2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 436
    invoke-static {v2}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    const/4 v3, 0x0

    .line 434
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 437
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x1003

    iget-object v2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 439
    invoke-static {v2}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    const/4 v3, 0x0

    .line 437
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 440
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x1009

    iget-object v2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 442
    invoke-static {v2}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    const/4 v3, 0x0

    .line 440
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->b:Lcom/umeng/analytics/pro/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/analytics/b;->b:Lcom/umeng/analytics/pro/r;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/r;->b()V

    .line 449
    :cond_1
    return-void

    .line 445
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized g(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 1206
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1207
    :try_start_0
    const-string v0, "unexpected null context in clearPreProperties"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 1208
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15024"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1224
    :goto_0
    monitor-exit p0

    return-void

    .line 1211
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1212
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1214
    :cond_1
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->i:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->m:Z

    if-nez v0, :cond_3

    .line 1215
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 1217
    :cond_3
    iget-object v0, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 1218
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x2009

    iget-object v2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1220
    invoke-static {v2}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    const/4 v3, 0x0

    .line 1218
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 1222
    :cond_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 1234
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1235
    :try_start_0
    const-string v0, "unexpected null context in clearPreProperties"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 1236
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15025"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1237
    const/4 v0, 0x0

    .line 1256
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1239
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1240
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1242
    :cond_1
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->i:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->m:Z

    if-nez v0, :cond_3

    .line 1243
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 1246
    :cond_3
    iget-object v0, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;

    if-nez v0, :cond_4

    .line 1247
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;

    .line 1249
    :cond_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1250
    iget-object v0, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-lez v0, :cond_5

    .line 1252
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1253
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 1234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method h()V
    .locals 4

    .prologue
    .line 669
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x1006

    iget-object v2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 671
    invoke-static {v2}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    const/4 v3, 0x0

    .line 669
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 672
    return-void
.end method

.method public declared-synchronized i()V
    .locals 3

    .prologue
    .line 991
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 993
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 994
    const-string v1, "sp"

    iget-object v2, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 995
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1001
    :goto_0
    monitor-exit p0

    return-void

    .line 997
    :cond_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 999
    :catch_0
    move-exception v0

    goto :goto_0

    .line 991
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 1050
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 1051
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1055
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1050
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1053
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized k()V
    .locals 2

    .prologue
    .line 1084
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1086
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1087
    const-string v1, "sp"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1088
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1093
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1090
    :catch_0
    move-exception v0

    .line 1091
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1084
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
