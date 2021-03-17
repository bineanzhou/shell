.class Lanetwork/channel/unified/NetworkTask;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanetwork/channel/unified/IUnifiedTask;


# static fields
.field public static final a:Ljava/lang/String; = "anet.NetworkTask"


# instance fields
.field b:Lanetwork/channel/unified/RequestContext;

.field c:Lanetwork/channel/cache/Cache;

.field d:Lanetwork/channel/cache/Cache$Entry;

.field e:Ljava/io/ByteArrayOutputStream;

.field f:Ljava/lang/String;

.field volatile g:Lanet/channel/request/Cancelable;

.field volatile h:Z

.field volatile i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field j:I

.field k:I

.field l:I


# direct methods
.method constructor <init>(Lanetwork/channel/unified/RequestContext;Lanetwork/channel/cache/Cache;Lanetwork/channel/cache/Cache$Entry;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v1, p0, Lanetwork/channel/unified/NetworkTask;->c:Lanetwork/channel/cache/Cache;

    .line 55
    iput-object v1, p0, Lanetwork/channel/unified/NetworkTask;->d:Lanetwork/channel/cache/Cache$Entry;

    .line 56
    iput-object v1, p0, Lanetwork/channel/unified/NetworkTask;->e:Ljava/io/ByteArrayOutputStream;

    .line 57
    const-string v0, "other"

    iput-object v0, p0, Lanetwork/channel/unified/NetworkTask;->f:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lanetwork/channel/unified/NetworkTask;->g:Lanet/channel/request/Cancelable;

    .line 60
    iput-boolean v2, p0, Lanetwork/channel/unified/NetworkTask;->h:Z

    .line 61
    iput-object v1, p0, Lanetwork/channel/unified/NetworkTask;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    iput v2, p0, Lanetwork/channel/unified/NetworkTask;->j:I

    .line 64
    iput v2, p0, Lanetwork/channel/unified/NetworkTask;->k:I

    .line 65
    iput v2, p0, Lanetwork/channel/unified/NetworkTask;->l:I

    .line 68
    iput-object p1, p0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    .line 69
    iget-object v0, p1, Lanetwork/channel/unified/RequestContext;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v0, p0, Lanetwork/channel/unified/NetworkTask;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    iput-object p2, p0, Lanetwork/channel/unified/NetworkTask;->c:Lanetwork/channel/cache/Cache;

    .line 71
    iput-object p3, p0, Lanetwork/channel/unified/NetworkTask;->d:Lanetwork/channel/cache/Cache$Entry;

    .line 72
    iget-object v0, p1, Lanetwork/channel/unified/RequestContext;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->m()Ljava/util/Map;

    move-result-object v0

    const-string v1, "f-refer"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lanetwork/channel/unified/NetworkTask;->f:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private a()Lanet/channel/SessionCenter;
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->a:Lanetwork/channel/entity/RequestConfig;

    const-string v1, "APPKEY"

    invoke-virtual {v0, v1}, Lanetwork/channel/entity/RequestConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Lanet/channel/SessionCenter;->getInstance()Lanet/channel/SessionCenter;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    .line 124
    :cond_0
    sget-object v0, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    .line 125
    iget-object v1, p0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v1, v1, Lanetwork/channel/unified/RequestContext;->a:Lanetwork/channel/entity/RequestConfig;

    const-string v3, "ENVIRONMENT"

    invoke-virtual {v1, v3}, Lanetwork/channel/entity/RequestConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    const-string v3, "pre"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 127
    sget-object v0, Lanet/channel/entity/ENV;->PREPARE:Lanet/channel/entity/ENV;

    .line 132
    :cond_1
    :goto_1
    sget-object v1, Lanetwork/channel/http/NetworkSdkSetting;->CURRENT_ENV:Lanet/channel/entity/ENV;

    if-eq v0, v1, :cond_2

    .line 133
    sput-object v0, Lanetwork/channel/http/NetworkSdkSetting;->CURRENT_ENV:Lanet/channel/entity/ENV;

    .line 134
    invoke-static {v0}, Lanet/channel/SessionCenter;->switchEnvironment(Lanet/channel/entity/ENV;)V

    .line 137
    :cond_2
    invoke-static {v2, v0}, Lanet/channel/Config;->getConfig(Ljava/lang/String;Lanet/channel/entity/ENV;)Lanet/channel/Config;

    move-result-object v1

    .line 138
    if-nez v1, :cond_4

    .line 139
    new-instance v1, Lanet/channel/Config$Builder;

    invoke-direct {v1}, Lanet/channel/Config$Builder;-><init>()V

    invoke-virtual {v1, v2}, Lanet/channel/Config$Builder;->setAppkey(Ljava/lang/String;)Lanet/channel/Config$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lanet/channel/Config$Builder;->setEnv(Lanet/channel/entity/ENV;)Lanet/channel/Config$Builder;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v1, v1, Lanetwork/channel/unified/RequestContext;->a:Lanetwork/channel/entity/RequestConfig;

    const-string v2, "AuthCode"

    invoke-virtual {v1, v2}, Lanetwork/channel/entity/RequestConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanet/channel/Config$Builder;->setAuthCode(Ljava/lang/String;)Lanet/channel/Config$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/Config$Builder;->build()Lanet/channel/Config;

    move-result-object v0

    .line 145
    :goto_2
    invoke-static {v0}, Lanet/channel/SessionCenter;->getInstance(Lanet/channel/Config;)Lanet/channel/SessionCenter;

    move-result-object v0

    goto :goto_0

    .line 128
    :cond_3
    const-string v3, "test"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    sget-object v0, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method private a(Lanet/channel/request/Request;)Lanet/channel/request/Request;
    .locals 6

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 179
    iget-object v1, p0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v1, v1, Lanetwork/channel/unified/RequestContext;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v1}, Lanetwork/channel/entity/RequestConfig;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v1, v1, Lanetwork/channel/unified/RequestContext;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v1}, Lanetwork/channel/entity/RequestConfig;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lanetwork/channel/cookie/CookieManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    invoke-virtual {p1}, Lanet/channel/request/Request;->newBuilder()Lanet/channel/request/Request$Builder;

    move-result-object v2

    .line 184
    invoke-virtual {p1}, Lanet/channel/request/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v3, "Cookie"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 185
    if-eqz v0, :cond_4

    .line 186
    const-string v3, "; "

    invoke-static {v0, v3, v1}, Lanet/channel/util/StringUtils;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    :goto_0
    const-string v1, "Cookie"

    invoke-virtual {v2, v1, v0}, Lanet/channel/request/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    move-object v0, v2

    .line 195
    :cond_0
    iget-object v1, p0, Lanetwork/channel/unified/NetworkTask;->d:Lanetwork/channel/cache/Cache$Entry;

    if-eqz v1, :cond_3

    .line 196
    if-nez v0, :cond_1

    .line 197
    invoke-virtual {p1}, Lanet/channel/request/Request;->newBuilder()Lanet/channel/request/Request$Builder;

    move-result-object v0

    .line 199
    :cond_1
    iget-object v1, p0, Lanetwork/channel/unified/NetworkTask;->d:Lanetwork/channel/cache/Cache$Entry;

    iget-object v1, v1, Lanetwork/channel/cache/Cache$Entry;->etag:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 200
    const-string v1, "If-None-Match"

    iget-object v2, p0, Lanetwork/channel/unified/NetworkTask;->d:Lanetwork/channel/cache/Cache$Entry;

    iget-object v2, v2, Lanetwork/channel/cache/Cache$Entry;->etag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lanet/channel/request/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    .line 202
    :cond_2
    iget-object v1, p0, Lanetwork/channel/unified/NetworkTask;->d:Lanetwork/channel/cache/Cache$Entry;

    iget-wide v2, v1, Lanetwork/channel/cache/Cache$Entry;->lastModified:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 203
    const-string v1, "If-Modified-Since"

    iget-object v2, p0, Lanetwork/channel/unified/NetworkTask;->d:Lanetwork/channel/cache/Cache$Entry;

    iget-wide v2, v2, Lanetwork/channel/cache/Cache$Entry;->lastModified:J

    invoke-static {v2, v3}, Lanetwork/channel/cache/CacheHelper;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lanet/channel/request/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    .line 207
    :cond_3
    if-nez v0, :cond_5

    :goto_1
    return-object p1

    :cond_4
    move-object v0, v1

    .line 188
    goto :goto_0

    .line 207
    :cond_5
    invoke-virtual {v0}, Lanet/channel/request/Request$Builder;->build()Lanet/channel/request/Request;

    move-result-object p1

    goto :goto_1
