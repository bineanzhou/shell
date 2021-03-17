.class public Lcom/taobao/accs/common/ThreadPoolExecutorFactory;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/common/ThreadPoolExecutorFactory$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreadPoolExecutorFactory"

.field private static final integer:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static volatile scheduleThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static volatile sendThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->integer:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->integer:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 56
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-string v1, "ThreadPoolExecutorFactory"

    const-string v2, "ThreadPoolExecutorFactory execute"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 5

    .prologue
    .line 32
    sget-object v0, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->scheduleThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 33
    const-class v1, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->scheduleThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    new-instance v3, Lcom/taobao/accs/common/ThreadPoolExecutorFactory$a;

    const-string v4, "ACCS"

    invoke-direct {v3, v4}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory$a;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->scheduleThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 36
    sget-object v0, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->scheduleThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v2, 0x3c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 37
    sget-object v0, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->scheduleThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    sget-object v0, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->scheduleThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getSendScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 5

    .prologue
    .line 63
    sget-object v0, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->sendThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 64
    const-class v1, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->sendThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    new-instance v3, Lcom/taobao/accs/common/ThreadPoolExecutorFactory$a;

    const-string v4, "ACCS-SEND"

    invoke-direct {v3, v4}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory$a;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->sendThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 67
    sget-object v0, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->sendThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v2, 0x3c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 68
    sget-object v0, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->sendThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 70
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_1
    sget-object v0, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->sendThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 47
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    const-string v2, "ThreadPoolExecutorFactory"

    const-string v3, "ThreadPoolExecutorFactory schedule"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
