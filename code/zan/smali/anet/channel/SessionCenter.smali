.class public Lanet/channel/SessionCenter;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/SessionCenter$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "awcn.SessionCenter"

.field static instancesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lanet/channel/Config;",
            "Lanet/channel/SessionCenter;",
            ">;"
        }
    .end annotation
.end field

.field private static mInit:Z


# instance fields
.field final accsSessionManager:Lanet/channel/AccsSessionManager;

.field final attributeManager:Lanet/channel/c;

.field config:Lanet/channel/Config;

.field context:Landroid/content/Context;

.field final innerListener:Lanet/channel/SessionCenter$a;

.field seqNum:Ljava/lang/String;

.field final sessionPool:Lanet/channel/f;

.field final srCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lanet/channel/SessionRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lanet/channel/SessionCenter;->instancesMap:Ljava/util/Map;

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lanet/channel/SessionCenter;->mInit:Z

    return-void
.end method

.method private constructor <init>(Lanet/channel/Config;)V
    .locals 3

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lanet/channel/f;

    invoke-direct {v0}, Lanet/channel/f;-><init>()V

    iput-object v0, p0, Lanet/channel/SessionCenter;->sessionPool:Lanet/channel/f;

    .line 57
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lanet/channel/SessionCenter;->srCache:Landroid/util/LruCache;

    .line 58
    new-instance v0, Lanet/channel/c;

    invoke-direct {v0}, Lanet/channel/c;-><init>()V

    iput-object v0, p0, Lanet/channel/SessionCenter;->attributeManager:Lanet/channel/c;

    .line 60
    new-instance v0, Lanet/channel/SessionCenter$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lanet/channel/SessionCenter$a;-><init>(Lanet/channel/SessionCenter;Lanet/channel/d;)V

    iput-object v0, p0, Lanet/channel/SessionCenter;->innerListener:Lanet/channel/SessionCenter$a;

    .line 119
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/SessionCenter;->context:Landroid/content/Context;

    .line 120
    iput-object p1, p0, Lanet/channel/SessionCenter;->config:Lanet/channel/Config;

    .line 121
    invoke-virtual {p1}, Lanet/channel/Config;->getAppkey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lanet/channel/SessionCenter;->innerListener:Lanet/channel/SessionCenter$a;

    invoke-virtual {v0}, Lanet/channel/SessionCenter$a;->a()V

    .line 123
    new-instance v0, Lanet/channel/AccsSessionManager;

    invoke-direct {v0, p0}, Lanet/channel/AccsSessionManager;-><init>(Lanet/channel/SessionCenter;)V

    iput-object v0, p0, Lanet/channel/SessionCenter;->accsSessionManager:Lanet/channel/AccsSessionManager;

    .line 125
    invoke-static {}, Lanet/channel/strategy/dispatch/a;->b()Lanet/channel/strategy/dispatch/IAmdcSign;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lanet/channel/Config;->getAppkey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[default]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p1}, Lanet/channel/Config;->getSecurity()Lanet/channel/security/ISecurity;

    move-result-object v0

    .line 128
    invoke-virtual {p1}, Lanet/channel/Config;->getAppkey()Ljava/lang/String;

    move-result-object v1

    .line 129
    new-instance v2, Lanet/channel/d;

    invoke-direct {v2, p0, v1, v0}, Lanet/channel/d;-><init>(Lanet/channel/SessionCenter;Ljava/lang/String;Lanet/channel/security/ISecurity;)V

    invoke-static {v2}, Lanet/channel/strategy/dispatch/a;->a(Lanet/channel/strategy/dispatch/IAmdcSign;)V

    .line 146
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lanet/channel/SessionCenter;Lanet/channel/strategy/k$c;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lanet/channel/SessionCenter;->checkEffectNow(Lanet/channel/strategy/k$c;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lanet/channel/SessionCenter;->mInit:Z

    return v0
.end method

.method public static checkAndStartAccsSession()V
    .locals 2

    .prologue
    .line 329
    sget-object v0, Lanet/channel/SessionCenter;->instancesMap:Ljava/util/Map;

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

    check-cast v0, Lanet/channel/SessionCenter;

    .line 330
    iget-object v0, v0, Lanet/channel/SessionCenter;->accsSessionManager:Lanet/channel/AccsSessionManager;

    invoke-virtual {v0}, Lanet/channel/AccsSessionManager;->checkAndStartSession()V

    goto :goto_0

    .line 332
    :cond_0
    return-void
.end method

.method private checkEffectNow(Lanet/channel/strategy/k$c;)V
    .locals 12

    .prologue
    .line 410
    iget-object v4, p1, Lanet/channel/strategy/k$c;->c:[Lanet/channel/strategy/k$b;

    .line 411
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v4

    if-ge v1, v0, :cond_8

    .line 412
    aget-object v0, v4, v1

    .line 413
    iget-boolean v2, v0, Lanet/channel/strategy/k$b;->l:Z

    if-eqz v2, :cond_7

    .line 414
    const-string v2, "awcn.SessionCenter"

    const-string v3, "find effectNow"

    iget-object v5, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "host"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v0, Lanet/channel/strategy/k$b;->a:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v2, v3, v5, v6}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    iget-object v5, v0, Lanet/channel/strategy/k$b;->g:[Lanet/channel/strategy/k$a;

    .line 416
    iget-object v6, v0, Lanet/channel/strategy/k$b;->e:[Ljava/lang/String;

    .line 418
    iget-object v2, p0, Lanet/channel/SessionCenter;->sessionPool:Lanet/channel/f;

    iget-object v3, v0, Lanet/channel/strategy/k$b;->c:Ljava/lang/String;

    iget-object v0, v0, Lanet/channel/strategy/k$b;->a:Ljava/lang/String;

    invoke-static {v3, v0}, Lanet/channel/util/StringUtils;->buildKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lanet/channel/SessionCenter;->getSessionRequest(Ljava/lang/String;)Lanet/channel/SessionRequest;

    move-result-object v0

    invoke-virtual {v2, v0}, Lanet/channel/f;->a(Lanet/channel/SessionRequest;)Ljava/util/List;

    move-result-object v0

    .line 419
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/Session;

    .line 420
    invoke-virtual {v0}, Lanet/channel/Session;->getConnType()Lanet/channel/entity/ConnType;

    move-result-object v2

    invoke-virtual {v2}, Lanet/channel/entity/ConnType;->isHttpType()Z

    move-result v2

    if-nez v2, :cond_0

    .line 424
    const/4 v3, 0x0

    .line 425
    const/4 v2, 0x0

    :goto_2
    array-length v8, v6

    if-ge v2, v8, :cond_a

    .line 426
    invoke-virtual {v0}, Lanet/channel/Session;->getIp()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v6, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 427
    const/4 v2, 0x1

    .line 432
    :goto_3
    if-nez v2, :cond_3

    .line 433
    const/4 v2, 0x2

    invoke-static {v2}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 434
    const-string v2, "awcn.SessionCenter"

    const-string v3, "ip not match"

    iget-object v8, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "session ip"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v0}, Lanet/channel/Session;->getIp()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "ips"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v2, v3, v8, v9}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lanet/channel/Session;->close(Z)V

    goto :goto_1

    .line 425
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 440
    :cond_3
    const/4 v3, 0x0

    .line 441
    const/4 v2, 0x0

    :goto_4
    array-length v8, v5

    if-ge v2, v8, :cond_9

    .line 442
    invoke-virtual {v0}, Lanet/channel/Session;->getPort()I

    move-result v8

    aget-object v9, v5, v2

    iget v9, v9, Lanet/channel/strategy/k$a;->a:I

    if-ne v8, v9, :cond_5

    invoke-virtual {v0}, Lanet/channel/Session;->getConnType()Lanet/channel/entity/ConnType;

    move-result-object v8

    aget-object v9, v5, v2

    invoke-static {v9}, Lanet/channel/strategy/ConnProtocol;->valueOf(Lanet/channel/strategy/k$a;)Lanet/channel/strategy/ConnProtocol;

    move-result-object v9

    invoke-static {v9}, Lanet/channel/entity/ConnType;->valueOf(Lanet/channel/strategy/ConnProtocol;)Lanet/channel/entity/ConnType;

    move-result-object v9

    invoke-virtual {v8, v9}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 444
    const/4 v2, 0x1

    .line 449
    :goto_5
    if-nez v2, :cond_6

    .line 450
    const/4 v2, 0x2

    invoke-static {v2}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 451
    const-string v2, "awcn.SessionCenter"

    const-string v3, "aisle not match"

    iget-object v8, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "port"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v0}, Lanet/channel/Session;->getPort()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "connType"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-virtual {v0}, Lanet/channel/Session;->getConnType()Lanet/channel/entity/ConnType;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "aisle"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v2, v3, v8, v9}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    :cond_4
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lanet/channel/Session;->close(Z)V

    goto/16 :goto_1

    .line 441
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 456
    :cond_6
    const-string v0, "awcn.SessionCenter"

    const-string v2, "session matches, do nothing"

    const/4 v3, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v8}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 411
    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 461
    :cond_8
    return-void

    :cond_9
    move v2, v3

    goto :goto_5

    :cond_a
    move v2, v3

    goto/16 :goto_3
