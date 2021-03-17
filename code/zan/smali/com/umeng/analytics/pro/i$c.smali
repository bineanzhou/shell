.class public Lcom/umeng/analytics/pro/i$c;
.super Ljava/lang/Object;
.source "CoreProtocolImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/pro/i;

.field private b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/pro/i;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1278
    iput-object p1, p0, Lcom/umeng/analytics/pro/i$c;->a:Lcom/umeng/analytics/pro/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    .line 1272
    iput v1, p0, Lcom/umeng/analytics/pro/i$c;->c:I

    .line 1273
    iput v1, p0, Lcom/umeng/analytics/pro/i$c;->d:I

    .line 1275
    iput v1, p0, Lcom/umeng/analytics/pro/i$c;->e:I

    .line 1276
    iput v1, p0, Lcom/umeng/analytics/pro/i$c;->f:I

    .line 1279
    return-void
.end method

.method private b(II)Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
    .locals 4

    .prologue
    .line 1406
    .line 1408
    packed-switch p1, :pswitch_data_0

    .line 1436
    :pswitch_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    .line 1439
    :goto_0
    return-object v0

    .line 1410
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    invoke-direct {v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;-><init>()V

    goto :goto_0

    .line 1413
    :pswitch_2
    iget-object v0, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    if-eqz v0, :cond_1

    .line 1414
    iget-object v1, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-object v0, v1

    .line 1415
    check-cast v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->setReportInterval(J)V

    move-object v0, v1

    goto :goto_0

    .line 1417
    :cond_1
    new-instance v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    invoke-static {}, Lcom/umeng/analytics/pro/i;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v1

    int-to-long v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;J)V

    goto :goto_0

    .line 1421
    :pswitch_3
    iget-object v0, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;

    .line 1422
    invoke-static {}, Lcom/umeng/analytics/pro/i;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V

    goto :goto_0

    .line 1425
    :pswitch_4
    iget-object v0, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportRealtime;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportRealtime;

    invoke-direct {v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportRealtime;-><init>()V

    goto :goto_0

    .line 1428
    :pswitch_5
    iget-object v0, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;

    .line 1429
    invoke-static {}, Lcom/umeng/analytics/pro/i;->e()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1432
    :pswitch_6
    iget-object v0, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;

    .line 1433
    invoke-static {}, Lcom/umeng/analytics/pro/i;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V

    goto :goto_0

    .line 1436
    :cond_6
    new-instance v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    invoke-direct {v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;-><init>()V

    goto/16 :goto_0

    .line 1408
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public a(I)I
    .locals 3

    .prologue
    .line 1307
    invoke-static {}, Lcom/umeng/analytics/pro/i;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "test_report_interval"

    const-string v2, "-1"

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1306
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1308
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5a

    if-lt v0, v1, :cond_0

    const v1, 0x15180

    if-le v0, v1, :cond_1

    .line 1312
    :cond_0
    :goto_0
    return p1

    :cond_1
    mul-int/lit16 p1, v0, 0x3e8

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 1283
    const/4 v0, -0x1

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/umeng/analytics/pro/i$c;->a(II)[I

    move-result-object v0

    .line 1285
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/umeng/analytics/pro/i$c;->c:I

    .line 1286
    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/umeng/analytics/pro/i$c;->d:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1289
    :goto_0
    return-void

    .line 1287
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(II)[I
    .locals 9

    .prologue
    const/16 v1, 0x5a

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1292
    invoke-static {}, Lcom/umeng/analytics/pro/i;->e()Landroid/content/Context;

    move-result-object v0

    const-string v2, "report_policy"

    const-string v3, "-1"

    invoke-static {v0, v2, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1293
    invoke-static {}, Lcom/umeng/analytics/pro/i;->e()Landroid/content/Context;

    move-result-object v0

    const-string v3, "report_interval"

    const-string v4, "-1"

    invoke-static {v0, v3, v4}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1294
    if-eq v2, v5, :cond_0

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy;->isValid(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1295
    :cond_0
    new-array v0, v8, [I

    aput p1, v0, v6

    aput p2, v0, v7

    .line 1302
    :goto_0
    return-object v0

    .line 1298
    :cond_1
    if-eq v0, v5, :cond_2

    if-lt v0, v1, :cond_2

    const v3, 0x15180

    if-le v0, v3, :cond_3

    :cond_2
    move v0, v1

    .line 1302
    :cond_3
    new-array v1, v8, [I

    aput v2, v1, v6

    mul-int/lit16 v0, v0, 0x3e8

    aput v0, v1, v7

    move-object v0, v1

    goto :goto_0
.end method

.method protected b()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1319
    invoke-static {}, Lcom/umeng/analytics/pro/i;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/Defcon;

    move-result-object v1

    .line 1320
    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1322
    iget-object v0, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1323
    :goto_0
    if-eqz v7, :cond_2

    iget-object v0, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    :goto_1
    iput-object v0, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    .line 1367
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Report policy : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 1368
    const-string v0, "MobclickRT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Report policy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1371
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    if-eqz v0, :cond_d

    .line 1373
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10110"

    const/4 v2, 0x3

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1391
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v7, v8

    .line 1322
    goto :goto_0

    .line 1323
    :cond_2
    new-instance v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    invoke-static {}, Lcom/umeng/analytics/pro/i;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;Lcom/umeng/commonsdk/statistics/noise/Defcon;)V

    goto :goto_1

    .line 1326
    :cond_3
    invoke-static {}, Lcom/umeng/analytics/pro/i;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "integrated_test"

    const-string v3, "-1"

    invoke-static {v0, v1, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1327
    if-ne v0, v7, :cond_5

    move v6, v7

    .line 1328
    :goto_4
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1329
    if-eqz v6, :cond_4

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-nez v0, :cond_4

    .line 1330
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10112"

    const-string v3, "\\|"

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1334
    :cond_4
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v0, :cond_6

    if-eqz v6, :cond_6

    .line 1338
    new-instance v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;

    invoke-static {}, Lcom/umeng/analytics/pro/i;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto/16 :goto_2

    :cond_5
    move v6, v8

    .line 1327
    goto :goto_4

    .line 1339
    :cond_6
    iget-object v0, p0, Lcom/umeng/analytics/pro/i$c;->a:Lcom/umeng/analytics/pro/i;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Lcom/umeng/analytics/pro/i;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "RPT"

    iget-object v1, p0, Lcom/umeng/analytics/pro/i$c;->a:Lcom/umeng/analytics/pro/i;

    invoke-static {v1}, Lcom/umeng/analytics/pro/i;->a(Lcom/umeng/analytics/pro/i;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1344
    iget-object v0, p0, Lcom/umeng/analytics/pro/i$c;->a:Lcom/umeng/analytics/pro/i;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Lcom/umeng/analytics/pro/i;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestPolicy()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    .line 1346
    invoke-static {}, Lcom/umeng/analytics/pro/i;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "test_report_interval"

    const-string v2, "-1"

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1345
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1347
    if-eq v0, v9, :cond_8

    .line 1348
    :goto_5
    if-eqz v7, :cond_9

    .line 1349
    const v0, 0x15f90

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/i$c;->a(I)I

    move-result v8

    .line 1356
    :cond_7
    :goto_6
    iget-object v0, p0, Lcom/umeng/analytics/pro/i$c;->a:Lcom/umeng/analytics/pro/i;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Lcom/umeng/analytics/pro/i;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestPolicy()I

    move-result v0

    invoke-direct {p0, v0, v8}, Lcom/umeng/analytics/pro/i$c;->b(II)Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto/16 :goto_2

    :cond_8
    move v7, v8

    .line 1347
    goto :goto_5

    .line 1350
    :cond_9
    iget v0, p0, Lcom/umeng/analytics/pro/i$c;->d:I

    if-lez v0, :cond_a

    .line 1351
    iget v8, p0, Lcom/umeng/analytics/pro/i$c;->d:I

    goto :goto_6

    .line 1353
    :cond_a
    iget v8, p0, Lcom/umeng/analytics/pro/i$c;->f:I

    goto :goto_6

    .line 1358
    :cond_b
    iget v1, p0, Lcom/umeng/analytics/pro/i$c;->e:I

    .line 1359
    iget v0, p0, Lcom/umeng/analytics/pro/i$c;->f:I

    .line 1360
    iget v2, p0, Lcom/umeng/analytics/pro/i$c;->c:I

    if-eq v2, v9, :cond_c

    .line 1361
    iget v1, p0, Lcom/umeng/analytics/pro/i$c;->c:I

    .line 1362
    iget v0, p0, Lcom/umeng/analytics/pro/i$c;->d:I

    .line 1364
    :cond_c
    invoke-direct {p0, v1, v0}, Lcom/umeng/analytics/pro/i$c;->b(II)Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto/16 :goto_2

    .line 1374
    :cond_d
    :try_start_1
    iget-object v0, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    if-eqz v0, :cond_e

    .line 1376
    iget-object v0, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    check-cast v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->getReportInterval()J

    move-result-wide v0

    .line 1377
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 1378
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 1379
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "@"

    aput-object v2, v4, v1

    .line 1380
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v5, v1

    .line 1381
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10111"

    const/4 v2, 0x3

    const-string v3, ""

    invoke-interface/range {v0 .. v5}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1386
    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 1382
    :cond_e
    iget-object v0, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;

    if-eqz v0, :cond_0

    .line 1384
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10113"

    const/4 v2, 0x3

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public c()Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
    .locals 1

    .prologue
    .line 1394
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/i$c;->b()V

    .line 1395
    iget-object v0, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    return-object v0
.end method
