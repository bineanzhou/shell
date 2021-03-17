.class public Lanet/channel/monitor/a;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static volatile b:Lanet/channel/monitor/a;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lanet/channel/monitor/INetworkQualityChangeListener;",
            "Lanet/channel/monitor/f;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lanet/channel/monitor/f;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/monitor/a;->a:Ljava/util/Map;

    .line 16
    new-instance v0, Lanet/channel/monitor/f;

    invoke-direct {v0}, Lanet/channel/monitor/f;-><init>()V

    iput-object v0, p0, Lanet/channel/monitor/a;->c:Lanet/channel/monitor/f;

    .line 19
    return-void
.end method

.method public static a()Lanet/channel/monitor/a;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lanet/channel/monitor/a;->b:Lanet/channel/monitor/a;

    if-nez v0, :cond_1

    .line 23
    const-class v1, Lanet/channel/monitor/a;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lanet/channel/monitor/a;->b:Lanet/channel/monitor/a;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lanet/channel/monitor/a;

    invoke-direct {v0}, Lanet/channel/monitor/a;-><init>()V

    sput-object v0, Lanet/channel/monitor/a;->b:Lanet/channel/monitor/a;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lanet/channel/monitor/a;->b:Lanet/channel/monitor/a;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(D)V
    .locals 5

    .prologue
    .line 51
    iget-object v0, p0, Lanet/channel/monitor/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 52
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/monitor/INetworkQualityChangeListener;

    .line 53
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/monitor/f;

    .line 55
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lanet/channel/monitor/f;->b()Z

    move-result v3

    if-nez v3, :cond_0

    .line 61
    invoke-virtual {v0, p1, p2}, Lanet/channel/monitor/f;->a(D)Z

    move-result v3

    .line 62
    iget-boolean v4, v0, Lanet/channel/monitor/f;->a:Z

    if-eq v4, v3, :cond_0

    .line 63
    iput-boolean v3, v0, Lanet/channel/monitor/f;->a:Z

    .line 64
    if-eqz v3, :cond_1

    sget-object v0, Lanet/channel/monitor/NetworkSpeed;->Slow:Lanet/channel/monitor/NetworkSpeed;

    .line 65
    :goto_1
    invoke-interface {v1, v0}, Lanet/channel/monitor/INetworkQualityChangeListener;->onNetworkQualityChanged(Lanet/channel/monitor/NetworkSpeed;)V

    goto :goto_0

    .line 64
    :cond_1
    sget-object v0, Lanet/channel/monitor/NetworkSpeed;->Fast:Lanet/channel/monitor/NetworkSpeed;

    goto :goto_1

    .line 68
    :cond_2
    return-void
.end method

.method public a(Lanet/channel/monitor/INetworkQualityChangeListener;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lanet/channel/monitor/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public a(Lanet/channel/monitor/INetworkQualityChangeListener;Lanet/channel/monitor/f;)V
    .locals 4

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 34
    const-string v0, "BandWidthListenerHelp"

    const-string v1, "listener is null"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    :goto_0
    return-void

    .line 37
    :cond_0
    if-nez p2, :cond_1

    .line 38
    iget-object v0, p0, Lanet/channel/monitor/a;->c:Lanet/channel/monitor/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lanet/channel/monitor/f;->b:J

    .line 39
    iget-object v0, p0, Lanet/channel/monitor/a;->a:Ljava/util/Map;

    iget-object v1, p0, Lanet/channel/monitor/a;->c:Lanet/channel/monitor/f;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 41
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lanet/channel/monitor/f;->b:J

    .line 42
    iget-object v0, p0, Lanet/channel/monitor/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