.end method

.method private a(Lanet/channel/util/c;)Lanet/channel/util/c;
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->m()Ljava/util/Map;

    move-result-object v0

    const-string v1, "x-host-cname"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    invoke-virtual {p1}, Lanet/channel/util/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lanet/channel/util/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/util/c;->a(Ljava/lang/String;)Lanet/channel/util/c;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    move-object p1, v0

    .line 116
    :cond_0
    return-object p1
.end method

.method private a(Lanet/channel/Session;Lanet/channel/request/Request;)V
    .locals 3

    .prologue
    .line 211
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lanetwork/channel/unified/NetworkTask;->h:Z

    if-eqz v0, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-direct {p0, p2}, Lanetwork/channel/unified/NetworkTask;->a(Lanet/channel/request/Request;)Lanet/channel/request/Request;

    move-result-object v0

    .line 218
    invoke-static {}, Lanetwork/channel/statist/StatisticReqTimes;->a()Lanetwork/channel/statist/StatisticReqTimes;

    move-result-object v1

    invoke-virtual {v0}, Lanet/channel/request/Request;->getHttpUrl()Lanet/channel/util/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lanetwork/channel/statist/StatisticReqTimes;->a(Lanet/channel/util/c;)V

    .line 220
    new-instance v1, Lanetwork/channel/unified/NetworkTask$1;

    invoke-direct {v1, p0, v0}, Lanetwork/channel/unified/NetworkTask$1;-><init>(Lanetwork/channel/unified/NetworkTask;Lanet/channel/request/Request;)V

    invoke-virtual {p1, v0, v1}, Lanet/channel/Session;->request(Lanet/channel/request/Request;Lanet/channel/RequestCb;)Lanet/channel/request/Cancelable;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/unified/NetworkTask;->g:Lanet/channel/request/Cancelable;

    goto :goto_0
