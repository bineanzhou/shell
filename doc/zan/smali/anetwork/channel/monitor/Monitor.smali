.class public Lanetwork/channel/monitor/Monitor;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field static a:Ljava/util/concurrent/atomic/AtomicBoolean; = null

.field private static final b:Ljava/lang/String; = "anet.Monitor"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lanetwork/channel/monitor/Monitor;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 4

    .prologue
    .line 27
    const-class v1, Lanetwork/channel/monitor/Monitor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lanetwork/channel/monitor/Monitor;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Lanet/channel/monitor/b;->a()Lanet/channel/monitor/b;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/monitor/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    monitor-exit v1

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34
    const-class v0, Lanetwork/channel/monitor/Monitor;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lanetwork/channel/monitor/Monitor;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit v0

    return-void

    .line 34
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Lanet/channel/monitor/INetworkQualityChangeListener;)V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lanetwork/channel/monitor/Monitor;->a(Lanet/channel/monitor/INetworkQualityChangeListener;Lanet/channel/monitor/f;)V

    .line 94
    return-void
.end method

.method public static a(Lanet/channel/monitor/INetworkQualityChangeListener;Lanet/channel/monitor/f;)V
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lanet/channel/monitor/a;->a()Lanet/channel/monitor/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lanet/channel/monitor/a;->a(Lanet/channel/monitor/INetworkQualityChangeListener;Lanet/channel/monitor/f;)V

    .line 102
    return-void
.end method

.method public static b()V
    .locals 5

    .prologue
    .line 45
    :try_start_0
    invoke-static {}, Lanet/channel/monitor/b;->a()Lanet/channel/monitor/b;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/monitor/b;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const-string v1, "anet.Monitor"

    const-string v2, "start failed"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static b(Lanet/channel/monitor/INetworkQualityChangeListener;)V
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lanet/channel/monitor/a;->a()Lanet/channel/monitor/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lanet/channel/monitor/a;->a(Lanet/channel/monitor/INetworkQualityChangeListener;)V

    .line 106
    return-void
.end method

.method public static c()V
    .locals 5

    .prologue
    .line 56
    :try_start_0
    invoke-static {}, Lanet/channel/monitor/b;->a()Lanet/channel/monitor/b;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/monitor/b;->e()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-string v1, "anet.Monitor"

    const-string v2, "stop failed"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static d()Lanetwork/channel/monitor/speed/NetworkSpeed;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 68
    invoke-static {}, Lanetwork/channel/monitor/Monitor;->e()Lanet/channel/monitor/NetworkSpeed;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lanet/channel/monitor/NetworkSpeed;->getCode()I

    move-result v0

    invoke-static {v0}, Lanetwork/channel/monitor/speed/NetworkSpeed;->valueOfCode(I)Lanetwork/channel/monitor/speed/NetworkSpeed;

    move-result-object v0

    return-object v0
.end method

.method public static e()Lanet/channel/monitor/NetworkSpeed;
    .locals 6

    .prologue
    .line 79
    sget-object v0, Lanet/channel/monitor/NetworkSpeed;->Fast:Lanet/channel/monitor/NetworkSpeed;

    .line 81
    :try_start_0
    invoke-static {}, Lanet/channel/monitor/b;->a()Lanet/channel/monitor/b;

    move-result-object v1

    invoke-virtual {v1}, Lanet/channel/monitor/b;->b()I

    move-result v1

    .line 82
    invoke-static {v1}, Lanet/channel/monitor/NetworkSpeed;->valueOfCode(I)Lanet/channel/monitor/NetworkSpeed;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    const-string v2, "anet.Monitor"

    const-string v3, "getNetworkSpeed failed"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v1, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static f()D
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Lanet/channel/monitor/b;->a()Lanet/channel/monitor/b;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/monitor/b;->c()D

    move-result-wide v0

    return-wide v0
.end method
