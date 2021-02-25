.class public Lcom/taobao/accs/net/k;
.super Lcom/taobao/accs/net/b;
.source "Taobao"

# interfaces
.implements Lanet/channel/DataFrameCb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/net/k$a;
    }
.end annotation


# instance fields
.field private n:Z

.field private o:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/Runnable;

.field private q:Ljava/util/Set;
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
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/accs/net/b;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 48
    iput-boolean v1, p0, Lcom/taobao/accs/net/k;->n:Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/accs/net/k;->o:Ljava/util/concurrent/ScheduledFuture;

    .line 340
    new-instance v0, Lcom/taobao/accs/net/o;

    invoke-direct {v0, p0}, Lcom/taobao/accs/net/o;-><init>(Lcom/taobao/accs/net/k;)V

    iput-object v0, p0, Lcom/taobao/accs/net/k;->p:Ljava/lang/Runnable;

    .line 57
    invoke-static {v1}, Lcom/taobao/accs/utl/i;->a(Z)Z

    move-result v0

    .line 58
    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/taobao/accs/net/k;->d:Landroid/content/Context;

    const-string v1, "inapp"

    invoke-static {v0, v1}, Lcom/taobao/accs/utl/UtilityImpl;->getTnetLogFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config tnet log path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    const/high16 v1, 0x500000

    const/4 v2, 0x5

    invoke-static {p1, v0, v1, v2}, Lanet/channel/Session;->configTnetALog(Landroid/content/Context;Ljava/lang/String;II)V

    .line 67
    :cond_0
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/net/k;->p:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/net/k;->o:Ljava/util/concurrent/ScheduledFuture;

    .line 68
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    .prologue
    .line 75
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/taobao/accs/net/k;->n:Z

    .line 76
    iget-object v0, p0, Lcom/taobao/accs/net/k;->d:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/taobao/accs/net/k;->a(Landroid/content/Context;)V

    .line 77
    invoke-virtual {p0}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/net/k;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 386
    :try_start_0
    iget-boolean v2, p0, Lcom/taobao/accs/net/k;->g:Z

    if-eqz v2, :cond_0

    .line 407
    :goto_0
    return-void

    .line 389
    :cond_0
    invoke-super {p0, p1}, Lcom/taobao/accs/net/b;->a(Landroid/content/Context;)V

    .line 391
    iget-object v2, p0, Lcom/taobao/accs/net/k;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v2}, Lcom/taobao/accs/AccsClientConfig;->getInappHost()Ljava/lang/String;

    move-result-object v2

    .line 393
    invoke-virtual {p0}, Lcom/taobao/accs/net/k;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/taobao/accs/net/k;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v3}, Lcom/taobao/accs/AccsClientConfig;->isKeepalive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 398
    :goto_1
    iget-object v3, p0, Lcom/taobao/accs/net/k;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v3}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lanet/channel/Config;->getConfigByTag(Ljava/lang/String;)Lanet/channel/Config;

    move-result-object v3

    .line 399
    invoke-static {v3}, Lanet/channel/SessionCenter;->getInstance(Lanet/channel/Config;)Lanet/channel/SessionCenter;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v0}, Lcom/taobao/accs/net/k;->a(Lanet/channel/SessionCenter;Ljava/lang/String;Z)V

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/accs/net/k;->g:Z

    .line 402
    invoke-virtual {p0}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "init awcn success!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 403
    :catch_0
    move-exception v0

    .line 404
    invoke-virtual {p0}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "initAwcn"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 396
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v0

    const-string v3, "close keepalive"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto :goto_1
.end method

