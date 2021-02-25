.class final Lokio/Pipe$PipeSource;
.super Ljava/lang/Object;
.source "Pipe.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Pipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PipeSource"
.end annotation


# instance fields
.field final a:Lokio/Timeout;

.field final synthetic b:Lokio/Pipe;


# direct methods
.method constructor <init>(Lokio/Pipe;)V
    .locals 1

    .prologue
    .line 111
    iput-object p1, p0, Lokio/Pipe$PipeSource;->b:Lokio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lokio/Timeout;

    invoke-direct {v0}, Lokio/Timeout;-><init>()V

    iput-object v0, p0, Lokio/Pipe$PipeSource;->a:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public a(Lokio/Buffer;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lokio/Pipe$PipeSource;->b:Lokio/Pipe;

    iget-object v2, v0, Lokio/Pipe;->b:Lokio/Buffer;

    monitor-enter v2

    .line 116
    :try_start_0
    iget-object v0, p0, Lokio/Pipe$PipeSource;->b:Lokio/Pipe;

    iget-boolean v0, v0, Lokio/Pipe;->d:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 120
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokio/Pipe$PipeSource;->a:Lokio/Timeout;

    iget-object v1, p0, Lokio/Pipe$PipeSource;->b:Lokio/Pipe;

    iget-object v1, v1, Lokio/Pipe;->b:Lokio/Buffer;

    invoke-virtual {v0, v1}, Lokio/Timeout;->a(Ljava/lang/Object;)V

    .line 118
    :cond_1
    iget-object v0, p0, Lokio/Pipe$PipeSource;->b:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->b:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->b()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 119
    iget-object v0, p0, Lokio/Pipe$PipeSource;->b:Lokio/Pipe;

    iget-boolean v0, v0, Lokio/Pipe;->c:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    monitor-exit v2

    .line 125
    :goto_0
    return-wide v0

    .line 123
    :cond_2
    iget-object v0, p0, Lokio/Pipe$PipeSource;->b:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->b:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->a(Lokio/Buffer;J)J

    move-result-wide v0

    .line 124
    iget-object v3, p0, Lokio/Pipe$PipeSource;->b:Lokio/Pipe;

    iget-object v3, v3, Lokio/Pipe;->b:Lokio/Buffer;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 125
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a()Lokio/Timeout;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lokio/Pipe$PipeSource;->a:Lokio/Timeout;

    return-object v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lokio/Pipe$PipeSource;->b:Lokio/Pipe;

    iget-object v1, v0, Lokio/Pipe;->b:Lokio/Buffer;

    monitor-enter v1

    .line 131
    :try_start_0
    iget-object v0, p0, Lokio/Pipe$PipeSource;->b:Lokio/Pipe;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lokio/Pipe;->d:Z

    .line 132
    iget-object v0, p0, Lokio/Pipe$PipeSource;->b:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->b:Lokio/Buffer;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 133
    monitor-exit v1

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
