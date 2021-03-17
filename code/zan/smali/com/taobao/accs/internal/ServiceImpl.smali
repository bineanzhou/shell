.class public Lcom/taobao/accs/internal/ServiceImpl;
.super Lcom/taobao/accs/internal/b;
.source "Taobao"


# static fields
.field private static f:Lcom/taobao/accs/b/a;


# instance fields
.field private b:Landroid/app/Service;

.field private c:Landroid/content/Context;

.field private d:J

.field private e:J

.field private g:Ljava/lang/String;

.field private h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final i:Lorg/android/agoo/service/IMessageService$Stub;


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/taobao/accs/internal/b;-><init>(Landroid/app/Service;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->b:Landroid/app/Service;

    .line 70
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->g:Ljava/lang/String;

    .line 427
    new-instance v0, Lcom/taobao/accs/internal/ServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/taobao/accs/internal/ServiceImpl$2;-><init>(Lcom/taobao/accs/internal/ServiceImpl;)V

    iput-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->i:Lorg/android/agoo/service/IMessageService$Stub;

    .line 78
    iput-object p1, p0, Lcom/taobao/accs/internal/ServiceImpl;->b:Landroid/app/Service;

    .line 79
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/taobao/accs/internal/ServiceImpl;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    return-object v0
.end method

.method private final a(Landroid/content/Context;)V
    .locals 14

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 499
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/utl/i;->d()Ljava/lang/String;

    move-result-object v0

    .line 500
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 501
    const-string v3, "ServiceImpl"

    const-string v4, "start pull up"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v3, v2

    .line 509
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-ge v3, v0, :cond_2

    .line 511
    :try_start_1
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 512
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "app"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 513
    const-string v5, "action"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 514
    const-string v6, "pack"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 515
    const-string v7, "service"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 516
    const-string v8, "enabled"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 517
    const-string v9, "probability"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 519
    if-eqz v8, :cond_1

    int-to-double v8, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v12

    cmpl-double v0, v8, v10

    if-ltz v0, :cond_1

    move v0, v1

    .line 520
    :goto_1
    const-string v8, "ServiceImpl"

    const-string v9, "pull up"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "action"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v5, v10, v11

    const/4 v11, 0x2

    const-string v12, "pack"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aput-object v6, v10, v11

    const/4 v11, 0x4

    const-string v12, "service"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    aput-object v7, v10, v11

    const/4 v11, 0x6

    const-string v12, "need pull"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    if-eqz v0, :cond_0

    invoke-static {p1, v6}, Lcom/taobao/accs/utl/UtilityImpl;->packageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 523
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    const-string v5, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 529
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v5, 0x101d1

    const-string v7, "pingApp"

    iget-object v8, p0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    invoke-static {v8}, Lcom/taobao/accs/utl/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v5, v7, v8, v6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 509
    :cond_0
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 519
    goto :goto_1

    .line 531
    :catch_0
    move-exception v0

    .line 532
    :try_start_2
    const-string v5, "ServiceImpl"

    const-string v6, "onPingIpp parse"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v0, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 537
    :catch_1
    move-exception v0

    .line 538
    const-string v1, "ServiceImpl"

    const-string v3, "onPingIpp"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 540
    :cond_2
    return-void
.end method

.method private a(Lcom/taobao/accs/data/Message;Z)V
    .locals 2

    .prologue
    .line 577
    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 585
    :cond_0
    return-void

    .line 581
    :cond_1
    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 582
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/net/b;

    .line 583
    invoke-virtual {v0, p1, p2}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/taobao/accs/internal/ServiceImpl;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/taobao/accs/internal/ServiceImpl;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(ZZ)V
    .locals 7

    .prologue
    .line 588
    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 597
    :cond_0
    return-void

    .line 592
    :cond_1
    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 593
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/net/b;

    .line 594
    invoke-virtual {v0, p1, p2}, Lcom/taobao/accs/net/b;->a(ZZ)V

    .line 595
    const-string v2, "ServiceImpl"

    const-string v3, "ping connection"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "appkey"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 675
    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/net/b;

    .line 676
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/accs/client/b;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/taobao/accs/internal/ServiceImpl;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 17

    .prologue
    .line 251
    const-string v1, "command"

    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 252
    const-string v1, "ServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "command:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    const-string v1, "packageName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 255
    const-string v1, "serviceId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 257
    const-string v1, "userInfo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 259
    const-string v1, "appKey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 261
    const-string v1, "configTag"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 262
    const-string v1, "ttid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 263
    const-string v1, "sid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    const-string v1, "anti_brush_cookie"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 265
    const/16 v1, 0xc9

    if-ne v15, v1, :cond_0

    .line 266
    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/taobao/accs/data/Message;->a(ZI)Lcom/taobao/accs/data/Message;

    move-result-object v1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v4}, Lcom/taobao/accs/internal/ServiceImpl;->a(Lcom/taobao/accs/data/Message;Z)V

    .line 267
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/internal/ServiceImpl;->g()V

    .line 269
    :cond_0
    if-lez v15, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 271
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v15}, Lcom/taobao/accs/internal/ServiceImpl;->a(Landroid/content/Context;Ljava/lang/String;ZI)Lcom/taobao/accs/net/b;

    move-result-object v14

    .line 272
    if-eqz v14, :cond_2

    .line 273
    invoke-virtual {v14}, Lcom/taobao/accs/net/b;->a()V

    .line 279
    const/4 v4, 0x0

    .line 280
    const/4 v1, 0x1

    if-ne v15, v1, :cond_7

    .line 282
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 283
    const-string v1, "ServiceImpl"

    const-string v2, "handleCommand bindapp pkg error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    :cond_1
    :goto_0
    return-void

    .line 275
    :cond_2
    const-string v1, "ServiceImpl"

    const-string v3, "no connection"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "configTag"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v2, 0x2

    const-string v5, "command"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 287
    :cond_3
    const-string v1, "app_sercet"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 288
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    const-string v7, "appVersion"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/taobao/accs/data/Message;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v1

    .line 301
    iput-object v6, v14, Lcom/taobao/accs/net/b;->a:Ljava/lang/String;

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/UtilityImpl;->saveAppKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v14}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/b;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/taobao/accs/client/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "fouce_bind"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    .line 309
    const-string v2, "ServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isAppBinded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    const/16 v2, 0xc8

    invoke-virtual {v14, v1, v2}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;I)V

    goto :goto_0

    :cond_4
    move-object v4, v1

    .line 389
    :cond_5
    :goto_1
    if-eqz v4, :cond_10

    .line 390
    const-string v1, "ServiceImpl"

    const-string v2, "try send message"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    invoke-virtual {v4}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 392
    invoke-virtual {v4}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onSend()V

    .line 394
    :cond_6
    const/4 v1, 0x1

    invoke-virtual {v14, v4, v1}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V

    goto/16 :goto_0

    .line 315
    :cond_7
    const/4 v1, 0x2

    if-ne v15, v1, :cond_8

    .line 316
    const-string v1, "ServiceImpl"

    const-string v2, "onHostStartCommand COMMAND_UNBIND_APP"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    invoke-virtual {v14}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/b;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/taobao/accs/client/b;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 318
    invoke-static {v14, v5}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v1

    .line 319
    const-string v2, "ServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isAppUnbinded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    const/16 v2, 0xc8

    invoke-virtual {v14, v1, v2}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;I)V

    goto/16 :goto_0

    .line 324
    :cond_8
    const/4 v1, 0x5

    if-ne v15, v1, :cond_9

    .line 325
    invoke-static {v5, v8}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v4

    goto :goto_1

    .line 327
    :cond_9
    const/4 v1, 0x6

    if-ne v15, v1, :cond_a

    .line 328
    invoke-static {v5, v8}, Lcom/taobao/accs/data/Message;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v4

    goto :goto_1

    .line 330
    :cond_a
    const/4 v1, 0x3

    if-ne v15, v1, :cond_b

    .line 331
    invoke-static {v5, v7}, Lcom/taobao/accs/data/Message;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v4

    .line 333
    invoke-virtual {v14}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/b;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Lcom/taobao/accs/client/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "fouce_bind"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_5

    .line 339
    const-string v1, "ServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isUserBinded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    if-eqz v4, :cond_1

    .line 342
    const/16 v1, 0xc8

    invoke-virtual {v14, v4, v1}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;I)V

    goto/16 :goto_0

    .line 347
    :cond_b
    const/4 v1, 0x4

    if-ne v15, v1, :cond_c

    .line 348
    invoke-static {v5}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v4

    goto/16 :goto_1

    .line 350
    :cond_c
    const/16 v1, 0x64

    if-ne v15, v1, :cond_e

    .line 351
    const-string v1, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v9

    .line 353
    const-string v1, "dataId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 355
    const-string v1, "target"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 357
    const-string v1, "businessId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 358
    const-string v1, "extTag"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 359
    const/4 v2, 0x0

    .line 361
    :try_start_0
    const-string v1, "send_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/data/Message$ReqType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    .line 365
    :goto_2
    if-eqz v9, :cond_11

    .line 366
    const/4 v2, 0x0

    .line 368
    :try_start_1
    new-instance v12, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v14

    check-cast v0, Lcom/taobao/accs/net/r;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/taobao/accs/net/r;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 372
    :goto_3
    new-instance v6, Lcom/taobao/accs/ACCSManager$AccsRequest;

    invoke-direct/range {v6 .. v13}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 373
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/taobao/accs/ACCSManager$AccsRequest;->setTag(Ljava/lang/String;)V

    .line 374
    if-nez v3, :cond_d

    .line 375
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v14, v1, v5, v6, v2}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;

    move-result-object v1

    :goto_4
    move-object v4, v1

    .line 380
    goto/16 :goto_1

    :catch_0
    move-exception v1

    move-object v3, v2

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v12, v2

    goto :goto_3

    .line 376
    :cond_d
    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->REQ:Lcom/taobao/accs/data/Message$ReqType;

    if-ne v3, v1, :cond_11

    .line 377
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v14, v1, v5, v6, v2}, Lcom/taobao/accs/data/Message;->b(Lcom/taobao/accs/net/b;Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;

    move-result-object v1

    goto :goto_4

    .line 380
    :cond_e
    const/16 v1, 0x69

    if-ne v15, v1, :cond_f

    .line 381
    const-string v1, "packs"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 382
    invoke-static {v5, v1}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/accs/data/Message;

    move-result-object v4

    goto/16 :goto_1

    .line 383
    :cond_f
    const/16 v1, 0x6a

    if-ne v15, v1, :cond_5

    .line 384
    const-string v1, "com.taobao.accs.intent.action.RECEIVE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const-string v1, "command"

    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/taobao/accs/data/d;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 396
    :cond_10
    const-string v1, "ServiceImpl"

    const-string v2, "message is null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    invoke-static {v5, v15}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v1

    .line 399
    const/4 v2, -0x2

    invoke-virtual {v14, v1, v2}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;I)V

    goto/16 :goto_0

    :cond_11
    move-object v1, v4

    goto :goto_4
