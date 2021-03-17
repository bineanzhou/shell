.class public Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;
.super Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/common/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefconPolicy"
.end annotation


# instance fields
.field private defcon:Lcom/umeng/commonsdk/statistics/noise/Defcon;

.field private tracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;


# direct methods
.method public constructor <init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;Lcom/umeng/commonsdk/statistics/noise/Defcon;)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;->tracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    .line 191
    iput-object p2, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;->defcon:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    .line 192
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;->defcon:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->isOpen()Z

    move-result v0

    return v0
.end method

.method public shouldSendMessage(Z)Z
    .locals 6

    .prologue
    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 196
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;->defcon:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->getReqInterval()J

    move-result-wide v2

    .line 203
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->lastSuccessfulBuildTime(Landroid/content/Context;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 204
    const/4 v0, 0x1

    .line 207
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
