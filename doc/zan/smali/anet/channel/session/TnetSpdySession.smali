.class public Lanet/channel/session/TnetSpdySession;
.super Lanet/channel/Session;
.source "Taobao"

# interfaces
.implements Lorg/android/spdy/SessionCb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/session/TnetSpdySession$a;
    }
.end annotation


# static fields
.field private static final MAX_ERROR_COUNT:I = 0x5

.field private static final MAX_ERROR_INTERVAL:J = 0xea60L

.field private static final SSL_TIKET_KEY2:Ljava/lang/String; = "accs_ssl_key2_"

.field private static final TAG:Ljava/lang/String; = "awcn.TnetSpdySession"


# instance fields
.field private accsHostErrors:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field protected auth:Lanet/channel/IAuth;

.field protected dataFrameCb:Lanet/channel/DataFrameCb;

.field protected heartbeat:Lanet/channel/heartbeat/IHeartbeat;

.field protected iSecurity:Lanet/channel/security/ISecurity;

.field protected mAgent:Lorg/android/spdy/SpdyAgent;

.field protected mAppkey:Ljava/lang/String;

.field protected mConnectedTime:J

.field protected volatile mHasUnrevPing:Z

.field protected mLastPingTime:J

.field protected mSession:Lorg/android/spdy/SpdySession;

.field private requestTimeoutCount:I

.field protected tnetPublicKey:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lanet/channel/entity/a;Lanet/channel/Config;Lanet/channel/SessionInfo;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 98
    invoke-virtual {p2}, Lanet/channel/entity/a;->c()Lanet/channel/entity/ConnType;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lanet/channel/Session;-><init>(Landroid/content/Context;Lanet/channel/entity/a;Lanet/channel/entity/ConnType;)V

    .line 75
    iput-boolean v3, p0, Lanet/channel/session/TnetSpdySession;->mHasUnrevPing:Z

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lanet/channel/session/TnetSpdySession;->mConnectedTime:J

    .line 79
    iput v3, p0, Lanet/channel/session/TnetSpdySession;->requestTimeoutCount:I

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lanet/channel/session/TnetSpdySession;->tnetPublicKey:I

    .line 82
    iput-object v2, p0, Lanet/channel/session/TnetSpdySession;->dataFrameCb:Lanet/channel/DataFrameCb;

    .line 83
    iput-object v2, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    .line 84
    iput-object v2, p0, Lanet/channel/session/TnetSpdySession;->auth:Lanet/channel/IAuth;

    .line 85
    iput-object v2, p0, Lanet/channel/session/TnetSpdySession;->mAppkey:Ljava/lang/String;

    .line 86
    iput-object v2, p0, Lanet/channel/session/TnetSpdySession;->iSecurity:Lanet/channel/security/ISecurity;

    .line 88
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/session/TnetSpdySession;->accsHostErrors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 99
    invoke-virtual {p3}, Lanet/channel/Config;->getAppkey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/session/TnetSpdySession;->mAppkey:Ljava/lang/String;

    .line 100
    invoke-virtual {p3}, Lanet/channel/Config;->getSecurity()Lanet/channel/security/ISecurity;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/session/TnetSpdySession;->iSecurity:Lanet/channel/security/ISecurity;

    .line 101
    invoke-direct {p0}, Lanet/channel/session/TnetSpdySession;->initSpdyAgent()V

    .line 102
    if-ltz p5, :cond_1

    .line 103
    iput p5, p0, Lanet/channel/session/TnetSpdySession;->tnetPublicKey:I

    .line 108
    :goto_0
    if-eqz p4, :cond_0

    .line 109
    iget-object v0, p4, Lanet/channel/SessionInfo;->dataFrameCb:Lanet/channel/DataFrameCb;

    iput-object v0, p0, Lanet/channel/session/TnetSpdySession;->dataFrameCb:Lanet/channel/DataFrameCb;

    .line 110
    iget-object v0, p4, Lanet/channel/SessionInfo;->auth:Lanet/channel/IAuth;

    iput-object v0, p0, Lanet/channel/session/TnetSpdySession;->auth:Lanet/channel/IAuth;

    .line 111
    iget-boolean v0, p4, Lanet/channel/SessionInfo;->isKeepAlive:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    const-wide/16 v2, 0x1

    iput-wide v2, v0, Lanet/channel/statist/SessionStatistic;->isKL:J

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanet/channel/session/TnetSpdySession;->autoReCreate:Z

    .line 114
    iget-object v0, p4, Lanet/channel/SessionInfo;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    iput-object v0, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    .line 115
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    if-nez v0, :cond_0

    .line 116
    invoke-static {}, Lanet/channel/heartbeat/HeartbeatManager;->getHeartbeatFactory()Lanet/channel/heartbeat/IHeartbeatFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lanet/channel/heartbeat/IHeartbeatFactory;->createHeartbeat(Lanet/channel/Session;)Lanet/channel/heartbeat/IHeartbeat;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    .line 120
    :cond_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mConnType:Lanet/channel/entity/ConnType;

    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->iSecurity:Lanet/channel/security/ISecurity;

    invoke-interface {v1}, Lanet/channel/security/ISecurity;->isSecOff()Z

    move-result v1

    invoke-virtual {v0, v1}, Lanet/channel/entity/ConnType;->getTnetPublicKey(Z)I

    move-result v0

    iput v0, p0, Lanet/channel/session/TnetSpdySession;->tnetPublicKey:I

    goto :goto_0
.end method

.method static synthetic access$000(Lanet/channel/session/TnetSpdySession;Lanet/channel/entity/EventType;Lanet/channel/entity/d;)V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->handleCallbacks(Lanet/channel/entity/EventType;Lanet/channel/entity/d;)V

    return-void
.end method

.method static synthetic access$100(Lanet/channel/session/TnetSpdySession;Lanet/channel/Session$Status;Lanet/channel/entity/d;)V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->notifyStatus(Lanet/channel/Session$Status;Lanet/channel/entity/d;)V

    return-void
