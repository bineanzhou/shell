.class Lanet/channel/SessionRequest;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/SessionRequest$1;,
        Lanet/channel/SessionRequest$IConnCb;,
        Lanet/channel/SessionRequest$a;,
        Lanet/channel/SessionRequest$b;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lanet/channel/SessionCenter;

.field c:Lanet/channel/f;

.field volatile d:Z

.field volatile e:Lanet/channel/Session;

.field volatile f:Z

.field g:Lanet/channel/statist/SessionConnStat;

.field private h:Ljava/lang/String;

.field private i:Lanet/channel/SessionInfo;

.field private volatile j:Ljava/util/concurrent/Future;

.field private k:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Lanet/channel/SessionCenter;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v0, p0, Lanet/channel/SessionRequest;->d:Z

    .line 60
    iput-boolean v0, p0, Lanet/channel/SessionRequest;->f:Z

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lanet/channel/SessionRequest;->g:Lanet/channel/statist/SessionConnStat;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lanet/channel/SessionRequest;->k:Ljava/lang/Object;

    .line 67
    iput-object p1, p0, Lanet/channel/SessionRequest;->a:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lanet/channel/SessionRequest;->a:Ljava/lang/String;

    iget-object v1, p0, Lanet/channel/SessionRequest;->a:Ljava/lang/String;

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/SessionRequest;->h:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lanet/channel/SessionRequest;->b:Lanet/channel/SessionCenter;

    .line 70
    iget-object v0, p2, Lanet/channel/SessionCenter;->attributeManager:Lanet/channel/c;

    iget-object v1, p0, Lanet/channel/SessionRequest;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lanet/channel/c;->b(Ljava/lang/String;)Lanet/channel/SessionInfo;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/SessionRequest;->i:Lanet/channel/SessionInfo;

    .line 71
    iget-object v0, p2, Lanet/channel/SessionCenter;->sessionPool:Lanet/channel/f;

    iput-object v0, p0, Lanet/channel/SessionRequest;->c:Lanet/channel/f;

    .line 72
    return-void
.end method

