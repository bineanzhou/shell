.class Lokhttp3/internal/http/Http1xStream$ChunkedSource;
.super Lokhttp3/internal/http/Http1xStream$AbstractSource;
.source "Http1xStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http/Http1xStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChunkedSource"
.end annotation


# static fields
.field private static final e:J = -0x1L


# instance fields
.field final synthetic d:Lokhttp3/internal/http/Http1xStream;

.field private final f:Lokhttp3/HttpUrl;

.field private g:J

.field private h:Z


# direct methods
.method constructor <init>(Lokhttp3/internal/http/Http1xStream;Lokhttp3/HttpUrl;)V
    .locals 2

    .prologue
    .line 408
    iput-object p1, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->d:Lokhttp3/internal/http/Http1xStream;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/http/Http1xStream$AbstractSource;-><init>(Lokhttp3/internal/http/Http1xStream;Lokhttp3/internal/http/Http1xStream$1;)V

    .line 405
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->g:J

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->h:Z

    .line 409
    iput-object p2, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->f:Lokhttp3/HttpUrl;

    .line 410
    return-void
.end method

.method private b()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 433
    iget-wide v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->d:Lokhttp3/internal/http/Http1xStream;

    invoke-static {v0}, Lokhttp3/internal/http/Http1xStream;->b(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSource;->v()Ljava/lang/String;

    .line 437
    :cond_0
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->d:Lokhttp3/internal/http/Http1xStream;

    invoke-static {v0}, Lokhttp3/internal/http/Http1xStream;->b(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSource;->r()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->g:J

    .line 438
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->d:Lokhttp3/internal/http/Http1xStream;

    invoke-static {v0}, Lokhttp3/internal/http/Http1xStream;->b(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSource;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 439
    iget-wide v2, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->g:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 440
    :cond_1
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected chunk size and optional extensions but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->g:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 446
    :cond_2
    iget-wide v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->g:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    .line 447
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->h:Z

    .line 448
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->d:Lokhttp3/internal/http/Http1xStream;

    invoke-static {v0}, Lokhttp3/internal/http/Http1xStream;->e(Lokhttp3/internal/http/Http1xStream;)Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->f()Lokhttp3/CookieJar;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->f:Lokhttp3/HttpUrl;

    iget-object v2, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->d:Lokhttp3/internal/http/Http1xStream;

    invoke-virtual {v2}, Lokhttp3/internal/http/Http1xStream;->f()Lokhttp3/Headers;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lokhttp3/internal/http/HttpHeaders;->a(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V

    .line 449
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->a(Z)V

    .line 451
    :cond_3
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
    const-wide/16 v4, 0x0

    const-wide/16 v0, -0x1

    .line 413
    cmp-long v2, p2, v4

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_0
    iget-boolean v2, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->b:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_1
    iget-boolean v2, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->h:Z

    if-nez v2, :cond_3

    .line 428
    :cond_2
    :goto_0
    return-wide v0

    .line 417
    :cond_3
    iget-wide v2, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->g:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->g:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_5

    .line 418
    :cond_4
    invoke-direct {p0}, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->b()V

    .line 419
    iget-boolean v2, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->h:Z

    if-eqz v2, :cond_2

    .line 422
    :cond_5
    iget-object v2, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->d:Lokhttp3/internal/http/Http1xStream;

    invoke-static {v2}, Lokhttp3/internal/http/Http1xStream;->b(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSource;

    move-result-object v2

    iget-wide v4, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->g:J

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v2, p1, v4, v5}, Lokio/BufferedSource;->a(Lokio/Buffer;J)J

    move-result-wide v2

    .line 423
    cmp-long v0, v2, v0

    if-nez v0, :cond_6

    .line 424
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->a(Z)V

    .line 425
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_6
    iget-wide v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->g:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->g:J

    move-wide v0, v2

    .line 428
    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    iget-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->b:Z

    if-eqz v0, :cond_0

    .line 459
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->h:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lokhttp3/internal/Util;->a(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 456
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->a(Z)V

    .line 458
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->b:Z

    goto :goto_0
.end method
