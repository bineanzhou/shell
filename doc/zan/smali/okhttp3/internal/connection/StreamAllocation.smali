.class public final Lokhttp3/internal/connection/StreamAllocation;
.super Ljava/lang/Object;
.source "StreamAllocation.java"


# instance fields
.field public final a:Lokhttp3/Address;

.field private b:Lokhttp3/Route;

.field private final c:Lokhttp3/ConnectionPool;

.field private final d:Lokhttp3/internal/connection/RouteSelector;

.field private e:I

.field private f:Lokhttp3/internal/connection/RealConnection;

.field private g:Z

.field private h:Z

.field private i:Lokhttp3/internal/http/HttpStream;


# direct methods
.method public constructor <init>(Lokhttp3/ConnectionPool;Lokhttp3/Address;)V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->c:Lokhttp3/ConnectionPool;

    .line 87
    iput-object p2, p0, Lokhttp3/internal/connection/StreamAllocation;->a:Lokhttp3/Address;

    .line 88
    new-instance v0, Lokhttp3/internal/connection/RouteSelector;

    invoke-direct {p0}, Lokhttp3/internal/connection/StreamAllocation;->g()Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lokhttp3/internal/connection/RouteSelector;-><init>(Lokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;)V

    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->d:Lokhttp3/internal/connection/RouteSelector;

    .line 89
    return-void
.end method

.method private a(IIIZ)Lokhttp3/internal/connection/RealConnection;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->c:Lokhttp3/ConnectionPool;

    monitor-enter v1

    .line 158
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/connection/StreamAllocation;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "released"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 159
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->i:Lokhttp3/internal/http/HttpStream;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "stream != null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    iget-boolean v0, p0, Lokhttp3/internal/connection/StreamAllocation;->h:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->f:Lokhttp3/internal/connection/RealConnection;

    .line 163
    if-eqz v0, :cond_3

    iget-boolean v2, v0, Lokhttp3/internal/connection/RealConnection;->h:Z

    if-nez v2, :cond_3

    .line 164
    monitor-exit v1

    .line 197
    :goto_0
    return-object v0

    .line 168
    :cond_3
    sget-object v0, Lokhttp3/internal/Internal;->a:Lokhttp3/internal/Internal;

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->c:Lokhttp3/ConnectionPool;

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->a:Lokhttp3/Address;

    invoke-virtual {v0, v2, v3, p0}, Lokhttp3/internal/Internal;->a(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;)Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_4

    .line 170
    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->f:Lokhttp3/internal/connection/RealConnection;

    .line 171
    monitor-exit v1

    goto :goto_0

    .line 174
    :cond_4
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->b:Lokhttp3/Route;

    .line 175
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    if-nez v0, :cond_6

    .line 178
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->d:Lokhttp3/internal/connection/RouteSelector;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector;->b()Lokhttp3/Route;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->c:Lokhttp3/ConnectionPool;

    monitor-enter v1

    .line 180
    :try_start_2
    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->b:Lokhttp3/Route;

    .line 181
    const/4 v2, 0x0

    iput v2, p0, Lokhttp3/internal/connection/StreamAllocation;->e:I

    .line 182
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, v0

    .line 184
    :goto_1
    new-instance v0, Lokhttp3/internal/connection/RealConnection;

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/RealConnection;-><init>(Lokhttp3/Route;)V

    .line 185
    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/StreamAllocation;->a(Lokhttp3/internal/connection/RealConnection;)V

    .line 187
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->c:Lokhttp3/ConnectionPool;

    monitor-enter v1

    .line 188
    :try_start_3
    sget-object v2, Lokhttp3/internal/Internal;->a:Lokhttp3/internal/Internal;

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->c:Lokhttp3/ConnectionPool;

    invoke-virtual {v2, v3, v0}, Lokhttp3/internal/Internal;->b(Lokhttp3/ConnectionPool;Lokhttp3/internal/connection/RealConnection;)V

    .line 189
    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->f:Lokhttp3/internal/connection/RealConnection;

    .line 190
    iget-boolean v2, p0, Lokhttp3/internal/connection/StreamAllocation;->h:Z

    if-eqz v2, :cond_5

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 182
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 191
    :cond_5
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 193
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->a:Lokhttp3/Address;

    invoke-virtual {v1}, Lokhttp3/Address;->f()Ljava/util/List;

    move-result-object v4

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/connection/RealConnection;->a(IIILjava/util/List;Z)V

    .line 195
    invoke-direct {p0}, Lokhttp3/internal/connection/StreamAllocation;->g()Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->a()Lokhttp3/Route;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/internal/connection/RouteDatabase;->b(Lokhttp3/Route;)V

    goto :goto_0

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method

