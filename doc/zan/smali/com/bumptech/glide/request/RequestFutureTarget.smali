.class public Lcom/bumptech/glide/request/RequestFutureTarget;
.super Ljava/lang/Object;
.source "RequestFutureTarget.java"

# interfaces
.implements Lcom/bumptech/glide/request/FutureTarget;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/FutureTarget",
        "<TR;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final b:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;


# instance fields
.field private final c:Landroid/os/Handler;

.field private final d:I

.field private final e:I

.field private final f:Z

.field private final g:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

.field private h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private i:Lcom/bumptech/glide/request/Request;

.field private j:Z

.field private k:Ljava/lang/Exception;

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;-><init>()V

    sput-object v0, Lcom/bumptech/glide/request/RequestFutureTarget;->b:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;II)V
    .locals 6

    .prologue
    .line 59
    const/4 v4, 0x1

    sget-object v5, Lcom/bumptech/glide/request/RequestFutureTarget;->b:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/request/RequestFutureTarget;-><init>(Landroid/os/Handler;IIZLcom/bumptech/glide/request/RequestFutureTarget$Waiter;)V

    .line 60
    return-void
.end method

.method constructor <init>(Landroid/os/Handler;IIZLcom/bumptech/glide/request/RequestFutureTarget$Waiter;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->c:Landroid/os/Handler;

    .line 64
    iput p2, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->d:I

    .line 65
    iput p3, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->e:I

    .line 66
    iput-boolean p4, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->f:Z

    .line 67
    iput-object p5, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->g:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    .line 68
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 168
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->f:Z

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lcom/bumptech/glide/util/Util;->b()V

    .line 172
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->j:Z

    if-eqz v0, :cond_1

    .line 173
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 174
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->m:Z

    if-eqz v0, :cond_2

    .line 175
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->k:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 176
    :cond_2
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->l:Z

    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->h:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :goto_0
    monitor-exit p0

    return-object v0

    .line 180
    :cond_3
    if-nez p1, :cond_5

    .line 181
    :try_start_2
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->g:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p0, v2, v3}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->a(Ljava/lang/Object;J)V

    .line 186
    :cond_4
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 187
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 182
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 183
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->g:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->a(Ljava/lang/Object;J)V

    goto :goto_1

    .line 188
    :cond_6
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->m:Z

    if-eqz v0, :cond_7

    .line 189
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->k:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 190
    :cond_7
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->j:Z

    if-eqz v0, :cond_8

    .line 191
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 192
    :cond_8
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->l:Z

    if-nez v0, :cond_9

    .line 193
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    .line 196
    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->h:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public a(Lcom/bumptech/glide/request/Request;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->i:Lcom/bumptech/glide/request/Request;

    .line 122
    return-void
.end method

.method public a(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 2

    .prologue
    .line 116
    iget v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->d:I

    iget v1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->e:I

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->a(II)V

    .line 117
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 151
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->m:Z

    .line 152
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->k:Ljava/lang/Exception;

    .line 153
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->g:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 162
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->l:Z

    .line 163
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->h:Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->g:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a_()Lcom/bumptech/glide/request/Request;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->i:Lcom/bumptech/glide/request/Request;

    return-object v0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public declared-synchronized cancel(Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 72
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 84
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 76
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestFutureTarget;->isDone()Z

    move-result v1

    if-nez v1, :cond_3

    .line 77
    :goto_1
    if-eqz v0, :cond_0

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->j:Z

    .line 79
    if-eqz p1, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestFutureTarget;->a()V

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->g:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    invoke-virtual {v1, p0}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 76
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public g()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/RequestFutureTarget;->a(Ljava/lang/Long;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/RequestFutureTarget;->a(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public i()V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->j:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->i:Lcom/bumptech/glide/request/Request;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->i:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->d()V

    .line 206
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/RequestFutureTarget;->cancel(Z)Z

    .line 208
    :cond_0
    return-void
.end method