.end method

.method private dispose()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 149
    const-string v0, "awcn.SessionCenter"

    const-string v1, "instance dispose"

    iget-object v2, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lanet/channel/SessionCenter;->accsSessionManager:Lanet/channel/AccsSessionManager;

    invoke-virtual {v0, v4}, Lanet/channel/AccsSessionManager;->forceCloseSession(Z)V

    .line 151
    iget-object v0, p0, Lanet/channel/SessionCenter;->innerListener:Lanet/channel/SessionCenter$a;

    invoke-virtual {v0}, Lanet/channel/SessionCenter$a;->b()V

    .line 152
    return-void
.end method

.method public static declared-synchronized getInstance()Lanet/channel/SessionCenter;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 227
    const-class v2, Lanet/channel/SessionCenter;

    monitor-enter v2

    :try_start_0
    sget-boolean v0, Lanet/channel/SessionCenter;->mInit:Z

    if-nez v0, :cond_0

    .line 228
    invoke-static {}, Lanet/channel/util/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_0

    .line 230
    invoke-static {v0}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;)V

    .line 234
    :cond_0
    const/4 v1, 0x0

    .line 235
    sget-object v0, Lanet/channel/SessionCenter;->instancesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 236
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/SessionCenter;

    .line 237
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lanet/channel/Config;->DEFAULT_CONFIG:Lanet/channel/Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v4, :cond_1

    .line 241
    :cond_2
    monitor-exit v2

    return-object v1

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized getInstance(Lanet/channel/Config;)Lanet/channel/SessionCenter;
    .locals 3

    .prologue
    .line 202
    const-class v1, Lanet/channel/SessionCenter;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 203
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "config is null!"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 206
    :cond_0
    :try_start_1
    sget-boolean v0, Lanet/channel/SessionCenter;->mInit:Z

    if-nez v0, :cond_1

    .line 207
    invoke-static {}, Lanet/channel/util/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_1

    .line 209
    invoke-static {v0}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;)V

    .line 213
    :cond_1
    sget-object v0, Lanet/channel/SessionCenter;->instancesMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/SessionCenter;

    .line 214
    if-nez v0, :cond_2

    .line 215
    new-instance v0, Lanet/channel/SessionCenter;

    invoke-direct {v0, p0}, Lanet/channel/SessionCenter;-><init>(Lanet/channel/Config;)V

    .line 216
    sget-object v2, Lanet/channel/SessionCenter;->instancesMap:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    :cond_2
    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lanet/channel/SessionCenter;
    .locals 3

    .prologue
    .line 194
    const-class v1, Lanet/channel/SessionCenter;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lanet/channel/Config;->getConfigByTag(Ljava/lang/String;)Lanet/channel/Config;

    move-result-object v0

    .line 195
    if-nez v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "tag not exist!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 198
    :cond_0
    :try_start_1
    invoke-static {v0}, Lanet/channel/SessionCenter;->getInstance(Lanet/channel/Config;)Lanet/channel/SessionCenter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 63
    const-class v1, Lanet/channel/SessionCenter;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 64
    :try_start_0
    const-string v0, "awcn.SessionCenter"

    const-string v2, "paramter context is null!"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "init failed. paramter context is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 67
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/GlobalAppRuntimeInfo;->setContext(Landroid/content/Context;)V

    .line 68
    sget-boolean v0, Lanet/channel/SessionCenter;->mInit:Z

    if-nez v0, :cond_1

    .line 69
    sget-object v0, Lanet/channel/SessionCenter;->instancesMap:Ljava/util/Map;

    sget-object v2, Lanet/channel/Config;->DEFAULT_CONFIG:Lanet/channel/Config;

    new-instance v3, Lanet/channel/SessionCenter;

    sget-object v4, Lanet/channel/Config;->DEFAULT_CONFIG:Lanet/channel/Config;

    invoke-direct {v3, v4}, Lanet/channel/SessionCenter;-><init>(Lanet/channel/Config;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {}, Lanet/channel/util/AppLifecycle;->initialize()V

    .line 71
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lanet/channel/strategy/IStrategyInstance;->initialize(Landroid/content/Context;)V

    .line 72
    const/4 v0, 0x1

    sput-boolean v0, Lanet/channel/SessionCenter;->mInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :cond_1
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lanet/channel/Config;)V
    .locals 5

    .prologue
    .line 100
    const-class v1, Lanet/channel/SessionCenter;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 101
    :try_start_0
    const-string v0, "awcn.SessionCenter"

    const-string v2, "paramter context is null!"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "init failed. paramter context is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 105
    :cond_0
    if-nez p1, :cond_1

    .line 106
    :try_start_1
    const-string v0, "awcn.SessionCenter"

    const-string v2, "paramter config is null!"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "init failed. paramter config is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1
    invoke-static {p0}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;)V

    .line 112
    sget-object v0, Lanet/channel/SessionCenter;->instancesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    new-instance v0, Lanet/channel/SessionCenter;

    invoke-direct {v0, p1}, Lanet/channel/SessionCenter;-><init>(Lanet/channel/Config;)V

    .line 114
    sget-object v2, Lanet/channel/SessionCenter;->instancesMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :cond_2
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    const-class v1, Lanet/channel/SessionCenter;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;Ljava/lang/String;Lanet/channel/entity/ENV;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit v1

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Lanet/channel/entity/ENV;)V
    .locals 5

    .prologue
    .line 86
    const-class v1, Lanet/channel/SessionCenter;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 87
    :try_start_0
    const-string v0, "awcn.SessionCenter"

    const-string v2, "paramter context is null!"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "init failed. paramter context is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 91
    :cond_0
    :try_start_1
    invoke-static {p1, p2}, Lanet/channel/Config;->getConfig(Ljava/lang/String;Lanet/channel/entity/ENV;)Lanet/channel/Config;

    move-result-object v0

    .line 92
    if-nez v0, :cond_1

    .line 93
    new-instance v0, Lanet/channel/Config$Builder;

    invoke-direct {v0}, Lanet/channel/Config$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lanet/channel/Config$Builder;->setAppkey(Ljava/lang/String;)Lanet/channel/Config$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lanet/channel/Config$Builder;->setEnv(Lanet/channel/entity/ENV;)Lanet/channel/Config$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/Config$Builder;->build()Lanet/channel/Config;

    move-result-object v0

    .line 96
    :cond_1
    invoke-static {p0, v0}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;Lanet/channel/Config;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized switchEnvironment(Lanet/channel/entity/ENV;)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 165
    const-class v2, Lanet/channel/SessionCenter;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v3

    if-eq v3, p0, :cond_0

    .line 166
    const-string v3, "awcn.SessionCenter"

    const-string v4, "switch env"

    const/4 v5, 0x0

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "old"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "new"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object p0, v6, v7

    invoke-static {v3, v4, v5, v6}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    invoke-static {p0}, Lanet/channel/GlobalAppRuntimeInfo;->setEnv(Lanet/channel/entity/ENV;)V

    .line 169
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v3

    invoke-interface {v3}, Lanet/channel/strategy/IStrategyInstance;->switchEnv()V

    .line 170
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v5, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {v3, v4, v5}, Lorg/android/spdy/SpdyAgent;->getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;

    move-result-object v3

    .line 171
    sget-object v4, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    if-ne p0, v4, :cond_3

    :goto_0
    invoke-virtual {v3, v0}, Lorg/android/spdy/SpdyAgent;->switchAccsServer(I)V

    .line 174
    :cond_0
    sget-object v0, Lanet/channel/SessionCenter;->instancesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 175
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/SessionCenter;

    .line 177
    iget-object v3, v0, Lanet/channel/SessionCenter;->config:Lanet/channel/Config;

    invoke-virtual {v3}, Lanet/channel/Config;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v3

    if-eq v3, p0, :cond_1

    .line 178
    const-string v3, "awcn.SessionCenter"

    const-string v4, "remove instance"

    iget-object v5, v0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "ENVIRONMENT"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v0, Lanet/channel/SessionCenter;->config:Lanet/channel/Config;

    invoke-virtual {v8}, Lanet/channel/Config;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    invoke-direct {v0}, Lanet/channel/SessionCenter;->dispose()V

    .line 180
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    :try_start_1
    const-string v1, "awcn.SessionCenter"

    const-string v3, "switch env error."

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v3, v4, v0, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :cond_2
    monitor-exit v2

    return-void

    :cond_3
    move v0, v1

    .line 171
    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public enterBackground()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 398
    invoke-static {}, Lanet/channel/util/AppLifecycle;->onBackground()V

    .line 399
    return-void
