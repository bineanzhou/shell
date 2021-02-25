.class public abstract Lcom/taobao/accs/net/b;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final ACCS_RECEIVE_TIMEOUT:I = 0x9c40

.field public static final INAPP:I = 0x1

.field public static final SERVICE:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field protected c:I

.field protected d:Landroid/content/Context;

.field protected e:Lcom/taobao/accs/data/a;

.field protected f:I

.field protected volatile g:Z

.field public h:Lcom/taobao/accs/client/b;

.field public i:Lcom/taobao/accs/AccsClientConfig;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/taobao/accs/data/Message;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/lang/String;

.field private n:J

.field private o:Ljava/lang/Runnable;

.field private p:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/accs/net/b;->b:Ljava/lang/String;

    .line 69
    iput v4, p0, Lcom/taobao/accs/net/b;->f:I

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taobao/accs/net/b;->n:J

    .line 85
    iput-boolean v4, p0, Lcom/taobao/accs/net/b;->g:Z

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/accs/net/b;->k:Ljava/lang/String;

    .line 95
    new-instance v0, Lcom/taobao/accs/net/BaseConnection$1;

    invoke-direct {v0, p0}, Lcom/taobao/accs/net/BaseConnection$1;-><init>(Lcom/taobao/accs/net/b;)V

    iput-object v0, p0, Lcom/taobao/accs/net/b;->l:Ljava/util/LinkedHashMap;

    .line 107
    iput p2, p0, Lcom/taobao/accs/net/b;->c:I

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    .line 110
    invoke-static {p3}, Lcom/taobao/accs/AccsClientConfig;->getConfigByTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig;

    move-result-object v0

    .line 111
    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseConnection config null!!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    :try_start_0
    new-instance v1, Lcom/taobao/accs/AccsClientConfig$Builder;

    invoke-direct {v1}, Lcom/taobao/accs/AccsClientConfig$Builder;-><init>()V

    invoke-static {p1}, Lcom/taobao/accs/ACCSManager;->getDefaultAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAppKey(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/taobao/accs/AccsClientConfig$Builder;->setTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/accs/AccsClientConfig$Builder;->build()Lcom/taobao/accs/AccsClientConfig;
    :try_end_0
    .catch Lcom/taobao/accs/AccsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 121
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    .line 122
    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/accs/net/b;->b:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    .line 124
    new-instance v0, Lcom/taobao/accs/data/a;

    invoke-direct {v0, p1, p0}, Lcom/taobao/accs/data/a;-><init>(Landroid/content/Context;Lcom/taobao/accs/net/b;)V

    iput-object v0, p0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/a;

    .line 125
    iget-object v0, p0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/a;

    iget v1, p0, Lcom/taobao/accs/net/b;->c:I

    iput v1, v0, Lcom/taobao/accs/data/a;->b:I

    .line 127
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/taobao/accs/net/c;

    invoke-direct {v1, p0}, Lcom/taobao/accs/net/c;-><init>(Lcom/taobao/accs/net/b;)V

    const-wide/16 v2, 0x1388

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 136
    return-void

    .line 117
    :catch_0
    move-exception v1

    .line 118
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseConnection build config"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    packed-switch p1, :pswitch_data_0

    .line 154
    const-string v0, "DISCONNECTED"

    .line 158
    :goto_0
    return-object v0

    .line 142
    :pswitch_0
    const-string v0, "CONNECTED"

    goto :goto_0

    .line 145
    :pswitch_1
    const-string v0, "CONNECTING"

    goto :goto_0

    .line 148
    :pswitch_2
    const-string v0, "DISCONNECTED"

    goto :goto_0

    .line 151
    :pswitch_3
    const-string v0, "DISCONNECTING"

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public abstract a()V
.end method

.method protected a(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 353
    :try_start_0
    sget-object v0, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    .line 354
    sget v1, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 355
    sget-object v0, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    .line 356
    invoke-static {v0}, Lanet/channel/SessionCenter;->switchEnvironment(Lanet/channel/entity/ENV;)V

    .line 362
    :cond_0
    :goto_0
    new-instance v1, Lanet/channel/Config$Builder;

    invoke-direct {v1}, Lanet/channel/Config$Builder;-><init>()V

    iget-object v2, p0, Lcom/taobao/accs/net/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lanet/channel/Config$Builder;->setAppkey(Ljava/lang/String;)Lanet/channel/Config$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v2}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lanet/channel/Config$Builder;->setAppSecret(Ljava/lang/String;)Lanet/channel/Config$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v2}, Lcom/taobao/accs/AccsClientConfig;->getAuthCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lanet/channel/Config$Builder;->setAuthCode(Ljava/lang/String;)Lanet/channel/Config$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lanet/channel/Config$Builder;->setEnv(Lanet/channel/entity/ENV;)Lanet/channel/Config$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v1}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanet/channel/Config$Builder;->setTag(Ljava/lang/String;)Lanet/channel/Config$Builder;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Lanet/channel/Config$Builder;->build()Lanet/channel/Config;

    move-result-object v0

    .line 370
    invoke-static {p1, v0}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;Lanet/channel/Config;)V

    .line 371
    const-string v0, "acs"

    .line 372
    iget-object v1, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v1}, Lcom/taobao/accs/AccsClientConfig;->getInappPubKey()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v1}, Lcom/taobao/accs/AccsClientConfig;->getInappPubKey()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    .line 373
    :cond_1
    const-string v0, "open"

    .line 375
    :cond_2
    invoke-static {}, Lanet/channel/strategy/StrategyTemplate;->getInstance()Lanet/channel/strategy/StrategyTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v2}, Lcom/taobao/accs/AccsClientConfig;->getInappHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http2"

    const-string v4, "0rtt"

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, Lanet/channel/strategy/ConnProtocol;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lanet/channel/strategy/ConnProtocol;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lanet/channel/strategy/StrategyTemplate;->registerConnProtocol(Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;)V

    .line 381
    :goto_1
    return-void

    .line 357
    :cond_3
    sget v1, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 358
    sget-object v0, Lanet/channel/entity/ENV;->PREPARE:Lanet/channel/entity/ENV;

    .line 359
    invoke-static {v0}, Lanet/channel/SessionCenter;->switchEnvironment(Lanet/channel/entity/ENV;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "initAwcn"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected abstract a(Lcom/taobao/accs/data/Message;Z)V
.end method

.method protected a(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 243
    new-instance v0, Lcom/taobao/accs/net/d;

    invoke-direct {v0, p0, p1}, Lcom/taobao/accs/net/d;-><init>(Lcom/taobao/accs/net/b;Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, p2, p3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 254
    return-void
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a(ZZ)V
.end method

.method protected a(Lcom/taobao/accs/data/Message;I)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 263
    .line 265
    :try_start_0
    iget v2, p1, Lcom/taobao/accs/data/Message;->P:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    move v0, v1

    .line 286
    :cond_0
    :goto_0
    return v0

    .line 268
    :cond_1
    iget v2, p1, Lcom/taobao/accs/data/Message;->P:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/taobao/accs/data/Message;->P:I

    .line 269
    int-to-long v2, p2

    iput-wide v2, p1, Lcom/taobao/accs/data/Message;->O:J

    .line 270
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reSend dataid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " retryTimes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/taobao/accs/data/Message;->P:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 273
    :try_start_1
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 274
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->take_date:J

    .line 275
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->to_tnet_date:J

    .line 276
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    iget v3, p1, Lcom/taobao/accs/data/Message;->P:I

    iput v3, v2, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->retry_times:I

    .line 278
    iget v2, p1, Lcom/taobao/accs/data/Message;->P:I

    if-ne v2, v0, :cond_0

    .line 279
    const-string v2, "accs"

    const-string v3, "resend"

    const-string v4, "total"

    const-wide/16 v6, 0x0

    invoke-static {v2, v3, v4, v6, v7}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 282
    :catch_0
    move-exception v2

    .line 283
    :goto_1
    iget-object v3, p0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/a;

    const/4 v4, -0x8

    invoke-virtual {v3, p1, v4}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;I)V

    .line 284
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "reSend error"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 282
    :catch_1
    move-exception v0

    move-object v2, v0

    move v0, v1

    goto :goto_1
.end method

.method public abstract a(Ljava/lang/String;)Z
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 332
    iget-object v0, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getInappHost()Ljava/lang/String;

    move-result-object v1

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 343
    :goto_1
    return-object v0

    :cond_1
    move-object v0, p1

    .line 333
    goto :goto_0

    .line 340
    :catch_0
    move-exception v1

    .line 341
    const-string v2, "InAppConnection"

    const-string v3, "getHost"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public abstract b()V
.end method

.method protected b(I)V
    .locals 6

    .prologue
    .line 291
    if-gez p1, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reSendAck"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "dataId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lcom/taobao/accs/net/b;->l:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/data/Message;

    .line 294
    if-eqz v0, :cond_0

    .line 295
    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/taobao/accs/net/b;->a(Lcom/taobao/accs/data/Message;I)Z

    .line 296
    const-string v0, "accs"

    const-string v1, "resend"

    const-string v2, "ack"

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 299
    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 404
    :try_start_0
    new-instance v0, Lcom/taobao/accs/net/f;

    invoke-direct {v0, p0, p1}, Lcom/taobao/accs/net/f;-><init>(Lcom/taobao/accs/net/b;Landroid/content/Context;)V

    const-wide/16 v2, 0x2710

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v1}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "startChannelService"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Lcom/taobao/accs/data/Message;I)V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/a;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;I)V

    .line 385
    return-void
