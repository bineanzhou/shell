.class public Lanetwork/channel/statist/StatisticReqTimes;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final a:Ljava/lang/String; = "awcn.StatisticReqTimes"

.field private static b:Lanetwork/channel/statist/StatisticReqTimes;


# instance fields
.field private c:Z

.field private d:J

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-direct {p0}, Lanetwork/channel/statist/StatisticReqTimes;->d()V

    .line 30
    return-void
.end method

.method public static a()Lanetwork/channel/statist/StatisticReqTimes;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lanetwork/channel/statist/StatisticReqTimes;->b:Lanetwork/channel/statist/StatisticReqTimes;

    if-nez v0, :cond_1

    .line 34
    const-class v1, Lanetwork/channel/statist/StatisticReqTimes;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lanetwork/channel/statist/StatisticReqTimes;->b:Lanetwork/channel/statist/StatisticReqTimes;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lanetwork/channel/statist/StatisticReqTimes;

    invoke-direct {v0}, Lanetwork/channel/statist/StatisticReqTimes;-><init>()V

    sput-object v0, Lanetwork/channel/statist/StatisticReqTimes;->b:Lanetwork/channel/statist/StatisticReqTimes;

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Lanetwork/channel/statist/StatisticReqTimes;->b:Lanetwork/channel/statist/StatisticReqTimes;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanetwork/channel/statist/StatisticReqTimes;->c:Z

    .line 45
    iput-wide v2, p0, Lanetwork/channel/statist/StatisticReqTimes;->d:J

    .line 46
    iput-wide v2, p0, Lanetwork/channel/statist/StatisticReqTimes;->g:J

    .line 47
    iget-object v0, p0, Lanetwork/channel/statist/StatisticReqTimes;->e:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lanetwork/channel/statist/StatisticReqTimes;->e:Ljava/util/Set;

    .line 52
    :goto_0
    iget-object v0, p0, Lanetwork/channel/statist/StatisticReqTimes;->f:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lanetwork/channel/statist/StatisticReqTimes;->f:Ljava/util/Set;

    .line 55
    :cond_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lanetwork/channel/statist/StatisticReqTimes;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lanet/channel/util/c;)V
    .locals 4

    .prologue
    .line 97
    iget-boolean v0, p0, Lanetwork/channel/statist/StatisticReqTimes;->c:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p1}, Lanet/channel/util/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lanetwork/channel/statist/StatisticReqTimes;->f:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lanetwork/channel/statist/StatisticReqTimes;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lanetwork/channel/statist/StatisticReqTimes;->d:J

    .line 103
    :cond_0
    iget-object v1, p0, Lanetwork/channel/statist/StatisticReqTimes;->e:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_1
    return-void
.end method

.method public a(Lanet/channel/util/c;J)V
    .locals 6

    .prologue
    .line 109
    iget-boolean v0, p0, Lanetwork/channel/statist/StatisticReqTimes;->c:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p1}, Lanet/channel/util/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lanetwork/channel/statist/StatisticReqTimes;->e:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lanetwork/channel/statist/StatisticReqTimes;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lanetwork/channel/statist/StatisticReqTimes;->d:J

    sub-long/2addr v0, v2

    .line 114
    const-string v2, "awcn.StatisticReqTimes"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "this req spend times: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-wide v2, p0, Lanetwork/channel/statist/StatisticReqTimes;->g:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lanetwork/channel/statist/StatisticReqTimes;->g:J

    .line 119
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 63
    iget-object v0, p0, Lanetwork/channel/statist/StatisticReqTimes;->f:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lanetwork/channel/statist/StatisticReqTimes;->f:Ljava/util/Set;

    .line 68
    :goto_0
    const/4 v0, 0x2

    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "awcn.StatisticReqTimes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "urlsFromOrange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 75
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v2, p0, Lanetwork/channel/statist/StatisticReqTimes;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 79
    :catch_0
    move-exception v0

    const-string v0, "awcn.StatisticReqTimes"

    const-string v1, "whiteReqUrls from orange isnot json format"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_1
    return-void

    .line 66
    :cond_2
    iget-object v0, p0, Lanetwork/channel/statist/StatisticReqTimes;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 88
    const/4 v0, 0x2

    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "awcn.StatisticReqTimes"

    const-string v1, "start statistic req times"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    :cond_0
    invoke-direct {p0}, Lanetwork/channel/statist/StatisticReqTimes;->d()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanetwork/channel/statist/StatisticReqTimes;->c:Z

    .line 93
    return-void
.end method

.method public c()J
    .locals 6

    .prologue
    .line 127
    const-wide/16 v0, 0x0

    .line 128
    iget-boolean v2, p0, Lanetwork/channel/statist/StatisticReqTimes;->c:Z

    if-eqz v2, :cond_0

    .line 129
    iget-wide v0, p0, Lanetwork/channel/statist/StatisticReqTimes;->g:J

    .line 130
    const/4 v2, 0x2

    invoke-static {v2}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    const-string v2, "awcn.StatisticReqTimes"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finalResult:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lanetwork/channel/statist/StatisticReqTimes;->g:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :cond_0
    invoke-direct {p0}, Lanetwork/channel/statist/StatisticReqTimes;->d()V

    .line 135
    return-wide v0
.end method
