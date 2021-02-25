.class Lanet/channel/SessionCenter$a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;
.implements Lanet/channel/strategy/IStrategyListener;
.implements Lanet/channel/util/AppLifecycle$AppLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/SessionCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lanet/channel/SessionCenter;


# direct methods
.method private constructor <init>(Lanet/channel/SessionCenter;)V
    .locals 1

    .prologue
    .line 479
    iput-object p1, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanet/channel/SessionCenter$a;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lanet/channel/SessionCenter;Lanet/channel/d;)V
    .locals 0

    .prologue
    .line 479
    invoke-direct {p0, p1}, Lanet/channel/SessionCenter$a;-><init>(Lanet/channel/SessionCenter;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 482
    invoke-static {p0}, Lanet/channel/util/AppLifecycle;->registerLifecycleListener(Lanet/channel/util/AppLifecycle$AppLifecycleListener;)V

    .line 483
    invoke-static {p0}, Lanet/channel/status/NetworkStatusHelper;->a(Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;)V

    .line 484
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    invoke-interface {v0, p0}, Lanet/channel/strategy/IStrategyInstance;->registerListener(Lanet/channel/strategy/IStrategyListener;)V

    .line 485
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 488
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    invoke-interface {v0, p0}, Lanet/channel/strategy/IStrategyInstance;->unregisterListener(Lanet/channel/strategy/IStrategyListener;)V

    .line 489
    invoke-static {p0}, Lanet/channel/util/AppLifecycle;->unregisterLifecycleListener(Lanet/channel/util/AppLifecycle$AppLifecycleListener;)V

    .line 490
    invoke-static {p0}, Lanet/channel/status/NetworkStatusHelper;->b(Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;)V

    .line 491
    return-void
.end method

.method public background()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 556
    const-string v0, "awcn.SessionCenter"

    const-string v1, "[background]"

    iget-object v2, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    iget-object v2, v2, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    invoke-static {}, Lanet/channel/SessionCenter;->access$200()Z

    move-result v0

    if-nez v0, :cond_1

    .line 558
    const-string v0, "awcn.SessionCenter"

    const-string v1, "background not inited!"

    iget-object v2, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    iget-object v2, v2, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    :try_start_0
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    invoke-interface {v0}, Lanet/channel/strategy/IStrategyInstance;->saveData()V

    .line 563
    const-string v0, "OPPO"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    const-string v0, "awcn.SessionCenter"

    const-string v1, "close session for OPPO"

    iget-object v2, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    iget-object v2, v2, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    iget-object v0, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->accsSessionManager:Lanet/channel/AccsSessionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lanet/channel/AccsSessionManager;->forceCloseSession(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public forground()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 518
    const-string v0, "awcn.SessionCenter"

    const-string v1, "[forground]"

    iget-object v2, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    iget-object v2, v2, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    iget-object v0, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    iget-boolean v0, p0, Lanet/channel/SessionCenter$a;->a:Z

    if-nez v0, :cond_0

    .line 527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanet/channel/SessionCenter$a;->a:Z

    .line 528
    invoke-static {}, Lanet/channel/SessionCenter;->access$200()Z

    move-result v0

    if-nez v0, :cond_2

    .line 529
    const-string v0, "awcn.SessionCenter"

    const-string v1, "forground not inited!"

    iget-object v2, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    iget-object v2, v2, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 533
    :cond_2
    :try_start_0
    new-instance v0, Lanet/channel/e;

    invoke-direct {v0, p0}, Lanet/channel/e;-><init>(Lanet/channel/SessionCenter$a;)V

    invoke-static {v0}, Lanet/channel/a/c;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onNetworkStatusChanged(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 495
    const-string v0, "awcn.SessionCenter"

    const-string v1, "onNetworkStatusChanged. reCreateSession"

    iget-object v2, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    iget-object v2, v2, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "networkStatus"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    iget-object v0, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->sessionPool:Lanet/channel/f;

    invoke-virtual {v0}, Lanet/channel/f;->a()Ljava/util/List;

    move-result-object v0

    .line 497
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 498
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/SessionRequest;

    .line 499
    const-string v2, "awcn.SessionCenter"

    const-string v3, "network change, try recreate session"

    iget-object v4, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    iget-object v4, v4, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lanet/channel/SessionRequest;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 503
    :cond_0
    const-string v0, "awcn.SessionCenter"

    const-string v1, "recreate session failed: infos is empty"

    iget-object v2, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    iget-object v2, v2, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    :cond_1
    iget-object v0, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->accsSessionManager:Lanet/channel/AccsSessionManager;

    invoke-virtual {v0}, Lanet/channel/AccsSessionManager;->checkAndStartSession()V

    .line 506
    return-void
.end method

.method public onStrategyUpdated(Lanet/channel/strategy/k$c;)V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    invoke-static {v0, p1}, Lanet/channel/SessionCenter;->access$100(Lanet/channel/SessionCenter;Lanet/channel/strategy/k$c;)V

    .line 511
    iget-object v0, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->accsSessionManager:Lanet/channel/AccsSessionManager;

    invoke-virtual {v0}, Lanet/channel/AccsSessionManager;->checkAndStartSession()V

    .line 512
    return-void
.end method