.end method

.method public b(Lcom/taobao/accs/data/Message;Z)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 186
    .line 187
    iget-boolean v0, p1, Lcom/taobao/accs/data/Message;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no network:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/a;

    const/16 v1, -0xd

    invoke-virtual {v0, p1, v1}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;I)V

    .line 240
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v0

    if-eq v0, v7, :cond_9

    .line 194
    iget-object v0, p0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/a;

    iget-object v0, v0, Lcom/taobao/accs/data/a;->d:Lcom/taobao/accs/flowcontrol/FlowControl;

    iget-object v1, p1, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->T:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/taobao/accs/flowcontrol/FlowControl;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 196
    :goto_1
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "servier limit high. dataId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/a;

    const v1, 0x11185

    invoke-virtual {v0, p1, v1}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;I)V

    goto :goto_0

    .line 202
    :cond_1
    const-wide/16 v4, -0x3e8

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    .line 203
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "servier limit high for brush. dataId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/a;

    const v1, 0x11187

    invoke-virtual {v0, p1, v1}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;I)V

    goto :goto_0

    .line 208
    :cond_2
    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/taobao/accs/net/b;->n:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 210
    iput-wide v0, p1, Lcom/taobao/accs/data/Message;->O:J

    .line 214
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/taobao/accs/data/Message;->O:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/taobao/accs/net/b;->n:J

    .line 215
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send message, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v2

    invoke-static {v2}, Lcom/taobao/accs/data/Message$b;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " delay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/taobao/accs/data/Message;->O:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dataId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    :cond_3
    :goto_3
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/net/b;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 226
    iget-object v0, p0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/net/b;->j:Ljava/lang/String;

    .line 229
    :cond_4
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->g()Z

    move-result v0

    if-nez v0, :cond_8

    .line 230
    invoke-virtual {p0, p1, p2}, Lcom/taobao/accs/net/b;->a(Lcom/taobao/accs/data/Message;Z)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 235
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/a;

    const v1, 0x11178

    invoke-virtual {v0, p1, v1}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;I)V

    .line 236
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg queue full"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "size"

    aput-object v3, v2, v6

    const/4 v3, 0x1

    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getSendScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 212
    :cond_5
    iget-wide v2, p0, Lcom/taobao/accs/net/b;->n:J

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/taobao/accs/data/Message;->O:J

    goto/16 :goto_2

    .line 218
    :cond_6
    const-string v0, "accs"

    iget-object v1, p1, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 219
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send message, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v2

    invoke-static {v2}, Lcom/taobao/accs/data/Message$b;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " delay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/taobao/accs/data/Message;->O:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dataId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 220
    :cond_7
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send message, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v2

    invoke-static {v2}, Lcom/taobao/accs/data/Message$b;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " delay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/taobao/accs/data/Message;->O:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dataId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 232
    :cond_8
    :try_start_1
    iget-object v0, p0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/a;

    const/16 v1, -0x9

    invoke-virtual {v0, p1, v1}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;I)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_9
    move-wide v0, v2

    goto/16 :goto_1
