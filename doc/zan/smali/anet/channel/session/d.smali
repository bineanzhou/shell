.class public Lanet/channel/session/d;
.super Lanet/channel/Session;
.source "Taobao"


# instance fields
.field private a:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lanet/channel/entity/a;)V
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p2}, Lanet/channel/entity/a;->c()Lanet/channel/entity/ConnType;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lanet/channel/Session;-><init>(Landroid/content/Context;Lanet/channel/entity/a;Lanet/channel/entity/ConnType;)V

    .line 37
    iget-object v0, p0, Lanet/channel/session/d;->mConnStrategy:Lanet/channel/strategy/IConnStrategy;

    if-nez v0, :cond_2

    .line 38
    iget-object v0, p0, Lanet/channel/session/d;->mHost:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lanet/channel/session/d;->mHost:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lanet/channel/entity/ConnType;->HTTPS:Lanet/channel/entity/ConnType;

    :goto_0
    iput-object v0, p0, Lanet/channel/session/d;->mConnType:Lanet/channel/entity/ConnType;

    .line 42
    :cond_0
    :goto_1
    return-void

    .line 38
    :cond_1
    sget-object v0, Lanet/channel/entity/ConnType;->HTTP:Lanet/channel/entity/ConnType;

    goto :goto_0

    .line 39
    :cond_2
    invoke-static {}, Lanet/channel/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lanet/channel/session/d;->mConnType:Lanet/channel/entity/ConnType;

    sget-object v1, Lanet/channel/entity/ConnType;->HTTPS:Lanet/channel/entity/ConnType;

    invoke-virtual {v0, v1}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Lanet/channel/util/h;

    iget-object v1, p0, Lanet/channel/session/d;->mRealHost:Ljava/lang/String;

    invoke-direct {v0, v1}, Lanet/channel/util/h;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lanet/channel/session/d;->a:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_1
.end method

.method static synthetic a(Lanet/channel/session/d;Lanet/channel/Session$Status;Lanet/channel/entity/d;)V
    .locals 0

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/d;->notifyStatus(Lanet/channel/Session$Status;Lanet/channel/entity/d;)V

    return-void
.end method

.method static synthetic a(Lanet/channel/session/d;Lanet/channel/entity/EventType;Lanet/channel/entity/d;)V
    .locals 0

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/d;->handleCallbacks(Lanet/channel/entity/EventType;Lanet/channel/entity/d;)V

    return-void
.end method

