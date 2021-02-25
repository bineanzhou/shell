.class Lanet/channel/strategy/StrategyCollection;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:Ljava/lang/String;

.field b:Lanet/channel/strategy/StrategyList;

.field volatile c:J

.field volatile d:Ljava/lang/String;

.field volatile e:Ljava/lang/String;

.field f:Z

.field private transient g:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->b:Lanet/channel/strategy/StrategyList;

    .line 22
    iput-wide v2, p0, Lanet/channel/strategy/StrategyCollection;->c:J

    .line 23
    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->d:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->e:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanet/channel/strategy/StrategyCollection;->f:Z

    .line 27
    iput-wide v2, p0, Lanet/channel/strategy/StrategyCollection;->g:J

    .line 30
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->b:Lanet/channel/strategy/StrategyList;

    .line 22
    iput-wide v2, p0, Lanet/channel/strategy/StrategyCollection;->c:J

    .line 23
    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->d:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->e:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanet/channel/strategy/StrategyCollection;->f:Z

    .line 27
    iput-wide v2, p0, Lanet/channel/strategy/StrategyCollection;->g:J

    .line 33
    iput-object p1, p0, Lanet/channel/strategy/StrategyCollection;->a:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lanet/channel/strategy/dispatch/DispatchConstants;->isAmdcServerDomain(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lanet/channel/strategy/StrategyCollection;->f:Z

    .line 35
    return-void
.end method


# virtual methods
.method public checkInit()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->b:Lanet/channel/strategy/StrategyList;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->b:Lanet/channel/strategy/StrategyList;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyList;->checkInit()V

    .line 41
    :cond_0
    return-void
.end method

.method public getHostWithEtag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanet/channel/strategy/StrategyCollection;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lanet/channel/strategy/StrategyCollection;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public isExpired()Z
    .locals 4

    .prologue
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lanet/channel/strategy/StrategyCollection;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized notifyConnEvent(Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V
    .locals 6

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->b:Lanet/channel/strategy/StrategyList;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->b:Lanet/channel/strategy/StrategyList;

    invoke-virtual {v0, p1, p2}, Lanet/channel/strategy/StrategyList;->notifyConnEvent(Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V

    .line 53
    iget-boolean v0, p2, Lanet/channel/strategy/ConnEvent;->isSuccess:Z

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->b:Lanet/channel/strategy/StrategyList;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyList;->shouldRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 57
    iget-wide v2, p0, Lanet/channel/strategy/StrategyCollection;->g:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 58
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v2

    iget-object v3, p0, Lanet/channel/strategy/StrategyCollection;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Lanet/channel/strategy/IStrategyInstance;->forceRefreshStrategy(Ljava/lang/String;)V

    .line 59
    iput-wide v0, p0, Lanet/channel/strategy/StrategyCollection;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_0
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queryStrategyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->b:Lanet/channel/strategy/StrategyList;

    if-nez v0, :cond_0

    .line 45
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->b:Lanet/channel/strategy/StrategyList;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyList;->getStrategyList()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 110
    const-string v1, "\nStrategyList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lanet/channel/strategy/StrategyCollection;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    iget-object v1, p0, Lanet/channel/strategy/StrategyCollection;->b:Lanet/channel/strategy/StrategyList;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lanet/channel/strategy/StrategyCollection;->b:Lanet/channel/strategy/StrategyList;

    invoke-virtual {v1}, Lanet/channel/strategy/StrategyList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    iget-object v1, p0, Lanet/channel/strategy/StrategyCollection;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 114
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanet/channel/strategy/StrategyCollection;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanet/channel/strategy/StrategyCollection;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 116
    :cond_1
    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public declared-synchronized update(Lanet/channel/strategy/k$b;)V
    .locals 6

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p1, Lanet/channel/strategy/k$b;->b:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lanet/channel/strategy/StrategyCollection;->c:J

    .line 81
    iget-object v0, p1, Lanet/channel/strategy/k$b;->a:Ljava/lang/String;

    iget-object v1, p0, Lanet/channel/strategy/StrategyCollection;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    const-string v0, "StrategyCollection"

    const-string v1, "update error!"

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "host"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lanet/channel/strategy/StrategyCollection;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "dnsInfo.host"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lanet/channel/strategy/k$b;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 86
    :cond_1
    :try_start_1
    iget-boolean v0, p1, Lanet/channel/strategy/k$b;->j:Z

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p1, Lanet/channel/strategy/k$b;->d:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->e:Ljava/lang/String;

    .line 91
    iget-object v0, p1, Lanet/channel/strategy/k$b;->i:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->d:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lanet/channel/strategy/k$b;->e:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lanet/channel/strategy/k$b;->e:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lanet/channel/strategy/k$b;->g:[Lanet/channel/strategy/k$a;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lanet/channel/strategy/k$b;->g:[Lanet/channel/strategy/k$a;

    array-length v0, v0

    if-nez v0, :cond_3

    .line 96
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->b:Lanet/channel/strategy/StrategyList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 100
    :cond_3
    :try_start_2
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->b:Lanet/channel/strategy/StrategyList;

    if-nez v0, :cond_4

    .line 101
    new-instance v0, Lanet/channel/strategy/StrategyList;

    invoke-direct {v0}, Lanet/channel/strategy/StrategyList;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->b:Lanet/channel/strategy/StrategyList;

    .line 104
    :cond_4
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->b:Lanet/channel/strategy/StrategyList;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/StrategyList;->update(Lanet/channel/strategy/k$b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