.end method

.method public enterForeground()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 406
    invoke-static {}, Lanet/channel/util/AppLifecycle;->onForeground()V

    .line 407
    return-void
.end method

.method public forceRecreateAccsSession()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lanet/channel/SessionCenter;->accsSessionManager:Lanet/channel/AccsSessionManager;

    invoke-virtual {v0}, Lanet/channel/AccsSessionManager;->forceReCreateSession()V

    .line 336
    return-void
.end method

.method public get(Lanet/channel/util/c;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;
    .locals 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 285
    const/4 v0, 0x0

    .line 287
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lanet/channel/SessionCenter;->getInternal(Lanet/channel/util/c;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lanet/channel/NoNetworkException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lanet/channel/NoAvailStrategyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    .line 307
    :goto_0
    return-object v0

    .line 288
    :catch_0
    move-exception v1

    .line 289
    const-string v2, "awcn.SessionCenter"

    const-string v3, "[Get]param url is invaild"

    iget-object v4, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "url"

    aput-object v6, v5, v7

    invoke-virtual {p1}, Lanet/channel/util/c;->e()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2, v3, v4, v1, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 291
    :catch_1
    move-exception v1

    .line 292
    const-string v2, "awcn.SessionCenter"

    const-string v3, "[Get]timeout exception"

    iget-object v4, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "url"

    aput-object v6, v5, v7

    invoke-virtual {p1}, Lanet/channel/util/c;->e()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2, v3, v4, v1, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 295
    :catch_2
    move-exception v1

    const-string v1, "awcn.SessionCenter"

    const-string v2, "[Get]no network"

    iget-object v3, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "url"

    aput-object v5, v4, v7

    invoke-virtual {p1}, Lanet/channel/util/c;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 298
    :catch_3
    move-exception v1

    const-string v1, "awcn.SessionCenter"

    const-string v2, "[Get]no strategy"

    iget-object v3, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "url"

    aput-object v5, v4, v7

    invoke-virtual {p1}, Lanet/channel/util/c;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 300
    :catch_4
    move-exception v1

    .line 301
    const-string v2, "awcn.SessionCenter"

    const-string v3, "[Get]connect exception"

    iget-object v4, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "errMsg"

    aput-object v6, v5, v7

    invoke-virtual {v1}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v8

    const-string v1, "url"

    aput-object v1, v5, v9

    const/4 v1, 0x3

    invoke-virtual {p1}, Lanet/channel/util/c;->e()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 303
    :catch_5
    move-exception v1

    .line 304
    const-string v2, "awcn.SessionCenter"

    const-string v3, "[Get]exception"

    iget-object v4, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "url"

    aput-object v6, v5, v7

    invoke-virtual {p1}, Lanet/channel/util/c;->e()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2, v3, v4, v1, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public get(Ljava/lang/String;J)Lanet/channel/Session;
    .locals 2

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lanet/channel/SessionCenter;->get(Ljava/lang/String;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;
    .locals 1

    .prologue
    .line 281
    invoke-static {p1}, Lanet/channel/util/c;->a(Ljava/lang/String;)Lanet/channel/util/c;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lanet/channel/SessionCenter;->get(Lanet/channel/util/c;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;

    move-result-object v0

    return-object v0
.end method

.method protected getInternal(Lanet/channel/util/c;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 339
    sget-boolean v0, Lanet/channel/SessionCenter;->mInit:Z

    if-nez v0, :cond_1

    .line 340
    const-string v0, "awcn.SessionCenter"

    const-string v1, "getInternal not inited!"

    iget-object v3, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 389
    :cond_0
    :goto_0
    return-object v0

    .line 344
    :cond_1
    if-nez p1, :cond_2

    move-object v0, v2

    .line 345
    goto :goto_0

    .line 348
    :cond_2
    const-string v0, "awcn.SessionCenter"

    const-string v1, "getInternal"

    iget-object v3, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "u"

    aput-object v5, v4, v7

    invoke-virtual {p1}, Lanet/channel/util/c;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "TypeClass"

    aput-object v5, v4, v9

    const/4 v5, 0x3

    aput-object p2, v4, v5

    const/4 v5, 0x4

    const-string v6, "timeout"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v3, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    invoke-virtual {p1}, Lanet/channel/util/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lanet/channel/strategy/IStrategyInstance;->getCNameByHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lanet/channel/util/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 352
    :cond_3
    invoke-virtual {p1}, Lanet/channel/util/c;->a()Ljava/lang/String;

    move-result-object v1

    .line 353
    invoke-virtual {p1}, Lanet/channel/util/c;->h()Z

    move-result v3

    if-nez v3, :cond_4

    .line 354
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lanet/channel/strategy/IStrategyInstance;->getSchemeByHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 357
    :cond_4
    const-string v3, "://"

    invoke-static {v1, v3, v0}, Lanet/channel/util/StringUtils;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-virtual {p0, v0}, Lanet/channel/SessionCenter;->getSessionRequest(Ljava/lang/String;)Lanet/channel/SessionRequest;

    move-result-object v1

    .line 359
    iget-object v0, p0, Lanet/channel/SessionCenter;->sessionPool:Lanet/channel/f;

    invoke-virtual {v0, v1, p2}, Lanet/channel/f;->a(Lanet/channel/SessionRequest;Lanet/channel/entity/ConnType$TypeLevel;)Lanet/channel/Session;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_5

    .line 362
    const-string v1, "awcn.SessionCenter"

    const-string v2, "get internal hit cache session"

    iget-object v3, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "session"

    aput-object v5, v4, v7

    aput-object v0, v4, v8

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 364
    :cond_5
    iget-object v3, p0, Lanet/channel/SessionCenter;->config:Lanet/channel/Config;

    sget-object v4, Lanet/channel/Config;->DEFAULT_CONFIG:Lanet/channel/Config;

    if-ne v3, v4, :cond_6

    sget-object v3, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    if-ne p2, v3, :cond_6

    move-object v0, v2

    .line 366
    goto/16 :goto_0

    .line 369
    :cond_6
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    if-ne p2, v2, :cond_7

    invoke-static {}, Lanet/channel/a;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 373
    iget-object v2, p0, Lanet/channel/SessionCenter;->attributeManager:Lanet/channel/c;

    invoke-virtual {p1}, Lanet/channel/util/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lanet/channel/c;->b(Ljava/lang/String;)Lanet/channel/SessionInfo;

    move-result-object v2

    .line 374
    if-eqz v2, :cond_7

    iget-boolean v2, v2, Lanet/channel/SessionInfo;->isAccs:Z

    if-eqz v2, :cond_7

    .line 375
    const-string v0, "awcn.SessionCenter"

    const-string v1, "app background, forbid to create accs session"

    iget-object v2, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    new-instance v0, Ljava/net/ConnectException;

    const-string v1, "accs session connecting forbidden in background"

    invoke-direct {v0, v1}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_7
    iget-object v2, p0, Lanet/channel/SessionCenter;->context:Landroid/content/Context;

    iget-object v3, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    invoke-static {v3}, Lanet/channel/util/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p2, v3}, Lanet/channel/SessionRequest;->a(Landroid/content/Context;Lanet/channel/entity/ConnType$TypeLevel;Ljava/lang/String;)V

    .line 380
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Lanet/channel/SessionRequest;->b()Lanet/channel/entity/ConnType$TypeLevel;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 381
    invoke-virtual {v1, p3, p4}, Lanet/channel/SessionRequest;->a(J)V

    .line 382
    iget-object v0, p0, Lanet/channel/SessionCenter;->sessionPool:Lanet/channel/f;

    invoke-virtual {v0, v1, p2}, Lanet/channel/f;->a(Lanet/channel/SessionRequest;Lanet/channel/entity/ConnType$TypeLevel;)Lanet/channel/Session;

    move-result-object v0

    .line 383
    if-nez v0, :cond_0

    .line 384
    new-instance v0, Ljava/net/ConnectException;

    const-string v1, "session connecting failed or timeout"

    invoke-direct {v0, v1}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getSessionRequest(Ljava/lang/String;)Lanet/channel/SessionRequest;
    .locals 3

    .prologue
    .line 464
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    const/4 v0, 0x0

    .line 476
    :goto_0
    return-object v0

    .line 469
    :cond_0
    iget-object v1, p0, Lanet/channel/SessionCenter;->srCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 470
    :try_start_0
    iget-object v0, p0, Lanet/channel/SessionCenter;->srCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/SessionRequest;

    .line 471
    if-nez v0, :cond_1

    .line 472
    new-instance v0, Lanet/channel/SessionRequest;

    invoke-direct {v0, p1, p0}, Lanet/channel/SessionRequest;-><init>(Ljava/lang/String;Lanet/channel/SessionCenter;)V

    .line 473
    iget-object v2, p0, Lanet/channel/SessionCenter;->srCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getThrowsException(Lanet/channel/util/c;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p0, p1, p2, p3, p4}, Lanet/channel/SessionCenter;->getInternal(Lanet/channel/util/c;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;

    move-result-object v0

    return-object v0
.end method

.method public getThrowsException(Ljava/lang/String;J)Lanet/channel/Session;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lanet/channel/SessionCenter;->getThrowsException(Ljava/lang/String;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;

    move-result-object v0

    return-object v0
.end method

.method public getThrowsException(Ljava/lang/String;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 262
    invoke-static {p1}, Lanet/channel/util/c;->a(Ljava/lang/String;)Lanet/channel/util/c;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lanet/channel/SessionCenter;->getInternal(Lanet/channel/util/c;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;

    move-result-object v0

    return-object v0
.end method

.method public registerPublicKey(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lanet/channel/SessionCenter;->attributeManager:Lanet/channel/c;

    invoke-virtual {v0, p1, p2}, Lanet/channel/c;->a(Ljava/lang/String;I)V

    .line 326
    return-void
.end method

.method public registerSessionInfo(Lanet/channel/SessionInfo;)V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lanet/channel/SessionCenter;->attributeManager:Lanet/channel/c;

    invoke-virtual {v0, p1}, Lanet/channel/c;->a(Lanet/channel/SessionInfo;)V

    .line 312
    iget-boolean v0, p1, Lanet/channel/SessionInfo;->isKeepAlive:Z

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lanet/channel/SessionCenter;->accsSessionManager:Lanet/channel/AccsSessionManager;

    invoke-virtual {v0}, Lanet/channel/AccsSessionManager;->checkAndStartSession()V

    .line 315
    :cond_0
    return-void
.end method

.method public declared-synchronized switchEnv(Lanet/channel/entity/ENV;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lanet/channel/SessionCenter;->switchEnvironment(Lanet/channel/entity/ENV;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterSessionInfo(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lanet/channel/SessionCenter;->attributeManager:Lanet/channel/c;

    invoke-virtual {v0, p1}, Lanet/channel/c;->a(Ljava/lang/String;)Lanet/channel/SessionInfo;

    move-result-object v0

    .line 319
    iget-boolean v0, v0, Lanet/channel/SessionInfo;->isKeepAlive:Z

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lanet/channel/SessionCenter;->accsSessionManager:Lanet/channel/AccsSessionManager;

    invoke-virtual {v0}, Lanet/channel/AccsSessionManager;->checkAndStartSession()V

    .line 322
    :cond_0
    return-void
.end method