.end method

.method private b(Z)V
    .locals 3

    .prologue
    .line 544
    const-string v0, "ServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldStopSelf, kill:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->b:Landroid/app/Service;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->b:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 548
    :cond_0
    if-eqz p1, :cond_1

    .line 549
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 551
    :cond_1
    return-void
.end method

.method static synthetic d()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method private declared-synchronized e()V
    .locals 8

    .prologue
    .line 555
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 556
    :cond_0
    const-string v0, "ServiceImpl"

    const-string v1, "tryConnect no connections"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 560
    :cond_2
    :try_start_1
    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 561
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/net/b;

    .line 562
    if-nez v1, :cond_3

    .line 563
    const-string v0, "ServiceImpl"

    const-string v2, "tryConnect connection null"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "appkey"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 567
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Lcom/taobao/accs/net/b;->k()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v3}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 568
    const-string v3, "ServiceImpl"

    const-string v4, "tryConnect secret is null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    :goto_2
    const-string v3, "ServiceImpl"

    const-string v4, "tryConnect"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "appkey"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x2

    const-string v6, "configTag"

    aput-object v6, v5, v1

    const/4 v1, 0x3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 570
    :cond_4
    invoke-virtual {v1}, Lcom/taobao/accs/net/b;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private f()V
    .locals 2

    .prologue
    .line 600
    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 608
    :cond_0
    return-void

    .line 604
    :cond_1
    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 605
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/net/b;

    .line 606
    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->b()V

    goto :goto_0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 611
    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 624
    :cond_0
    return-void

    .line 615
    :cond_1
    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 616
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/net/b;

    .line 617
    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->c()Lcom/taobao/accs/ut/statistics/c;

    move-result-object v0

    .line 619
    if-eqz v0, :cond_2

    .line 620
    iget-wide v2, p0, Lcom/taobao/accs/internal/ServiceImpl;->d:J

    iput-wide v2, v0, Lcom/taobao/accs/ut/statistics/c;->h:J

    .line 621
    invoke-virtual {v0}, Lcom/taobao/accs/ut/statistics/c;->commitUT()V

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 627
    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 635
    :cond_0
    return-void

    .line 631
    :cond_1
    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 632
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/net/b;

    .line 633
    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->e()V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Intent;)I
    .locals 12

    .prologue
    const/4 v10, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 140
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->getServiceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    const-string v0, "ServiceImpl"

    const-string v1, "service disabled!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-direct {p0, v4}, Lcom/taobao/accs/internal/ServiceImpl;->b(Z)V

    .line 245
    :goto_0
    return v6

    .line 145
    :cond_0
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    const-string v0, "ServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHostStartCommand:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    :cond_1
    :try_start_0
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    if-eqz p1, :cond_2

    .line 152
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 153
    if-eqz v2, :cond_2

    .line 154
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    const-string v4, "ServiceImpl"

    const-string v5, "key"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    const-string v9, " value"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v4, v5, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 239
    :catch_0
    move-exception v0

    move-object v11, v0

    move v0, v1

    move-object v1, v11

    .line 240
    :goto_2
    :try_start_1
    const-string v2, "ServiceImpl"

    const-string v3, "onHostStartCommand"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 241
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    sget-object v1, Lcom/taobao/accs/client/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :goto_3
    move v6, v0

    .line 245
    goto :goto_0

    .line 160
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/taobao/accs/utl/f;->c()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 161
    if-le v0, v10, :cond_d

    .line 163
    :try_start_3
    const-string v1, "ServiceImpl"

    const-string v2, "load SO fail 4 times, don\'t auto restart"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    const-string v1, "accs"

    const-string v2, "sofail"

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->int2String(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v0, v4, v5}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 167
    :goto_4
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 170
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "org.agoo.android.intent.action.PING_V4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 171
    const-string v1, "source"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    const-string v2, "ServiceImpl"

    const-string v3, "org.agoo.android.intent.action.PING_V4,start channel by brothers"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v7, "serviceStart"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    sget-object v7, Lcom/taobao/accs/client/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "source"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    const-string v2, "accs"

    const-string v3, "startChannel"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v1, v4, v5}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 174
    invoke-static {}, Lcom/taobao/accs/client/a;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 175
    const-string v2, "accs"

    const-string v3, "createChannel"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v1, v4, v5}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 180
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 181
    invoke-direct {p0}, Lcom/taobao/accs/internal/ServiceImpl;->e()V

    .line 182
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/taobao/accs/internal/ServiceImpl;->a(ZZ)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 243
    sget-object v0, Lcom/taobao/accs/client/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto/16 :goto_0

    .line 167
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 191
    :cond_5
    invoke-direct {p0}, Lcom/taobao/accs/internal/ServiceImpl;->e()V

    .line 193
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v1

    if-eqz v1, :cond_7

    .line 243
    :cond_6
    :goto_6
    sget-object v0, Lcom/taobao/accs/client/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move v0, v6

    .line 244
    goto/16 :goto_3

    .line 202
    :cond_7
    :try_start_5
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 204
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->getNetworkTypeExt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 206
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network change:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/internal/ServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    const-string v2, "ServiceImpl"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    if-eqz v0, :cond_8

    .line 212
    iput-object v3, p0, Lcom/taobao/accs/internal/ServiceImpl;->g:Ljava/lang/String;

    .line 213
    invoke-direct {p0}, Lcom/taobao/accs/internal/ServiceImpl;->f()V

    .line 214
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/taobao/accs/internal/ServiceImpl;->a(ZZ)V

    .line 215
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d1

    const-string v2, "CONNECTIVITY_CHANGE"

    invoke-static {}, Lcom/taobao/accs/utl/UtilityImpl;->getProxy()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    :cond_8
    const-string v0, "unknown"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 221
    invoke-direct {p0}, Lcom/taobao/accs/internal/ServiceImpl;->f()V

    .line 222
    iput-object v3, p0, Lcom/taobao/accs/internal/ServiceImpl;->g:Ljava/lang/String;

    goto :goto_6

    .line 239
    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v6

    goto/16 :goto_2

    .line 225
    :cond_9
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 227
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/taobao/accs/internal/ServiceImpl;->a(ZZ)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_6

    .line 243
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/taobao/accs/client/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    throw v0

    .line 228
    :cond_a
    :try_start_6
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 230
    const-string v0, "ServiceImpl"

    const-string v1, "action android.intent.action.USER_PRESENT"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/taobao/accs/internal/ServiceImpl;->a(ZZ)V

    goto/16 :goto_6

    .line 232
    :cond_b
    const-string v1, "com.taobao.accs.intent.action.COMMAND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 233
    invoke-direct {p0, p1}, Lcom/taobao/accs/internal/ServiceImpl;->b(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 234
    :cond_c
    const-string v1, "com.taobao.accs.intent.action.START_FROM_AGOO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 235
    const-string v0, "ServiceImpl"

    const-string v1, "ACTION_START_FROM_AGOO"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_6

    :cond_d
    move v6, v1

    goto/16 :goto_4
.end method

.method public a()V
    .locals 0

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/taobao/accs/internal/ServiceImpl;->c()V

    .line 672
    return-void
.end method

.method public c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 659
    const-string v0, "ServiceImpl"

    const-string v1, "startConnect"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 661
    :try_start_0
    invoke-direct {p0}, Lcom/taobao/accs/internal/ServiceImpl;->e()V

    .line 662
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/taobao/accs/internal/ServiceImpl;->a(ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :goto_0
    return-void

    .line 663
    :catch_0
    move-exception v0

    .line 664
    const-string v1, "ServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryConnect is error,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5

    .prologue
    .line 411
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 412
    const-string v1, "ServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accs probeTaoBao begin......action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "org.agoo.android.intent.action.PING_V4"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    const-string v0, "source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v1

    const v2, 0x101d1

    const-string v3, "probeChannelService"

    iget-object v4, p0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 419
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->i:Lorg/android/agoo/service/IMessageService$Stub;

    .line 421
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 84
    invoke-super {p0}, Lcom/taobao/accs/internal/b;->onCreate()V

    .line 85
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    .line 86
    sget-object v0, Lcom/taobao/accs/client/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->d:J

    .line 88
    iget-wide v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->d:J

    iput-wide v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->e:J

    .line 89
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->getNetworkTypeExt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->g:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 93
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/common/Config;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/b/a;->c(Landroid/content/Context;)V

    .line 96
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    const/16 v1, 0x258

    invoke-static {v0, v1, v4}, Lcom/taobao/accs/b/a;->a(Landroid/content/Context;IZ)Lcom/taobao/accs/b/a;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/internal/ServiceImpl;->f:Lcom/taobao/accs/b/a;

    .line 97
    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->f:Lcom/taobao/accs/b/a;

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->f:Lcom/taobao/accs/b/a;

    invoke-virtual {v0}, Lcom/taobao/accs/b/a;->a()V

    .line 104
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/taobao/accs/internal/h;

    invoke-direct {v1, p0}, Lcom/taobao/accs/internal/h;-><init>(Lcom/taobao/accs/internal/ServiceImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    const-string v0, "ServiceImpl"

    const-string v1, "ServiceImpl onCreate"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ClassLoader"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-class v4, Lcom/taobao/accs/internal/ServiceImpl;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "sdkv"

    aput-object v3, v2, v5

    const/4 v3, 0x3

    const/16 v4, 0xdd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "procStart"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/taobao/accs/client/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :cond_1
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    const-string v1, "ServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceImpl init task fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 473
    invoke-super {p0}, Lcom/taobao/accs/internal/b;->onDestroy()V

    .line 474
    const-string v0, "ServiceImpl"

    const-string v1, "Service onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    const-string v1, "service_end"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/accs/utl/UtilityImpl;->setServiceTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 476
    iput-object v4, p0, Lcom/taobao/accs/internal/ServiceImpl;->b:Landroid/app/Service;

    .line 477
    iput-object v4, p0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    .line 478
    invoke-direct {p0}, Lcom/taobao/accs/internal/ServiceImpl;->h()V

    .line 479
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 480
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x0

    return v0
.end method
