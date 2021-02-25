.class Lanet/channel/strategy/StrategyInfoHolder;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/StrategyInfoHolder$LruStrategyMap;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;

.field static final b:Ljava/lang/String;


# instance fields
.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/StrategyTable;",
            ">;"
        }
    .end annotation
.end field

.field d:Lanet/channel/strategy/UnitMap;

.field e:Lanet/channel/strategy/SafeAislesMap;

.field final f:Lanet/channel/strategy/a;

.field private final g:Lanet/channel/strategy/StrategyTable;

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lanet/channel/strategy/UnitMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/strategy/StrategyInfoHolder;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lanet/channel/strategy/StrategyInfoHolder;->a:Ljava/lang/String;

    .line 29
    const-class v0, Lanet/channel/strategy/SafeAislesMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/strategy/StrategyInfoHolder;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lanet/channel/strategy/StrategyInfoHolder;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lanet/channel/strategy/StrategyInfoHolder$LruStrategyMap;

    invoke-direct {v0}, Lanet/channel/strategy/StrategyInfoHolder$LruStrategyMap;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->c:Ljava/util/Map;

    .line 32
    iput-object v1, p0, Lanet/channel/strategy/StrategyInfoHolder;->d:Lanet/channel/strategy/UnitMap;

    .line 33
    iput-object v1, p0, Lanet/channel/strategy/StrategyInfoHolder;->e:Lanet/channel/strategy/SafeAislesMap;

    .line 35
    new-instance v0, Lanet/channel/strategy/a;

    invoke-direct {v0}, Lanet/channel/strategy/a;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->f:Lanet/channel/strategy/a;

    .line 38
    new-instance v0, Lanet/channel/strategy/StrategyTable;

    const-string v1, "Unknown"

    invoke-direct {v0, v1}, Lanet/channel/strategy/StrategyTable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->g:Lanet/channel/strategy/StrategyTable;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->h:Ljava/util/Set;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->i:Ljava/lang/String;

    .line 50
    :try_start_0
    invoke-direct {p0}, Lanet/channel/strategy/StrategyInfoHolder;->e()V

    .line 51
    invoke-direct {p0}, Lanet/channel/strategy/StrategyInfoHolder;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-direct {p0}, Lanet/channel/strategy/StrategyInfoHolder;->f()V

    .line 57
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lanet/channel/strategy/StrategyInfoHolder;->f()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lanet/channel/strategy/StrategyInfoHolder;->f()V

    throw v0
.end method

.method public static a()Lanet/channel/strategy/StrategyInfoHolder;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lanet/channel/strategy/StrategyInfoHolder;

    invoke-direct {v0}, Lanet/channel/strategy/StrategyInfoHolder;-><init>()V

    return-object v0
.end method

