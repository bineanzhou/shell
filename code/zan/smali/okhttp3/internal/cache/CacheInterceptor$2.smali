.class Lokhttp3/internal/cache/CacheInterceptor$2;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/cache/CacheInterceptor;->a(Lokhttp3/internal/cache/CacheRequest;Lokhttp3/Response;)Lokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lokio/BufferedSource;

.field final synthetic c:Lokhttp3/internal/cache/CacheRequest;

.field final synthetic d:Lokio/BufferedSink;

.field final synthetic e:Lokhttp3/internal/cache/CacheInterceptor;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/CacheInterceptor;Lokio/BufferedSource;Lokhttp3/internal/cache/CacheRequest;Lokio/BufferedSink;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->e:Lokhttp3/internal/cache/CacheInterceptor;

    iput-object p2, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->b:Lokio/BufferedSource;

    iput-object p3, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->c:Lokhttp3/internal/cache/CacheRequest;

    iput-object p4, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->d:Lokio/BufferedSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    const-wide/16 v0, -0x1

    const/4 v3, 0x1

    .line 197
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->b:Lokio/BufferedSource;

    invoke-interface {v2, p1, p2, p3}, Lokio/BufferedSource;->a(Lokio/Buffer;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 206
    cmp-long v2, v4, v0

    if-nez v2, :cond_2

    .line 207
    iget-boolean v2, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->a:Z

    if-nez v2, :cond_0

    .line 208
    iput-boolean v3, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->a:Z

    .line 209
    iget-object v2, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->d:Lokio/BufferedSink;

    invoke-interface {v2}, Lokio/BufferedSink;->close()V

    :cond_0
    move-wide v4, v0

    .line 216
    :goto_0
    return-wide v4

    .line 198
    :catch_0
    move-exception v0

    .line 199
    iget-boolean v1, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->a:Z

    if-nez v1, :cond_1

    .line 200
    iput-boolean v3, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->a:Z

    .line 201
    iget-object v1, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->c:Lokhttp3/internal/cache/CacheRequest;

    invoke-interface {v1}, Lokhttp3/internal/cache/CacheRequest;->a()V

    .line 203
    :cond_1
    throw v0

    .line 214
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->d:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->c()Lokio/Buffer;

    move-result-object v1

    invoke-virtual {p1}, Lokio/Buffer;->b()J

    move-result-wide v2

    sub-long/2addr v2, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->a(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 215
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->d:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->F()Lokio/BufferedSink;

    goto :goto_0
.end method

.method public a()Lokio/Timeout;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->a()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    iget-boolean v0, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->a:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 225
    invoke-static {p0, v0, v1}, Lokhttp3/internal/Util;->a(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->a:Z

    .line 227
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->c:Lokhttp3/internal/cache/CacheRequest;

    invoke-interface {v0}, Lokhttp3/internal/cache/CacheRequest;->a()V

    .line 229
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    .line 230
    return-void
.end method