.end method

.method public abstract c()Lcom/taobao/accs/ut/statistics/c;
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0xdd

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 433
    iget-object v0, p0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 436
    :try_start_0
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 442
    :goto_0
    iget-object v3, p0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v5}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    invoke-static {v6}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/taobao/accs/utl/UtilityImpl;->getAppsign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 444
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 446
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "auth?1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "&2="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&3="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    iget-object v0, p0, Lcom/taobao/accs/net/b;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 451
    const-string v0, "&4="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/taobao/accs/net/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    :cond_0
    const-string v0, "&5="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/taobao/accs/net/b;->c:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&6="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/UtilityImpl;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&7="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/UtilityImpl;->getOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&8="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, p0, Lcom/taobao/accs/net/b;->c:I

    if-ne v0, v2, :cond_1

    const-string v0, "1.1.2"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&9="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&10="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&11="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&12="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&13="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/UtilityImpl;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&14="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/taobao/accs/net/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&15="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&16="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&17="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 466
    const-string v0, "&19="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    return-object v0

    .line 437
    :catch_0
    move-exception v3

    .line 438
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v4

    const-string v5, "encode"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v3, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 453
    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 466
    goto :goto_2
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method public e()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method protected f()V
    .locals 5

    .prologue
    .line 304
    iget-object v0, p0, Lcom/taobao/accs/net/b;->o:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Lcom/taobao/accs/net/e;

    invoke-direct {v0, p0}, Lcom/taobao/accs/net/e;-><init>(Lcom/taobao/accs/net/b;)V

    iput-object v0, p0, Lcom/taobao/accs/net/b;->o:Ljava/lang/Runnable;

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->g()V

    .line 318
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/net/b;->o:Ljava/lang/Runnable;

    const-wide/32 v2, 0x9c40

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/net/b;->p:Ljava/util/concurrent/ScheduledFuture;

    .line 319
    return-void
.end method

.method protected g()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/taobao/accs/net/b;->p:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/taobao/accs/net/b;->p:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 325
    :cond_0
    return-void
.end method

.method protected h()Z
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/taobao/accs/net/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lcom/taobao/accs/client/b;
    .locals 3

    .prologue
    .line 396
    iget-object v0, p0, Lcom/taobao/accs/net/b;->h:Lcom/taobao/accs/client/b;

    if-nez v0, :cond_0

    .line 397
    new-instance v0, Lcom/taobao/accs/client/b;

    iget-object v1, p0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/taobao/accs/client/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/accs/net/b;->h:Lcom/taobao/accs/client/b;

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/net/b;->h:Lcom/taobao/accs/client/b;

    return-object v0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 473
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v1}, Lcom/taobao/accs/AccsClientConfig;->getSecurity()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 474
    :goto_0
    return v0

    .line 473
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