.method static synthetic b(Lanet/channel/session/d;Lanet/channel/entity/EventType;Lanet/channel/entity/d;)V
    .locals 0

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/d;->handleCallbacks(Lanet/channel/entity/EventType;Lanet/channel/entity/d;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lanet/channel/Session$Status;->DISCONNECTED:Lanet/channel/Session$Status;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lanet/channel/session/d;->notifyStatus(Lanet/channel/Session$Status;Lanet/channel/entity/d;)V

    .line 87
    return-void
.end method

.method public close(Z)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanet/channel/session/d;->autoReCreate:Z

    .line 92
    invoke-virtual {p0}, Lanet/channel/session/d;->close()V

    .line 93
    return-void
.end method

.method public connect()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 52
    :try_start_0
    const-string v0, "awcn.HttpSession"

    const-string v1, "HttpSession connect"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "host"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lanet/channel/session/d;->mHost:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    new-instance v0, Lanet/channel/request/Request$Builder;

    invoke-direct {v0}, Lanet/channel/request/Request$Builder;-><init>()V

    iget-object v1, p0, Lanet/channel/session/d;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setUrl(Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lanet/channel/session/d;->mSeq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setSeq(Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget v1, p0, Lanet/channel/session/d;->mConnTimeout:I

    int-to-float v1, v1

    invoke-static {}, Lanet/channel/util/Utils;->getNetworkTimeFactor()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setConnectTimeout(I)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget v1, p0, Lanet/channel/session/d;->mReqTimeout:I

    int-to-float v1, v1

    invoke-static {}, Lanet/channel/util/Utils;->getNetworkTimeFactor()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setReadTimeout(I)Lanet/channel/request/Request$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setRedirectEnable(Z)Lanet/channel/request/Request$Builder;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lanet/channel/session/d;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lanet/channel/session/d;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lanet/channel/request/Request$Builder;

    .line 62
    :cond_0
    invoke-virtual {v0}, Lanet/channel/request/Request$Builder;->build()Lanet/channel/request/Request;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lanet/channel/session/d;->mIp:Ljava/lang/String;

    iget v2, p0, Lanet/channel/session/d;->mPort:I

    invoke-virtual {v0, v1, v2}, Lanet/channel/request/Request;->setDnsOptimize(Ljava/lang/String;I)V

    .line 64
    new-instance v1, Lanet/channel/session/e;

    invoke-direct {v1, p0, v0}, Lanet/channel/session/e;-><init>(Lanet/channel/session/d;Lanet/channel/request/Request;)V

    const/4 v0, 0x6

    invoke-static {v1, v0}, Lanet/channel/a/c;->a(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    const-string v1, "awcn.HttpSession"

    const-string v2, "HTTP connect fail."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v7, v0, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected getRecvTimeOutRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lanet/channel/session/d;->mStatus:Lanet/channel/Session$Status;

    sget-object v1, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ping(Z)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public request(Lanet/channel/request/Request;Lanet/channel/RequestCb;)Lanet/channel/request/Cancelable;
    .locals 10

    .prologue
    const/16 v9, -0x65

    const/16 v8, -0x66

    .line 106
    sget-object v2, Lanet/channel/request/FutureCancelable;->NULL:Lanet/channel/request/FutureCancelable;

    .line 108
    if-eqz p1, :cond_3

    iget-object v0, p1, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    .line 109
    :goto_0
    iget-object v1, p0, Lanet/channel/session/d;->mConnType:Lanet/channel/entity/ConnType;

    invoke-virtual {v0, v1}, Lanet/channel/statist/RequestStatistic;->setConnType(Lanet/channel/entity/ConnType;)V

    .line 110
    iget-wide v4, v0, Lanet/channel/statist/RequestStatistic;->start:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lanet/channel/statist/RequestStatistic;->start:J

    .line 114
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_4

    .line 115
    :cond_1
    if-eqz p2, :cond_2

    .line 116
    invoke-static {v8}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v8, v1, v0}, Lanet/channel/RequestCb;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    :cond_2
    move-object v0, v2

    .line 167
    :goto_1
    return-object v0

    .line 108
    :cond_3
    new-instance v0, Lanet/channel/statist/RequestStatistic;

    iget-object v1, p0, Lanet/channel/session/d;->mRealHost:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lanet/channel/statist/RequestStatistic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_4
    :try_start_0
    invoke-virtual {p1}, Lanet/channel/request/Request;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lanet/channel/session/d;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_5

    .line 122
    invoke-virtual {p1}, Lanet/channel/request/Request;->newBuilder()Lanet/channel/request/Request$Builder;

    move-result-object v1

    iget-object v3, p0, Lanet/channel/session/d;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, v3}, Lanet/channel/request/Request$Builder;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lanet/channel/request/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lanet/channel/request/Request$Builder;->build()Lanet/channel/request/Request;

    move-result-object p1

    .line 123
    const-string v1, "sni"

    iput-object v1, v0, Lanet/channel/statist/RequestStatistic;->isSni:Ljava/lang/String;

    .line 125
    :cond_5
    iget-object v1, p0, Lanet/channel/session/d;->mIp:Ljava/lang/String;

    iget v3, p0, Lanet/channel/session/d;->mPort:I

    invoke-virtual {p1, v1, v3}, Lanet/channel/request/Request;->setDnsOptimize(Ljava/lang/String;I)V

    .line 126
    iget-object v1, p0, Lanet/channel/session/d;->mConnType:Lanet/channel/entity/ConnType;

    invoke-virtual {v1}, Lanet/channel/entity/ConnType;->isSSL()Z

    move-result v1

    invoke-virtual {p1, v1}, Lanet/channel/request/Request;->setUrlScheme(Z)V

    .line 129
    new-instance v1, Lanet/channel/request/FutureCancelable;

    new-instance v3, Lanet/channel/session/f;

    invoke-direct {v3, p0, p1, v0, p2}, Lanet/channel/session/f;-><init>(Lanet/channel/session/d;Lanet/channel/request/Request;Lanet/channel/statist/RequestStatistic;Lanet/channel/RequestCb;)V

    invoke-static {p1}, Lanet/channel/util/e;->a(Lanet/channel/request/Request;)I

    move-result v4

    invoke-static {v3, v4}, Lanet/channel/a/c;->a(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-virtual {p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lanet/channel/request/FutureCancelable;-><init>(Ljava/util/concurrent/Future;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 166
    goto :goto_1

    .line 162
    :catch_0
    move-exception v1

    .line 163
    if-eqz p2, :cond_6

    .line 164
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lanet/channel/util/ErrorConstant;->formatMsg(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v9, v1, v0}, Lanet/channel/RequestCb;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    :cond_6
    move-object v0, v2

    goto :goto_1
.end method
