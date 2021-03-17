.class public Lorg/greenrobot/eventbus/EventBusBuilder;
.super Ljava/lang/Object;
.source "EventBusBuilder.java"


# static fields
.field private static final n:Ljava/util/concurrent/ExecutorService;


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Ljava/util/concurrent/ExecutorService;

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/greenrobot/eventbus/meta/SubscriberInfoIndex;",
            ">;"
        }
    .end annotation
.end field

.field l:Lorg/greenrobot/eventbus/Logger;

.field m:Lorg/greenrobot/eventbus/MainThreadSupport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lorg/greenrobot/eventbus/EventBusBuilder;->n:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->a:Z

    .line 35
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->b:Z

    .line 36
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->c:Z

    .line 37
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->d:Z

    .line 39
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->f:Z

    .line 42
    sget-object v0, Lorg/greenrobot/eventbus/EventBusBuilder;->n:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->i:Ljava/util/concurrent/ExecutorService;

    .line 49
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lorg/greenrobot/eventbus/EventBusBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/greenrobot/eventbus/EventBusBuilder;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->j:Ljava/util/List;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->j:Ljava/util/List;

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-object p0
.end method

.method public a(Ljava/util/concurrent/ExecutorService;)Lorg/greenrobot/eventbus/EventBusBuilder;
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->i:Ljava/util/concurrent/ExecutorService;

    .line 107
    return-object p0
.end method

.method public a(Lorg/greenrobot/eventbus/Logger;)Lorg/greenrobot/eventbus/EventBusBuilder;
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->l:Lorg/greenrobot/eventbus/Logger;

    .line 152
    return-object p0
.end method

.method public a(Lorg/greenrobot/eventbus/meta/SubscriberInfoIndex;)Lorg/greenrobot/eventbus/EventBusBuilder;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->k:Ljava/util/List;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->k:Ljava/util/List;

    .line 140
    :cond_0
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    return-object p0
.end method

.method public a(Z)Lorg/greenrobot/eventbus/EventBusBuilder;
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->a:Z

    .line 54
    return-object p0
.end method

.method a()Lorg/greenrobot/eventbus/Logger;
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->l:Lorg/greenrobot/eventbus/Logger;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->l:Lorg/greenrobot/eventbus/Logger;

    .line 160
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/Logger$AndroidLogger;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/greenrobot/eventbus/EventBusBuilder;->c()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/greenrobot/eventbus/Logger$AndroidLogger;

    const-string v1, "EventBus"

    invoke-direct {v0, v1}, Lorg/greenrobot/eventbus/Logger$AndroidLogger;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/greenrobot/eventbus/Logger$SystemOutLogger;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/Logger$SystemOutLogger;-><init>()V

    goto :goto_0
.end method

.method public b(Z)Lorg/greenrobot/eventbus/EventBusBuilder;
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->b:Z

    .line 60
    return-object p0
.end method

.method b()Lorg/greenrobot/eventbus/MainThreadSupport;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->m:Lorg/greenrobot/eventbus/MainThreadSupport;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->m:Lorg/greenrobot/eventbus/MainThreadSupport;

    .line 175
    :goto_0
    return-object v0

    .line 170
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/Logger$AndroidLogger;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    invoke-virtual {p0}, Lorg/greenrobot/eventbus/EventBusBuilder;->c()Ljava/lang/Object;

    move-result-object v0

    .line 172
    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/greenrobot/eventbus/MainThreadSupport$AndroidHandlerMainThreadSupport;

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v1, v0}, Lorg/greenrobot/eventbus/MainThreadSupport$AndroidHandlerMainThreadSupport;-><init>(Landroid/os/Looper;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 175
    goto :goto_0
.end method

.method c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 181
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    .line 182
    :catch_0
    move-exception v0

    .line 184
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Z)Lorg/greenrobot/eventbus/EventBusBuilder;
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->c:Z

    .line 66
    return-object p0
.end method

.method public d()Lorg/greenrobot/eventbus/EventBus;
    .locals 3

    .prologue
    .line 195
    const-class v1, Lorg/greenrobot/eventbus/EventBus;

    monitor-enter v1

    .line 196
    :try_start_0
    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->b:Lorg/greenrobot/eventbus/EventBus;

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Lorg/greenrobot/eventbus/EventBusException;

    const-string v2, "Default instance already exists. It may be only set once before it\'s used the first time to ensure consistent behavior."

    invoke-direct {v0, v2}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 200
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/greenrobot/eventbus/EventBusBuilder;->e()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    sput-object v0, Lorg/greenrobot/eventbus/EventBus;->b:Lorg/greenrobot/eventbus/EventBus;

    .line 201
    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->b:Lorg/greenrobot/eventbus/EventBus;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public d(Z)Lorg/greenrobot/eventbus/EventBusBuilder;
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->d:Z

    .line 72
    return-object p0
.end method

.method public e()Lorg/greenrobot/eventbus/EventBus;
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-direct {v0, p0}, Lorg/greenrobot/eventbus/EventBus;-><init>(Lorg/greenrobot/eventbus/EventBusBuilder;)V

    return-object v0
.end method

.method public e(Z)Lorg/greenrobot/eventbus/EventBusBuilder;
    .locals 0

    .prologue
    .line 82
    iput-boolean p1, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->e:Z

    .line 83
    return-object p0
.end method

.method public f(Z)Lorg/greenrobot/eventbus/EventBusBuilder;
    .locals 0

    .prologue
    .line 96
    iput-boolean p1, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->f:Z

    .line 97
    return-object p0
.end method

.method public g(Z)Lorg/greenrobot/eventbus/EventBusBuilder;
    .locals 0

    .prologue
    .line 125
    iput-boolean p1, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->g:Z

    .line 126
    return-object p0
.end method

.method public h(Z)Lorg/greenrobot/eventbus/EventBusBuilder;
    .locals 0

    .prologue
    .line 131
    iput-boolean p1, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->h:Z

    .line 132
    return-object p0
.end method