.end method

.method private b()Lanet/channel/Session;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 150
    invoke-direct {p0}, Lanetwork/channel/unified/NetworkTask;->a()Lanet/channel/SessionCenter;

    move-result-object v2

    .line 152
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->k()Lanet/channel/util/c;

    move-result-object v3

    .line 154
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->h()I

    move-result v0

    if-ne v0, v9, :cond_2

    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->c()I

    move-result v0

    if-nez v0, :cond_2

    .line 156
    invoke-direct {p0, v3}, Lanetwork/channel/unified/NetworkTask;->a(Lanet/channel/util/c;)Lanet/channel/util/c;

    move-result-object v0

    sget-object v4, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    const-wide/16 v6, 0x1388

    invoke-virtual {v2, v0, v4, v6, v7}, Lanet/channel/SessionCenter;->get(Lanet/channel/util/c;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;

    move-result-object v0

    .line 159
    :goto_0
    if-nez v0, :cond_0

    iget-object v4, p0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v4, v4, Lanetwork/channel/unified/RequestContext;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v4}, Lanetwork/channel/entity/RequestConfig;->j()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->h()Z

    move-result v4

    if-nez v4, :cond_0

    .line 160
    sget-object v0, Lanet/channel/entity/ConnType$TypeLevel;->HTTP:Lanet/channel/entity/ConnType$TypeLevel;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Lanet/channel/SessionCenter;->get(Lanet/channel/util/c;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;

    move-result-object v0

    .line 163
    :cond_0
    if-nez v0, :cond_1

    .line 164
    const-string v0, "anet.NetworkTask"

    const-string v2, "create HttpSession with local DNS"

    iget-object v4, p0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v4, v4, Lanetwork/channel/unified/RequestContext;->c:Ljava/lang/String;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0, v2, v4, v5}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    new-instance v0, Lanet/channel/session/d;

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Lanet/channel/entity/a;

    invoke-virtual {v3}, Lanet/channel/util/c;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v5, v5, Lanetwork/channel/unified/RequestContext;->c:Ljava/lang/String;

    invoke-direct {v4, v3, v5, v1}, Lanet/channel/entity/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;)V

    invoke-direct {v0, v2, v4}, Lanet/channel/session/d;-><init>(Landroid/content/Context;Lanet/channel/entity/a;)V

    .line 168
    :cond_1
    iget-object v1, p0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v1, v1, Lanetwork/channel/unified/RequestContext;->d:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {v0}, Lanet/channel/Session;->getConnType()Lanet/channel/entity/ConnType;

    move-result-object v2

    invoke-virtual {v2}, Lanet/channel/entity/ConnType;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lanetwork/channel/statist/StatisticData;->connectionType:Ljava/lang/String;

    .line 169
    iget-object v1, p0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v1, v1, Lanetwork/channel/unified/RequestContext;->d:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {v0}, Lanet/channel/Session;->getConnType()Lanet/channel/entity/ConnType;

    move-result-object v2

    invoke-virtual {v2}, Lanet/channel/entity/ConnType;->isSSL()Z

    move-result v2

    iput-boolean v2, v1, Lanetwork/channel/statist/StatisticData;->isSSL:Z

    .line 171
    const-string v1, "anet.NetworkTask"

    const-string v2, "tryGetSession"

    iget-object v3, p0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v3, v3, Lanetwork/channel/unified/RequestContext;->c:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Session"

    aput-object v5, v4, v8

    aput-object v0, v4, v9

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanetwork/channel/unified/NetworkTask;->h:Z

    .line 78
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask;->g:Lanet/channel/request/Cancelable;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask;->g:Lanet/channel/request/Cancelable;

    invoke-interface {v0}, Lanet/channel/request/Cancelable;->cancel()V

    .line 81
    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x2

    .line 85
    iget-boolean v0, p0, Lanetwork/channel/unified/NetworkTask;->h:Z

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    invoke-static {v3}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    const-string v0, "anet.NetworkTask"

    const-string v1, "network unavailable"

    iget-object v2, p0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v2, v2, Lanetwork/channel/unified/RequestContext;->c:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "NetworkStatus"

    aput-object v4, v3, v5

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->a()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    :cond_1
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->b:Lanetwork/channel/interceptor/Callback;

    new-instance v1, Lanetwork/channel/aidl/DefaultFinishEvent;

    const/16 v2, -0xc8

    invoke-direct {v1, v2}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(I)V

    invoke-interface {v0, v1}, Lanetwork/channel/interceptor/Callback;->a(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    goto :goto_0

    .line 97
    :cond_2
    invoke-static {v3}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    const-string v0, "anet.NetworkTask"

    const-string v1, "exec request"

    iget-object v2, p0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v2, v2, Lanetwork/channel/unified/RequestContext;->c:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "retryTimes"

    aput-object v4, v3, v5

    iget-object v4, p0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v4, v4, Lanetwork/channel/unified/RequestContext;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v4}, Lanetwork/channel/entity/RequestConfig;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lanetwork/channel/unified/NetworkTask;->b()Lanet/channel/Session;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v1, v1, Lanetwork/channel/unified/RequestContext;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v1}, Lanetwork/channel/entity/RequestConfig;->a()Lanet/channel/request/Request;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lanetwork/channel/unified/NetworkTask;->a(Lanet/channel/Session;Lanet/channel/request/Request;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    const-string v1, "anet.NetworkTask"

    const-string v2, "send request failed."

    iget-object v3, p0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v3, v3, Lanetwork/channel/unified/RequestContext;->c:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