.method private a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 194
    const-string v0, ""

    .line 195
    invoke-virtual {p1}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isWifi()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->f()Ljava/lang/String;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    :cond_0
    :goto_0
    return-object v0

    .line 198
    :cond_1
    invoke-virtual {p1}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-static {p0}, Lanet/channel/strategy/StrategyInfoHolder;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lanet/channel/strategy/StrategyInfoHolder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lanet/channel/strategy/StrategyInfoHolder;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    iget-object v3, p0, Lanet/channel/strategy/StrategyInfoHolder;->h:Ljava/util/Set;

    monitor-enter v3

    .line 124
    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 125
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit v3

    .line 130
    invoke-static {p1}, Lanet/channel/strategy/l;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/StrategyTable;

    .line 131
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lanet/channel/strategy/StrategyTable;->a()V

    .line 133
    iget-object v3, p0, Lanet/channel/strategy/StrategyInfoHolder;->c:Ljava/util/Map;

    monitor-enter v3

    .line 134
    :try_start_1
    iget-object v4, p0, Lanet/channel/strategy/StrategyInfoHolder;->c:Ljava/util/Map;

    iget-object v5, v0, Lanet/channel/strategy/StrategyTable;->a:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    :cond_0
    iget-object v3, p0, Lanet/channel/strategy/StrategyInfoHolder;->h:Ljava/util/Set;

    monitor-enter v3

    .line 138
    :try_start_2
    iget-object v4, p0, Lanet/channel/strategy/StrategyInfoHolder;->h:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 139
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 142
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 143
    if-eqz v0, :cond_3

    move v0, v1

    .line 144
    :goto_0
    const-string v3, "awcn.StrategyInfoHolder"

    const-string v4, "restore strategy file"

    const/4 v5, 0x0

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "id"

    aput-object v7, v6, v2

    iget-object v2, p0, Lanet/channel/strategy/StrategyInfoHolder;->i:Ljava/lang/String;

    aput-object v2, v6, v1

    const/4 v1, 0x2

    const-string v2, "result"

    aput-object v2, v6, v1

    const/4 v1, 0x3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v3, v4, v5, v6}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    new-instance v1, Lanet/channel/statist/AlarmObject;

    invoke-direct {v1}, Lanet/channel/statist/AlarmObject;-><init>()V

    .line 146
    const-string v2, "networkPrefer"

    iput-object v2, v1, Lanet/channel/statist/AlarmObject;->module:Ljava/lang/String;

    .line 147
    const-string v2, "strategy_load_stat"

    iput-object v2, v1, Lanet/channel/statist/AlarmObject;->modulePoint:Ljava/lang/String;

    .line 148
    iput-boolean v0, v1, Lanet/channel/statist/AlarmObject;->isSuccess:Z

    .line 149
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->i:Ljava/lang/String;

    iput-object v0, v1, Lanet/channel/statist/AlarmObject;->arg:Ljava/lang/String;

    .line 150
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isTargetProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    invoke-interface {v0, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitAlarm(Lanet/channel/statist/AlarmObject;)V

    .line 154
    :cond_1
    :goto_1
    return-void

    .line 127
    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 135
    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    .line 139
    :catchall_2
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_3
    move v0, v2

    .line 143
    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    invoke-static {p0}, Lanet/channel/util/StringUtils;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lanet/channel/util/StringUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 64
    invoke-static {p0}, Lanet/channel/status/NetworkStatusHelper;->a(Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;)V

    .line 65
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->a()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lanet/channel/strategy/StrategyInfoHolder;->a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->i:Ljava/lang/String;

    .line 66
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 70
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/StrategyTable;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyTable;->a()V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->d:Lanet/channel/strategy/UnitMap;

    if-nez v0, :cond_1

    .line 74
    new-instance v0, Lanet/channel/strategy/UnitMap;

    invoke-direct {v0}, Lanet/channel/strategy/UnitMap;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->d:Lanet/channel/strategy/UnitMap;

    .line 79
    :goto_1
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->e:Lanet/channel/strategy/SafeAislesMap;

    if-nez v0, :cond_2

    .line 80
    new-instance v0, Lanet/channel/strategy/SafeAislesMap;

    invoke-direct {v0}, Lanet/channel/strategy/SafeAislesMap;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->e:Lanet/channel/strategy/SafeAislesMap;

    .line 84
    :goto_2
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->e:Lanet/channel/strategy/SafeAislesMap;

    invoke-virtual {v0, p0}, Lanet/channel/strategy/SafeAislesMap;->a(Lanet/channel/strategy/StrategyInfoHolder;)V

    .line 85
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->d:Lanet/channel/strategy/UnitMap;

    invoke-virtual {v0}, Lanet/channel/strategy/UnitMap;->a()V

    goto :goto_1

    .line 82
    :cond_2
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->e:Lanet/channel/strategy/SafeAislesMap;

    invoke-virtual {v0}, Lanet/channel/strategy/SafeAislesMap;->a()V

    goto :goto_2
.end method

.method private g()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->i:Ljava/lang/String;

    invoke-static {v0}, Lanet/channel/strategy/StrategyInfoHolder;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->i:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lanet/channel/strategy/StrategyInfoHolder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    sget-object v0, Lanet/channel/strategy/StrategyInfoHolder;->a:Ljava/lang/String;

    invoke-static {v0}, Lanet/channel/strategy/l;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/UnitMap;

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->d:Lanet/channel/strategy/UnitMap;

    .line 95
    sget-object v0, Lanet/channel/strategy/StrategyInfoHolder;->b:Ljava/lang/String;

    invoke-static {v0}, Lanet/channel/strategy/l;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/SafeAislesMap;

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->e:Lanet/channel/strategy/SafeAislesMap;

    .line 98
    new-instance v0, Lanet/channel/strategy/d;

    invoke-direct {v0, p0, v1}, Lanet/channel/strategy/d;-><init>(Lanet/channel/strategy/StrategyInfoHolder;Ljava/lang/String;)V

    invoke-static {v0}, Lanet/channel/strategy/utils/a;->a(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method


# virtual methods
.method a(Lanet/channel/strategy/k$c;)V
    .locals 2

    .prologue
    .line 205
    iget v0, p1, Lanet/channel/strategy/k$c;->g:I

    if-eqz v0, :cond_0

    .line 206
    iget v0, p1, Lanet/channel/strategy/k$c;->g:I

    iget v1, p1, Lanet/channel/strategy/k$c;->h:I

    invoke-static {v0, v1}, Lanet/channel/strategy/dispatch/a;->a(II)V

    .line 208
    :cond_0
    monitor-enter p0

    .line 209
    :try_start_0
    invoke-virtual {p0}, Lanet/channel/strategy/StrategyInfoHolder;->d()Lanet/channel/strategy/StrategyTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lanet/channel/strategy/StrategyTable;->update(Lanet/channel/strategy/k$c;)V

    .line 210
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->e:Lanet/channel/strategy/SafeAislesMap;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/SafeAislesMap;->a(Lanet/channel/strategy/k$c;)V

    .line 211
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->d:Lanet/channel/strategy/UnitMap;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/UnitMap;->a(Lanet/channel/strategy/k$c;)V

    .line 212
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b()V
    .locals 0

    .prologue
    .line 60
    invoke-static {p0}, Lanet/channel/status/NetworkStatusHelper;->b(Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;)V

    .line 61
    return-void
.end method

.method c()V
    .locals 3

    .prologue
    .line 160
    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/StrategyTable;

    .line 162
    iget-object v2, v0, Lanet/channel/strategy/StrategyTable;->a:Ljava/lang/String;

    invoke-static {v2}, Lanet/channel/strategy/StrategyInfoHolder;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lanet/channel/strategy/l;->a(Ljava/io/Serializable;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 164
    :cond_0
    :try_start_1
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->d:Lanet/channel/strategy/UnitMap;

    sget-object v1, Lanet/channel/strategy/StrategyInfoHolder;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lanet/channel/strategy/l;->a(Ljava/io/Serializable;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->e:Lanet/channel/strategy/SafeAislesMap;

    sget-object v1, Lanet/channel/strategy/StrategyInfoHolder;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lanet/channel/strategy/l;->a(Ljava/io/Serializable;Ljava/lang/String;)V

    .line 166
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    return-void
.end method

.method d()Lanet/channel/strategy/StrategyTable;
    .locals 4

    .prologue
    .line 173
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->g:Lanet/channel/strategy/StrategyTable;

    .line 174
    iget-object v1, p0, Lanet/channel/strategy/StrategyInfoHolder;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    iget-object v1, p0, Lanet/channel/strategy/StrategyInfoHolder;->c:Ljava/util/Map;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->c:Ljava/util/Map;

    iget-object v2, p0, Lanet/channel/strategy/StrategyInfoHolder;->i:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/StrategyTable;

    .line 177
    if-eqz v0, :cond_1

    .line 183
    :goto_0
    monitor-exit v1

    .line 185
    :cond_0
    return-object v0

    .line 180
    :cond_1
    new-instance v0, Lanet/channel/strategy/StrategyTable;

    iget-object v2, p0, Lanet/channel/strategy/StrategyInfoHolder;->i:Ljava/lang/String;

    invoke-direct {v0, v2}, Lanet/channel/strategy/StrategyTable;-><init>(Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lanet/channel/strategy/StrategyInfoHolder;->c:Ljava/util/Map;

    iget-object v3, p0, Lanet/channel/strategy/StrategyInfoHolder;->i:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onNetworkStatusChanged(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .locals 3

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lanet/channel/strategy/StrategyInfoHolder;->a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->i:Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    iget-object v1, p0, Lanet/channel/strategy/StrategyInfoHolder;->c:Ljava/util/Map;

    monitor-enter v1

    .line 220
    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->c:Ljava/util/Map;

    iget-object v2, p0, Lanet/channel/strategy/StrategyInfoHolder;->i:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->i:Ljava/lang/String;

    .line 222
    new-instance v2, Lanet/channel/strategy/e;

    invoke-direct {v2, p0, v0}, Lanet/channel/strategy/e;-><init>(Lanet/channel/strategy/StrategyInfoHolder;Ljava/lang/String;)V

    invoke-static {v2}, Lanet/channel/strategy/utils/a;->a(Ljava/lang/Runnable;)V

    .line 229
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :cond_1
    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
