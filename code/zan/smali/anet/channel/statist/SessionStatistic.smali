.class public Lanet/channel/statist/SessionStatistic;
.super Lanet/channel/statist/StatObject;
.source "Taobao"


# annotations
.annotation runtime Lanet/channel/statist/Monitor;
    module = "networkPrefer"
    monitorPoint = "session"
.end annotation


# static fields
.field public static maxRetryTime:I


# instance fields
.field public ackTime:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public authTime:J
    .annotation runtime Lanet/channel/statist/Measure;
        max = 15000.0
    .end annotation
.end field

.field public cfRCount:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public closeReason:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public connectionTime:J
    .annotation runtime Lanet/channel/statist/Measure;
        max = 15000.0
    .end annotation
.end field

.field public conntype:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public errorCode:J
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public host:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public inceptCount:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public ip:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public ipType:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public isBackground:Z
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public isCommitted:Z

.field public isKL:J
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public isProxy:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public isTunnel:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public lastPingInterval:I
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public liveTime:J
    .annotation runtime Lanet/channel/statist/Measure;
        max = 86400.0
    .end annotation
.end field

.field public netType:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public pRate:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public port:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public ppkgCount:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public recvSizeCount:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public requestCount:J
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 1.0
    .end annotation
.end field

.field public ret:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public retryTimes:J
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public sdkv:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public sendSizeCount:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public sslCalTime:J
    .annotation runtime Lanet/channel/statist/Measure;
        max = 15000.0
    .end annotation
.end field

.field public sslTime:J
    .annotation runtime Lanet/channel/statist/Measure;
        max = 15000.0
    .end annotation
.end field

.field public stdRCount:J
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lanet/channel/entity/a;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    const-wide/16 v2, 0x0

    .line 52
    invoke-direct {p0}, Lanet/channel/statist/StatObject;-><init>()V

    .line 20
    const-string v0, "false"

    iput-object v0, p0, Lanet/channel/statist/SessionStatistic;->isProxy:Ljava/lang/String;

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lanet/channel/statist/SessionStatistic;->ipType:I

    .line 35
    iput-wide v2, p0, Lanet/channel/statist/SessionStatistic;->liveTime:J

    .line 36
    iput-wide v4, p0, Lanet/channel/statist/SessionStatistic;->requestCount:J

    .line 38
    iput-wide v4, p0, Lanet/channel/statist/SessionStatistic;->stdRCount:J

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanet/channel/statist/SessionStatistic;->isCommitted:Z

    .line 53
    invoke-virtual {p1}, Lanet/channel/entity/a;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/statist/SessionStatistic;->host:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lanet/channel/entity/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/statist/SessionStatistic;->ip:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lanet/channel/entity/a;->b()I

    move-result v0

    iput v0, p0, Lanet/channel/statist/SessionStatistic;->port:I

    .line 56
    invoke-virtual {p1}, Lanet/channel/entity/a;->g()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lanet/channel/statist/SessionStatistic;->pRate:J

    .line 57
    iput-wide v2, p0, Lanet/channel/statist/SessionStatistic;->retryTimes:J

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lanet/channel/entity/a;->c()Lanet/channel/entity/ConnType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/statist/SessionStatistic;->conntype:Ljava/lang/String;

    .line 59
    iget v0, p1, Lanet/channel/entity/a;->b:I

    int-to-long v0, v0

    iput-wide v0, p0, Lanet/channel/statist/SessionStatistic;->retryTimes:J

    .line 60
    iget v0, p1, Lanet/channel/entity/a;->c:I

    sput v0, Lanet/channel/statist/SessionStatistic;->maxRetryTime:I

    .line 61
    iget-object v0, p1, Lanet/channel/entity/a;->a:Lanet/channel/strategy/IConnStrategy;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p1, Lanet/channel/entity/a;->a:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getIpType()I

    move-result v0

    iput v0, p0, Lanet/channel/statist/SessionStatistic;->ipType:I

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public beforeCommit()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 67
    iget v2, p0, Lanet/channel/statist/SessionStatistic;->ret:I

    if-nez v2, :cond_2

    iget-wide v2, p0, Lanet/channel/statist/SessionStatistic;->retryTimes:J

    sget v4, Lanet/channel/statist/SessionStatistic;->maxRetryTime:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lanet/channel/statist/SessionStatistic;->errorCode:J

    const-wide/16 v4, -0xa35

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lanet/channel/statist/SessionStatistic;->errorCode:J

    const-wide/16 v4, -0xa29

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 71
    :cond_0
    invoke-static {v1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    const-string v2, "SessionStat no need commit"

    const/4 v3, 0x0

    const-string v4, "retry:"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget-wide v6, p0, Lanet/channel/statist/SessionStatistic;->retryTimes:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v0

    const-string v6, "maxRetryTime"

    aput-object v6, v5, v1

    const/4 v1, 0x2

    sget v6, Lanet/channel/statist/SessionStatistic;->maxRetryTime:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x3

    const-string v6, "errorCode"

    aput-object v6, v5, v1

    const/4 v1, 0x4

    iget-wide v6, p0, Lanet/channel/statist/SessionStatistic;->errorCode:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :cond_1
    :goto_0
    return v0

    .line 76
    :cond_2
    iget-boolean v2, p0, Lanet/channel/statist/SessionStatistic;->isCommitted:Z

    if-nez v2, :cond_1

    .line 79
    iput-boolean v1, p0, Lanet/channel/statist/SessionStatistic;->isCommitted:Z

    move v0, v1

    .line 80
    goto :goto_0
.end method

.method public getAlarmObject()Lanet/channel/statist/AlarmObject;
    .locals 4

    .prologue
    .line 84
    new-instance v1, Lanet/channel/statist/AlarmObject;

    invoke-direct {v1}, Lanet/channel/statist/AlarmObject;-><init>()V

    .line 85
    const-string v0, "networkPrefer"

    iput-object v0, v1, Lanet/channel/statist/AlarmObject;->module:Ljava/lang/String;

    .line 86
    const-string v0, "connect_succ_rate"

    iput-object v0, v1, Lanet/channel/statist/AlarmObject;->modulePoint:Ljava/lang/String;

    .line 87
    iget v0, p0, Lanet/channel/statist/SessionStatistic;->ret:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lanet/channel/statist/AlarmObject;->isSuccess:Z

    .line 88
    iget-boolean v0, v1, Lanet/channel/statist/AlarmObject;->isSuccess:Z

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lanet/channel/statist/SessionStatistic;->closeReason:Ljava/lang/String;

    iput-object v0, v1, Lanet/channel/statist/AlarmObject;->arg:Ljava/lang/String;

    .line 93
    :goto_1
    return-object v1

    .line 87
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 91
    :cond_1
    iget-wide v2, p0, Lanet/channel/statist/SessionStatistic;->errorCode:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lanet/channel/statist/AlarmObject;->errorCode:Ljava/lang/String;

    goto :goto_1
.end method