.method public a(Lanet/channel/SessionCenter;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    .line 413
    iget-object v0, p0, Lcom/taobao/accs/net/k;->q:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 414
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v6}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/accs/net/k;->q:Ljava/util/Set;

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/net/k;->q:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    :goto_0
    return-void

    .line 420
    :cond_1
    new-instance v3, Lcom/taobao/accs/net/k$a;

    invoke-direct {v3, p0, p2}, Lcom/taobao/accs/net/k$a;-><init>(Lcom/taobao/accs/net/b;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p2

    move v1, p3

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lanet/channel/SessionInfo;->create(Ljava/lang/String;ZZLanet/channel/IAuth;Lanet/channel/heartbeat/IHeartbeat;Lanet/channel/DataFrameCb;)Lanet/channel/SessionInfo;

    move-result-object v0

    .line 421
    invoke-virtual {p1, v0}, Lanet/channel/SessionCenter;->registerSessionInfo(Lanet/channel/SessionInfo;)V

    .line 422
    iget-object v0, p0, Lcom/taobao/accs/net/k;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getInappPubKey()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lanet/channel/SessionCenter;->registerPublicKey(Ljava/lang/String;I)V

    .line 423
    iget-object v0, p0, Lcom/taobao/accs/net/k;->q:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 424
    invoke-virtual {p0}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "registerSessionInfo"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "host"

    aput-object v5, v3, v4

    aput-object p2, v3, v2

    invoke-static {v0, v1, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/taobao/accs/AccsClientConfig;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 428
    if-nez p1, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateConfig null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    :goto_0
    return-void

    .line 433
    :cond_0
    :try_start_0
    const-string v0, "InAppConn_"

    const-string v3, "updateConfig"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "old"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/taobao/accs/net/k;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v6}, Lcom/taobao/accs/AccsClientConfig;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "new"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {p1}, Lcom/taobao/accs/AccsClientConfig;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    iput-object p1, p0, Lcom/taobao/accs/net/k;->i:Lcom/taobao/accs/AccsClientConfig;

    .line 435
    iget-object v0, p0, Lcom/taobao/accs/net/k;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/net/k;->b:Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lcom/taobao/accs/net/k;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/net/k;->m:Ljava/lang/String;

    .line 438
    iget-object v0, p0, Lcom/taobao/accs/net/k;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/SessionCenter;->getInstance(Ljava/lang/String;)Lanet/channel/SessionCenter;

    move-result-object v3

    .line 439
    iget-object v0, p0, Lcom/taobao/accs/net/k;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getInappHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lanet/channel/SessionCenter;->unregisterSessionInfo(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, Lcom/taobao/accs/net/k;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/accs/net/k;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->isKeepalive()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 446
    :goto_1
    iget-object v4, p0, Lcom/taobao/accs/net/k;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v4}, Lcom/taobao/accs/AccsClientConfig;->getInappHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v0}, Lcom/taobao/accs/net/k;->a(Lanet/channel/SessionCenter;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    const-string v3, "InAppConn_"

    const-string v4, "updateConfig"

    new-array v5, v7, [Ljava/lang/Object;

    const-string v6, "excetion"

    aput-object v6, v5, v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 444
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v0

    const-string v4, "close keepalive"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v2

    goto :goto_1
.end method

.method protected a(Lcom/taobao/accs/data/Message;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 83
    iget-boolean v0, p0, Lcom/taobao/accs/net/k;->n:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not running or msg null! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/taobao/accs/net/k;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    :cond_1
    :goto_0
    return-void

    .line 88
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getSendScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_3

    .line 89
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "accs"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 206
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/taobao/accs/net/k;->e:Lcom/taobao/accs/data/a;

    const v1, 0x11178

    invoke-virtual {v0, p1, v1}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;I)V

    .line 207
    invoke-virtual {p0}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send queue full count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getSendScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getSendScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/taobao/accs/net/l;

    invoke-direct {v1, p0, p1}, Lcom/taobao/accs/net/l;-><init>(Lcom/taobao/accs/net/k;Lcom/taobao/accs/data/Message;)V

    iget-wide v2, p1, Lcom/taobao/accs/data/Message;->O:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 185
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    iget-object v1, p1, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 188
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 189
    iget-object v1, p1, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/taobao/accs/net/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 190
    iget-object v1, p0, Lcom/taobao/accs/net/k;->e:Lcom/taobao/accs/data/a;

    invoke-virtual {v1, p1}, Lcom/taobao/accs/data/a;->b(Lcom/taobao/accs/data/Message;)V

    .line 194
    :cond_4
    iget-object v1, p0, Lcom/taobao/accs/net/k;->e:Lcom/taobao/accs/data/a;

    iget-object v1, v1, Lcom/taobao/accs/data/a;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-object v2, p1, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_5
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_1

    .line 200
    iget-object v1, p0, Lcom/taobao/accs/net/k;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setDeviceId(Ljava/lang/String;)V

    .line 202
    iget v1, p0, Lcom/taobao/accs/net/k;->c:I

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setConnType(I)V

    .line 203
    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onEnterQueueData()V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 208
    :catch_1
    move-exception v0

    .line 209
    iget-object v1, p0, Lcom/taobao/accs/net/k;->e:Lcom/taobao/accs/data/a;

    const/4 v2, -0x8

    invoke-virtual {v1, p1, v2}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;I)V

    .line 210
    invoke-virtual {p0}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "send error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/net/k;->e:Lcom/taobao/accs/data/a;

    invoke-virtual {v0, p1}, Lcom/taobao/accs/data/a;->a(Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/taobao/accs/net/k;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v1}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lanet/channel/SessionCenter;->getInstance(Ljava/lang/String;)Lanet/channel/SessionCenter;

    move-result-object v1

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lanet/channel/SessionCenter;->get(Ljava/lang/String;J)Lanet/channel/Session;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Lanet/channel/Session;->checkAvailable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    invoke-virtual {p0}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onTimeOut"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(ZZ)V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 363
    .line 364
    if-nez p1, :cond_1

    move v0, v1

    .line 374
    :cond_0
    :goto_0
    return v0

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/taobao/accs/net/k;->e:Lcom/taobao/accs/data/a;

    iget-object v0, v0, Lcom/taobao/accs/data/a;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 368
    if-eqz v0, :cond_2

    .line 369
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result v0

    .line 371
    :goto_1
    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cancel"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "customDataId"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/accs/net/k;->f:I

    .line 233
    return-void
.end method

.method public c()Lcom/taobao/accs/ut/statistics/c;
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InAppConn_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/net/k;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/net/k;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "shut down"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    iput-boolean v3, p0, Lcom/taobao/accs/net/k;->n:Z

    .line 222
    return-void
.end method

.method public onDataReceive(Lanet/channel/session/TnetSpdySession;[BII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 273
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataReceive, type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    :cond_0
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/taobao/accs/net/m;

    invoke-direct {v1, p0, p4, p2, p1}, Lcom/taobao/accs/net/m;-><init>(Lcom/taobao/accs/net/k;I[BLanet/channel/session/TnetSpdySession;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 302
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {p0}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDataReceive, end:"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    :cond_1
    return-void
.end method

.method public onException(IIZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "detail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dataId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " needRetry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/taobao/accs/net/n;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/taobao/accs/net/n;-><init>(Lcom/taobao/accs/net/k;IZI)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 338
    return-void
.end method