.method private a(IIIZZ)Lokhttp3/internal/connection/RealConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/internal/connection/StreamAllocation;->a(IIIZ)Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->c:Lokhttp3/ConnectionPool;

    monitor-enter v1

    .line 134
    :try_start_0
    iget v2, v0, Lokhttp3/internal/connection/RealConnection;->c:I

    if-nez v2, :cond_1

    .line 135
    monitor-exit v1

    .line 146
    :cond_0
    return-object v0

    .line 137
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-virtual {v0, p5}, Lokhttp3/internal/connection/RealConnection;->a(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lokhttp3/internal/connection/StreamAllocation;->d()V

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(ZZZ)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 240
    .line 241
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->c:Lokhttp3/ConnectionPool;

    monitor-enter v1

    .line 242
    if-eqz p3, :cond_0

    .line 243
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->i:Lokhttp3/internal/http/HttpStream;

    .line 245
    :cond_0
    if-eqz p2, :cond_1

    .line 246
    const/4 v2, 0x1

    iput-boolean v2, p0, Lokhttp3/internal/connection/StreamAllocation;->g:Z

    .line 248
    :cond_1
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->f:Lokhttp3/internal/connection/RealConnection;

    if-eqz v2, :cond_5

    .line 249
    if-eqz p1, :cond_2

    .line 250
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->f:Lokhttp3/internal/connection/RealConnection;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lokhttp3/internal/connection/RealConnection;->h:Z

    .line 252
    :cond_2
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->i:Lokhttp3/internal/http/HttpStream;

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lokhttp3/internal/connection/StreamAllocation;->g:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->f:Lokhttp3/internal/connection/RealConnection;

    iget-boolean v2, v2, Lokhttp3/internal/connection/RealConnection;->h:Z

    if-eqz v2, :cond_5

    .line 253
    :cond_3
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->f:Lokhttp3/internal/connection/RealConnection;

    invoke-direct {p0, v2}, Lokhttp3/internal/connection/StreamAllocation;->b(Lokhttp3/internal/connection/RealConnection;)V

    .line 254
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->f:Lokhttp3/internal/connection/RealConnection;

    iget-object v2, v2, Lokhttp3/internal/connection/RealConnection;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 255
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->f:Lokhttp3/internal/connection/RealConnection;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v2, Lokhttp3/internal/connection/RealConnection;->i:J

    .line 256
    sget-object v2, Lokhttp3/internal/Internal;->a:Lokhttp3/internal/Internal;

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->c:Lokhttp3/ConnectionPool;

    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->f:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v2, v3, v4}, Lokhttp3/internal/Internal;->a(Lokhttp3/ConnectionPool;Lokhttp3/internal/connection/RealConnection;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 257
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->f:Lokhttp3/internal/connection/RealConnection;

    .line 260
    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->f:Lokhttp3/internal/connection/RealConnection;

    .line 263
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    if-eqz v0, :cond_6

    .line 265
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->b()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->a(Ljava/net/Socket;)V

    .line 267
    :cond_6
    return-void

    .line 263
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Lokhttp3/internal/connection/RealConnection;)V
    .locals 3

    .prologue
    .line 325
    const/4 v0, 0x0

    iget-object v1, p1, Lokhttp3/internal/connection/RealConnection;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 326
    iget-object v0, p1, Lokhttp3/internal/connection/RealConnection;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 327
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 328
    iget-object v0, p1, Lokhttp3/internal/connection/RealConnection;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 329
    return-void

    .line 325
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 332
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private g()Lokhttp3/internal/connection/RouteDatabase;
    .locals 2

    .prologue
    .line 219
    sget-object v0, Lokhttp3/internal/Internal;->a:Lokhttp3/internal/Internal;

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->c:Lokhttp3/ConnectionPool;

    invoke-virtual {v0, v1}, Lokhttp3/internal/Internal;->a(Lokhttp3/ConnectionPool;)Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lokhttp3/internal/http/HttpStream;
    .locals 2

    .prologue
    .line 213
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->c:Lokhttp3/ConnectionPool;

    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->i:Lokhttp3/internal/http/HttpStream;

    monitor-exit v1

    return-object v0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lokhttp3/OkHttpClient;Z)Lokhttp3/internal/http/HttpStream;
    .locals 6

    .prologue
    .line 92
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->a()I

    move-result v1

    .line 93
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->b()I

    move-result v2

    .line 94
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->c()I

    move-result v3

    .line 95
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->s()Z

    move-result v4

    move-object v0, p0

    move v5, p2

    .line 98
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/connection/StreamAllocation;->a(IIIZZ)Lokhttp3/internal/connection/RealConnection;

    move-result-object v1

    .line 102
    iget-object v0, v1, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/internal/framed/FramedConnection;

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Lokhttp3/internal/http/Http2xStream;

    iget-object v1, v1, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/internal/framed/FramedConnection;

    invoke-direct {v0, p1, p0, v1}, Lokhttp3/internal/http/Http2xStream;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/framed/FramedConnection;)V

    .line 112
    :goto_0
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->c:Lokhttp3/ConnectionPool;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :try_start_1
    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->i:Lokhttp3/internal/http/HttpStream;

    .line 114
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 105
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->b()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 106
    iget-object v0, v1, Lokhttp3/internal/connection/RealConnection;->d:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->a()Lokio/Timeout;

    move-result-object v0

    int-to-long v4, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v2}, Lokio/Timeout;->a(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 107
    iget-object v0, v1, Lokhttp3/internal/connection/RealConnection;->e:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->a()Lokio/Timeout;

    move-result-object v0

    int-to-long v2, v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lokio/Timeout;->a(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 108
    new-instance v0, Lokhttp3/internal/http/Http1xStream;

    iget-object v2, v1, Lokhttp3/internal/connection/RealConnection;->d:Lokio/BufferedSource;

    iget-object v1, v1, Lokhttp3/internal/connection/RealConnection;->e:Lokio/BufferedSink;

    invoke-direct {v0, p1, p0, v2, v1}, Lokhttp3/internal/http/Http1xStream;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/StreamAllocation;Lokio/BufferedSource;Lokio/BufferedSink;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    new-instance v1, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v1, v0}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 115
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public a(Ljava/io/IOException;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 285
    .line 287
    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->c:Lokhttp3/ConnectionPool;

    monitor-enter v3

    .line 288
    :try_start_0
    instance-of v0, p1, Lokhttp3/internal/framed/StreamResetException;

    if-eqz v0, :cond_3

    .line 289
    check-cast p1, Lokhttp3/internal/framed/StreamResetException;

    .line 290
    iget-object v0, p1, Lokhttp3/internal/framed/StreamResetException;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    sget-object v4, Lokhttp3/internal/framed/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/framed/ErrorCode;

    if-ne v0, v4, :cond_0

    .line 291
    iget v0, p0, Lokhttp3/internal/connection/StreamAllocation;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/connection/StreamAllocation;->e:I

    .line 295
    :cond_0
    iget-object v0, p1, Lokhttp3/internal/framed/StreamResetException;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    sget-object v4, Lokhttp3/internal/framed/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/framed/ErrorCode;

    if-ne v0, v4, :cond_1

    iget v0, p0, Lokhttp3/internal/connection/StreamAllocation;->e:I

    if-le v0, v2, :cond_5

    .line 297
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->b:Lokhttp3/Route;

    :cond_2
    :goto_0
    move v0, v2

    .line 310
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    invoke-direct {p0, v0, v1, v2}, Lokhttp3/internal/connection/StreamAllocation;->a(ZZZ)V

    .line 313
    return-void

    .line 299
    :cond_3
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->f:Lokhttp3/internal/connection/RealConnection;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->f:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->f()Z

    move-result v0

    if-nez v0, :cond_5

    .line 303
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->f:Lokhttp3/internal/connection/RealConnection;

    iget v0, v0, Lokhttp3/internal/connection/RealConnection;->c:I

    if-nez v0, :cond_2

    .line 304
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->b:Lokhttp3/Route;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 305
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->d:Lokhttp3/internal/connection/RouteSelector;

    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->b:Lokhttp3/Route;

    invoke-virtual {v0, v4, p1}, Lokhttp3/internal/connection/RouteSelector;->a(Lokhttp3/Route;Ljava/io/IOException;)V

    .line 307
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->b:Lokhttp3/Route;

    goto :goto_0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public a(Lokhttp3/internal/connection/RealConnection;)V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p1, Lokhttp3/internal/connection/RealConnection;->g:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    return-void
.end method

.method public a(ZLokhttp3/internal/http/HttpStream;)V
    .locals 4

    .prologue
    .line 201
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->c:Lokhttp3/ConnectionPool;

    monitor-enter v1

    .line 202
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->i:Lokhttp3/internal/http/HttpStream;

    if-eq p2, v0, :cond_1

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->i:Lokhttp3/internal/http/HttpStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 205
    :cond_1
    if-nez p1, :cond_2

    .line 206
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->f:Lokhttp3/internal/connection/RealConnection;

    iget v2, v0, Lokhttp3/internal/connection/RealConnection;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lokhttp3/internal/connection/RealConnection;->c:I

    .line 208
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lokhttp3/internal/connection/StreamAllocation;->a(ZZZ)V

    .line 210
    return-void
.end method

.method public declared-synchronized b()Lokhttp3/internal/connection/RealConnection;
    .locals 1

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->f:Lokhttp3/internal/connection/RealConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 227
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v1}, Lokhttp3/internal/connection/StreamAllocation;->a(ZZZ)V

    .line 228
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 232
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Lokhttp3/internal/connection/StreamAllocation;->a(ZZZ)V

    .line 233
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 272
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->c:Lokhttp3/ConnectionPool;

    monitor-enter v1

    .line 273
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lokhttp3/internal/connection/StreamAllocation;->h:Z

    .line 274
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->i:Lokhttp3/internal/http/HttpStream;

    .line 275
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->f:Lokhttp3/internal/connection/RealConnection;

    .line 276
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    if-eqz v0, :cond_1

    .line 278
    invoke-interface {v0}, Lokhttp3/internal/http/HttpStream;->a()V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 276
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 279
    :cond_1
    if-eqz v2, :cond_0

    .line 280
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealConnection;->e()V

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->b:Lokhttp3/Route;

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->d:Lokhttp3/internal/connection/RouteSelector;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->a:Lokhttp3/Address;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
