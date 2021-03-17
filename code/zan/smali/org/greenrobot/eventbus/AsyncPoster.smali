.class Lorg/greenrobot/eventbus/AsyncPoster;
.super Ljava/lang/Object;
.source "AsyncPoster.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/greenrobot/eventbus/Poster;


# instance fields
.field private final a:Lorg/greenrobot/eventbus/PendingPostQueue;

.field private final b:Lorg/greenrobot/eventbus/EventBus;


# direct methods
.method constructor <init>(Lorg/greenrobot/eventbus/EventBus;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/greenrobot/eventbus/AsyncPoster;->b:Lorg/greenrobot/eventbus/EventBus;

    .line 31
    new-instance v0, Lorg/greenrobot/eventbus/PendingPostQueue;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/PendingPostQueue;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/eventbus/AsyncPoster;->a:Lorg/greenrobot/eventbus/PendingPostQueue;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 35
    invoke-static {p1, p2}, Lorg/greenrobot/eventbus/PendingPost;->a(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)Lorg/greenrobot/eventbus/PendingPost;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lorg/greenrobot/eventbus/AsyncPoster;->a:Lorg/greenrobot/eventbus/PendingPostQueue;

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/PendingPostQueue;->a(Lorg/greenrobot/eventbus/PendingPost;)V

    .line 37
    iget-object v0, p0, Lorg/greenrobot/eventbus/AsyncPoster;->b:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0}, Lorg/greenrobot/eventbus/EventBus;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 38
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lorg/greenrobot/eventbus/AsyncPoster;->a:Lorg/greenrobot/eventbus/PendingPostQueue;

    invoke-virtual {v0}, Lorg/greenrobot/eventbus/PendingPostQueue;->a()Lorg/greenrobot/eventbus/PendingPost;

    move-result-object v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No pending post available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iget-object v1, p0, Lorg/greenrobot/eventbus/AsyncPoster;->b:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->a(Lorg/greenrobot/eventbus/PendingPost;)V

    .line 47
    return-void
.end method
