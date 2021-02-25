.class public Lorg/greenrobot/eventbus/util/AsyncExecutor;
.super Ljava/lang/Object;
.source "AsyncExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/eventbus/util/AsyncExecutor$RunnableEx;,
        Lorg/greenrobot/eventbus/util/AsyncExecutor$Builder;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private final c:Lorg/greenrobot/eventbus/EventBus;

.field private final d:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lorg/greenrobot/eventbus/EventBus;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor;->a:Ljava/util/concurrent/Executor;

    .line 94
    iput-object p2, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor;->c:Lorg/greenrobot/eventbus/EventBus;

    .line 95
    iput-object p4, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor;->d:Ljava/lang/Object;

    .line 97
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Throwable;

    aput-object v2, v0, v1

    invoke-virtual {p3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor;->b:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failure event class must have a constructor with one parameter of type Throwable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Class;Ljava/lang/Object;Lorg/greenrobot/eventbus/util/AsyncExecutor$1;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/greenrobot/eventbus/util/AsyncExecutor;-><init>(Ljava/util/concurrent/Executor;Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lorg/greenrobot/eventbus/util/AsyncExecutor;)Ljava/lang/reflect/Constructor;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor;->b:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public static a()Lorg/greenrobot/eventbus/util/AsyncExecutor$Builder;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lorg/greenrobot/eventbus/util/AsyncExecutor$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/greenrobot/eventbus/util/AsyncExecutor$Builder;-><init>(Lorg/greenrobot/eventbus/util/AsyncExecutor$1;)V

    return-object v0
.end method

.method static synthetic b(Lorg/greenrobot/eventbus/util/AsyncExecutor;)Lorg/greenrobot/eventbus/EventBus;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor;->c:Lorg/greenrobot/eventbus/EventBus;

    return-object v0
.end method

.method public static b()Lorg/greenrobot/eventbus/util/AsyncExecutor;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lorg/greenrobot/eventbus/util/AsyncExecutor$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/greenrobot/eventbus/util/AsyncExecutor$Builder;-><init>(Lorg/greenrobot/eventbus/util/AsyncExecutor$1;)V

    invoke-virtual {v0}, Lorg/greenrobot/eventbus/util/AsyncExecutor$Builder;->a()Lorg/greenrobot/eventbus/util/AsyncExecutor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lorg/greenrobot/eventbus/util/AsyncExecutor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor;->d:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/greenrobot/eventbus/util/AsyncExecutor$RunnableEx;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/greenrobot/eventbus/util/AsyncExecutor$1;

    invoke-direct {v1, p0, p1}, Lorg/greenrobot/eventbus/util/AsyncExecutor$1;-><init>(Lorg/greenrobot/eventbus/util/AsyncExecutor;Lorg/greenrobot/eventbus/util/AsyncExecutor$RunnableEx;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method
