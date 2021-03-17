.class Lanet/channel/AccsSessionManager;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final TAG:Ljava/lang/String; = "awcn.AccsSessionManager"


# instance fields
.field instance:Lanet/channel/SessionCenter;

.field lastKeys:Ljava/util/Set;
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
.method constructor <init>(Lanet/channel/SessionCenter;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lanet/channel/AccsSessionManager;->instance:Lanet/channel/SessionCenter;

    .line 28
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lanet/channel/AccsSessionManager;->lastKeys:Ljava/util/Set;

    .line 31
    iput-object p1, p0, Lanet/channel/AccsSessionManager;->instance:Lanet/channel/SessionCenter;

    .line 32
    return-void
.end method

.method private closeSessions(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string v0, "awcn.AccsSessionManager"

    const-string v1, "closeSessions"

    iget-object v2, p0, Lanet/channel/AccsSessionManager;->instance:Lanet/channel/SessionCenter;

    iget-object v2, v2, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "host"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lanet/channel/AccsSessionManager;->instance:Lanet/channel/SessionCenter;

    invoke-virtual {v0, p1}, Lanet/channel/SessionCenter;->getSessionRequest(Ljava/lang/String;)Lanet/channel/SessionRequest;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v5}, Lanet/channel/SessionRequest;->b(Z)V

    goto :goto_0
.end method

.method private isNeedCheckSession()Z
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 89
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    const-string v2, "awcn.AccsSessionManager"

    const-string v3, "app is background not need check accs session, return"

    iget-object v4, p0, Lanet/channel/AccsSessionManager;->instance:Lanet/channel/SessionCenter;

    iget-object v4, v4, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "bg"

    aput-object v6, v5, v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    :goto_0
    return v0

    .line 93
    :cond_0
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->g()Z

    move-result v2

    if-nez v2, :cond_1

    .line 94
    const-string v2, "awcn.AccsSessionManager"

    const-string v3, "network is not available, not need check accs session, return"

    iget-object v4, p0, Lanet/channel/AccsSessionManager;->instance:Lanet/channel/SessionCenter;

    iget-object v4, v4, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "network"

    aput-object v6, v5, v0

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->g()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 97
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized checkAndStartSession()V
    .locals 8

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lanet/channel/AccsSessionManager;->instance:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->attributeManager:Lanet/channel/c;

    invoke-virtual {v0}, Lanet/channel/c;->a()Ljava/util/Collection;

    move-result-object v1

    .line 37
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 38
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 39
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    move-object v2, v0

    .line 42
    :goto_0
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/SessionInfo;

    .line 43
    iget-boolean v1, v0, Lanet/channel/SessionInfo;->isKeepAlive:Z

    if-eqz v1, :cond_0

    .line 44
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v4

    iget-object v5, v0, Lanet/channel/SessionInfo;->host:Ljava/lang/String;

    iget-boolean v1, v0, Lanet/channel/SessionInfo;->isAccs:Z

    if-eqz v1, :cond_1

    const-string v1, "https"

    :goto_2
    invoke-interface {v4, v5, v1}, Lanet/channel/strategy/IStrategyInstance;->getSchemeByHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    const-string v4, "://"

    iget-object v0, v0, Lanet/channel/SessionInfo;->host:Ljava/lang/String;

    invoke-static {v1, v4, v0}, Lanet/channel/util/StringUtils;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 44
    :cond_1
    :try_start_1
    const-string v1, "http"

    goto :goto_2

    .line 50
    :cond_2
    iget-object v0, p0, Lanet/channel/AccsSessionManager;->lastKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 52
    invoke-direct {p0, v0}, Lanet/channel/AccsSessionManager;->closeSessions(Ljava/lang/String;)V

    goto :goto_3

    .line 56
    :cond_4
    invoke-direct {p0}, Lanet/channel/AccsSessionManager;->isNeedCheckSession()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    .line 69
    :goto_4
    monitor-exit p0

    return-void

    .line 60
    :cond_5
    :try_start_2
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    :try_start_3
    iget-object v3, p0, Lanet/channel/AccsSessionManager;->instance:Lanet/channel/SessionCenter;

    sget-object v4, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v0, v4, v6, v7}, Lanet/channel/SessionCenter;->get(Ljava/lang/String;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 64
    :catch_0
    move-exception v3

    :try_start_4
    const-string v3, "start session failed"

    const/4 v4, 0x0

    const-string v5, "host"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v3, v4, v5, v6}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 68
    :cond_6
    iput-object v2, p0, Lanet/channel/AccsSessionManager;->lastKeys:Ljava/util/Set;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :cond_7
    move-object v2, v0

    goto/16 :goto_0
.end method

.method public declared-synchronized forceCloseSession(Z)V
    .locals 6

    .prologue
    .line 76
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "awcn.AccsSessionManager"

    const-string v1, "forceCloseSession"

    iget-object v2, p0, Lanet/channel/AccsSessionManager;->instance:Lanet/channel/SessionCenter;

    iget-object v2, v2, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "reCreate"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :cond_0
    iget-object v0, p0, Lanet/channel/AccsSessionManager;->lastKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    invoke-direct {p0, v0}, Lanet/channel/AccsSessionManager;->closeSessions(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 83
    :cond_1
    if-eqz p1, :cond_2

    .line 84
    :try_start_1
    invoke-virtual {p0}, Lanet/channel/AccsSessionManager;->checkAndStartSession()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized forceReCreateSession()V
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lanet/channel/AccsSessionManager;->forceCloseSession(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
