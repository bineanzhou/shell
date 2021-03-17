.class public Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;
.super Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/common/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LatentPolicy"
.end annotation


# instance fields
.field private latency:J

.field private start:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;-><init>()V

    .line 218
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;->start:J

    .line 221
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;->latency:J

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;->start:J

    .line 223
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 4

    .prologue
    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;->start:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;->latency:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldSendMessage(Z)Z
    .locals 4

    .prologue
    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;->start:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;->latency:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 227
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
