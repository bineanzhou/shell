.class final Lorg/greenrobot/eventbus/BackgroundPoster;
.super Ljava/lang/Object;
.source "BackgroundPoster.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/greenrobot/eventbus/Poster;


# instance fields
.field private final a:Lorg/greenrobot/eventbus/PendingPostQueue;

.field private final b:Lorg/greenrobot/eventbus/EventBus;

.field private volatile c:Z


# direct methods
.method constructor <init>(Lorg/greenrobot/eventbus/EventBus;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->b:Lorg/greenrobot/eventbus/EventBus;

    .line 34
    new-instance v0, Lorg/greenrobot/eventbus/PendingPostQueue;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/PendingPostQueue;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->a:Lorg/greenrobot/eventbus/PendingPostQueue;

    .line 35
    return-void
.end method


# virtual methods
.method public a(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 38
    invoke-static {p1, p2}, Lorg/greenrobot/eventbus/PendingPost;->a(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)Lorg/greenrobot/eventbus/PendingPost;

    move-result-object v0

    .line 39
    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v1, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->a:Lorg/greenrobot/eventbus/PendingPostQueue;

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/PendingPostQueue;->a(Lorg/greenrobot/eventbus/PendingPost;)V

    .line 41
    iget-boolean v0, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->c:Z

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->c:Z

    .line 43
    iget-object v0, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->b:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0}, Lorg/greenrobot/eventbus/EventBus;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 45
    :cond_0
    monitor-exit p0

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 53
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->a:Lorg/greenrobot/eventbus/PendingPostQueue;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/PendingPostQueue;->a(I)Lorg/greenrobot/eventbus/PendingPost;

    move-result-object v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    :try_start_1
    iget-object v0, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->a:Lorg/greenrobot/eventbus/PendingPostQueue;

    invoke-virtual {v0}, Lorg/greenrobot/eventbus/PendingPostQueue;->a()Lorg/greenrobot/eventbus/PendingPost;

    move-result-object v0

    .line 58
    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->c:Z

    .line 60
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    iput-boolean v5, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->c:Z

    .line 72
    :goto_1
    return-void

    .line 62
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    :cond_1
    :try_start_3
    iget-object v1, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->b:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->a(Lorg/greenrobot/eventbus/PendingPost;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    :try_start_4
    iget-object v1, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->b:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v1}, Lorg/greenrobot/eventbus/EventBus;->f()Lorg/greenrobot/eventbus/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was interruppted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lorg/greenrobot/eventbus/Logger;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 70
    iput-boolean v5, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->c:Z

    goto :goto_1

    .line 62
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 70
    :catchall_1
    move-exception v0

    iput-boolean v5, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->c:Z

    throw v0
.end method
