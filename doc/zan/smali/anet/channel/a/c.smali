.class public Lanet/channel/a/c;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/a/c$a;
    }
.end annotation


# static fields
.field private static volatile a:Ljava/util/concurrent/ScheduledExecutorService;

.field private static volatile b:Lanet/channel/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {}, Lanet/channel/a/c;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "I)",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 46
    invoke-static {v6}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "awcn.ThreadPoolExecutorFactory"

    const-string v1, "submit priority task"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "priority"

    aput-object v5, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    :cond_0
    new-instance v0, Lanet/channel/a/a;

    invoke-direct {v0, p0, p1}, Lanet/channel/a/a;-><init>(Ljava/lang/Runnable;I)V

    .line 50
    invoke-static {}, Lanet/channel/a/c;->b()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 51
    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 38
    invoke-static {}, Lanet/channel/a/c;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method static a()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 5

    .prologue
    .line 55
    sget-object v0, Lanet/channel/a/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_1

    .line 56
    const-class v1, Lanet/channel/a/c;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lanet/channel/a/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    new-instance v3, Lanet/channel/a/c$a;

    const-string v4, "AWCN Scheduler"

    invoke-direct {v3, v4}, Lanet/channel/a/c$a;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lanet/channel/a/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 60
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_1
    sget-object v0, Lanet/channel/a/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lanet/channel/a/c;->a(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method static b()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 5

    .prologue
    .line 66
    sget-object v0, Lanet/channel/a/c;->b:Lanet/channel/a/b;

    if-nez v0, :cond_1

    .line 67
    const-class v1, Lanet/channel/a/c;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lanet/channel/a/c;->b:Lanet/channel/a/b;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lanet/channel/a/b;

    const/4 v2, 0x1

    new-instance v3, Lanet/channel/a/c$a;

    const-string v4, "AWCN Dispatcher"

    invoke-direct {v3, v4}, Lanet/channel/a/c$a;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lanet/channel/a/b;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lanet/channel/a/c;->b:Lanet/channel/a/b;

    .line 70
    sget-object v0, Lanet/channel/a/c;->b:Lanet/channel/a/b;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lanet/channel/a/b;->allowCoreThreadTimeOut(Z)V

    .line 72
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_1
    sget-object v0, Lanet/channel/a/c;->b:Lanet/channel/a/b;

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
