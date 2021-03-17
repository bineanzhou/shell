.class public Lokio/AsyncTimeout;
.super Lokio/Timeout;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/AsyncTimeout$Watchdog;
    }
.end annotation


# static fields
.field private static final a:I = 0x10000

.field private static c:Lokio/AsyncTimeout;


# instance fields
.field private d:Z

.field private e:Lokio/AsyncTimeout;

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lokio/Timeout;-><init>()V

    return-void
.end method

.method private static declared-synchronized a(Lokio/AsyncTimeout;JZ)V
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    .line 85
    const-class v1, Lokio/AsyncTimeout;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lokio/AsyncTimeout;->c:Lokio/AsyncTimeout;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lokio/AsyncTimeout;

    invoke-direct {v0}, Lokio/AsyncTimeout;-><init>()V

    sput-object v0, Lokio/AsyncTimeout;->c:Lokio/AsyncTimeout;

    .line 87
    new-instance v0, Lokio/AsyncTimeout$Watchdog;

    invoke-direct {v0}, Lokio/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual {v0}, Lokio/AsyncTimeout$Watchdog;->start()V

    .line 90
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 91
    cmp-long v0, p1, v4

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 94
    invoke-virtual {p0}, Lokio/AsyncTimeout;->d()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, p0, Lokio/AsyncTimeout;->f:J

    .line 104
    :goto_0
    invoke-direct {p0, v2, v3}, Lokio/AsyncTimeout;->b(J)J

    move-result-wide v4

    .line 105
    sget-object v0, Lokio/AsyncTimeout;->c:Lokio/AsyncTimeout;

    .line 106
    :goto_1
    iget-object v6, v0, Lokio/AsyncTimeout;->e:Lokio/AsyncTimeout;

    if-eqz v6, :cond_1

    iget-object v6, v0, Lokio/AsyncTimeout;->e:Lokio/AsyncTimeout;

    invoke-direct {v6, v2, v3}, Lokio/AsyncTimeout;->b(J)J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_6

    .line 107
    :cond_1
    iget-object v2, v0, Lokio/AsyncTimeout;->e:Lokio/AsyncTimeout;

    iput-object v2, p0, Lokio/AsyncTimeout;->e:Lokio/AsyncTimeout;

    .line 108
    iput-object p0, v0, Lokio/AsyncTimeout;->e:Lokio/AsyncTimeout;

    .line 109
    sget-object v2, Lokio/AsyncTimeout;->c:Lokio/AsyncTimeout;

    if-ne v0, v2, :cond_2

    .line 110
    const-class v0, Lokio/AsyncTimeout;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_2
    monitor-exit v1

    return-void

    .line 95
    :cond_3
    cmp-long v0, p1, v4

    if-eqz v0, :cond_4

    .line 96
    add-long v4, v2, p1

    :try_start_1
    iput-wide v4, p0, Lokio/AsyncTimeout;->f:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 97
    :cond_4
    if-eqz p3, :cond_5

    .line 98
    :try_start_2
    invoke-virtual {p0}, Lokio/AsyncTimeout;->d()J

    move-result-wide v4

    iput-wide v4, p0, Lokio/AsyncTimeout;->f:J

    goto :goto_0

    .line 100
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 105
    :cond_6
    iget-object v0, v0, Lokio/AsyncTimeout;->e:Lokio/AsyncTimeout;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private static declared-synchronized a(Lokio/AsyncTimeout;)Z
    .locals 3

    .prologue
    .line 127
    const-class v1, Lokio/AsyncTimeout;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lokio/AsyncTimeout;->c:Lokio/AsyncTimeout;

    :goto_0
    if-eqz v0, :cond_1

    .line 128
    iget-object v2, v0, Lokio/AsyncTimeout;->e:Lokio/AsyncTimeout;

    if-ne v2, p0, :cond_0

    .line 129
    iget-object v2, p0, Lokio/AsyncTimeout;->e:Lokio/AsyncTimeout;

    iput-object v2, v0, Lokio/AsyncTimeout;->e:Lokio/AsyncTimeout;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lokio/AsyncTimeout;->e:Lokio/AsyncTimeout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    const/4 v0, 0x0

    .line 136
    :goto_1
    monitor-exit v1

    return v0

    .line 127
    :cond_0
    :try_start_1
    iget-object v0, v0, Lokio/AsyncTimeout;->e:Lokio/AsyncTimeout;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(J)J
    .locals 3

    .prologue
    .line 144
    iget-wide v0, p0, Lokio/AsyncTimeout;->f:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method static declared-synchronized e()Lokio/AsyncTimeout;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/32 v8, 0xf4240

    const/4 v0, 0x0

    .line 334
    const-class v2, Lokio/AsyncTimeout;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lokio/AsyncTimeout;->c:Lokio/AsyncTimeout;

    iget-object v1, v1, Lokio/AsyncTimeout;->e:Lokio/AsyncTimeout;

    .line 337
    if-nez v1, :cond_0

    .line 338
    const-class v1, Lokio/AsyncTimeout;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :goto_0
    monitor-exit v2

    return-object v0

    .line 342
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lokio/AsyncTimeout;->b(J)J

    move-result-wide v4

    .line 345
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 348
    const-wide/32 v6, 0xf4240

    div-long v6, v4, v6

    .line 349
    mul-long/2addr v8, v6

    sub-long/2addr v4, v8

    .line 350
    const-class v1, Lokio/AsyncTimeout;

    long-to-int v3, v4

    invoke-virtual {v1, v6, v7, v3}, Ljava/lang/Object;->wait(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 355
    :cond_1
    :try_start_2
    sget-object v0, Lokio/AsyncTimeout;->c:Lokio/AsyncTimeout;

    iget-object v3, v1, Lokio/AsyncTimeout;->e:Lokio/AsyncTimeout;

    iput-object v3, v0, Lokio/AsyncTimeout;->e:Lokio/AsyncTimeout;

    .line 356
    const/4 v0, 0x0

    iput-object v0, v1, Lokio/AsyncTimeout;->e:Lokio/AsyncTimeout;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    .line 357
    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .prologue
    .line 297
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 298
    if-eqz p1, :cond_0

    .line 299
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 301
    :cond_0
    return-object v0
.end method

.method public final a(Lokio/Sink;)Lokio/Sink;
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lokio/AsyncTimeout$1;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$1;-><init>(Lokio/AsyncTimeout;Lokio/Sink;)V

    return-object v0
.end method

.method public final a(Lokio/Source;)Lokio/Source;
    .locals 1

    .prologue
    .line 233
    new-instance v0, Lokio/AsyncTimeout$2;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$2;-><init>(Lokio/AsyncTimeout;Lokio/Source;)V

    return-object v0
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method final a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-virtual {p0}, Lokio/AsyncTimeout;->b_()Z

    move-result v0

    .line 277
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokio/AsyncTimeout;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 278
    :cond_0
    return-void
.end method

.method final b(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-virtual {p0}, Lokio/AsyncTimeout;->b_()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lokio/AsyncTimeout;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_0
.end method

.method public final b_()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 119
    iget-boolean v1, p0, Lokio/AsyncTimeout;->d:Z

    if-nez v1, :cond_0

    .line 121
    :goto_0
    return v0

    .line 120
    :cond_0
    iput-boolean v0, p0, Lokio/AsyncTimeout;->d:Z

    .line 121
    invoke-static {p0}, Lokio/AsyncTimeout;->a(Lokio/AsyncTimeout;)Z

    move-result v0

    goto :goto_0
.end method

.method public final c()V
    .locals 6

    .prologue
    .line 72
    iget-boolean v0, p0, Lokio/AsyncTimeout;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lokio/AsyncTimeout;->c_()J

    move-result-wide v0

    .line 74
    invoke-virtual {p0}, Lokio/AsyncTimeout;->d_()Z

    move-result v2

    .line 75
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lokio/AsyncTimeout;->d:Z

    .line 79
    invoke-static {p0, v0, v1, v2}, Lokio/AsyncTimeout;->a(Lokio/AsyncTimeout;JZ)V

    goto :goto_0
.end method
