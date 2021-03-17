.class public Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;
.super Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/common/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportByInterval"
.end annotation


# static fields
.field private static MAX_REPORT_INTERVAL:J

.field private static MIN_REPORT_INTERVAL:J


# instance fields
.field private mReportInterval:J

.field private mTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 105
    const-wide/32 v0, 0x15f90

    sput-wide v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->MIN_REPORT_INTERVAL:J

    .line 106
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->MAX_REPORT_INTERVAL:J

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;J)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    .line 113
    invoke-virtual {p0, p2, p3}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->setReportInterval(J)V

    .line 114
    return-void
.end method

.method public static isValidValue(I)Z
    .locals 4

    .prologue
    .line 144
    int-to-long v0, p0

    sget-wide v2, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->MIN_REPORT_INTERVAL:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getReportInterval()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mReportInterval:J

    return-wide v0
.end method

.method public setReportInterval(J)V
    .locals 3

    .prologue
    .line 132
    sget-wide v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->MIN_REPORT_INTERVAL:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    sget-wide v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->MAX_REPORT_INTERVAL:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 133
    iput-wide p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mReportInterval:J

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    sget-wide v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->MIN_REPORT_INTERVAL:J

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mReportInterval:J

    goto :goto_0
.end method

.method public shouldSendMessage(Z)Z
    .locals 4

    .prologue
    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->lastSuccessfulBuildTime(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mReportInterval:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 124
    const/4 v0, 0x1

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
