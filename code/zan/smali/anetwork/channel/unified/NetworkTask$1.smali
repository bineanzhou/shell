.class Lanetwork/channel/unified/NetworkTask$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/RequestCb;


# instance fields
.field final synthetic a:Lanet/channel/request/Request;

.field final synthetic b:Lanetwork/channel/unified/NetworkTask;


# direct methods
.method constructor <init>(Lanetwork/channel/unified/NetworkTask;Lanet/channel/request/Request;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iput-object p2, p0, Lanetwork/channel/unified/NetworkTask$1;->a:Lanet/channel/request/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceive(Lanet/channel/bytes/ByteArray;Z)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 284
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget v0, v0, Lanetwork/channel/unified/NetworkTask;->l:I

    if-nez v0, :cond_2

    .line 289
    const-string v0, "anet.NetworkTask"

    const-string v1, "[onDataReceive] receive first data chunk!"

    iget-object v2, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v2, v2, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v2, v2, Lanetwork/channel/unified/RequestContext;->c:Ljava/lang/String;

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    :cond_2
    if-eqz p2, :cond_3

    .line 293
    const-string v0, "anet.NetworkTask"

    const-string v1, "[onDataReceive] receive last data chunk!"

    iget-object v2, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v2, v2, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v2, v2, Lanetwork/channel/unified/RequestContext;->c:Ljava/lang/String;

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    :cond_3
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget v1, v0, Lanetwork/channel/unified/NetworkTask;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lanetwork/channel/unified/NetworkTask;->l:I

    .line 298
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->b:Lanetwork/channel/interceptor/Callback;

    iget-object v1, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget v1, v1, Lanetwork/channel/unified/NetworkTask;->l:I

    iget-object v2, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget v2, v2, Lanetwork/channel/unified/NetworkTask;->k:I

    invoke-interface {v0, v1, v2, p1}, Lanetwork/channel/interceptor/Callback;->a(IILanet/channel/bytes/ByteArray;)V

    .line 300
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->e:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Lanet/channel/bytes/ByteArray;->getBuffer()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lanet/channel/bytes/ByteArray;->getDataLength()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 302
    if-eqz p2, :cond_0

    .line 303
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->l()Ljava/lang/String;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v1, v1, Lanetwork/channel/unified/NetworkTask;->d:Lanetwork/channel/cache/Cache$Entry;

    iget-object v2, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v2, v2, Lanetwork/channel/unified/NetworkTask;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, v1, Lanetwork/channel/cache/Cache$Entry;->data:[B

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 307
    iget-object v1, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v1, v1, Lanetwork/channel/unified/NetworkTask;->c:Lanetwork/channel/cache/Cache;

    iget-object v4, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v4, v4, Lanetwork/channel/unified/NetworkTask;->d:Lanetwork/channel/cache/Cache$Entry;

    invoke-interface {v1, v0, v4}, Lanetwork/channel/cache/Cache;->a(Ljava/lang/String;Lanetwork/channel/cache/Cache$Entry;)V

    .line 308
    const-string v1, "anet.NetworkTask"

    const-string v4, "write cache"

    iget-object v5, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v5, v5, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v5, v5, Lanetwork/channel/unified/RequestContext;->c:Ljava/lang/String;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "cost"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x2

    const-string v3, "size"

    aput-object v3, v6, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v3, v3, Lanetwork/channel/unified/NetworkTask;->d:Lanetwork/channel/cache/Cache$Entry;

    iget-object v3, v3, Lanetwork/channel/cache/Cache$Entry;->data:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x4

    const-string v3, "key"

    aput-object v3, v6, v2

    const/4 v2, 0x5

    aput-object v0, v6, v2

    invoke-static {v1, v4, v5, v6}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    const-string v1, "anet.NetworkTask"

    const-string v2, "[onDataReceive] error."

    iget-object v3, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v3, v3, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v3, v3, Lanetwork/channel/unified/RequestContext;->c:Ljava/lang/String;

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 319
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    invoke-virtual {v0}, Lanetwork/channel/unified/RequestContext;->a()V

    .line 325
    invoke-static {v5}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    const-string v0, "anet.NetworkTask"

    const-string v1, "[onFinish]"

    iget-object v2, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v2, v2, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v2, v2, Lanetwork/channel/unified/RequestContext;->c:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "code"

    aput-object v4, v3, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "msg"

    aput-object v4, v3, v5

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    :cond_1
    if-gez p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->o()V

    .line 332
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, v0, Lanetwork/channel/unified/RequestContext;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 333
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    new-instance v1, Lanetwork/channel/unified/NetworkTask;

    iget-object v2, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v2, v2, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v3, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v3, v3, Lanetwork/channel/unified/NetworkTask;->c:Lanetwork/channel/cache/Cache;

    iget-object v4, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v4, v4, Lanetwork/channel/unified/NetworkTask;->d:Lanetwork/channel/cache/Cache$Entry;

    invoke-direct {v1, v2, v3, v4}, Lanetwork/channel/unified/NetworkTask;-><init>(Lanetwork/channel/unified/RequestContext;Lanetwork/channel/cache/Cache;Lanetwork/channel/cache/Cache$Entry;)V

    iput-object v1, v0, Lanetwork/channel/unified/RequestContext;->f:Lanetwork/channel/unified/IUnifiedTask;

    .line 336
    new-instance v0, Lanetwork/channel/unified/NetworkTask$1$1;

    invoke-direct {v0, p0}, Lanetwork/channel/unified/NetworkTask$1$1;-><init>(Lanetwork/channel/unified/NetworkTask$1;)V

    iget-object v1, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v1, v1, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v1, v1, Lanetwork/channel/unified/RequestContext;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v1}, Lanetwork/channel/entity/RequestConfig;->c()I

    move-result v1

    mul-int/lit16 v1, v1, 0x7d0

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v1}, Lanet/channel/a/c;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 345
    :cond_2
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget v0, v0, Lanetwork/channel/unified/NetworkTask;->j:I

    if-nez v0, :cond_3

    .line 346
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iput p1, v0, Lanetwork/channel/unified/NetworkTask;->j:I

    .line 349
    :cond_3
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget v0, v0, Lanetwork/channel/unified/NetworkTask;->j:I

    iput v0, p3, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 350
    iput-object p2, p3, Lanet/channel/statist/RequestStatistic;->msg:Ljava/lang/String;

    .line 351
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->d:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {v0, p3}, Lanetwork/channel/statist/StatisticData;->filledBy(Lanet/channel/statist/RequestStatistic;)V

    .line 354
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget v0, v0, Lanetwork/channel/unified/NetworkTask;->j:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->d:Lanetwork/channel/cache/Cache$Entry;

    if-eqz v0, :cond_7

    .line 355
    const-string v0, "cache"

    iput-object v0, p3, Lanet/channel/statist/RequestStatistic;->protocolType:Ljava/lang/String;

    .line 356
    new-instance v0, Lanetwork/channel/aidl/DefaultFinishEvent;

    const/16 v1, 0xc8

    iget-object v2, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v2, v2, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v2, v2, Lanetwork/channel/unified/RequestContext;->d:Lanetwork/channel/statist/StatisticData;

    invoke-direct {v0, v1, p2, v2}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(ILjava/lang/String;Lanetwork/channel/statist/StatisticData;)V

    .line 361
    :goto_1
    iget-object v1, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v1, v1, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v1, v1, Lanetwork/channel/unified/RequestContext;->b:Lanetwork/channel/interceptor/Callback;

    invoke-interface {v1, v0}, Lanetwork/channel/interceptor/Callback;->a(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    .line 363
    const/4 v0, 0x2

    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 364
    const-string v0, "anet.NetworkTask"

    iget-object v1, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v1, v1, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v1, v1, Lanetwork/channel/unified/RequestContext;->d:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {v1}, Lanetwork/channel/statist/StatisticData;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v2, v2, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v2, v2, Lanetwork/channel/unified/RequestContext;->c:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    :cond_4
    const/16 v0, -0xc8

    if-eq p1, v0, :cond_5

    .line 368
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    invoke-interface {v0, p3}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 371
    :cond_5
    if-ltz p1, :cond_6

    .line 372
    invoke-static {}, Lanet/channel/monitor/b;->a()Lanet/channel/monitor/b;

    move-result-object v1

    iget-wide v2, p3, Lanet/channel/statist/RequestStatistic;->start:J

    iget-wide v4, p3, Lanet/channel/statist/RequestStatistic;->start:J

    iget-wide v6, p3, Lanet/channel/statist/RequestStatistic;->oneWayTime:J

    add-long/2addr v4, v6

    iget-wide v6, p3, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    invoke-virtual/range {v1 .. v7}, Lanet/channel/monitor/b;->a(JJJ)V

    .line 375
    :cond_6
    invoke-static {}, Lanet/channel/flow/c;->a()Lanet/channel/flow/INetworkAnalysis;

    move-result-object v0

    new-instance v1, Lanet/channel/flow/b;

    iget-object v2, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v2, v2, Lanetwork/channel/unified/NetworkTask;->f:Ljava/lang/String;

    invoke-direct {v1, v2, p3}, Lanet/channel/flow/b;-><init>(Ljava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    invoke-interface {v0, v1}, Lanet/channel/flow/INetworkAnalysis;->commitFlow(Lanet/channel/flow/b;)V

    .line 376
    invoke-static {}, Lanetwork/channel/stat/NetworkStat;->a()Lanetwork/channel/stat/INetworkStat;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v1, v1, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v1, v1, Lanetwork/channel/unified/RequestContext;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v1}, Lanetwork/channel/entity/RequestConfig;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v2, v2, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v2, v2, Lanetwork/channel/unified/RequestContext;->d:Lanetwork/channel/statist/StatisticData;

    invoke-interface {v0, v1, v2}, Lanetwork/channel/stat/INetworkStat;->a(Ljava/lang/String;Lanetwork/channel/statist/StatisticData;)V

    .line 378
    invoke-static {}, Lanetwork/channel/statist/StatisticReqTimes;->a()Lanetwork/channel/statist/StatisticReqTimes;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/unified/NetworkTask$1;->a:Lanet/channel/request/Request;

    invoke-virtual {v1}, Lanet/channel/request/Request;->getHttpUrl()Lanet/channel/util/c;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lanetwork/channel/statist/StatisticReqTimes;->a(Lanet/channel/util/c;J)V

    goto/16 :goto_0

    .line 358
    :cond_7
    new-instance v0, Lanetwork/channel/aidl/DefaultFinishEvent;

    iget-object v1, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget v1, v1, Lanetwork/channel/unified/NetworkTask;->j:I

    iget-object v2, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v2, v2, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v2, v2, Lanetwork/channel/unified/RequestContext;->d:Lanetwork/channel/statist/StatisticData;

    invoke-direct {v0, v1, p2, v2}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(ILjava/lang/String;Lanetwork/channel/statist/StatisticData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1
.end method

.method public onResponseCode(ILjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 223
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-static {v4}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[onResponseCode]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    const-string v1, "responseCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    if-eqz p2, :cond_2

    .line 231
    const-string v1, ", header:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_2
    const-string v1, "anet.NetworkTask"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v2, v2, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v2, v2, Lanetwork/channel/unified/RequestContext;->c:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    :cond_3
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->a:Lanet/channel/request/Request;

    invoke-static {v0, p1}, Lanet/channel/util/a;->a(Lanet/channel/request/Request;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 238
    const-string v0, "Location"

    invoke-static {p2, v0}, Lanet/channel/util/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_5

    .line 240
    invoke-static {v0}, Lanet/channel/util/c;->a(Ljava/lang/String;)Lanet/channel/util/c;

    move-result-object v1

    .line 241
    if-eqz v1, :cond_4

    .line 242
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v1}, Lanet/channel/util/c;->i()V

    .line 244
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0, v1}, Lanetwork/channel/entity/RequestConfig;->a(Lanet/channel/util/c;)V

    .line 245
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->d:Lanetwork/channel/statist/StatisticData;

    iget-object v1, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v1, v1, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v1, v1, Lanetwork/channel/unified/RequestContext;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v1}, Lanetwork/channel/entity/RequestConfig;->k()Lanet/channel/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lanet/channel/util/c;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanetwork/channel/statist/StatisticData;->host:Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, v0, Lanetwork/channel/unified/RequestContext;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 247
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    new-instance v1, Lanetwork/channel/unified/NetworkTask;

    iget-object v2, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v2, v2, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    invoke-direct {v1, v2, v5, v5}, Lanetwork/channel/unified/NetworkTask;-><init>(Lanetwork/channel/unified/RequestContext;Lanetwork/channel/cache/Cache;Lanetwork/channel/cache/Cache$Entry;)V

    iput-object v1, v0, Lanetwork/channel/unified/RequestContext;->f:Lanetwork/channel/unified/IUnifiedTask;

    .line 248
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->f:Lanetwork/channel/unified/IUnifiedTask;

    invoke-static {v0, v6}, Lanet/channel/a/c;->a(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    goto/16 :goto_0

    .line 252
    :cond_4
    const-string v1, "anet.NetworkTask"

    const-string v2, "redirect url is invalid!"

    iget-object v3, p0, Lanetwork/channel/unified/NetworkTask$1;->a:Lanet/channel/request/Request;

    invoke-virtual {v3}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "redirect url"

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    :cond_5
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    invoke-virtual {v0}, Lanetwork/channel/unified/RequestContext;->a()V

    .line 259
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iput p1, v0, Lanetwork/channel/unified/NetworkTask;->j:I

    .line 260
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lanetwork/channel/cookie/CookieManager;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 261
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    invoke-static {p2}, Lanet/channel/util/a;->c(Ljava/util/Map;)I

    move-result v1

    iput v1, v0, Lanetwork/channel/unified/NetworkTask;->k:I

    .line 263
    const/16 v0, 0x130

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->d:Lanetwork/channel/cache/Cache$Entry;

    if-eqz v0, :cond_6

    .line 264
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->d:Lanetwork/channel/cache/Cache$Entry;

    iget-object v0, v0, Lanetwork/channel/cache/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 265
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->b:Lanetwork/channel/interceptor/Callback;

    const/16 v1, 0xc8

    iget-object v2, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v2, v2, Lanetwork/channel/unified/NetworkTask;->d:Lanetwork/channel/cache/Cache$Entry;

    iget-object v2, v2, Lanetwork/channel/cache/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lanetwork/channel/interceptor/Callback;->a(ILjava/util/Map;)V

    .line 266
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->b:Lanetwork/channel/interceptor/Callback;

    const/4 v1, 0x1

    iget-object v2, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v2, v2, Lanetwork/channel/unified/NetworkTask;->d:Lanetwork/channel/cache/Cache$Entry;

    iget-object v2, v2, Lanetwork/channel/cache/Cache$Entry;->data:[B

    array-length v2, v2

    iget-object v3, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v3, v3, Lanetwork/channel/unified/NetworkTask;->d:Lanetwork/channel/cache/Cache$Entry;

    iget-object v3, v3, Lanetwork/channel/cache/Cache$Entry;->data:[B

    invoke-static {v3}, Lanet/channel/bytes/ByteArray;->wrap([B)Lanet/channel/bytes/ByteArray;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lanetwork/channel/interceptor/Callback;->a(IILanet/channel/bytes/ByteArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    const-string v1, "anet.NetworkTask"

    const-string v2, "[onResponseCode] error."

    iget-object v3, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v3, v3, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v3, v3, Lanetwork/channel/unified/RequestContext;->c:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 268
    :cond_6
    :try_start_1
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->c:Lanetwork/channel/cache/Cache;

    if-eqz v0, :cond_7

    const-string v0, "GET"

    iget-object v1, p0, Lanetwork/channel/unified/NetworkTask$1;->a:Lanet/channel/request/Request;

    invoke-virtual {v1}, Lanet/channel/request/Request;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 269
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    invoke-static {p2}, Lanetwork/channel/cache/CacheHelper;->a(Ljava/util/Map;)Lanetwork/channel/cache/Cache$Entry;

    move-result-object v1

    iput-object v1, v0, Lanetwork/channel/unified/NetworkTask;->d:Lanetwork/channel/cache/Cache$Entry;

    .line 270
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->d:Lanetwork/channel/cache/Cache$Entry;

    if-eqz v0, :cond_7

    .line 271
    const-string v0, "Cache-Control"

    invoke-static {p2, v0}, Lanet/channel/util/a;->c(Ljava/util/Map;Ljava/lang/String;)V

    .line 272
    const-string v0, "Cache-Control"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "no-store"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v1, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget v0, v0, Lanetwork/channel/unified/NetworkTask;->k:I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget v0, v0, Lanetwork/channel/unified/NetworkTask;->k:I

    :goto_1
    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v2, v1, Lanetwork/channel/unified/NetworkTask;->e:Ljava/io/ByteArrayOutputStream;

    .line 276
    :cond_7
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->b:Lanetwork/channel/interceptor/Callback;

    invoke-interface {v0, p1, p2}, Lanetwork/channel/interceptor/Callback;->a(ILjava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 273
    :cond_8
    const/16 v0, 0x1400

    goto :goto_1
.end method
