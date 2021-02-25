.class public Lorg/greenrobot/eventbus/EventBus;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/eventbus/EventBus$PostCallback;,
        Lorg/greenrobot/eventbus/EventBus$PostingThreadState;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field static volatile b:Lorg/greenrobot/eventbus/EventBus;

.field private static final c:Lorg/greenrobot/eventbus/EventBusBuilder;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/greenrobot/eventbus/Subscription;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/greenrobot/eventbus/EventBus$PostingThreadState;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lorg/greenrobot/eventbus/MainThreadSupport;

.field private final j:Lorg/greenrobot/eventbus/Poster;

.field private final k:Lorg/greenrobot/eventbus/BackgroundPoster;

.field private final l:Lorg/greenrobot/eventbus/AsyncPoster;

.field private final m:Lorg/greenrobot/eventbus/SubscriberMethodFinder;

.field private final n:Ljava/util/concurrent/ExecutorService;

.field private final o:Z

.field private final p:Z

.field private final q:Z

.field private final r:Z

.field private final s:Z

.field private final t:Z

.field private final u:I

.field private final v:Lorg/greenrobot/eventbus/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "EventBus"

    sput-object v0, Lorg/greenrobot/eventbus/EventBus;->a:Ljava/lang/String;

    .line 46
    new-instance v0, Lorg/greenrobot/eventbus/EventBusBuilder;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/EventBusBuilder;-><init>()V

    sput-object v0, Lorg/greenrobot/eventbus/EventBus;->c:Lorg/greenrobot/eventbus/EventBusBuilder;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/greenrobot/eventbus/EventBus;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->c:Lorg/greenrobot/eventbus/EventBusBuilder;

    invoke-direct {p0, v0}, Lorg/greenrobot/eventbus/EventBus;-><init>(Lorg/greenrobot/eventbus/EventBusBuilder;)V

    .line 107
    return-void
.end method

.method constructor <init>(Lorg/greenrobot/eventbus/EventBusBuilder;)V
    .locals 4

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lorg/greenrobot/eventbus/EventBus$1;

    invoke-direct {v0, p0}, Lorg/greenrobot/eventbus/EventBus$1;-><init>(Lorg/greenrobot/eventbus/EventBus;)V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->h:Ljava/lang/ThreadLocal;

    .line 110
    invoke-virtual {p1}, Lorg/greenrobot/eventbus/EventBusBuilder;->a()Lorg/greenrobot/eventbus/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->v:Lorg/greenrobot/eventbus/Logger;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->e:Ljava/util/Map;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->f:Ljava/util/Map;

    .line 113
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->g:Ljava/util/Map;

    .line 114
    invoke-virtual {p1}, Lorg/greenrobot/eventbus/EventBusBuilder;->b()Lorg/greenrobot/eventbus/MainThreadSupport;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->i:Lorg/greenrobot/eventbus/MainThreadSupport;

    .line 115
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->i:Lorg/greenrobot/eventbus/MainThreadSupport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->i:Lorg/greenrobot/eventbus/MainThreadSupport;

    invoke-interface {v0, p0}, Lorg/greenrobot/eventbus/MainThreadSupport;->a(Lorg/greenrobot/eventbus/EventBus;)Lorg/greenrobot/eventbus/Poster;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->j:Lorg/greenrobot/eventbus/Poster;

    .line 116
    new-instance v0, Lorg/greenrobot/eventbus/BackgroundPoster;

    invoke-direct {v0, p0}, Lorg/greenrobot/eventbus/BackgroundPoster;-><init>(Lorg/greenrobot/eventbus/EventBus;)V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->k:Lorg/greenrobot/eventbus/BackgroundPoster;

    .line 117
    new-instance v0, Lorg/greenrobot/eventbus/AsyncPoster;

    invoke-direct {v0, p0}, Lorg/greenrobot/eventbus/AsyncPoster;-><init>(Lorg/greenrobot/eventbus/EventBus;)V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->l:Lorg/greenrobot/eventbus/AsyncPoster;

    .line 118
    iget-object v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->k:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    iput v0, p0, Lorg/greenrobot/eventbus/EventBus;->u:I

    .line 119
    new-instance v0, Lorg/greenrobot/eventbus/SubscriberMethodFinder;

    iget-object v1, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->k:Ljava/util/List;

    iget-boolean v2, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->h:Z

    iget-boolean v3, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->g:Z

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/SubscriberMethodFinder;-><init>(Ljava/util/List;ZZ)V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->m:Lorg/greenrobot/eventbus/SubscriberMethodFinder;

    .line 121
    iget-boolean v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->a:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->p:Z

    .line 122
    iget-boolean v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->b:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->q:Z

    .line 123
    iget-boolean v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->c:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->r:Z

    .line 124
    iget-boolean v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->d:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->s:Z

    .line 125
    iget-boolean v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->e:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->o:Z

    .line 126
    iget-boolean v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->f:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->t:Z

    .line 127
    iget-object v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->i:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->n:Ljava/util/concurrent/ExecutorService;

    .line 128
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 118
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a()Lorg/greenrobot/eventbus/EventBus;
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->b:Lorg/greenrobot/eventbus/EventBus;

    if-nez v0, :cond_1

    .line 82
    const-class v1, Lorg/greenrobot/eventbus/EventBus;

    monitor-enter v1

    .line 83
    :try_start_0
    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->b:Lorg/greenrobot/eventbus/EventBus;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/EventBus;-><init>()V

    sput-object v0, Lorg/greenrobot/eventbus/EventBus;->b:Lorg/greenrobot/eventbus/EventBus;

    .line 86
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_1
    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->b:Lorg/greenrobot/eventbus/EventBus;

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 223
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->e:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 224
    if-eqz v0, :cond_0

    .line 225
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v4

    .line 226
    :goto_0
    if-ge v2, v3, :cond_0

    .line 227
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/eventbus/Subscription;

    .line 228
    iget-object v5, v1, Lorg/greenrobot/eventbus/Subscription;->a:Ljava/lang/Object;

    if-ne v5, p1, :cond_1

    .line 229
    iput-boolean v4, v1, Lorg/greenrobot/eventbus/Subscription;->c:Z

    .line 230
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 231
    add-int/lit8 v1, v2, -0x1

    .line 232
    add-int/lit8 v2, v3, -0x1

    .line 226
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 236
    :cond_0
    return-void

    :cond_1
    move v1, v2

    move v2, v3

    goto :goto_1
