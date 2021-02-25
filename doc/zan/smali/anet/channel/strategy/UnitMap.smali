.class Lanet/channel/strategy/UnitMap;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0}, Lanet/channel/strategy/UnitMap;->a()V

    .line 22
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-object p1

    .line 87
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object p1, p2

    .line 88
    goto :goto_0

    .line 90
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lanet/channel/strategy/UnitMap;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    .line 60
    :cond_0
    iget-object v1, p0, Lanet/channel/strategy/UnitMap;->a:Ljava/util/Map;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v2, p0, Lanet/channel/strategy/UnitMap;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method a()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lanet/channel/strategy/UnitMap;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lanet/channel/strategy/utils/SerialLruCache;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lanet/channel/strategy/utils/SerialLruCache;-><init>(I)V

    iput-object v0, p0, Lanet/channel/strategy/UnitMap;->a:Ljava/util/Map;

    .line 28
    :cond_0
    return-void
.end method

.method a(Lanet/channel/strategy/k$c;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 31
    iget-object v2, p1, Lanet/channel/strategy/k$c;->b:Ljava/lang/String;

    .line 32
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "center"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 35
    :cond_0
    iget-object v3, p1, Lanet/channel/strategy/k$c;->d:Ljava/lang/String;

    iget-object v4, p1, Lanet/channel/strategy/k$c;->e:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lanet/channel/strategy/UnitMap;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    if-nez v0, :cond_3

    .line 37
    iget-object v2, p0, Lanet/channel/strategy/UnitMap;->a:Ljava/util/Map;

    monitor-enter v2

    .line 38
    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/UnitMap;->a:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    :goto_0
    invoke-static {v1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    iget-object v1, p0, Lanet/channel/strategy/UnitMap;->a:Ljava/util/Map;

    monitor-enter v1

    .line 50
    :try_start_1
    const-string v0, "awcn.UnitMap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnitMap : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lanet/channel/strategy/UnitMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 53
    :cond_2
    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 41
    :cond_3
    if-eqz v3, :cond_1

    .line 42
    iget-object v4, p0, Lanet/channel/strategy/UnitMap;->a:Ljava/util/Map;

    monitor-enter v4

    .line 43
    :try_start_2
    iget-object v0, p0, Lanet/channel/strategy/UnitMap;->a:Ljava/util/Map;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0

    .line 51
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 66
    invoke-direct {p0, p1, p2}, Lanet/channel/strategy/UnitMap;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-static {v7}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    const-string v1, "awcn.UnitMap"

    const-string v2, "set unit prefix"

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "key"

    aput-object v6, v4, v5

    aput-object v0, v4, v7

    const/4 v5, 0x2

    const-string v6, "unitPrefix"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "center"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 74
    :cond_2
    iget-object v1, p0, Lanet/channel/strategy/UnitMap;->a:Ljava/util/Map;

    monitor-enter v1

    .line 75
    :try_start_0
    iget-object v2, p0, Lanet/channel/strategy/UnitMap;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 78
    :cond_3
    iget-object v1, p0, Lanet/channel/strategy/UnitMap;->a:Ljava/util/Map;

    monitor-enter v1

    .line 79
    :try_start_1
    iget-object v2, p0, Lanet/channel/strategy/UnitMap;->a:Ljava/util/Map;

    invoke-interface {v2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    iget-object v1, p0, Lanet/channel/strategy/UnitMap;->a:Ljava/util/Map;

    monitor-enter v1

    .line 96
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnitMap: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lanet/channel/strategy/UnitMap;->a:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
