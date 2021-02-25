.class Lanet/channel/a/d;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static volatile a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile b:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    .prologue
    .line 24
    sget-object v0, Lanet/channel/a/d;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 25
    const-class v9, Lanet/channel/a/c;

    monitor-enter v9

    .line 26
    :try_start_0
    sget-object v0, Lanet/channel/a/d;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 27
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const/4 v3, 0x6

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x8

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v8, Lanet/channel/a/c$a;

    const-string v0, "AWCN Worker(H)"

    invoke-direct {v8, v0}, Lanet/channel/a/c$a;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lanet/channel/a/d;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 29
    sget-object v0, Lanet/channel/a/d;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 30
    invoke-static {}, Lanet/channel/a/d;->c()V

    .line 32
    :cond_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lanet/channel/a/d;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method static b()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    .prologue
    .line 38
    sget-object v0, Lanet/channel/a/d;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 39
    const-class v9, Lanet/channel/a/c;

    monitor-enter v9

    .line 40
    :try_start_0
    sget-object v0, Lanet/channel/a/d;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 41
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const/4 v3, 0x2

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v8, Lanet/channel/a/c$a;

    const-string v0, "AWCN Worker(L)"

    invoke-direct {v8, v0}, Lanet/channel/a/c$a;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lanet/channel/a/d;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 43
    sget-object v0, Lanet/channel/a/d;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 45
    :cond_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Lanet/channel/a/d;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method private static c()V
    .locals 3

    .prologue
    .line 52
    invoke-static {}, Lanet/channel/monitor/a;->a()Lanet/channel/monitor/a;

    move-result-object v0

    new-instance v1, Lanet/channel/a/e;

    invoke-direct {v1}, Lanet/channel/a/e;-><init>()V

    new-instance v2, Lanet/channel/a/f;

    invoke-direct {v2}, Lanet/channel/a/f;-><init>()V

    invoke-virtual {v0, v1, v2}, Lanet/channel/monitor/a;->a(Lanet/channel/monitor/INetworkQualityChangeListener;Lanet/channel/monitor/f;)V

    .line 65
    return-void
.end method
