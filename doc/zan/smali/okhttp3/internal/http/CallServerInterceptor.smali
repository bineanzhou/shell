.class public final Lokhttp3/internal/http/CallServerInterceptor;
.super Ljava/lang/Object;
.source "CallServerInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p1, p0, Lokhttp3/internal/http/CallServerInterceptor;->a:Z

    .line 34
    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    move-object v0, p1

    check-cast v0, Lokhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {v0}, Lokhttp3/internal/http/RealInterceptorChain;->d()Lokhttp3/internal/http/HttpStream;

    move-result-object v1

    move-object v0, p1

    .line 38
    check-cast v0, Lokhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {v0}, Lokhttp3/internal/http/RealInterceptorChain;->c()Lokhttp3/internal/connection/StreamAllocation;

    move-result-object v2

    .line 39
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->a()Lokhttp3/Request;

    move-result-object v0

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 42
    invoke-interface {v1, v0}, Lokhttp3/internal/http/HttpStream;->a(Lokhttp3/Request;)V

    .line 44
    invoke-virtual {v0}, Lokhttp3/Request;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lokhttp3/internal/http/HttpMethod;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lokhttp3/Request;->d()Lokhttp3/RequestBody;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {v0}, Lokhttp3/Request;->d()Lokhttp3/RequestBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/RequestBody;->c()J

    move-result-wide v6

    invoke-interface {v1, v0, v6, v7}, Lokhttp3/internal/http/HttpStream;->a(Lokhttp3/Request;J)Lokio/Sink;

    move-result-object v3

    .line 46
    invoke-static {v3}, Lokio/Okio;->a(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v3

    .line 47
    invoke-virtual {v0}, Lokhttp3/Request;->d()Lokhttp3/RequestBody;

    move-result-object v6

    invoke-virtual {v6, v3}, Lokhttp3/RequestBody;->a(Lokio/BufferedSink;)V

    .line 48
    invoke-interface {v3}, Lokio/BufferedSink;->close()V

    .line 51
    :cond_0
    invoke-interface {v1}, Lokhttp3/internal/http/HttpStream;->d()V

    .line 53
    invoke-interface {v1}, Lokhttp3/internal/http/HttpStream;->b()Lokhttp3/Response$Builder;

    move-result-object v3

    .line 54
    invoke-virtual {v3, v0}, Lokhttp3/Response$Builder;->a(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v2}, Lokhttp3/internal/connection/StreamAllocation;->b()Lokhttp3/internal/connection/RealConnection;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/internal/connection/RealConnection;->c()Lokhttp3/Handshake;

    move-result-object v3

    invoke-virtual {v0, v3}, Lokhttp3/Response$Builder;->a(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v4, v5}, Lokhttp3/Response$Builder;->a(J)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lokhttp3/Response$Builder;->b(J)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object v0

    .line 60
    iget-boolean v3, p0, Lokhttp3/internal/http/CallServerInterceptor;->a:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lokhttp3/Response;->c()I

    move-result v3

    const/16 v4, 0x65

    if-eq v3, v4, :cond_2

    .line 61
    :cond_1
    invoke-virtual {v0}, Lokhttp3/Response;->i()Lokhttp3/Response$Builder;

    move-result-object v3

    .line 62
    invoke-interface {v1, v0}, Lokhttp3/internal/http/HttpStream;->a(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v3, v0}, Lokhttp3/Response$Builder;->a(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object v0

    .line 66
    :cond_2
    const-string v1, "close"

    invoke-virtual {v0}, Lokhttp3/Response;->a()Lokhttp3/Request;

    move-result-object v3

    const-string v4, "Connection"

    invoke-virtual {v3, v4}, Lokhttp3/Request;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "close"

    const-string v3, "Connection"

    .line 67
    invoke-virtual {v0, v3}, Lokhttp3/Response;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 68
    :cond_3
    invoke-virtual {v2}, Lokhttp3/internal/connection/StreamAllocation;->d()V

    .line 71
    :cond_4
    invoke-virtual {v0}, Lokhttp3/Response;->c()I

    move-result v1

    .line 72
    const/16 v2, 0xcc

    if-eq v1, v2, :cond_5

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_6

    :cond_5
    invoke-virtual {v0}, Lokhttp3/Response;->h()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    .line 73
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " had non-zero Content-Length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 74
    invoke-virtual {v0}, Lokhttp3/Response;->h()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->b()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_6
    return-object v0
.end method