.end method

.method private a(Ljava/lang/Object;Lorg/greenrobot/eventbus/EventBus$PostingThreadState;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 377
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 379
    iget-boolean v1, p0, Lorg/greenrobot/eventbus/EventBus;->t:Z

    if-eqz v1, :cond_3

    .line 380
    invoke-static {v3}, Lorg/greenrobot/eventbus/EventBus;->d(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 381
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v2, v0

    move v1, v0

    .line 382
    :goto_0
    if-ge v2, v5, :cond_0

    .line 383
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 384
    invoke-direct {p0, p1, p2, v0}, Lorg/greenrobot/eventbus/EventBus;->a(Ljava/lang/Object;Lorg/greenrobot/eventbus/EventBus$PostingThreadState;Ljava/lang/Class;)Z

    move-result v0

    or-int/2addr v1, v0

    .line 382
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 389
    :goto_1
    if-nez v0, :cond_2

    .line 390
    iget-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->q:Z

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->v:Lorg/greenrobot/eventbus/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No subscribers registered for event "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/greenrobot/eventbus/Logger;->a(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 393
    :cond_1
    iget-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->s:Z

    if-eqz v0, :cond_2

    const-class v0, Lorg/greenrobot/eventbus/NoSubscriberEvent;

    if-eq v3, v0, :cond_2

    const-class v0, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;

    if-eq v3, v0, :cond_2

    .line 395
    new-instance v0, Lorg/greenrobot/eventbus/NoSubscriberEvent;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/eventbus/NoSubscriberEvent;-><init>(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->d(Ljava/lang/Object;)V

    .line 398
    :cond_2
    return-void

    .line 387
    :cond_3
    invoke-direct {p0, p1, p2, v3}, Lorg/greenrobot/eventbus/EventBus;->a(Ljava/lang/Object;Lorg/greenrobot/eventbus/EventBus$PostingThreadState;Ljava/lang/Class;)Z

    move-result v0

    goto :goto_1
.end method

.method private a(Ljava/lang/Object;Lorg/greenrobot/eventbus/SubscriberMethod;)V
    .locals 7

    .prologue
    .line 150
    iget-object v3, p2, Lorg/greenrobot/eventbus/SubscriberMethod;->c:Ljava/lang/Class;

    .line 151
    new-instance v4, Lorg/greenrobot/eventbus/Subscription;

    invoke-direct {v4, p1, p2}, Lorg/greenrobot/eventbus/Subscription;-><init>(Ljava/lang/Object;Lorg/greenrobot/eventbus/SubscriberMethod;)V

    .line 152
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->e:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 153
    if-nez v0, :cond_4

    .line 154
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 155
    iget-object v1, p0, Lorg/greenrobot/eventbus/EventBus;->e:Ljava/util/Map;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 163
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    .line 164
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-gt v2, v5, :cond_1

    .line 165
    if-eq v2, v5, :cond_0

    iget v6, p2, Lorg/greenrobot/eventbus/SubscriberMethod;->d:I

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/Subscription;

    iget-object v0, v0, Lorg/greenrobot/eventbus/Subscription;->b:Lorg/greenrobot/eventbus/SubscriberMethod;

    iget v0, v0, Lorg/greenrobot/eventbus/SubscriberMethod;->d:I

    if-le v6, v0, :cond_5

    .line 166
    :cond_0
    invoke-virtual {v1, v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 171
    :cond_1
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 172
    if-nez v0, :cond_2

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    iget-object v1, p0, Lorg/greenrobot/eventbus/EventBus;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-boolean v0, p2, Lorg/greenrobot/eventbus/SubscriberMethod;->e:Z

    if-eqz v0, :cond_7

    .line 179
    iget-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->t:Z

    if-eqz v0, :cond_6

    .line 184
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 185
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 186
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 187
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 188
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 189
    invoke-direct {p0, v4, v0}, Lorg/greenrobot/eventbus/EventBus;->b(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    goto :goto_2

    .line 157
    :cond_4
    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 158
    new-instance v0, Lorg/greenrobot/eventbus/EventBusException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already registered to event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 193
    :cond_6
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->g:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 194
    invoke-direct {p0, v4, v0}, Lorg/greenrobot/eventbus/EventBus;->b(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    .line 197
    :cond_7
    return-void

    :cond_8
    move-object v1, v0

    goto/16 :goto_0
.end method

.method static a(Ljava/util/List;[Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 482
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 483
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 484
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/greenrobot/eventbus/EventBus;->a(Ljava/util/List;[Ljava/lang/Class;)V

    .line 482
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 488
    :cond_1
    return-void
.end method

.method private a(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 516
    instance-of v0, p2, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;

    if-eqz v0, :cond_1

    .line 517
    iget-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->p:Z

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->v:Lorg/greenrobot/eventbus/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubscriberExceptionEvent subscriber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lorg/greenrobot/eventbus/Subscription;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threw an exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lorg/greenrobot/eventbus/Logger;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 521
    check-cast p2, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;

    .line 522
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->v:Lorg/greenrobot/eventbus/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initial event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " caused exception in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;->d:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;->b:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/Logger;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    iget-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->o:Z

    if-eqz v0, :cond_2

    .line 527
    new-instance v0, Lorg/greenrobot/eventbus/EventBusException;

    const-string v1, "Invoking subscriber failed"

    invoke-direct {v0, v1, p3}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 529
    :cond_2
    iget-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->p:Z

    if-eqz v0, :cond_3

    .line 530
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->v:Lorg/greenrobot/eventbus/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not dispatch event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to subscribing class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lorg/greenrobot/eventbus/Subscription;->a:Ljava/lang/Object;

    .line 531
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 530
    invoke-interface {v0, v1, v2, p3}, Lorg/greenrobot/eventbus/Logger;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 533
    :cond_3
    iget-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->r:Z

    if-eqz v0, :cond_0

    .line 534
    new-instance v0, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;

    iget-object v1, p1, Lorg/greenrobot/eventbus/Subscription;->a:Ljava/lang/Object;

    invoke-direct {v0, p0, p3, p2, v1}, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;-><init>(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 536
    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;Z)V
    .locals 3

    .prologue
    .line 428
    sget-object v0, Lorg/greenrobot/eventbus/EventBus$2;->a:[I

    iget-object v1, p1, Lorg/greenrobot/eventbus/Subscription;->b:Lorg/greenrobot/eventbus/SubscriberMethod;

    iget-object v1, v1, Lorg/greenrobot/eventbus/SubscriberMethod;->b:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-virtual {v1}, Lorg/greenrobot/eventbus/ThreadMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 458
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown thread mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lorg/greenrobot/eventbus/Subscription;->b:Lorg/greenrobot/eventbus/SubscriberMethod;

    iget-object v2, v2, Lorg/greenrobot/eventbus/SubscriberMethod;->b:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/eventbus/EventBus;->a(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    .line 460
    :goto_0
    return-void

    .line 433
    :pswitch_1
    if-eqz p3, :cond_0

    .line 434
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/eventbus/EventBus;->a(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    .line 436
    :cond_0
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->j:Lorg/greenrobot/eventbus/Poster;

    invoke-interface {v0, p1, p2}, Lorg/greenrobot/eventbus/Poster;->a(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    .line 440
    :pswitch_2
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->j:Lorg/greenrobot/eventbus/Poster;

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->j:Lorg/greenrobot/eventbus/Poster;

    invoke-interface {v0, p1, p2}, Lorg/greenrobot/eventbus/Poster;->a(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    .line 444
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/eventbus/EventBus;->a(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    .line 448
    :pswitch_3
    if-eqz p3, :cond_2

    .line 449
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->k:Lorg/greenrobot/eventbus/BackgroundPoster;

    invoke-virtual {v0, p1, p2}, Lorg/greenrobot/eventbus/BackgroundPoster;->a(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    .line 451
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/eventbus/EventBus;->a(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    .line 455
    :pswitch_4
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->l:Lorg/greenrobot/eventbus/AsyncPoster;

    invoke-virtual {v0, p1, p2}, Lorg/greenrobot/eventbus/AsyncPoster;->a(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    .line 428
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(Ljava/lang/Object;Lorg/greenrobot/eventbus/EventBus$PostingThreadState;Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/greenrobot/eventbus/EventBus$PostingThreadState;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 402
    monitor-enter p0

    .line 403
    :try_start_0
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->e:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 404
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 406
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/Subscription;

    .line 407
    iput-object p1, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->e:Ljava/lang/Object;

    .line 408
    iput-object v0, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->d:Lorg/greenrobot/eventbus/Subscription;

    .line 411
    :try_start_1
    iget-boolean v3, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->c:Z

    invoke-direct {p0, v0, p1, v3}, Lorg/greenrobot/eventbus/EventBus;->a(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;Z)V

    .line 412
    iget-boolean v0, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 414
    iput-object v4, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->e:Ljava/lang/Object;

    .line 415
    iput-object v4, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->d:Lorg/greenrobot/eventbus/Subscription;

    .line 416
    iput-boolean v1, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->f:Z

    .line 418
    if-eqz v0, :cond_0

    .line 422
    :cond_1
    const/4 v0, 0x1

    .line 424
    :goto_0
    return v0

    .line 404
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 414
    :catchall_1
    move-exception v0

    iput-object v4, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->e:Ljava/lang/Object;

    .line 415
    iput-object v4, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->d:Lorg/greenrobot/eventbus/Subscription;

    .line 416
    iput-boolean v1, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->f:Z

    throw v0

    :cond_2
    move v0, v1

    .line 424
    goto :goto_0
.end method

.method public static b()Lorg/greenrobot/eventbus/EventBusBuilder;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lorg/greenrobot/eventbus/EventBusBuilder;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/EventBusBuilder;-><init>()V

    return-object v0
.end method

.method private b(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 200
    if-eqz p2, :cond_0

    .line 203
    invoke-direct {p0}, Lorg/greenrobot/eventbus/EventBus;->g()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/greenrobot/eventbus/EventBus;->a(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;Z)V

    .line 205
    :cond_0
    return-void
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->a()V

    .line 98
    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 99
    return-void
.end method

.method private static d(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 464
    sget-object v2, Lorg/greenrobot/eventbus/EventBus;->d:Ljava/util/Map;

    monitor-enter v2

    .line 465
    :try_start_0
    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 466
    if-nez v0, :cond_1

    .line 467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    .line 469
    :goto_0
    if-eqz v1, :cond_0

    .line 470
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/greenrobot/eventbus/EventBus;->a(Ljava/util/List;[Ljava/lang/Class;)V

    .line 472
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 474
    :cond_0
    sget-object v1, Lorg/greenrobot/eventbus/EventBus;->d:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    :cond_1
    monitor-exit v2

    return-object v0

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->i:Lorg/greenrobot/eventbus/MainThreadSupport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->i:Lorg/greenrobot/eventbus/MainThreadSupport;

    invoke-interface {v0}, Lorg/greenrobot/eventbus/MainThreadSupport;->a()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 315
    iget-object v1, p0, Lorg/greenrobot/eventbus/EventBus;->g:Ljava/util/Map;

    monitor-enter v1

    .line 316
    :try_start_0
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lorg/greenrobot/eventbus/EventBus;->m:Lorg/greenrobot/eventbus/SubscriberMethodFinder;

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 141
    monitor-enter p0

    .line 142
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/SubscriberMethod;

    .line 143
    invoke-direct {p0, p1, v0}, Lorg/greenrobot/eventbus/EventBus;->a(Ljava/lang/Object;Lorg/greenrobot/eventbus/SubscriberMethod;)V

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    return-void
.end method

.method a(Lorg/greenrobot/eventbus/PendingPost;)V
    .locals 3

    .prologue
    .line 497
    iget-object v0, p1, Lorg/greenrobot/eventbus/PendingPost;->a:Ljava/lang/Object;

    .line 498
    iget-object v1, p1, Lorg/greenrobot/eventbus/PendingPost;->b:Lorg/greenrobot/eventbus/Subscription;

    .line 499
    invoke-static {p1}, Lorg/greenrobot/eventbus/PendingPost;->a(Lorg/greenrobot/eventbus/PendingPost;)V

    .line 500
    iget-boolean v2, v1, Lorg/greenrobot/eventbus/Subscription;->c:Z

    if-eqz v2, :cond_0

    .line 501
    invoke-virtual {p0, v1, v0}, Lorg/greenrobot/eventbus/EventBus;->a(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    .line 503
    :cond_0
    return-void
.end method

.method a(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 507
    :try_start_0
    iget-object v0, p1, Lorg/greenrobot/eventbus/Subscription;->b:Lorg/greenrobot/eventbus/SubscriberMethod;

    iget-object v0, v0, Lorg/greenrobot/eventbus/SubscriberMethod;->a:Ljava/lang/reflect/Method;

    iget-object v1, p1, Lorg/greenrobot/eventbus/Subscription;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 513
    :goto_0
    return-void

    .line 508
    :catch_0
    move-exception v0

    .line 509
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/greenrobot/eventbus/EventBus;->a(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 510
    :catch_1
    move-exception v0

    .line 511
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 326
    iget-object v1, p0, Lorg/greenrobot/eventbus/EventBus;->g:Ljava/util/Map;

    monitor-enter v1

    .line 327
    :try_start_0
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 241
    if-eqz v0, :cond_1

    .line 242
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 243
    invoke-direct {p0, p1, v0}, Lorg/greenrobot/eventbus/EventBus;->a(Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 245
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    :goto_1
    monitor-exit p0

    return-void

    .line 247
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->v:Lorg/greenrobot/eventbus/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscriber to unregister was not registered before: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/greenrobot/eventbus/Logger;->a(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public c(Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 359
    invoke-static {p1}, Lorg/greenrobot/eventbus/EventBus;->d(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 360
    if-eqz v3, :cond_1

    .line 361
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    .line 362
    :goto_0
    if-ge v2, v4, :cond_1

    .line 363
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 365
    monitor-enter p0

    .line 366
    :try_start_0
    iget-object v5, p0, Lorg/greenrobot/eventbus/EventBus;->e:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 367
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    const/4 v0, 0x1

    .line 373
    :goto_1
    return v0

    .line 367
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 362
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 373
    goto :goto_1
.end method

.method public d()V
    .locals 2

    .prologue
    .line 353
    iget-object v1, p0, Lorg/greenrobot/eventbus/EventBus;->g:Ljava/util/Map;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 355
    monitor-exit v1

    .line 356
    return-void

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 253
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;

    .line 254
    iget-object v1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->a:Ljava/util/List;

    .line 255
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    iget-boolean v2, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->b:Z

    if-nez v2, :cond_2

    .line 258
    invoke-direct {p0}, Lorg/greenrobot/eventbus/EventBus;->g()Z

    move-result v2

    iput-boolean v2, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->c:Z

    .line 259
    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->b:Z

    .line 260
    iget-boolean v2, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->f:Z

    if-eqz v2, :cond_0

    .line 261
    new-instance v0, Lorg/greenrobot/eventbus/EventBusException;

    const-string v1, "Internal error. Abort state was not reset"

    invoke-direct {v0, v1}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 265
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lorg/greenrobot/eventbus/EventBus;->a(Ljava/lang/Object;Lorg/greenrobot/eventbus/EventBus$PostingThreadState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v1

    iput-boolean v3, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->b:Z

    .line 269
    iput-boolean v3, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->c:Z

    throw v1

    .line 268
    :cond_1
    iput-boolean v3, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->b:Z

    .line 269
    iput-boolean v3, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->c:Z

    .line 272
    :cond_2
    return-void
.end method

.method e()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->n:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public e(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;

    .line 283
    iget-boolean v1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->b:Z

    if-nez v1, :cond_0

    .line 284
    new-instance v0, Lorg/greenrobot/eventbus/EventBusException;

    const-string v1, "This method may only be called from inside event handling methods on the posting thread"

    invoke-direct {v0, v1}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_0
    if-nez p1, :cond_1

    .line 287
    new-instance v0, Lorg/greenrobot/eventbus/EventBusException;

    const-string v1, "Event may not be null"

    invoke-direct {v0, v1}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_1
    iget-object v1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->e:Ljava/lang/Object;

    if-eq v1, p1, :cond_2

    .line 289
    new-instance v0, Lorg/greenrobot/eventbus/EventBusException;

    const-string v1, "Only the currently handled event may be aborted"

    invoke-direct {v0, v1}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_2
    iget-object v1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->d:Lorg/greenrobot/eventbus/Subscription;

    iget-object v1, v1, Lorg/greenrobot/eventbus/Subscription;->b:Lorg/greenrobot/eventbus/SubscriberMethod;

    iget-object v1, v1, Lorg/greenrobot/eventbus/SubscriberMethod;->b:Lorg/greenrobot/eventbus/ThreadMode;

    sget-object v2, Lorg/greenrobot/eventbus/ThreadMode;->POSTING:Lorg/greenrobot/eventbus/ThreadMode;

    if-eq v1, v2, :cond_3

    .line 291
    new-instance v0, Lorg/greenrobot/eventbus/EventBusException;

    const-string v1, " event handlers may only abort the incoming event"

    invoke-direct {v0, v1}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->f:Z

    .line 295
    return-void
.end method

.method public f()Lorg/greenrobot/eventbus/Logger;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->v:Lorg/greenrobot/eventbus/Logger;

    return-object v0
.end method

.method public f(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 302
    iget-object v1, p0, Lorg/greenrobot/eventbus/EventBus;->g:Ljava/util/Map;

    monitor-enter v1

    .line 303
    :try_start_0
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->g:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->d(Ljava/lang/Object;)V

    .line 307
    return-void

    .line 304
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public g(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 337
    iget-object v1, p0, Lorg/greenrobot/eventbus/EventBus;->g:Ljava/util/Map;

    monitor-enter v1

    .line 338
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 339
    iget-object v2, p0, Lorg/greenrobot/eventbus/EventBus;->g:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 340
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    iget-object v2, p0, Lorg/greenrobot/eventbus/EventBus;->g:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const/4 v0, 0x1

    monitor-exit v1

    .line 344
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventBus[indexCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/greenrobot/eventbus/EventBus;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventInheritance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/greenrobot/eventbus/EventBus;->t:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
