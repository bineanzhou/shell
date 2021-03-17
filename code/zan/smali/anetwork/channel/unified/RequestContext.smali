.class Lanetwork/channel/unified/RequestContext;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public final a:Lanetwork/channel/entity/RequestConfig;

.field public b:Lanetwork/channel/interceptor/Callback;

.field public final c:Ljava/lang/String;

.field public volatile d:Lanetwork/channel/statist/StatisticData;

.field public volatile e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile f:Lanetwork/channel/unified/IUnifiedTask;

.field public volatile g:Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/interceptor/Callback;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lanetwork/channel/statist/StatisticData;

    invoke-direct {v0}, Lanetwork/channel/statist/StatisticData;-><init>()V

    iput-object v0, p0, Lanetwork/channel/unified/RequestContext;->d:Lanetwork/channel/statist/StatisticData;

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lanetwork/channel/unified/RequestContext;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    iput-object v1, p0, Lanetwork/channel/unified/RequestContext;->f:Lanetwork/channel/unified/IUnifiedTask;

    .line 23
    iput-object v1, p0, Lanetwork/channel/unified/RequestContext;->g:Ljava/util/concurrent/Future;

    .line 26
    iput-object p1, p0, Lanetwork/channel/unified/RequestContext;->a:Lanetwork/channel/entity/RequestConfig;

    .line 27
    invoke-virtual {p1}, Lanetwork/channel/entity/RequestConfig;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/unified/RequestContext;->c:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lanetwork/channel/unified/RequestContext;->b:Lanetwork/channel/interceptor/Callback;

    .line 29
    iget-object v0, p0, Lanetwork/channel/unified/RequestContext;->d:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {p1}, Lanetwork/channel/entity/RequestConfig;->k()Lanet/channel/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lanet/channel/util/c;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanetwork/channel/statist/StatisticData;->host:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lanetwork/channel/unified/RequestContext;->g:Ljava/util/concurrent/Future;

    .line 34
    if-eqz v0, :cond_0

    .line 35
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lanetwork/channel/unified/RequestContext;->g:Ljava/util/concurrent/Future;

    .line 38
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lanetwork/channel/unified/RequestContext;->f:Lanetwork/channel/unified/IUnifiedTask;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lanetwork/channel/unified/RequestContext;->f:Lanetwork/channel/unified/IUnifiedTask;

    invoke-interface {v0}, Lanetwork/channel/unified/IUnifiedTask;->cancel()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lanetwork/channel/unified/RequestContext;->f:Lanetwork/channel/unified/IUnifiedTask;

    .line 45
    :cond_0
    return-void
.end method
