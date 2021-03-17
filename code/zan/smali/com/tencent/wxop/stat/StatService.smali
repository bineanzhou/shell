.class public Lcom/tencent/wxop/stat/StatService;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commitEvents(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/wxop/stat/StatServiceImpl;->commitEvents(Landroid/content/Context;I)V

    return-void
.end method

.method public static flushDataToDB(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->flushDataToDB(Landroid/content/Context;)V

    return-void
.end method

.method public static getCommonKeyValueForKVEvent(Ljava/lang/String;)Ljava/util/Properties;
    .locals 1

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->getCommonKeyValueForKVEvent(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public static onLowMemory(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->onLowMemory(Landroid/content/Context;)V

    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->onPause(Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->onResume(Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    return-void
.end method

.method public static onStop(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->onStop(Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    return-void
.end method

.method public static reportAccount(Landroid/content/Context;Lcom/tencent/wxop/stat/StatAccount;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->reportAccount(Landroid/content/Context;Lcom/tencent/wxop/stat/StatAccount;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    return-void
.end method

.method public static reportAppMonitorStat(Landroid/content/Context;Lcom/tencent/wxop/stat/StatAppMonitor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->reportAppMonitorStat(Landroid/content/Context;Lcom/tencent/wxop/stat/StatAppMonitor;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    return-void
.end method

.method public static reportError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->reportError(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    return-void
.end method

.method public static reportException(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->reportException(Landroid/content/Context;Ljava/lang/Throwable;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    return-void
.end method

.method public static reportGameUser(Landroid/content/Context;Lcom/tencent/wxop/stat/StatGameUser;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->reportGameUser(Landroid/content/Context;Lcom/tencent/wxop/stat/StatGameUser;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    return-void
.end method

.method public static reportQQ(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->reportQQ(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    return-void
.end method

.method public static setCommonKeyValueForKVEvent(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/wxop/stat/StatServiceImpl;->setCommonKeyValueForKVEvent(Ljava/lang/String;Ljava/util/Properties;)V

    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public static setEnvAttributes(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/tencent/wxop/stat/StatServiceImpl;->setEnvAttributes(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method public static startNewSession(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->startNewSession(Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    return-void
.end method

.method public static startStatService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->startStatService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)Z

    move-result v0

    return v0
.end method

.method public static stopSession()V
    .locals 0

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->stopSession()V

    return-void
.end method

.method public static testSpeed(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->testSpeed(Landroid/content/Context;)V

    return-void
.end method

.method public static testSpeed(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->testSpeed(Landroid/content/Context;Ljava/util/Map;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    return-void
.end method

.method public static trackBeginPage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->trackBeginPage(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    return-void
.end method

.method public static varargs trackCustomBeginEvent(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/tencent/wxop/stat/StatServiceImpl;->trackCustomBeginEvent(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;[Ljava/lang/String;)V

    return-void
.end method

.method public static trackCustomBeginKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->trackCustomBeginKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    return-void
.end method

.method public static varargs trackCustomEndEvent(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/tencent/wxop/stat/StatServiceImpl;->trackCustomEndEvent(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;[Ljava/lang/String;)V

    return-void
.end method

.method public static trackCustomEndKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->trackCustomEndKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    return-void
.end method

.method public static varargs trackCustomEvent(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/tencent/wxop/stat/StatServiceImpl;->trackCustomEvent(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;[Ljava/lang/String;)V

    return-void
.end method

.method public static trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    return-void
.end method

.method public static trackCustomKVTimeIntervalEvent(Landroid/content/Context;ILjava/lang/String;Ljava/util/Properties;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p2, p3, p1, v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->trackCustomKVTimeIntervalEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;ILcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    return-void
.end method

.method public static trackEndPage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->trackEndPage(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    return-void
.end method