.method private a(Lanet/channel/entity/ConnType$TypeLevel;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanet/channel/entity/ConnType$TypeLevel;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 315
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 317
    :try_start_0
    invoke-virtual {p0}, Lanet/channel/SessionRequest;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/util/c;->a(Ljava/lang/String;)Lanet/channel/util/c;

    move-result-object v0

    .line 318
    if-nez v0, :cond_0

    .line 319
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 346
    :goto_0
    return-object v0

    .line 323
    :cond_0
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v2

    invoke-virtual {v0}, Lanet/channel/util/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lanet/channel/strategy/IStrategyInstance;->getConnStrategyListByHost(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 325
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 326
    const-string v2, "https"

    invoke-virtual {v0}, Lanet/channel/util/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 327
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 328
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 329
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/IConnStrategy;

    .line 330
    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getProtocol()Lanet/channel/strategy/ConnProtocol;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/entity/ConnType;->valueOf(Lanet/channel/strategy/ConnProtocol;)Lanet/channel/entity/ConnType;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Lanet/channel/entity/ConnType;->isSSL()Z

    move-result v4

    if-ne v4, v2, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lanet/channel/entity/ConnType;->getTypeLevel()Lanet/channel/entity/ConnType$TypeLevel;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 333
    :cond_2
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 342
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 343
    const-string v2, "awcn.SessionRequest"

    const-string v3, ""

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, p2, v1, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 338
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 339
    const-string v0, "awcn.SessionRequest"

    const-string v2, "[getAvailStrategy]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "strategies"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v0, v2, p2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    move-object v0, v1

    .line 344
    goto :goto_0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lanet/channel/entity/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 350
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 366
    :goto_0
    return-object v0

    .line 353
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    move v3, v2

    .line 355
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 356
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/IConnStrategy;

    .line 357
    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getRetryTimes()I

    move-result v7

    move v5, v2

    .line 358
    :goto_2
    if-gt v5, v7, :cond_1

    .line 359
    add-int/lit8 v6, v3, 0x1

    .line 360
    new-instance v3, Lanet/channel/entity/a;

    invoke-virtual {p0}, Lanet/channel/SessionRequest;->a()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v8, v9, v0}, Lanet/channel/entity/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;)V

    .line 361
    iput v5, v3, Lanet/channel/entity/a;->b:I

    .line 362
    iput v7, v3, Lanet/channel/entity/a;->c:I

    .line 363
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v6

    goto :goto_2

    .line 355
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v4

    .line 366
    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lanet/channel/entity/a;Lanet/channel/SessionRequest$IConnCb;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 370
    invoke-virtual {p2}, Lanet/channel/entity/a;->c()Lanet/channel/entity/ConnType;

    move-result-object v0

    .line 371
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lanet/channel/entity/ConnType;->isHttpType()Z

    move-result v0

    if-nez v0, :cond_1

    .line 372
    new-instance v0, Lanet/channel/session/TnetSpdySession;

    iget-object v1, p0, Lanet/channel/SessionRequest;->b:Lanet/channel/SessionCenter;

    iget-object v3, v1, Lanet/channel/SessionCenter;->config:Lanet/channel/Config;

    iget-object v4, p0, Lanet/channel/SessionRequest;->i:Lanet/channel/SessionInfo;

    iget-object v1, p0, Lanet/channel/SessionRequest;->b:Lanet/channel/SessionCenter;

    iget-object v1, v1, Lanet/channel/SessionCenter;->attributeManager:Lanet/channel/c;

    iget-object v2, p0, Lanet/channel/SessionRequest;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lanet/channel/c;->c(Ljava/lang/String;)I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lanet/channel/session/TnetSpdySession;-><init>(Landroid/content/Context;Lanet/channel/entity/a;Lanet/channel/Config;Lanet/channel/SessionInfo;I)V

    iput-object v0, p0, Lanet/channel/SessionRequest;->e:Lanet/channel/Session;

    .line 379
    :goto_0
    const-string v0, "awcn.SessionRequest"

    const-string v1, "create connection..."

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Host"

    aput-object v4, v2, v3

    invoke-virtual {p0}, Lanet/channel/SessionRequest;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "Type"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p2}, Lanet/channel/entity/a;->c()Lanet/channel/entity/ConnType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "IP"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {p2}, Lanet/channel/entity/a;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Port"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-virtual {p2}, Lanet/channel/entity/a;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "heartbeat"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    invoke-virtual {p2}, Lanet/channel/entity/a;->g()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "session"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    iget-object v4, p0, Lanet/channel/SessionRequest;->e:Lanet/channel/Session;

    aput-object v4, v2, v3

    invoke-static {v0, v1, p4, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    iget-object v0, p0, Lanet/channel/SessionRequest;->e:Lanet/channel/Session;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, p3, v2, v3}, Lanet/channel/SessionRequest;->a(Lanet/channel/Session;Lanet/channel/SessionRequest$IConnCb;J)V

    .line 381
    iget-object v0, p0, Lanet/channel/SessionRequest;->e:Lanet/channel/Session;

    invoke-virtual {v0}, Lanet/channel/Session;->connect()V

    .line 382
    iget-object v0, p0, Lanet/channel/SessionRequest;->g:Lanet/channel/statist/SessionConnStat;

    iget v1, v0, Lanet/channel/statist/SessionConnStat;->retryTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lanet/channel/statist/SessionConnStat;->retryTimes:I

    .line 383
    iget-object v0, p0, Lanet/channel/SessionRequest;->g:Lanet/channel/statist/SessionConnStat;

    iget v0, v0, Lanet/channel/statist/SessionConnStat;->retryTimes:I

    if-ne v0, v6, :cond_0

    iget-object v0, p2, Lanet/channel/entity/a;->a:Lanet/channel/strategy/IConnStrategy;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lanet/channel/SessionRequest;->g:Lanet/channel/statist/SessionConnStat;

    iget-object v1, p2, Lanet/channel/entity/a;->a:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v1}, Lanet/channel/strategy/IConnStrategy;->getIpType()I

    move-result v1

    iput v1, v0, Lanet/channel/statist/SessionConnStat;->firstIpType:I

    .line 386
    :cond_0
    return-void

    .line 377
    :cond_1
    new-instance v0, Lanet/channel/session/d;

    invoke-direct {v0, p1, p2}, Lanet/channel/session/d;-><init>(Landroid/content/Context;Lanet/channel/entity/a;)V

    iput-object v0, p0, Lanet/channel/SessionRequest;->e:Lanet/channel/Session;

    goto/16 :goto_0
