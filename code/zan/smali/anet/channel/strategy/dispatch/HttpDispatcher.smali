.class public Lanet/channel/strategy/dispatch/HttpDispatcher;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/dispatch/HttpDispatcher$1;,
        Lanet/channel/strategy/dispatch/HttpDispatcher$Singleton;,
        Lanet/channel/strategy/dispatch/HttpDispatcher$IDispatchEventListener;
    }
.end annotation


# instance fields
.field private executor:Lanet/channel/strategy/dispatch/b;

.field private initHosts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile isEnable:Z

.field private isInitHostsFilled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lanet/channel/strategy/dispatch/HttpDispatcher$IDispatchEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private uniqueIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 32
    new-instance v0, Lanet/channel/strategy/dispatch/b;

    invoke-direct {v0}, Lanet/channel/strategy/dispatch/b;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->executor:Lanet/channel/strategy/dispatch/b;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->isEnable:Z

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->uniqueIdSet:Ljava/util/Set;

    .line 35
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->initHosts:Ljava/util/Set;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->isInitHostsFilled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    invoke-direct {p0}, Lanet/channel/strategy/dispatch/HttpDispatcher;->fillInitHosts()V

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lanet/channel/strategy/dispatch/HttpDispatcher$1;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lanet/channel/strategy/dispatch/HttpDispatcher;-><init>()V

    return-void
.end method

.method private fillInitHosts()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->isInitHostsFilled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->isInitHostsFilled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->initHosts:Ljava/util/Set;

    invoke-static {}, Lanet/channel/strategy/dispatch/DispatchConstants;->getAmdcServerDomain()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isTargetProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->initHosts:Ljava/util/Set;

    sget-object v1, Lanet/channel/strategy/dispatch/DispatchConstants;->initHostArray:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 117
    :cond_0
    return-void
.end method

.method public static getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lanet/channel/strategy/dispatch/HttpDispatcher$Singleton;->instance:Lanet/channel/strategy/dispatch/HttpDispatcher;

    return-object v0
.end method

.method public static setInitHosts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    if-eqz p0, :cond_0

    .line 99
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lanet/channel/strategy/dispatch/DispatchConstants;->initHostArray:[Ljava/lang/String;

    .line 101
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addHosts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 91
    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->initHosts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 92
    iget-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->uniqueIdSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_0
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addListener(Lanet/channel/strategy/dispatch/HttpDispatcher$IDispatchEventListener;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method fireEvent(Lanet/channel/strategy/dispatch/DispatchEvent;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/dispatch/HttpDispatcher$IDispatchEventListener;

    .line 78
    :try_start_0
    invoke-interface {v0, p1}, Lanet/channel/strategy/dispatch/HttpDispatcher$IDispatchEventListener;->onEvent(Lanet/channel/strategy/dispatch/DispatchEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method public declared-synchronized getInitHosts()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lanet/channel/strategy/dispatch/HttpDispatcher;->fillInitHosts()V

    .line 105
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->initHosts:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isInitHostsChanged(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    iget-object v1, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->uniqueIdSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 124
    if-nez v1, :cond_2

    .line 125
    iget-object v2, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->uniqueIdSet:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_2
    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeListener(Lanet/channel/strategy/dispatch/HttpDispatcher$IDispatchEventListener;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public sendAmdcRequest(Ljava/util/Set;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 51
    iget-boolean v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->isEnable:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-static {v3}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    const-string v0, "awcn.HttpDispatcher"

    const-string v1, "sendAmdcRequest"

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "hosts"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    const-string v1, "hosts"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "preIp"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "cv"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v1, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->executor:Lanet/channel/strategy/dispatch/b;

    invoke-virtual {v1, v0}, Lanet/channel/strategy/dispatch/b;->a(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public setEnable(Z)V
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->isEnable:Z

    .line 87
    return-void
.end method

.method public switchENV()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->uniqueIdSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 132
    iget-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->initHosts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 133
    iget-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->isInitHostsFilled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 134
    return-void
.end method
