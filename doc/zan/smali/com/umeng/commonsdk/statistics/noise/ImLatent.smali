.class public Lcom/umeng/commonsdk/statistics/noise/ImLatent;
.super Ljava/lang/Object;
.source "ImLatent.java"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/d;


# static fields
.field private static instanse:Lcom/umeng/commonsdk/statistics/noise/ImLatent;


# instance fields
.field private final LATENT_MAX:I

.field private final LATENT_WINDOW:I

.field private final _360HOURS_IN_MS:J

.field private final _36HOURS_IN_MS:J

.field private final _DEFAULT_HOURS:I

.field private final _DEFAULT_MAX_LATENT:I

.field private final _DEFAULT_MIN_HOURS:I

.field private final _DEFAULT_MIN_LATENT:I

.field private final _ONE_HOURS_IN_MS:J

.field private context:Landroid/content/Context;

.field private latentHour:J

.field private latentWindow:I

.field private mDelay:J

.field private mElapsed:J

.field private mLatentActivite:Z

.field private mLatentLock:Ljava/lang/Object;

.field private statTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

.field private storeHelper:Lcom/umeng/commonsdk/statistics/common/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->instanse:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V
    .locals 8

    .prologue
    const-wide/32 v6, 0x4d3f6400

    const-wide/16 v4, 0x0

    const/16 v2, 0xa

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x168

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_DEFAULT_HOURS:I

    .line 26
    const/16 v0, 0x24

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_DEFAULT_MIN_HOURS:I

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_DEFAULT_MIN_LATENT:I

    .line 28
    const/16 v0, 0x708

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_DEFAULT_MAX_LATENT:I

    .line 29
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_ONE_HOURS_IN_MS:J

    .line 30
    iput-wide v6, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_360HOURS_IN_MS:J

    .line 31
    const-wide/32 v0, 0x7b98a00

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_36HOURS_IN_MS:J

    .line 33
    const v0, 0x1b7740

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->LATENT_MAX:I

    .line 34
    iput v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->LATENT_WINDOW:I

    .line 39
    iput-wide v6, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentHour:J

    .line 40
    iput v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentWindow:I

    .line 42
    iput-wide v4, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mDelay:J

    .line 43
    iput-wide v4, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mElapsed:J

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->context:Landroid/content/Context;

    .line 61
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/d;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/common/d;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->storeHelper:Lcom/umeng/commonsdk/statistics/common/d;

    .line 62
    iput-object p2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->statTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    .line 63
    return-void
.end method

.method public static declared-synchronized getService(Landroid/content/Context;Lcom/umeng/commonsdk/statistics/internal/StatTracer;)Lcom/umeng/commonsdk/statistics/noise/ImLatent;
    .locals 3

    .prologue
    .line 52
    const-class v1, Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->instanse:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    invoke-direct {v0, p0, p1}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;-><init>(Landroid/content/Context;Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->instanse:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    .line 54
    sget-object v0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->instanse:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->b()Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;)V

    .line 56
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->instanse:Lcom/umeng/commonsdk/statistics/noise/ImLatent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getDelayTime()J
    .locals 4

    .prologue
    .line 126
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_0
    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mDelay:J

    monitor-exit v1

    return-wide v2

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getElapsedTime()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mElapsed:J

    return-wide v0
.end method

.method public isLatentActivite()Z
    .locals 2

    .prologue
    .line 114
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    monitor-exit v1

    return v0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public latentDeactivite()V
    .locals 2

    .prologue
    .line 120
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    .line 122
    monitor-exit v1

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;)V
    .locals 4

    .prologue
    const/16 v0, 0x168

    .line 141
    const-string v1, "latent_hours"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 144
    const/16 v2, 0x24

    if-gt v1, v2, :cond_5

    .line 147
    :goto_0
    int-to-long v0, v0

    const-wide/32 v2, 0x36ee80

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentHour:J

    .line 148
    const-string v0, "latent"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 150
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/16 v1, 0x708

    if-le v0, v1, :cond_1

    .line 151
    :cond_0
    const/4 v0, 0x0

    .line 158
    :cond_1
    if-nez v0, :cond_4

    .line 159
    sget v0, Lcom/umeng/commonsdk/statistics/a;->c:I

    if-lez v0, :cond_2

    sget v0, Lcom/umeng/commonsdk/statistics/a;->c:I

    const v1, 0x1b7740

    if-le v0, v1, :cond_3

    .line 160
    :cond_2
    const/16 v0, 0xa

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentWindow:I

    .line 167
    :goto_1
    return-void

    .line 162
    :cond_3
    sget v0, Lcom/umeng/commonsdk/statistics/a;->c:I

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentWindow:I

    goto :goto_1

    .line 165
    :cond_4
    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentWindow:I

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public shouldStartLatency()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 71
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->storeHelper:Lcom/umeng/commonsdk/statistics/common/d;

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/common/d;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->statTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->isFirstRequest()Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    monitor-enter v2

    .line 82
    :try_start_0
    iget-boolean v3, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    if-eqz v3, :cond_2

    .line 84
    monitor-exit v2

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->statTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getLastReqTime()J

    move-result-wide v2

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 91
    iget-wide v4, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentHour:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    .line 93
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->getSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v4, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    monitor-enter v4

    .line 95
    :try_start_2
    iget v5, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentWindow:I

    invoke-static {v5, v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->random(ILjava/lang/String;)I

    move-result v0

    int-to-long v6, v0

    iput-wide v6, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mDelay:J

    .line 96
    iput-wide v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mElapsed:J

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    .line 98
    monitor-exit v4

    move v0, v1

    .line 100
    goto :goto_0

    .line 98
    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 101
    :cond_3
    const-wide/32 v4, 0x7b98a00

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 103
    iget-object v4, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    monitor-enter v4

    .line 104
    const-wide/16 v6, 0x0

    :try_start_3
    iput-wide v6, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mDelay:J

    .line 105
    iput-wide v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mElapsed:J

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    .line 107
    monitor-exit v4

    move v0, v1

    .line 108
    goto :goto_0

    .line 107
    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method
