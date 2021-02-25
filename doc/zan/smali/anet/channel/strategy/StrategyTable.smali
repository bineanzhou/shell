.class Lanet/channel/strategy/StrategyTable;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/StrategyTable$HotHostLruCache;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected volatile b:Ljava/lang/String;

.field private volatile transient c:I

.field private d:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

.field private transient e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/StrategyCollection;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lanet/channel/strategy/StrategyTable;->a:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lanet/channel/strategy/StrategyTable;->a()V

    .line 82
    return-void
.end method

.method private a(Lanet/channel/strategy/ConnEvent;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 389
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->f:Ljava/util/Set;

    monitor-enter v1

    .line 393
    :try_start_0
    iget-boolean v0, p1, Lanet/channel/strategy/ConnEvent;->isSuccess:Z

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->f:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 398
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 396
    :cond_1
    :try_start_1
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->f:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private b(Ljava/util/Map;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/StrategyCollection;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 258
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->d:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 260
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/StrategyCollection;

    .line 261
    if-nez v1, :cond_1

    iget-wide v6, v0, Lanet/channel/strategy/StrategyCollection;->c:J

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    .line 262
    :cond_1
    invoke-virtual {v0}, Lanet/channel/strategy/StrategyCollection;->getHostWithEtag()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 264
    const-wide/16 v6, 0x7530

    add-long/2addr v6, v4

    iput-wide v6, v0, Lanet/channel/strategy/StrategyCollection;->c:J

    goto :goto_1

    .line 258
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 268
    :cond_3
    return-object v2
.end method

.method private b()V
    .locals 4

    .prologue
    .line 85
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object v0

    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lanet/channel/strategy/dispatch/HttpDispatcher;->isInitHostsChanged(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    :cond_0
    return-void

    .line 89
    :cond_1
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInitHosts()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->d:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    new-instance v3, Lanet/channel/strategy/StrategyCollection;

    invoke-direct {v3, v0}, Lanet/channel/strategy/StrategyCollection;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 340
    :try_start_0
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object v0

    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lanet/channel/strategy/dispatch/HttpDispatcher;->isInitHostsChanged(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    iget-object v3, p0, Lanet/channel/strategy/StrategyTable;->d:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :try_start_1
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->e:Ljava/util/Map;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 344
    :try_start_2
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInitHosts()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 345
    iget-object v6, p0, Lanet/channel/strategy/StrategyTable;->d:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-virtual {v6, v0}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 346
    iget-object v6, p0, Lanet/channel/strategy/StrategyTable;->e:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 347
    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->e:Ljava/util/Map;

    new-instance v6, Lanet/channel/strategy/StrategyCollection;

    invoke-direct {v6, v0}, Lanet/channel/strategy/StrategyCollection;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 351
    goto :goto_0

    .line 352
    :cond_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 353
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 354
    if-eqz v1, :cond_1

    .line 355
    :try_start_4
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->e:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lanet/channel/strategy/StrategyTable;->a(Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 361
    :cond_1
    :goto_2
    return-void

    .line 352
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v4

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 353
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v3

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    const-string v1, "awcn.StrategyTable"

    const-string v3, "checkInitHost failed"

    const/4 v4, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4, v0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private d()Ljava/lang/String;
    .locals 5

    .prologue
    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->f:Ljava/util/Set;

    monitor-enter v2

    .line 404
    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 405
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 409
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 411
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    const/16 v2, 0x28

    .line 95
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->d:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-direct {v0, v2}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;-><init>(I)V

    iput-object v0, p0, Lanet/channel/strategy/StrategyTable;->d:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    .line 97
    invoke-direct {p0}, Lanet/channel/strategy/StrategyTable;->b()V

    .line 99
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->d:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/StrategyCollection;

    .line 100
    invoke-virtual {v0}, Lanet/channel/strategy/StrategyCollection;->checkInit()V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->e:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 104
    new-instance v0, Lanet/channel/strategy/utils/SerialLruCache;

    invoke-direct {v0, v2}, Lanet/channel/strategy/utils/SerialLruCache;-><init>(I)V

    iput-object v0, p0, Lanet/channel/strategy/StrategyTable;->e:Ljava/util/Map;

    .line 107
    :cond_2
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->f:Ljava/util/Set;

    if-nez v0, :cond_3

    .line 108
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyTable;->f:Ljava/util/Set;

    .line 111
    :cond_3
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isTargetProcess()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lanet/channel/strategy/StrategyTable;->c:I

    .line 112
    return-void

    .line 111
    :cond_4
    const/4 v0, -0x1

    goto :goto_1
.end method

.method a(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 367
    invoke-static {v6}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    const-string v0, "awcn.StrategyTable"

    const-string v1, "[notifyConnEvent]"

    const/4 v2, 0x0

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Host"

    aput-object v5, v3, v4

    aput-object p1, v3, v6

    const/4 v4, 0x2

    const-string v5, "IConnStrategy"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 v4, 0x4

    const-string v5, "ConnEvent"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object p3, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    :cond_0
    invoke-interface {p2}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lanet/channel/strategy/StrategyTable;->a(Lanet/channel/strategy/ConnEvent;Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->d:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    monitor-enter v1

    .line 376
    :try_start_0
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->e:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 377
    :try_start_1
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->d:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/StrategyCollection;

    .line 378
    if-nez v0, :cond_1

    .line 379
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/StrategyCollection;

    .line 381
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 383
    if-eqz v0, :cond_2

    .line 384
    invoke-virtual {v0, p2, p3}, Lanet/channel/strategy/StrategyCollection;->notifyConnEvent(Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V

    .line 386
    :cond_2
    return-void

    .line 381
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 382
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected a(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 275
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    invoke-static {}, Lanet/channel/strategy/dispatch/a;->a()I

    move-result v0

    .line 280
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 284
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 285
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 286
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 287
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 315
    :goto_1
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object v1

    invoke-direct {p0}, Lanet/channel/strategy/StrategyTable;->d()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lanet/channel/strategy/StrategyTable;->c:I

    invoke-virtual {v1, v0, v2, v3}, Lanet/channel/strategy/dispatch/HttpDispatcher;->sendAmdcRequest(Ljava/util/Set;Ljava/lang/String;I)V

    goto :goto_0

    .line 290
    :cond_2
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->d:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    monitor-enter v2

    .line 291
    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->d:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/StrategyCollection;

    .line 292
    if-eqz v0, :cond_4

    .line 293
    if-nez p2, :cond_3

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyCollection;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 294
    :cond_3
    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->d:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-direct {p0, v1}, Lanet/channel/strategy/StrategyTable;->b(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    .line 295
    invoke-virtual {v0}, Lanet/channel/strategy/StrategyCollection;->getHostWithEtag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 299
    if-nez v0, :cond_8

    .line 300
    iget-object v3, p0, Lanet/channel/strategy/StrategyTable;->e:Ljava/util/Map;

    monitor-enter v3

    .line 301
    :try_start_1
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/StrategyCollection;

    .line 302
    if-nez v0, :cond_7

    .line 303
    new-instance v0, Lanet/channel/strategy/StrategyCollection;

    invoke-direct {v0, p1}, Lanet/channel/strategy/StrategyCollection;-><init>(Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->e:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    .line 307
    :goto_2
    if-nez p2, :cond_5

    invoke-virtual {v2}, Lanet/channel/strategy/StrategyCollection;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 308
    :cond_5
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->e:Ljava/util/Map;

    invoke-direct {p0, v0}, Lanet/channel/strategy/StrategyTable;->b(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 309
    invoke-virtual {v2}, Lanet/channel/strategy/StrategyCollection;->getHostWithEtag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 311
    :goto_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 298
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_6
    move-object v0, v1

    goto :goto_3

    :cond_7
    move-object v2, v0

    goto :goto_2

    :cond_8
    move-object v0, v1

    goto :goto_1
.end method

.method protected a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/StrategyCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 322
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lanet/channel/strategy/dispatch/a;->a()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    monitor-enter p1

    .line 330
    :try_start_0
    invoke-direct {p0, p1}, Lanet/channel/strategy/StrategyTable;->b(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 331
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 334
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object v1

    invoke-direct {p0}, Lanet/channel/strategy/StrategyTable;->d()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lanet/channel/strategy/StrategyTable;->c:I

    invoke-virtual {v1, v0, v2, v3}, Lanet/channel/strategy/dispatch/HttpDispatcher;->sendAmdcRequest(Ljava/util/Set;Ljava/lang/String;I)V

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public getCnameByHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    :goto_0
    return-object v1

    .line 155
    :cond_0
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->d:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    monitor-enter v2

    .line 156
    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->d:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/StrategyCollection;

    .line 157
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {v0}, Lanet/channel/strategy/StrategyCollection;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->d:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-virtual {p0, v2}, Lanet/channel/strategy/StrategyTable;->a(Ljava/util/Map;)V

    .line 168
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, v0, Lanet/channel/strategy/StrategyCollection;->e:Ljava/lang/String;

    :goto_2
    move-object v1, v0

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 163
    :cond_2
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->e:Ljava/util/Map;

    monitor-enter v2

    .line 164
    :try_start_1
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/StrategyCollection;

    .line 165
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    move-object v0, v1

    .line 168
    goto :goto_2
.end method

.method public queryByHost(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lanet/channel/strategy/utils/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 147
    :goto_0
    return-object v0

    .line 123
    :cond_1
    invoke-direct {p0}, Lanet/channel/strategy/StrategyTable;->c()V

    .line 126
    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->d:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    monitor-enter v1

    .line 127
    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->d:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/StrategyCollection;

    .line 128
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    if-eqz v0, :cond_3

    .line 130
    invoke-virtual {v0}, Lanet/channel/strategy/StrategyCollection;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->d:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-virtual {p0, v1}, Lanet/channel/strategy/StrategyTable;->a(Ljava/util/Map;)V

    .line 147
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lanet/channel/strategy/StrategyCollection;->queryStrategyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 135
    :cond_3
    iget-object v3, p0, Lanet/channel/strategy/StrategyTable;->e:Ljava/util/Map;

    monitor-enter v3

    .line 136
    :try_start_1
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/StrategyCollection;

    .line 137
    if-nez v0, :cond_4

    .line 138
    new-instance v1, Lanet/channel/strategy/StrategyCollection;

    invoke-direct {v1, p1}, Lanet/channel/strategy/StrategyCollection;-><init>(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->e:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const/4 v0, 0x1

    move v4, v0

    move-object v0, v1

    move v1, v4

    .line 142
    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 143
    if-eqz v1, :cond_2

    .line 144
    invoke-virtual {p0, p1, v2}, Lanet/channel/strategy/StrategyTable;->a(Ljava/lang/String;Z)V

    goto :goto_1

    .line 142
    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public update(Lanet/channel/strategy/k$c;)V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 176
    const-string v0, "awcn.StrategyTable"

    const-string v1, "update strategyTable with httpDns response"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v11, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :try_start_0
    iget-object v0, p1, Lanet/channel/strategy/k$c;->a:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/strategy/StrategyTable;->b:Ljava/lang/String;

    .line 179
    iget v0, p1, Lanet/channel/strategy/k$c;->f:I

    iput v0, p0, Lanet/channel/strategy/StrategyTable;->c:I

    .line 180
    iget-object v4, p1, Lanet/channel/strategy/k$c;->c:[Lanet/channel/strategy/k$b;

    .line 181
    if-nez v4, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v5, p0, Lanet/channel/strategy/StrategyTable;->d:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :try_start_1
    iget-object v6, p0, Lanet/channel/strategy/StrategyTable;->e:Ljava/util/Map;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v2, v3

    .line 187
    :goto_1
    :try_start_2
    array-length v0, v4

    if-ge v2, v0, :cond_9

    .line 188
    aget-object v7, v4, v2

    .line 189
    if-eqz v7, :cond_2

    iget-object v0, v7, Lanet/channel/strategy/k$b;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 187
    :cond_2
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 193
    :cond_3
    iget-boolean v0, v7, Lanet/channel/strategy/k$b;->h:Z

    if-eqz v0, :cond_4

    .line 194
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->d:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    iget-object v1, v7, Lanet/channel/strategy/k$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 195
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->e:Ljava/util/Map;

    iget-object v1, v7, Lanet/channel/strategy/k$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 219
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v6

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 220
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v5

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    const-string v1, "awcn.StrategyTable"

    const-string v2, "fail to update strategyTable"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v11, v0, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 224
    :goto_3
    invoke-static {v12}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uniqueId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 227
    const-string v0, "\n-------------------------hot domains:------------------------------------"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string v0, "awcn.StrategyTable"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v11, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->d:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    monitor-enter v4

    .line 230
    :try_start_5
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->d:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 231
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 232
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/StrategyCollection;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyCollection;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v0, "awcn.StrategyTable"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v6, v7}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    .line 235
    :catchall_2
    move-exception v0

    monitor-exit v4

    throw v0

    .line 200
    :cond_4
    :try_start_6
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->d:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    iget-object v1, v7, Lanet/channel/strategy/k$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/StrategyCollection;

    .line 201
    if-eqz v0, :cond_6

    .line 202
    iget v1, v7, Lanet/channel/strategy/k$b;->k:I

    if-eq v1, v12, :cond_5

    .line 203
    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->e:Ljava/util/Map;

    iget-object v8, v7, Lanet/channel/strategy/k$b;->a:Ljava/lang/String;

    iget-object v9, p0, Lanet/channel/strategy/StrategyTable;->d:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    iget-object v10, v7, Lanet/channel/strategy/k$b;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_5
    :goto_5
    invoke-virtual {v0, v7}, Lanet/channel/strategy/StrategyCollection;->update(Lanet/channel/strategy/k$b;)V

    goto/16 :goto_2

    .line 206
    :cond_6
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->e:Ljava/util/Map;

    iget-object v1, v7, Lanet/channel/strategy/k$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/StrategyCollection;

    .line 207
    if-eqz v0, :cond_7

    .line 208
    iget v1, v7, Lanet/channel/strategy/k$b;->k:I

    if-ne v1, v12, :cond_5

    .line 209
    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->d:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    iget-object v8, v7, Lanet/channel/strategy/k$b;->a:Ljava/lang/String;

    iget-object v9, p0, Lanet/channel/strategy/StrategyTable;->e:Ljava/util/Map;

    iget-object v10, v7, Lanet/channel/strategy/k$b;->a:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 212
    :cond_7
    new-instance v0, Lanet/channel/strategy/StrategyCollection;

    iget-object v1, v7, Lanet/channel/strategy/k$b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lanet/channel/strategy/StrategyCollection;-><init>(Ljava/lang/String;)V

    .line 213
    iget v1, v7, Lanet/channel/strategy/k$b;->k:I

    if-ne v1, v12, :cond_8

    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->d:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    :goto_6
    iget-object v8, v7, Lanet/channel/strategy/k$b;->a:Ljava/lang/String;

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->e:Ljava/util/Map;

    goto :goto_6

    .line 219
    :cond_9
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 220
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_3

    .line 235
    :cond_a
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 237
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 238
    const-string v0, "\n-------------------------cold domains:------------------------------------"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v0, "awcn.StrategyTable"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v11, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    iget-object v3, p0, Lanet/channel/strategy/StrategyTable;->e:Ljava/util/Map;

    monitor-enter v3

    .line 241
    :try_start_9
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 242
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 243
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/StrategyCollection;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyCollection;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v0, "awcn.StrategyTable"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v5, v6}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_7

    .line 246
    :catchall_3
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_b
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto/16 :goto_0
.end method
