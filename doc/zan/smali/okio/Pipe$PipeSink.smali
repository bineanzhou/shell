.class final Lokio/Pipe$PipeSink;
.super Ljava/lang/Object;
.source "Pipe.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Pipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PipeSink"
.end annotation


# instance fields
.field final a:Lokio/Timeout;

.field final synthetic b:Lokio/Pipe;


# direct methods
.method constructor <init>(Lokio/Pipe;)V
    .locals 1

    .prologue
    .line 59
    iput-object p1, p0, Lokio/Pipe$PipeSink;->b:Lokio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lokio/Timeout;

    invoke-direct {v0}, Lokio/Timeout;-><init>()V

    iput-object v0, p0, Lokio/Pipe$PipeSink;->a:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public a()Lokio/Timeout;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lokio/Pipe$PipeSink;->a:Lokio/Timeout;

    return-object v0
.end method

.method public a_(Lokio/Buffer;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 63
    iget-object v0, p0, Lokio/Pipe$PipeSink;->b:Lokio/Pipe;

    iget-object v1, v0, Lokio/Pipe;->b:Lokio/Buffer;

    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v0, p0, Lokio/Pipe$PipeSink;->b:Lokio/Pipe;

    iget-boolean v0, v0, Lokio/Pipe;->c:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 69
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokio/Pipe$PipeSink;->b:Lokio/Pipe;

    iget-wide v2, v0, Lokio/Pipe;->a:J

    iget-object v0, p0, Lokio/Pipe$PipeSink;->b:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->b:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->b()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 70
    cmp-long v0, v2, v6

    if-nez v0, :cond_2

    .line 71
    iget-object v0, p0, Lokio/Pipe$PipeSink;->a:Lokio/Timeout;

    iget-object v2, p0, Lokio/Pipe$PipeSink;->b:Lokio/Pipe;

    iget-object v2, v2, Lokio/Pipe;->b:Lokio/Buffer;

    invoke-virtual {v0, v2}, Lokio/Timeout;->a(Ljava/lang/Object;)V

    .line 66
    :cond_1
    :goto_0
    cmp-long v0, p2, v6

    if-lez v0, :cond_3

    .line 67
    iget-object v0, p0, Lokio/Pipe$PipeSink;->b:Lokio/Pipe;

    iget-boolean v0, v0, Lokio/Pipe;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_2
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 76
    iget-object v0, p0, Lokio/Pipe$PipeSink;->b:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->b:Lokio/Buffer;

    invoke-virtual {v0, p1, v2, v3}, Lokio/Buffer;->a_(Lokio/Buffer;J)V

    .line 77
    sub-long/2addr p2, v2

    .line 78
    iget-object v0, p0, Lokio/Pipe$PipeSink;->b:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->b:Lokio/Buffer;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 80
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    return-void
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lokio/Pipe$PipeSink;->b:Lokio/Pipe;

    iget-object v1, v0, Lokio/Pipe;->b:Lokio/Buffer;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v0, p0, Lokio/Pipe$PipeSink;->b:Lokio/Pipe;

    iget-boolean v0, v0, Lokio/Pipe;->c:Z

    if-eqz v0, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :goto_0
    return-void

    .line 98
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lokio/Pipe$PipeSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    :try_start_2
    iget-object v0, p0, Lokio/Pipe$PipeSink;->b:Lokio/Pipe;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lokio/Pipe;->c:Z

    .line 101
    iget-object v0, p0, Lokio/Pipe$PipeSink;->b:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->b:Lokio/Buffer;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 103
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 100
    :catchall_1
    move-exception v0

    :try_start_3
    iget-object v2, p0, Lokio/Pipe$PipeSink;->b:Lokio/Pipe;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lokio/Pipe;->c:Z

    .line 101
    iget-object v2, p0, Lokio/Pipe$PipeSink;->b:Lokio/Pipe;

    iget-object v2, v2, Lokio/Pipe;->b:Lokio/Buffer;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lokio/Pipe$PipeSink;->b:Lokio/Pipe;

    iget-object v1, v0, Lokio/Pipe;->b:Lokio/Buffer;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v0, p0, Lokio/Pipe$PipeSink;->b:Lokio/Pipe;

    iget-boolean v0, v0, Lokio/Pipe;->c:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 89
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokio/Pipe$PipeSink;->a:Lokio/Timeout;

    iget-object v2, p0, Lokio/Pipe$PipeSink;->b:Lokio/Pipe;

    iget-object v2, v2, Lokio/Pipe;->b:Lokio/Buffer;

    invoke-virtual {v0, v2}, Lokio/Timeout;->a(Ljava/lang/Object;)V

    .line 87
    :cond_1
    iget-object v0, p0, Lokio/Pipe$PipeSink;->b:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->b:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 88
    iget-object v0, p0, Lokio/Pipe$PipeSink;->b:Lokio/Pipe;

    iget-boolean v0, v0, Lokio/Pipe;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    return-void
.end method