.end method

.method static synthetic access$200(Lanet/channel/session/TnetSpdySession;Lanet/channel/Session$Status;Lanet/channel/entity/d;)V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->notifyStatus(Lanet/channel/Session$Status;Lanet/channel/entity/d;)V

    return-void
.end method

.method static synthetic access$300(Lanet/channel/session/TnetSpdySession;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lanet/channel/session/TnetSpdySession;Lanet/channel/entity/EventType;Lanet/channel/entity/d;)V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->handleCallbacks(Lanet/channel/entity/EventType;Lanet/channel/entity/d;)V

    return-void
.end method

.method static synthetic access$502(Lanet/channel/session/TnetSpdySession;I)I
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lanet/channel/session/TnetSpdySession;->requestTimeoutCount:I

    return p1
.end method

.method static synthetic access$504(Lanet/channel/session/TnetSpdySession;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lanet/channel/session/TnetSpdySession;->requestTimeoutCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lanet/channel/session/TnetSpdySession;->requestTimeoutCount:I

    return v0
.end method

.method static synthetic access$600(Lanet/channel/session/TnetSpdySession;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mRealHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lanet/channel/session/TnetSpdySession;)Lanet/channel/strategy/IConnStrategy;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mConnStrategy:Lanet/channel/strategy/IConnStrategy;

    return-object v0
.end method

.method static synthetic access$800(Lanet/channel/session/TnetSpdySession;Lanet/channel/entity/EventType;Lanet/channel/entity/d;)V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->handleCallbacks(Lanet/channel/entity/EventType;Lanet/channel/entity/d;)V

    return-void
.end method

.method static synthetic access$900(Lanet/channel/session/TnetSpdySession;Lanet/channel/request/Request;I)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->handleResponseCode(Lanet/channel/request/Request;I)V

    return-void
.end method

.method private handleResponseCode(Lanet/channel/request/Request;I)V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 756
    invoke-virtual {p1}, Lanet/channel/request/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "x-pv"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    invoke-virtual {p1}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 761
    invoke-static {v7}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 762
    const-string v0, "awcn.TnetSpdySession"

    const-string v1, "FailOverHandler hook onResponseCode"

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "host"

    aput-object v5, v4, v6

    aput-object v2, v4, v7

    const/4 v5, 0x2

    const-string v6, "code"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v3, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 765
    :cond_2
    const/16 v0, 0x1f4

    if-lt p2, v0, :cond_0

    const/16 v0, 0x258

    if-ge p2, v0, :cond_0

    .line 766
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->accsHostErrors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 767
    if-nez v0, :cond_6

    .line 768
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 769
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->accsHostErrors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 770
    if-eqz v0, :cond_3

    move-object v1, v0

    .line 775
    :cond_3
    :goto_1
    monitor-enter v1

    .line 776
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x5

    if-ge v0, v3, :cond_4

    .line 777
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 788
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 779
    :cond_4
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 780
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 781
    sub-long v4, v6, v4

    const-wide/32 v8, 0xea60

    cmp-long v0, v4, v8

    if-gtz v0, :cond_5

    .line 782
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    invoke-interface {v0, v2}, Lanet/channel/strategy/IStrategyInstance;->forceRefreshStrategy(Ljava/lang/String;)V

    .line 783
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 785
    :cond_5
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method

.method private initSpdyAgent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 446
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lorg/android/spdy/SpdyAgent;->enableDebug:Z

    .line 447
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mContext:Landroid/content/Context;

    sget-object v1, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v2, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {v0, v1, v2}, Lorg/android/spdy/SpdyAgent;->getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/session/TnetSpdySession;->mAgent:Lorg/android/spdy/SpdyAgent;

    .line 448
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->iSecurity:Lanet/channel/security/ISecurity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->iSecurity:Lanet/channel/security/ISecurity;

    invoke-interface {v0}, Lanet/channel/security/ISecurity;->isSecOff()Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mAgent:Lorg/android/spdy/SpdyAgent;

    new-instance v1, Lanet/channel/session/j;

    invoke-direct {v1, p0}, Lanet/channel/session/j;-><init>(Lanet/channel/session/TnetSpdySession;)V

    invoke-virtual {v0, v1}, Lorg/android/spdy/SpdyAgent;->setAccsSslCallback(Lorg/android/spdy/AccsSSLCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 465
    :catch_0
    move-exception v0

    .line 466
    const-string v1, "awcn.TnetSpdySession"

    const-string v2, "Init failed."

    const/4 v3, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onDataFrameException(IIZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->dataFrameCb:Lanet/channel/DataFrameCb;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->dataFrameCb:Lanet/channel/DataFrameCb;

    invoke-interface {v0, p1, p2, p3, p4}, Lanet/channel/DataFrameCb;->onException(IIZLjava/lang/String;)V

    .line 251
    :cond_0
    return-void
.end method


# virtual methods
.method protected auth()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->auth:Lanet/channel/IAuth;

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->auth:Lanet/channel/IAuth;

    new-instance v1, Lanet/channel/session/i;

    invoke-direct {v1, p0}, Lanet/channel/session/i;-><init>(Lanet/channel/session/TnetSpdySession;)V

    invoke-interface {v0, p0, v1}, Lanet/channel/IAuth;->auth(Lanet/channel/Session;Lanet/channel/IAuth$AuthCallback;)V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    sget-object v0, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lanet/channel/session/TnetSpdySession;->notifyStatus(Lanet/channel/Session$Status;Lanet/channel/entity/d;)V

    .line 430
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    const/4 v1, 0x1

    iput v1, v0, Lanet/channel/statist/SessionStatistic;->ret:I

    .line 431
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    invoke-interface {v0}, Lanet/channel/heartbeat/IHeartbeat;->start()V

    goto :goto_0
.end method

.method public bioPingRecvCallback(Lorg/android/spdy/SpdySession;I)V
    .locals 0

    .prologue
    .line 502
    return-void
.end method

.method public close()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 301
    const-string v0, "awcn.TnetSpdySession"

    const-string v1, "force close!"

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "session"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    sget-object v0, Lanet/channel/Session$Status;->DISCONNECTING:Lanet/channel/Session$Status;

    invoke-virtual {p0, v0, v6}, Lanet/channel/session/TnetSpdySession;->notifyStatus(Lanet/channel/Session$Status;Lanet/channel/entity/d;)V

    .line 304
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    invoke-interface {v0}, Lanet/channel/heartbeat/IHeartbeat;->stop()V

    .line 306
    iput-object v6, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    .line 310
    :cond_0
    :try_start_0
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    invoke-virtual {v0}, Lorg/android/spdy/SpdySession;->closeSession()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public connect()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 258
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mStatus:Lanet/channel/Session$Status;

    sget-object v1, Lanet/channel/Session$Status;->CONNECTING:Lanet/channel/Session$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mStatus:Lanet/channel/Session$Status;

    sget-object v1, Lanet/channel/Session$Status;->CONNECTED:Lanet/channel/Session$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mStatus:Lanet/channel/Session$Status;

    sget-object v1, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    if-ne v0, v1, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    :try_start_0
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mAgent:Lorg/android/spdy/SpdyAgent;

    if-eqz v0, :cond_0

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 264
    const-string v0, "awcn.TnetSpdySession"

    const-string v1, "[connect]"

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "host"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lanet/channel/session/TnetSpdySession;->mHost:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "connect "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lanet/channel/session/TnetSpdySession;->mIp:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lanet/channel/session/TnetSpdySession;->mPort:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "sessionId"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object v6, v3, v4

    const/4 v4, 0x6

    const-string v5, "SpdyProtocol,"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    iget-object v5, p0, Lanet/channel/session/TnetSpdySession;->mConnType:Lanet/channel/entity/ConnType;

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "proxyIp,"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    iget-object v5, p0, Lanet/channel/session/TnetSpdySession;->mProxyIp:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "proxyPort,"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    iget v5, p0, Lanet/channel/session/TnetSpdySession;->mProxyPort:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    new-instance v0, Lorg/android/spdy/SessionInfo;

    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mIp:Ljava/lang/String;

    iget v2, p0, Lanet/channel/session/TnetSpdySession;->mPort:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lanet/channel/session/TnetSpdySession;->mHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lanet/channel/session/TnetSpdySession;->mAppkey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lanet/channel/session/TnetSpdySession;->mProxyIp:Ljava/lang/String;

    iget v5, p0, Lanet/channel/session/TnetSpdySession;->mProxyPort:I

    iget-object v7, p0, Lanet/channel/session/TnetSpdySession;->mConnType:Lanet/channel/entity/ConnType;

    invoke-virtual {v7}, Lanet/channel/entity/ConnType;->getTnetConType()I

    move-result v8

    move-object v7, p0

    invoke-direct/range {v0 .. v8}, Lorg/android/spdy/SessionInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lorg/android/spdy/SessionCb;I)V

    .line 268
    iget v1, p0, Lanet/channel/session/TnetSpdySession;->mConnTimeout:I

    int-to-float v1, v1

    invoke-static {}, Lanet/channel/util/Utils;->getNetworkTimeFactor()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/android/spdy/SessionInfo;->setConnectionTimeoutMs(I)V

    .line 269
    iget v1, p0, Lanet/channel/session/TnetSpdySession;->tnetPublicKey:I

    invoke-virtual {v0, v1}, Lorg/android/spdy/SessionInfo;->setPubKeySeqNum(I)V

    .line 270
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mAgent:Lorg/android/spdy/SpdyAgent;

    invoke-virtual {v1, v0}, Lorg/android/spdy/SpdyAgent;->createSession(Lorg/android/spdy/SessionInfo;)Lorg/android/spdy/SpdySession;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    .line 272
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    invoke-virtual {v0}, Lorg/android/spdy/SpdySession;->getRefCount()I

    move-result v0

    if-le v0, v9, :cond_2

    .line 273
    const-string v0, "awcn.TnetSpdySession"

    const-string v1, "get session ref count > 1!!!"

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    sget-object v0, Lanet/channel/Session$Status;->CONNECTED:Lanet/channel/Session$Status;

    new-instance v1, Lanet/channel/entity/b;

    sget-object v2, Lanet/channel/entity/EventType;->CONNECTED:Lanet/channel/entity/EventType;

    invoke-direct {v1, v2}, Lanet/channel/entity/b;-><init>(Lanet/channel/entity/EventType;)V

    invoke-virtual {p0, v0, v1}, Lanet/channel/session/TnetSpdySession;->notifyStatus(Lanet/channel/Session$Status;Lanet/channel/entity/d;)V

    .line 275
    invoke-virtual {p0}, Lanet/channel/session/TnetSpdySession;->auth()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    sget-object v1, Lanet/channel/Session$Status;->CONNETFAIL:Lanet/channel/Session$Status;

    invoke-virtual {p0, v1, v11}, Lanet/channel/session/TnetSpdySession;->notifyStatus(Lanet/channel/Session$Status;Lanet/channel/entity/d;)V

    .line 292
    const-string v1, "awcn.TnetSpdySession"

    const-string v2, "connect exception "

    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 279
    :cond_2
    :try_start_1
    sget-object v0, Lanet/channel/Session$Status;->CONNECTING:Lanet/channel/Session$Status;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lanet/channel/session/TnetSpdySession;->notifyStatus(Lanet/channel/Session$Status;Lanet/channel/entity/d;)V

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lanet/channel/session/TnetSpdySession;->mLastPingTime:J

    .line 284
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mProxyIp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v9

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lanet/channel/statist/SessionStatistic;->isProxy:Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    const-string v1, "false"

    iput-object v1, v0, Lanet/channel/statist/SessionStatistic;->isTunnel:Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v1

    iput-boolean v1, v0, Lanet/channel/statist/SessionStatistic;->isBackground:Z

    .line 288
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lanet/channel/session/TnetSpdySession;->mConnectedTime:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_3
    move v0, v10

    .line 284
    goto :goto_1
.end method

.method protected getRecvTimeOutRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 325
    new-instance v0, Lanet/channel/session/h;

    invoke-direct {v0, p0}, Lanet/channel/session/h;-><init>(Lanet/channel/session/TnetSpdySession;)V

    return-object v0
.end method

.method public getSSLMeta(Lorg/android/spdy/SpdySession;)[B
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 595
    .line 596
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 597
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 598
    const-string v1, "awcn.TnetSpdySession"

    const-string v2, "get sslticket host is null"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 608
    :goto_0
    return-object v0

    .line 603
    :cond_0
    :try_start_0
    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->iSecurity:Lanet/channel/security/ISecurity;

    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accs_ssl_key2_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lanet/channel/security/ISecurity;->getBytes(Landroid/content/Context;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 604
    :catch_0
    move-exception v1

    .line 605
    const-string v2, "awcn.TnetSpdySession"

    const-string v3, "getSSLMeta"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v1, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mStatus:Lanet/channel/Session$Status;

    sget-object v1, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDisconnect()V
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanet/channel/session/TnetSpdySession;->mHasUnrevPing:Z

    .line 321
    return-void
.end method

.method public ping(Z)V
    .locals 8

    .prologue
    const/16 v7, -0x450

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 351
    invoke-static {v5}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    const-string v0, "awcn.TnetSpdySession"

    const-string v1, "ping"

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "host"

    aput-object v4, v3, v6

    iget-object v4, p0, Lanet/channel/session/TnetSpdySession;->mHost:Ljava/lang/String;

    aput-object v4, v3, v5

    const/4 v4, 0x2

    const-string v5, "thread"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    :cond_0
    if-eqz p1, :cond_3

    .line 357
    :try_start_0
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    if-eqz v0, :cond_4

    .line 358
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mStatus:Lanet/channel/Session$Status;

    sget-object v1, Lanet/channel/Session$Status;->CONNECTED:Lanet/channel/Session$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mStatus:Lanet/channel/Session$Status;

    sget-object v1, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    if-ne v0, v1, :cond_3

    .line 359
    :cond_1
    sget-object v0, Lanet/channel/entity/EventType;->PING_SEND:Lanet/channel/entity/EventType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lanet/channel/session/TnetSpdySession;->handleCallbacks(Lanet/channel/entity/EventType;Lanet/channel/entity/d;)V

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanet/channel/session/TnetSpdySession;->mHasUnrevPing:Z

    .line 361
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-wide v2, v0, Lanet/channel/statist/SessionStatistic;->ppkgCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lanet/channel/statist/SessionStatistic;->ppkgCount:J

    .line 362
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    invoke-virtual {v0}, Lorg/android/spdy/SpdySession;->submitPing()I

    .line 363
    const/4 v0, 0x1

    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    const-string v0, "awcn.TnetSpdySession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " submit ping ms:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lanet/channel/session/TnetSpdySession;->mLastPingTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " force:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    :cond_2
    invoke-virtual {p0}, Lanet/channel/session/TnetSpdySession;->setPingTimeout()V

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lanet/channel/session/TnetSpdySession;->mLastPingTime:J

    .line 370
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    if-eqz v0, :cond_3

    .line 371
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    invoke-interface {v0}, Lanet/channel/heartbeat/IHeartbeat;->reSchedule()V

    .line 395
    :cond_3
    :goto_0
    return-void

    .line 376
    :cond_4
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    if-eqz v0, :cond_5

    .line 377
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    const-string v1, "session null"

    iput-object v1, v0, Lanet/channel/statist/SessionStatistic;->closeReason:Ljava/lang/String;

    .line 379
    :cond_5
    const-string v0, "awcn.TnetSpdySession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " session null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    invoke-virtual {p0}, Lanet/channel/session/TnetSpdySession;->close()V
    :try_end_0
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 383
    :catch_0
    move-exception v0

    .line 384
    invoke-virtual {v0}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v1

    if-eq v1, v7, :cond_6

    invoke-virtual {v0}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v1

    const/16 v2, -0x44f

    if-ne v1, v2, :cond_7

    .line 386
    :cond_6
    const-string v1, "awcn.TnetSpdySession"

    const-string v2, "Send request on closed session!!!"

    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    new-instance v1, Lanet/channel/entity/c;

    sget-object v2, Lanet/channel/entity/EventType;->DISCONNECTED:Lanet/channel/entity/EventType;

    const-string v3, "Session is closed!"

    invoke-direct {v1, v2, v6, v7, v3}, Lanet/channel/entity/c;-><init>(Lanet/channel/entity/EventType;ZILjava/lang/String;)V

    .line 389
    sget-object v2, Lanet/channel/Session$Status;->DISCONNECTED:Lanet/channel/Session$Status;

    invoke-virtual {p0, v2, v1}, Lanet/channel/session/TnetSpdySession;->notifyStatus(Lanet/channel/Session$Status;Lanet/channel/entity/d;)V

    .line 391
    :cond_7
    const-string v1, "awcn.TnetSpdySession"

    const-string v2, "ping"

    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 392
    :catch_1
    move-exception v0

    .line 393
    const-string v1, "awcn.TnetSpdySession"

    const-string v2, "ping"

    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public putSSLMeta(Lorg/android/spdy/SpdySession;[B)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 613
    .line 614
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->getDomain()Ljava/lang/String;

    move-result-object v2

    .line 615
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 623
    :goto_0
    return v1

    .line 619
    :cond_0
    :try_start_0
    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->iSecurity:Lanet/channel/security/ISecurity;

    iget-object v4, p0, Lanet/channel/session/TnetSpdySession;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accs_ssl_key2_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2, p2}, Lanet/channel/security/ISecurity;->saveBytes(Landroid/content/Context;Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move v1, v0

    .line 623
    goto :goto_0

    :cond_1
    move v0, v1

    .line 619
    goto :goto_1

    .line 620
    :catch_0
    move-exception v2

    .line 621
    const-string v3, "awcn.TnetSpdySession"

    const-string v4, "putSSLMeta"

    const/4 v5, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v2, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_1
.end method

.method public request(Lanet/channel/request/Request;Lanet/channel/RequestCb;)Lanet/channel/request/Cancelable;
    .locals 13

    .prologue
    .line 125
    sget-object v12, Lanet/channel/request/TnetCancelable;->NULL:Lanet/channel/request/TnetCancelable;

    .line 127
    if-eqz p1, :cond_4

    iget-object v0, p1, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    move-object v11, v0

    .line 128
    :goto_0
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mConnType:Lanet/channel/entity/ConnType;

    invoke-virtual {v11, v0}, Lanet/channel/statist/RequestStatistic;->setConnType(Lanet/channel/entity/ConnType;)V

    .line 129
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mIp:Ljava/lang/String;

    iget v1, p0, Lanet/channel/session/TnetSpdySession;->mPort:I

    invoke-virtual {v11, v0, v1}, Lanet/channel/statist/RequestStatistic;->setIPAndPort(Ljava/lang/String;I)V

    .line 130
    iget-wide v0, v11, Lanet/channel/statist/RequestStatistic;->start:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v11, Lanet/channel/statist/RequestStatistic;->start:J

    .line 134
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_5

    .line 135
    :cond_1
    if-eqz p2, :cond_2

    .line 136
    const/16 v0, -0x66

    const/16 v1, -0x66

    invoke-static {v1}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1, v11}, Lanet/channel/RequestCb;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    :cond_2
    move-object v0, v12

    .line 206
    :cond_3
    :goto_1
    return-object v0

    .line 127
    :cond_4
    new-instance v0, Lanet/channel/statist/RequestStatistic;

    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mRealHost:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lanet/channel/statist/RequestStatistic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v0

    goto :goto_0

    .line 142
    :cond_5
    :try_start_0
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mStatus:Lanet/channel/Session$Status;

    sget-object v1, Lanet/channel/Session$Status;->CONNECTED:Lanet/channel/Session$Status;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mStatus:Lanet/channel/Session$Status;

    sget-object v1, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    if-ne v0, v1, :cond_e

    .line 143
    :cond_6
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mConnType:Lanet/channel/entity/ConnType;

    invoke-virtual {v0}, Lanet/channel/entity/ConnType;->isSSL()Z

    move-result v0

    invoke-virtual {p1, v0}, Lanet/channel/request/Request;->setUrlScheme(Z)V

    .line 144
    invoke-virtual {p1}, Lanet/channel/request/Request;->getUrl()Ljava/net/URL;

    move-result-object v1

    .line 145
    const/4 v0, 0x2

    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 146
    const-string v0, "awcn.TnetSpdySession"

    const-string v2, ""

    invoke-virtual {p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "request URL"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    const-string v0, "awcn.TnetSpdySession"

    const-string v2, ""

    invoke-virtual {p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "request Method"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lanet/channel/request/Request;->getMethod()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    const-string v0, "awcn.TnetSpdySession"

    const-string v2, ""

    invoke-virtual {p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "request headers"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lanet/channel/request/Request;->getHeaders()Ljava/util/Map;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    :cond_7
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mProxyIp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lanet/channel/session/TnetSpdySession;->mProxyPort:I

    if-gtz v0, :cond_c

    .line 153
    :cond_8
    new-instance v0, Lorg/android/spdy/SpdyRequest;

    invoke-virtual {p1}, Lanet/channel/request/Request;->getMethod()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    invoke-virtual {p1}, Lanet/channel/request/Request;->getReadTimeout()I

    move-result v4

    invoke-virtual {p1}, Lanet/channel/request/Request;->getConnectTimeout()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/android/spdy/SpdyRequest;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/android/spdy/RequestPriority;II)V

    .line 164
    :goto_2
    invoke-virtual {p1}, Lanet/channel/request/Request;->getHeaders()Ljava/util/Map;

    move-result-object v1

    .line 165
    const-string v2, "Host"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 166
    invoke-virtual {v0, v1}, Lorg/android/spdy/SpdyRequest;->addHeaders(Ljava/util/Map;)V

    .line 167
    const-string v1, ":host"

    invoke-virtual {p1}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/android/spdy/SpdyRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_3
    invoke-virtual {p1}, Lanet/channel/request/Request;->getBodyBytes()[B

    move-result-object v1

    .line 175
    new-instance v2, Lorg/android/spdy/SpdyDataProvider;

    invoke-direct {v2, v1}, Lorg/android/spdy/SpdyDataProvider;-><init>([B)V

    .line 177
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    new-instance v3, Lanet/channel/session/TnetSpdySession$a;

    invoke-direct {v3, p0, p1, p2}, Lanet/channel/session/TnetSpdySession$a;-><init>(Lanet/channel/session/TnetSpdySession;Lanet/channel/request/Request;Lanet/channel/RequestCb;)V

    invoke-virtual {v1, v0, v2, p0, v3}, Lorg/android/spdy/SpdySession;->submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Lorg/android/spdy/Spdycb;)I

    move-result v1

    .line 178
    const/4 v0, 0x1

    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 179
    const-string v0, "awcn.TnetSpdySession"

    const-string v2, ""

    invoke-virtual {p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "streamId"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :cond_9
    new-instance v0, Lanet/channel/request/TnetCancelable;

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    invoke-virtual {p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lanet/channel/request/TnetCancelable;-><init>(Lorg/android/spdy/SpdySession;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 182
    :try_start_1
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-wide v2, v1, Lanet/channel/statist/SessionStatistic;->requestCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lanet/channel/statist/SessionStatistic;->requestCount:J

    .line 183
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-wide v2, v1, Lanet/channel/statist/SessionStatistic;->stdRCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lanet/channel/statist/SessionStatistic;->stdRCount:J

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lanet/channel/session/TnetSpdySession;->mLastPingTime:J

    .line 186
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    if-eqz v1, :cond_3

    .line 187
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    invoke-interface {v1}, Lanet/channel/heartbeat/IHeartbeat;->reSchedule()V
    :try_end_1
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_1

    .line 192
    :catch_0
    move-exception v1

    .line 193
    :goto_4
    invoke-virtual {v1}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v2

    const/16 v3, -0x450

    if-eq v2, v3, :cond_a

    invoke-virtual {v1}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v2

    const/16 v3, -0x44f

    if-ne v2, v3, :cond_b

    .line 195
    :cond_a
    const-string v2, "awcn.TnetSpdySession"

    const-string v3, "Send request on closed session!!!"

    iget-object v4, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    new-instance v2, Lanet/channel/entity/c;

    sget-object v3, Lanet/channel/entity/EventType;->DISCONNECTED:Lanet/channel/entity/EventType;

    const/4 v4, 0x0

    const/16 v5, -0x450

    const-string v6, "Session is closed!"

    invoke-direct {v2, v3, v4, v5, v6}, Lanet/channel/entity/c;-><init>(Lanet/channel/entity/EventType;ZILjava/lang/String;)V

    .line 198
    sget-object v3, Lanet/channel/Session$Status;->DISCONNECTED:Lanet/channel/Session$Status;

    invoke-virtual {p0, v3, v2}, Lanet/channel/session/TnetSpdySession;->notifyStatus(Lanet/channel/Session$Status;Lanet/channel/entity/d;)V

    .line 200
    :cond_b
    const/16 v2, -0x12c

    const/16 v3, -0x12c

    invoke-virtual {v1}, Lorg/android/spdy/SpdyErrorException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lanet/channel/util/ErrorConstant;->formatMsg(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1, v11}, Lanet/channel/RequestCb;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    goto/16 :goto_1

    .line 157
    :cond_c
    :try_start_2
    new-instance v0, Lorg/android/spdy/SpdyRequest;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v3

    iget-object v4, p0, Lanet/channel/session/TnetSpdySession;->mProxyIp:Ljava/lang/String;

    iget v5, p0, Lanet/channel/session/TnetSpdySession;->mProxyPort:I

    invoke-virtual {p1}, Lanet/channel/request/Request;->getMethod()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    invoke-virtual {p1}, Lanet/channel/request/Request;->getReadTimeout()I

    move-result v8

    invoke-virtual {p1}, Lanet/channel/request/Request;->getConnectTimeout()I

    move-result v9

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lorg/android/spdy/SpdyRequest;-><init>(Ljava/net/URL;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lorg/android/spdy/RequestPriority;III)V

    goto/16 :goto_2

    .line 192
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v12

    goto :goto_4

    .line 169
    :cond_d
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p1}, Lanet/channel/request/Request;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 170
    const-string v2, ":host"

    const-string v3, "Host"

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {v0, v1}, Lorg/android/spdy/SpdyRequest;->addHeaders(Ljava/util/Map;)V
    :try_end_2
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    .line 202
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v12

    .line 203
    :goto_5
    const/16 v2, -0x65

    const/16 v3, -0x65

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lanet/channel/util/ErrorConstant;->formatMsg(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1, v11}, Lanet/channel/RequestCb;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    goto/16 :goto_1

    .line 190
    :cond_e
    const/16 v0, -0x12d

    :try_start_3
    const-string v1, "Session\u4e0d\u53ef\u7528"

    iget-object v2, p1, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-interface {p2, v0, v1, v2}, Lanet/channel/RequestCb;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    :try_end_3
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v12

    goto/16 :goto_1

    .line 202
    :catch_3
    move-exception v1

    goto :goto_5
.end method

.method public sendCustomFrame(I[BI)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 216
    :try_start_0
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->dataFrameCb:Lanet/channel/DataFrameCb;

    if-nez v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    const-string v0, "awcn.TnetSpdySession"

    const-string v1, "sendCustomFrame"

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "dataId"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mStatus:Lanet/channel/Session$Status;

    sget-object v1, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    if-eqz v0, :cond_4

    .line 222
    if-eqz p2, :cond_2

    array-length v0, p2

    const/16 v1, 0x4000

    if-le v0, v1, :cond_2

    .line 223
    const/16 v0, -0x12f

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lanet/channel/session/TnetSpdySession;->onDataFrameException(IIZLjava/lang/String;)V
    :try_end_0
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    const-string v1, "awcn.TnetSpdySession"

    const-string v2, "sendCustomFrame error"

    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 240
    const/16 v1, -0x12c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpdyErrorException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/android/spdy/SpdyErrorException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v8, v0}, Lanet/channel/session/TnetSpdySession;->onDataFrameException(IIZLjava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_2
    :try_start_1
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    const/4 v3, 0x0

    if-nez p2, :cond_3

    move v4, v6

    :goto_1
    move v1, p1

    move v2, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/android/spdy/SpdySession;->sendCustomControlFrame(IIII[B)I

    .line 227
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-wide v2, v0, Lanet/channel/statist/SessionStatistic;->requestCount:J

    add-long/2addr v2, v10

    iput-wide v2, v0, Lanet/channel/statist/SessionStatistic;->requestCount:J

    .line 228
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-wide v2, v0, Lanet/channel/statist/SessionStatistic;->cfRCount:J

    add-long/2addr v2, v10

    iput-wide v2, v0, Lanet/channel/statist/SessionStatistic;->cfRCount:J

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lanet/channel/session/TnetSpdySession;->mLastPingTime:J

    .line 230
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    invoke-interface {v0}, Lanet/channel/heartbeat/IHeartbeat;->reSchedule()V
    :try_end_1
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 241
    :catch_1
    move-exception v0

    .line 242
    const-string v1, "awcn.TnetSpdySession"

    const-string v2, "sendCustomFrame error"

    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 243
    const/16 v1, -0x65

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v8, v0}, Lanet/channel/session/TnetSpdySession;->onDataFrameException(IIZLjava/lang/String;)V

    goto/16 :goto_0

    .line 225
    :cond_3
    :try_start_2
    array-length v4, p2

    goto :goto_1

    .line 235
    :cond_4
    const-string v0, "awcn.TnetSpdySession"

    const-string v1, "sendCustomFrame"

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendCustomFrame con invalid mStatus:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lanet/channel/session/TnetSpdySession;->mStatus:Lanet/channel/Session$Status;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    const/16 v0, -0x12d

    const/4 v1, 0x1

    const-string v2, "session invalid"

    invoke-direct {p0, p1, v0, v1, v2}, Lanet/channel/session/TnetSpdySession;->onDataFrameException(IIZLjava/lang/String;)V
    :try_end_2
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public spdyCustomControlFrameFailCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;II)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 589
    const-string v0, "awcn.TnetSpdySession"

    const-string v1, "spdyCustomControlFrameFailCallback"

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "dataId"

    aput-object v5, v3, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 590
    const-string v0, "tnet error"

    invoke-direct {p0, p3, p4, v6, v0}, Lanet/channel/session/TnetSpdySession;->onDataFrameException(IIZLjava/lang/String;)V

    .line 591
    return-void
.end method

.method public spdyCustomControlFrameRecvCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;IIII[B)V
    .locals 7

    .prologue
    .line 507
    const-string v0, "awcn.TnetSpdySession"

    const-string v1, "[spdyCustomControlFrameRecvCallback]"

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "len"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "frameCb"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lanet/channel/session/TnetSpdySession;->dataFrameCb:Lanet/channel/DataFrameCb;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    const/4 v0, 0x1

    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    const-string v1, ""

    .line 510
    const/16 v0, 0x200

    if-ge p6, v0, :cond_1

    .line 511
    const/4 v0, 0x0

    :goto_0
    array-length v2, p7

    if-ge v0, v2, :cond_0

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p7, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 514
    :cond_0
    const-string v0, "awcn.TnetSpdySession"

    const/4 v2, 0x0

    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "str"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v0, v2, v3, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    :cond_1
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->dataFrameCb:Lanet/channel/DataFrameCb;

    if-eqz v0, :cond_2

    .line 519
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->dataFrameCb:Lanet/channel/DataFrameCb;

    invoke-interface {v0, p0, p7, p3, p4}, Lanet/channel/DataFrameCb;->onDataReceive(Lanet/channel/session/TnetSpdySession;[BII)V

    .line 525
    :goto_1
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-wide v2, v0, Lanet/channel/statist/SessionStatistic;->inceptCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lanet/channel/statist/SessionStatistic;->inceptCount:J

    .line 526
    return-void

    .line 521
    :cond_2
    const-string v0, "awcn.TnetSpdySession"

    const-string v1, "AccsFrameCb is null"

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    new-instance v0, Lanet/channel/statist/ExceptionStatistic;

    const/16 v1, -0x69

    const/4 v2, 0x0

    const-string v3, "rt"

    invoke-direct {v0, v1, v2, v3}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v1

    invoke-interface {v1, v0}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    goto :goto_1
.end method

.method public spdyPingRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 490
    invoke-static {v7}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    const-string v0, "awcn.TnetSpdySession"

    const-string v1, "ping receive"

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Host"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lanet/channel/session/TnetSpdySession;->mHost:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v4, "id"

    aput-object v4, v3, v7

    const/4 v4, 0x3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 498
    :goto_0
    return-void

    .line 496
    :cond_1
    iput-boolean v6, p0, Lanet/channel/session/TnetSpdySession;->mHasUnrevPing:Z

    .line 497
    sget-object v0, Lanet/channel/entity/EventType;->PIND_RECEIVE:Lanet/channel/entity/EventType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lanet/channel/session/TnetSpdySession;->handleCallbacks(Lanet/channel/entity/EventType;Lanet/channel/entity/d;)V

    goto :goto_0
.end method

.method public spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 553
    const-string v0, "awcn.TnetSpdySession"

    const-string v1, "spdySessionCloseCallback"

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, " errorCode:"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    invoke-interface {v0}, Lanet/channel/heartbeat/IHeartbeat;->stop()V

    .line 556
    iput-object v7, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    .line 560
    :cond_0
    if-eqz p1, :cond_1

    .line 561
    :try_start_0
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->cleanUp()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    :cond_1
    :goto_0
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-object v0, v0, Lanet/channel/statist/SessionStatistic;->closeReason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tnet close error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 569
    :goto_1
    new-instance v1, Lanet/channel/entity/c;

    sget-object v2, Lanet/channel/entity/EventType;->DISCONNECTED:Lanet/channel/entity/EventType;

    invoke-direct {v1, v2, v6, p4, v0}, Lanet/channel/entity/c;-><init>(Lanet/channel/entity/EventType;ZILjava/lang/String;)V

    .line 570
    sget-object v0, Lanet/channel/Session$Status;->DISCONNECTED:Lanet/channel/Session$Status;

    invoke-virtual {p0, v0, v1}, Lanet/channel/session/TnetSpdySession;->notifyStatus(Lanet/channel/Session$Status;Lanet/channel/entity/d;)V

    .line 572
    if-eqz p3, :cond_2

    .line 573
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget v1, p3, Lorg/android/spdy/SuperviseConnectInfo;->reused_counter:I

    int-to-long v2, v1

    iput-wide v2, v0, Lanet/channel/statist/SessionStatistic;->requestCount:J

    .line 574
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget v1, p3, Lorg/android/spdy/SuperviseConnectInfo;->keepalive_period_second:I

    int-to-long v2, v1

    iput-wide v2, v0, Lanet/channel/statist/SessionStatistic;->liveTime:J

    .line 577
    :cond_2
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-wide v0, v0, Lanet/channel/statist/SessionStatistic;->errorCode:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 578
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    int-to-long v2, p4

    iput-wide v2, v0, Lanet/channel/statist/SessionStatistic;->errorCode:J

    .line 581
    :cond_3
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lanet/channel/session/TnetSpdySession;->mLastPingTime:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, v0, Lanet/channel/statist/SessionStatistic;->lastPingInterval:I

    .line 582
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    invoke-interface {v0, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 583
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    invoke-virtual {v1}, Lanet/channel/statist/SessionStatistic;->getAlarmObject()Lanet/channel/statist/AlarmObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitAlarm(Lanet/channel/statist/AlarmObject;)V

    .line 584
    return-void

    .line 563
    :catch_0
    move-exception v0

    .line 564
    const-string v1, "awcn.TnetSpdySession"

    const-string v2, "[spdySessionCloseCallback]session clean up failed!"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v7, v0, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 567
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-object v1, v1, Lanet/channel/statist/SessionStatistic;->closeReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-wide v2, v1, Lanet/channel/statist/SessionStatistic;->errorCode:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V
    .locals 6

    .prologue
    .line 473
    new-instance v0, Lanet/channel/entity/b;

    sget-object v1, Lanet/channel/entity/EventType;->CONNECTED:Lanet/channel/entity/EventType;

    invoke-direct {v0, v1}, Lanet/channel/entity/b;-><init>(Lanet/channel/entity/EventType;)V

    .line 474
    iget v1, p2, Lorg/android/spdy/SuperviseConnectInfo;->connectTime:I

    int-to-long v2, v1

    iput-wide v2, v0, Lanet/channel/entity/b;->a:J

    .line 475
    iget v1, p2, Lorg/android/spdy/SuperviseConnectInfo;->handshakeTime:I

    int-to-long v2, v1

    iput-wide v2, v0, Lanet/channel/entity/b;->b:J

    .line 477
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget v2, p2, Lorg/android/spdy/SuperviseConnectInfo;->connectTime:I

    int-to-long v2, v2

    iput-wide v2, v1, Lanet/channel/statist/SessionStatistic;->connectionTime:J

    .line 478
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget v2, p2, Lorg/android/spdy/SuperviseConnectInfo;->handshakeTime:I

    int-to-long v2, v2

    iput-wide v2, v1, Lanet/channel/statist/SessionStatistic;->sslTime:J

    .line 479
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget v2, p2, Lorg/android/spdy/SuperviseConnectInfo;->doHandshakeTime:I

    int-to-long v2, v2

    iput-wide v2, v1, Lanet/channel/statist/SessionStatistic;->sslCalTime:J

    .line 480
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lanet/channel/statist/SessionStatistic;->netType:Ljava/lang/String;

    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lanet/channel/session/TnetSpdySession;->mConnectedTime:J

    .line 482
    sget-object v1, Lanet/channel/Session$Status;->CONNECTED:Lanet/channel/Session$Status;

    invoke-virtual {p0, v1, v0}, Lanet/channel/session/TnetSpdySession;->notifyStatus(Lanet/channel/Session$Status;Lanet/channel/entity/d;)V

    .line 483
    invoke-virtual {p0}, Lanet/channel/session/TnetSpdySession;->auth()V

    .line 485
    const-string v0, "awcn.TnetSpdySession"

    const-string v1, "spdySessionConnectCB connect"

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "connectTime"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p2, Lorg/android/spdy/SuperviseConnectInfo;->connectTime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "sslTime:"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p2, Lorg/android/spdy/SuperviseConnectInfo;->handshakeTime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 486
    return-void
.end method

.method public spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 533
    if-eqz p1, :cond_0

    .line 534
    :try_start_0
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->cleanUp()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :cond_0
    :goto_0
    sget-object v0, Lanet/channel/Session$Status;->CONNETFAIL:Lanet/channel/Session$Status;

    new-instance v1, Lanet/channel/entity/d;

    sget-object v2, Lanet/channel/entity/EventType;->CONNECT_FAIL:Lanet/channel/entity/EventType;

    const-string v3, "tnet connect fail"

    invoke-direct {v1, v2, p2, v3}, Lanet/channel/entity/d;-><init>(Lanet/channel/entity/EventType;ILjava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lanet/channel/session/TnetSpdySession;->notifyStatus(Lanet/channel/Session$Status;Lanet/channel/entity/d;)V

    .line 541
    const-string v0, "awcn.TnetSpdySession"

    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, " errorId:"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v6, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 542
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    int-to-long v2, p2

    iput-wide v2, v0, Lanet/channel/statist/SessionStatistic;->errorCode:J

    .line 543
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iput v5, v0, Lanet/channel/statist/SessionStatistic;->ret:I

    .line 544
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/statist/SessionStatistic;->netType:Ljava/lang/String;

    .line 545
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    invoke-interface {v0, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 546
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    invoke-virtual {v1}, Lanet/channel/statist/SessionStatistic;->getAlarmObject()Lanet/channel/statist/AlarmObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitAlarm(Lanet/channel/statist/AlarmObject;)V

    .line 547
    return-void

    .line 536
    :catch_0
    move-exception v0

    .line 537
    const-string v1, "awcn.TnetSpdySession"

    const-string v2, "[spdySessionFailedError]session clean up failed!"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v6, v0, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
