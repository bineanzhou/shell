.class Lokio/AsyncTimeout$1;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/AsyncTimeout;->a(Lokio/Sink;)Lokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokio/Sink;

.field final synthetic b:Lokio/AsyncTimeout;


# direct methods
.method constructor <init>(Lokio/AsyncTimeout;Lokio/Sink;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lokio/AsyncTimeout$1;->b:Lokio/AsyncTimeout;

    iput-object p2, p0, Lokio/AsyncTimeout$1;->a:Lokio/Sink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lokio/Timeout;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lokio/AsyncTimeout$1;->b:Lokio/AsyncTimeout;

    return-object v0
.end method

.method public a_(Lokio/Buffer;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 162
    iget-wide v0, p1, Lokio/Buffer;->c:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->a(JJJ)V

    move-wide v4, p2

    .line 164
    :goto_0
    cmp-long v0, v4, v2

    if-lez v0, :cond_2

    .line 167
    iget-object v0, p1, Lokio/Buffer;->b:Lokio/Segment;

    move-object v6, v0

    move-wide v0, v2

    :goto_1
    const-wide/32 v8, 0x10000

    cmp-long v7, v0, v8

    if-gez v7, :cond_0

    .line 168
    iget-object v7, p1, Lokio/Buffer;->b:Lokio/Segment;

    iget v7, v7, Lokio/Segment;->e:I

    iget-object v8, p1, Lokio/Buffer;->b:Lokio/Segment;

    iget v8, v8, Lokio/Segment;->d:I

    sub-int/2addr v7, v8

    .line 169
    int-to-long v8, v7

    add-long/2addr v8, v0

    .line 170
    cmp-long v0, v8, v4

    if-ltz v0, :cond_1

    move-wide v0, v4

    .line 177
    :cond_0
    const/4 v6, 0x0

    .line 178
    iget-object v7, p0, Lokio/AsyncTimeout$1;->b:Lokio/AsyncTimeout;

    invoke-virtual {v7}, Lokio/AsyncTimeout;->c()V

    .line 180
    :try_start_0
    iget-object v7, p0, Lokio/AsyncTimeout$1;->a:Lokio/Sink;

    invoke-interface {v7, p1, v0, v1}, Lokio/Sink;->a_(Lokio/Buffer;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    sub-long/2addr v4, v0

    .line 182
    const/4 v0, 0x1

    .line 186
    iget-object v1, p0, Lokio/AsyncTimeout$1;->b:Lokio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokio/AsyncTimeout;->a(Z)V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, v6, Lokio/Segment;->h:Lokio/Segment;

    move-object v6, v0

    move-wide v0, v8

    goto :goto_1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    :try_start_1
    iget-object v1, p0, Lokio/AsyncTimeout$1;->b:Lokio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokio/AsyncTimeout;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lokio/AsyncTimeout$1;->b:Lokio/AsyncTimeout;

    invoke-virtual {v1, v6}, Lokio/AsyncTimeout;->a(Z)V

    throw v0

    .line 189
    :cond_2
    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    const/4 v1, 0x0

    .line 206
    iget-object v0, p0, Lokio/AsyncTimeout$1;->b:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->c()V

    .line 208
    :try_start_0
    iget-object v0, p0, Lokio/AsyncTimeout$1;->a:Lokio/Sink;

    invoke-interface {v0}, Lokio/Sink;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    const/4 v0, 0x1

    .line 213
    iget-object v1, p0, Lokio/AsyncTimeout$1;->b:Lokio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokio/AsyncTimeout;->a(Z)V

    .line 215
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    :try_start_1
    iget-object v2, p0, Lokio/AsyncTimeout$1;->b:Lokio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lokio/AsyncTimeout;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lokio/AsyncTimeout$1;->b:Lokio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lokio/AsyncTimeout;->a(Z)V

    throw v0
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lokio/AsyncTimeout$1;->b:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->c()V

    .line 195
    :try_start_0
    iget-object v0, p0, Lokio/AsyncTimeout$1;->a:Lokio/Sink;

    invoke-interface {v0}, Lokio/Sink;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    const/4 v0, 0x1

    .line 200
    iget-object v1, p0, Lokio/AsyncTimeout$1;->b:Lokio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokio/AsyncTimeout;->a(Z)V

    .line 202
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    :try_start_1
    iget-object v2, p0, Lokio/AsyncTimeout$1;->b:Lokio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lokio/AsyncTimeout;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lokio/AsyncTimeout$1;->b:Lokio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lokio/AsyncTimeout;->a(Z)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/AsyncTimeout$1;->a:Lokio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