.end method

.method private a(Lanet/channel/Session;Lanet/channel/SessionRequest$IConnCb;J)V
    .locals 3

    .prologue
    .line 389
    if-nez p2, :cond_0

    .line 442
    :goto_0
    return-void

    .line 392
    :cond_0
    sget-object v0, Lanet/channel/entity/EventType;->ALL:Lanet/channel/entity/EventType;

    invoke-virtual {v0}, Lanet/channel/entity/EventType;->getType()I

    move-result v0

    new-instance v1, Lanet/channel/g;

    invoke-direct {v1, p0, p2, p3, p4}, Lanet/channel/g;-><init>(Lanet/channel/SessionRequest;Lanet/channel/SessionRequest$IConnCb;J)V

    invoke-virtual {p1, v0, v1}, Lanet/channel/Session;->registerEventcb(ILanet/channel/entity/EventCb;)V

    .line 427
    sget-object v0, Lanet/channel/entity/EventType;->AUTH_SUCC:Lanet/channel/entity/EventType;

    invoke-virtual {v0}, Lanet/channel/entity/EventType;->getType()I

    move-result v0

    sget-object v1, Lanet/channel/entity/EventType;->CONNECT_FAIL:Lanet/channel/entity/EventType;

    invoke-virtual {v1}, Lanet/channel/entity/EventType;->getType()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lanet/channel/entity/EventType;->AUTH_FAIL:Lanet/channel/entity/EventType;

    invoke-virtual {v1}, Lanet/channel/entity/EventType;->getType()I

    move-result v1

    or-int/2addr v0, v1

    new-instance v1, Lanet/channel/h;

    invoke-direct {v1, p0, p1}, Lanet/channel/h;-><init>(Lanet/channel/SessionRequest;Lanet/channel/Session;)V

    invoke-virtual {p1, v0, v1}, Lanet/channel/Session;->registerEventcb(ILanet/channel/entity/EventCb;)V

    goto :goto_0
.end method

.method static synthetic a(Lanet/channel/SessionRequest;Landroid/content/Context;Lanet/channel/entity/a;Lanet/channel/SessionRequest$IConnCb;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lanet/channel/SessionRequest;->a(Landroid/content/Context;Lanet/channel/entity/a;Lanet/channel/SessionRequest$IConnCb;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lanet/channel/SessionRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected a(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 484
    const-string v0, "awcn.SessionRequest"

    const-string v1, "[await]"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "timeoutMs"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 504
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-object v1, p0, Lanet/channel/SessionRequest;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 490
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    .line 491
    :goto_1
    iget-boolean v0, p0, Lanet/channel/SessionRequest;->d:Z

    if-eqz v0, :cond_1

    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 493
    cmp-long v0, v4, v2

    if-ltz v0, :cond_2

    .line 500
    :cond_1
    iget-boolean v0, p0, Lanet/channel/SessionRequest;->d:Z

    if-eqz v0, :cond_3

    .line 501
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 496
    :cond_2
    :try_start_1
    iget-object v0, p0, Lanet/channel/SessionRequest;->k:Ljava/lang/Object;

    sub-long v4, v2, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    .line 503
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected declared-synchronized a(Landroid/content/Context;Lanet/channel/entity/ConnType$TypeLevel;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lanet/channel/NoNetworkException;,
            Lanet/channel/NoAvailStrategyException;
        }
    .end annotation

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lanet/channel/SessionRequest;->c:Lanet/channel/f;

    invoke-virtual {v0, p0, p2}, Lanet/channel/f;->a(Lanet/channel/SessionRequest;Lanet/channel/entity/ConnType$TypeLevel;)Lanet/channel/Session;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    .line 121
    const-string v0, "awcn.SessionRequest"

    const-string v1, "Available Session exist!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, p3, v2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :goto_0
    monitor-exit p0

    return-void

    .line 124
    :cond_0
    :try_start_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    const/4 v0, 0x0

    invoke-static {v0}, Lanet/channel/util/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 127
    :cond_1
    const-string v0, "awcn.SessionRequest"

    const-string v1, "SessionRequest start"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "host"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lanet/channel/SessionRequest;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v0, v1, p3, v2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    iget-boolean v0, p0, Lanet/channel/SessionRequest;->d:Z

    if-eqz v0, :cond_2

    .line 129
    const-string v0, "awcn.SessionRequest"

    const-string v1, "session is connecting, return"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "host"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lanet/channel/SessionRequest;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, p3, v2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 132
    :cond_2
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Lanet/channel/SessionRequest;->a(Z)V

    .line 133
    new-instance v0, Lanet/channel/SessionRequest$b;

    invoke-direct {v0, p0, p3}, Lanet/channel/SessionRequest$b;-><init>(Lanet/channel/SessionRequest;Ljava/lang/String;)V

    const-wide/16 v2, 0x2d

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v1}, Lanet/channel/a/c;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/SessionRequest;->j:Ljava/util/concurrent/Future;

    .line 134
    new-instance v0, Lanet/channel/statist/SessionConnStat;

    invoke-direct {v0}, Lanet/channel/statist/SessionConnStat;-><init>()V

    iput-object v0, p0, Lanet/channel/SessionRequest;->g:Lanet/channel/statist/SessionConnStat;

    .line 135
    iget-object v0, p0, Lanet/channel/SessionRequest;->g:Lanet/channel/statist/SessionConnStat;

    iget-object v1, p0, Lanet/channel/SessionRequest;->a:Ljava/lang/String;

    iput-object v1, v0, Lanet/channel/statist/SessionConnStat;->host:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lanet/channel/SessionRequest;->g:Lanet/channel/statist/SessionConnStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lanet/channel/statist/SessionConnStat;->startTime:J

    .line 138
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->g()Z

    move-result v0

    if-nez v0, :cond_4

    .line 139
    const/4 v0, 0x1

    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    const-string v0, "awcn.SessionRequest"

    const-string v1, "network is not available, can\'t create session"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "NetworkStatusHelper.isConnected()"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->g()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, p3, v2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    :cond_3
    invoke-virtual {p0}, Lanet/channel/SessionRequest;->c()V

    .line 143
    new-instance v0, Lanet/channel/NoNetworkException;

    invoke-direct {v0, p0}, Lanet/channel/NoNetworkException;-><init>(Lanet/channel/SessionRequest;)V

    throw v0

    .line 145
    :cond_4
    invoke-direct {p0, p2, p3}, Lanet/channel/SessionRequest;->a(Lanet/channel/entity/ConnType$TypeLevel;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 147
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 148
    const-string v0, "awcn.SessionRequest"

    const-string v1, "no avalible strategy, can\'t create session"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "host"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lanet/channel/SessionRequest;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v0, v1, p3, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    invoke-virtual {p0}, Lanet/channel/SessionRequest;->c()V

    .line 150
    new-instance v0, Lanet/channel/NoAvailStrategyException;

    invoke-direct {v0, p0}, Lanet/channel/NoAvailStrategyException;-><init>(Lanet/channel/SessionRequest;)V

    throw v0

    .line 153
    :cond_5
    invoke-direct {p0, v0, p3}, Lanet/channel/SessionRequest;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 156
    const/4 v0, 0x0

    :try_start_3
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/entity/a;

    .line 157
    new-instance v2, Lanet/channel/SessionRequest$a;

    invoke-direct {v2, p0, p1, v1, v0}, Lanet/channel/SessionRequest$a;-><init>(Lanet/channel/SessionRequest;Landroid/content/Context;Ljava/util/List;Lanet/channel/entity/a;)V

    invoke-virtual {v0}, Lanet/channel/entity/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v2, v1}, Lanet/channel/SessionRequest;->a(Landroid/content/Context;Lanet/channel/entity/a;Lanet/channel/SessionRequest$IConnCb;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    :try_start_4
    invoke-virtual {p0}, Lanet/channel/SessionRequest;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method a(Lanet/channel/Session;ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 522
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 523
    if-nez v0, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    iget-object v1, p0, Lanet/channel/SessionRequest;->i:Lanet/channel/SessionInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lanet/channel/SessionRequest;->i:Lanet/channel/SessionInfo;

    iget-boolean v1, v1, Lanet/channel/SessionInfo;->isAccs:Z

    if-eqz v1, :cond_0

    .line 532
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.taobao.accs.intent.action.RECEIVE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    const-string v2, "com.taobao.accs.data.MsgDistributeService"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    const-string v2, "command"

    const/16 v3, 0x67

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 536
    const-string v2, "host"

    invoke-virtual {p1}, Lanet/channel/Session;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    const-string v2, "is_center_host"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 539
    invoke-virtual {p1}, Lanet/channel/Session;->isAvailable()Z

    move-result v2

    .line 540
    if-nez v2, :cond_2

    .line 541
    const-string v3, "errorCode"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 542
    const-string v3, "errorDetail"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    :cond_2
    const-string v3, "connect_avail"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 545
    const-string v2, "type_inapp"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 546
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 547
    :catch_0
    move-exception v0

    .line 548
    const-string v1, "awcn.SessionRequest"

    const-string v2, "sendConnectInfoBroadCastToAccs"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 464
    const-string v0, "awcn.SessionRequest"

    const-string v1, "reCreateSession"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "host"

    aput-object v4, v2, v3

    iget-object v3, p0, Lanet/channel/SessionRequest;->a:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, p1, v2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    invoke-virtual {p0, v5}, Lanet/channel/SessionRequest;->b(Z)V

    .line 466
    return-void
.end method

.method a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    iput-boolean p1, p0, Lanet/channel/SessionRequest;->d:Z

    .line 80
    if-nez p1, :cond_1

    .line 81
    iget-object v0, p0, Lanet/channel/SessionRequest;->j:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lanet/channel/SessionRequest;->j:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 83
    iput-object v2, p0, Lanet/channel/SessionRequest;->j:Ljava/util/concurrent/Future;

    .line 85
    :cond_0
    iput-object v2, p0, Lanet/channel/SessionRequest;->e:Lanet/channel/Session;

    .line 87
    :cond_1
    return-void
.end method

.method protected b()Lanet/channel/entity/ConnType$TypeLevel;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lanet/channel/SessionRequest;->e:Lanet/channel/Session;

    .line 508
    if-eqz v0, :cond_0

    .line 509
    iget-object v0, v0, Lanet/channel/Session;->mConnType:Lanet/channel/entity/ConnType;

    invoke-virtual {v0}, Lanet/channel/entity/ConnType;->getTypeLevel()Lanet/channel/entity/ConnType$TypeLevel;

    move-result-object v0

    .line 511
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 446
    const-string v0, "awcn.SessionRequest"

    const-string v1, "closeSessions"

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "host"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lanet/channel/SessionRequest;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "autoCreate"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    if-nez p1, :cond_0

    iget-object v0, p0, Lanet/channel/SessionRequest;->e:Lanet/channel/Session;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lanet/channel/SessionRequest;->e:Lanet/channel/Session;

    iput-boolean v6, v0, Lanet/channel/Session;->tryNextWhenFail:Z

    .line 450
    iget-object v0, p0, Lanet/channel/SessionRequest;->e:Lanet/channel/Session;

    invoke-virtual {v0, v6}, Lanet/channel/Session;->close(Z)V

    .line 452
    :cond_0
    iget-object v0, p0, Lanet/channel/SessionRequest;->c:Lanet/channel/f;

    invoke-virtual {v0, p0}, Lanet/channel/f;->a(Lanet/channel/SessionRequest;)Ljava/util/List;

    move-result-object v0

    .line 453
    if-eqz v0, :cond_2

    .line 454
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/Session;

    .line 456
    if-eqz v0, :cond_1

    .line 457
    invoke-virtual {v0, p1}, Lanet/channel/Session;->close(Z)V

    goto :goto_0

    .line 461
    :cond_2
    return-void
.end method

.method c()V
    .locals 2

    .prologue
    .line 515
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lanet/channel/SessionRequest;->a(Z)V

    .line 516
    iget-object v1, p0, Lanet/channel/SessionRequest;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 517
    :try_start_0
    iget-object v0, p0, Lanet/channel/SessionRequest;->k:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 518
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    return-void

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
