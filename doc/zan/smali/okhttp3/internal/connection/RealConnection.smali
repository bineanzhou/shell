.class public final Lokhttp3/internal/connection/RealConnection;
.super Lokhttp3/internal/framed/FramedConnection$Listener;
.source "RealConnection.java"

# interfaces
.implements Lokhttp3/Connection;


# instance fields
.field public a:Ljava/net/Socket;

.field public volatile b:Lokhttp3/internal/framed/FramedConnection;

.field public c:I

.field public d:Lokio/BufferedSource;

.field public e:Lokio/BufferedSink;

.field public f:I

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/Reference",
            "<",
            "Lokhttp3/internal/connection/StreamAllocation;",
            ">;>;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:J

.field private final k:Lokhttp3/Route;

.field private l:Ljava/net/Socket;

.field private m:Lokhttp3/Handshake;

.field private n:Lokhttp3/Protocol;


# direct methods
.method public constructor <init>(Lokhttp3/Route;)V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Lokhttp3/internal/framed/FramedConnection$Listener;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->g:Ljava/util/List;

    .line 83
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lokhttp3/internal/connection/RealConnection;->i:J

    .line 86
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->k:Lokhttp3/Route;

    .line 87
    return-void
.end method

.method private a(IILokhttp3/Request;Lokhttp3/HttpUrl;)Lokhttp3/Request;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p4, v1}, Lokhttp3/internal/Util;->a(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HTTP/1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 291
    :cond_0
    new-instance v4, Lokhttp3/internal/http/Http1xStream;

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->d:Lokio/BufferedSource;

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->e:Lokio/BufferedSink;

    invoke-direct {v4, v2, v2, v0, v1}, Lokhttp3/internal/http/Http1xStream;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/StreamAllocation;Lokio/BufferedSource;Lokio/BufferedSink;)V

    .line 292
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->d:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->a()Lokio/Timeout;

    move-result-object v0

    int-to-long v6, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v1}, Lokio/Timeout;->a(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 293
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->e:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->a()Lokio/Timeout;

    move-result-object v0

    int-to-long v6, p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v1}, Lokio/Timeout;->a(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 294
    invoke-virtual {p3}, Lokhttp3/Request;->c()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lokhttp3/internal/http/Http1xStream;->a(Lokhttp3/Headers;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v4}, Lokhttp3/internal/http/Http1xStream;->d()V

    .line 296
    invoke-virtual {v4}, Lokhttp3/internal/http/Http1xStream;->e()Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lokhttp3/Response$Builder;->a(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object v5

    .line 299
    invoke-static {v5}, Lokhttp3/internal/http/HttpHeaders;->a(Lokhttp3/Response;)J

    move-result-wide v0

    .line 300
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_1

    .line 301
    const-wide/16 v0, 0x0

    .line 303
    :cond_1
    invoke-virtual {v4, v0, v1}, Lokhttp3/internal/http/Http1xStream;->b(J)Lokio/Source;

    move-result-object v0

    .line 304
    const v1, 0x7fffffff

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v4}, Lokhttp3/internal/Util;->b(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    .line 305
    invoke-interface {v0}, Lokio/Source;->close()V

    .line 307
    invoke-virtual {v5}, Lokhttp3/Response;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 328
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected response code for CONNECT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 329
    invoke-virtual {v5}, Lokhttp3/Response;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :sswitch_0
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->d:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->c()Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->e:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->c()Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->g()Z

    move-result v0

    if-nez v0, :cond_3

    .line 314
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TLS tunnel buffered too many bytes!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object p3, v2

    .line 323
    :goto_0
    return-object p3

    .line 319
    :sswitch_1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->k:Lokhttp3/Route;

    invoke-virtual {v0}, Lokhttp3/Route;->a()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Address;->d()Lokhttp3/Authenticator;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->k:Lokhttp3/Route;

    invoke-interface {v0, v1, v5}, Lokhttp3/Authenticator;->a(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p3

    .line 320
    if-nez p3, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to authenticate with proxy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_4
    const-string v0, "close"

    const-string v1, "Connection"

    invoke-virtual {v5, v1}, Lokhttp3/Response;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 307
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method private a(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->k:Lokhttp3/Route;

    invoke-virtual {v0}, Lokhttp3/Route;->b()Ljava/net/Proxy;

    move-result-object v1

    .line 179
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->k:Lokhttp3/Route;

    invoke-virtual {v0}, Lokhttp3/Route;->a()Lokhttp3/Address;

    move-result-object v0

    .line 181
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_1

    .line 182
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Address;->c()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->l:Ljava/net/Socket;

    .line 185
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->l:Ljava/net/Socket;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 187
    :try_start_0
    invoke-static {}, Lokhttp3/internal/platform/Platform;->b()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->l:Ljava/net/Socket;

    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->k:Lokhttp3/Route;

    invoke-virtual {v2}, Lokhttp3/Route;->c()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/internal/platform/Platform;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->l:Ljava/net/Socket;

    invoke-static {v0}, Lokio/Okio;->b(Ljava/net/Socket;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->a(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->d:Lokio/BufferedSource;

    .line 192
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->l:Ljava/net/Socket;

    invoke-static {v0}, Lokio/Okio;->a(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->a(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->e:Lokio/BufferedSink;

    .line 193
    return-void

    .line 182
    :cond_1
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    new-instance v0, Ljava/net/ConnectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->k:Lokhttp3/Route;

    invoke-virtual {v2}, Lokhttp3/Route;->c()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(IIILokhttp3/internal/connection/ConnectionSpecSelector;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 145
    invoke-direct {p0}, Lokhttp3/internal/connection/RealConnection;->g()Lokhttp3/Request;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v2

    .line 147
    const/4 v0, 0x0

    .line 148
    const/16 v3, 0x15

    .line 150
    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-le v0, v3, :cond_0

    .line 151
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many tunnel connections attempted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/connection/RealConnection;->a(II)V

    .line 155
    invoke-direct {p0, p2, p3, v1, v2}, Lokhttp3/internal/connection/RealConnection;->a(IILokhttp3/Request;Lokhttp3/HttpUrl;)Lokhttp3/Request;

    move-result-object v1

    .line 157
    if-nez v1, :cond_1

    .line 167
    invoke-direct {p0, p2, p3, p4}, Lokhttp3/internal/connection/RealConnection;->a(IILokhttp3/internal/connection/ConnectionSpecSelector;)V

    .line 168
    return-void

    .line 161
    :cond_1
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->l:Ljava/net/Socket;

    invoke-static {v4}, Lokhttp3/internal/Util;->a(Ljava/net/Socket;)V

    .line 162
    iput-object v5, p0, Lokhttp3/internal/connection/RealConnection;->l:Ljava/net/Socket;

    .line 163
    iput-object v5, p0, Lokhttp3/internal/connection/RealConnection;->e:Lokio/BufferedSink;

    .line 164
    iput-object v5, p0, Lokhttp3/internal/connection/RealConnection;->d:Lokio/BufferedSource;

    goto :goto_0
.end method

.method private a(IILokhttp3/internal/connection/ConnectionSpecSelector;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 197
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->k:Lokhttp3/Route;

    invoke-virtual {v0}, Lokhttp3/Route;->a()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Address;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 198
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/connection/RealConnection;->b(IILokhttp3/internal/connection/ConnectionSpecSelector;)V

    .line 204
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->n:Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->n:Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne v0, v1, :cond_2

    .line 205
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->a:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 207
    new-instance v0, Lokhttp3/internal/framed/FramedConnection$Builder;

    invoke-direct {v0, v2}, Lokhttp3/internal/framed/FramedConnection$Builder;-><init>(Z)V

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->a:Ljava/net/Socket;

    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->k:Lokhttp3/Route;

    .line 208
    invoke-virtual {v2}, Lokhttp3/Route;->a()Lokhttp3/Address;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->d:Lokio/BufferedSource;

    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->e:Lokio/BufferedSink;

    invoke-virtual {v0, v1, v2, v3, v4}, Lokhttp3/internal/framed/FramedConnection$Builder;->a(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lokhttp3/internal/framed/FramedConnection$Builder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->n:Lokhttp3/Protocol;

    .line 209
    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/FramedConnection$Builder;->a(Lokhttp3/Protocol;)Lokhttp3/internal/framed/FramedConnection$Builder;

    move-result-object v0

    .line 210
    invoke-virtual {v0, p0}, Lokhttp3/internal/framed/FramedConnection$Builder;->a(Lokhttp3/internal/framed/FramedConnection$Listener;)Lokhttp3/internal/framed/FramedConnection$Builder;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedConnection$Builder;->a()Lokhttp3/internal/framed/FramedConnection;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedConnection;->f()V

    .line 215
    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedConnection;->c()I

    move-result v1

    iput v1, p0, Lokhttp3/internal/connection/RealConnection;->f:I

    .line 216
    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/internal/framed/FramedConnection;

    .line 220
    :goto_1
    return-void

    .line 200
    :cond_1
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->n:Lokhttp3/Protocol;

    .line 201
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->l:Ljava/net/Socket;

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->a:Ljava/net/Socket;

    goto :goto_0

    .line 218
    :cond_2
    iput v2, p0, Lokhttp3/internal/connection/RealConnection;->f:I

    goto :goto_1
.end method

.method private b(IIILokhttp3/internal/connection/ConnectionSpecSelector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/connection/RealConnection;->a(II)V

    .line 174
    invoke-direct {p0, p2, p3, p4}, Lokhttp3/internal/connection/RealConnection;->a(IILokhttp3/internal/connection/ConnectionSpecSelector;)V

    .line 175
    return-void
.end method

.method private b(IILokhttp3/internal/connection/ConnectionSpecSelector;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->k:Lokhttp3/Route;

    invoke-virtual {v0}, Lokhttp3/Route;->a()Lokhttp3/Address;

    move-result-object v2

    .line 225
    invoke-virtual {v2}, Lokhttp3/Address;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 230
    :try_start_0
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->l:Ljava/net/Socket;

    .line 231
    invoke-virtual {v2}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->j()I

    move-result v5

    const/4 v6, 0x1

    .line 230
    invoke-virtual {v0, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :try_start_1
    invoke-virtual {p3, v0}, Lokhttp3/internal/connection/ConnectionSpecSelector;->a(Ljavax/net/ssl/SSLSocket;)Lokhttp3/ConnectionSpec;

    move-result-object v3

    .line 235
    invoke-virtual {v3}, Lokhttp3/ConnectionSpec;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    invoke-static {}, Lokhttp3/internal/platform/Platform;->b()Lokhttp3/internal/platform/Platform;

    move-result-object v4

    .line 237
    invoke-virtual {v2}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lokhttp3/Address;->e()Ljava/util/List;

    move-result-object v6

    .line 236
    invoke-virtual {v4, v0, v5, v6}, Lokhttp3/internal/platform/Platform;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 241
    :cond_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 242
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    invoke-static {v4}, Lokhttp3/Handshake;->a(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;

    move-result-object v4

    .line 245
    invoke-virtual {v2}, Lokhttp3/Address;->j()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    invoke-virtual {v2}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/HttpUrl;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 246
    invoke-virtual {v4}, Lokhttp3/Handshake;->c()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 247
    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hostname "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " not verified:\n    certificate: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 248
    invoke-static {v1}, Lokhttp3/CertificatePinner;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n    DN: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 249
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n    subjectAltNames: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 250
    invoke-static {v1}, Lokhttp3/internal/tls/OkHostnameVerifier;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 269
    :catch_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 270
    :goto_0
    :try_start_2
    invoke-static {v0}, Lokhttp3/internal/Util;->a(Ljava/lang/AssertionError;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 273
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_1

    .line 274
    invoke-static {}, Lokhttp3/internal/platform/Platform;->b()Lokhttp3/internal/platform/Platform;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/internal/platform/Platform;->b(Ljavax/net/ssl/SSLSocket;)V

    .line 277
    :cond_1
    invoke-static {v1}, Lokhttp3/internal/Util;->a(Ljava/net/Socket;)V

    throw v0

    .line 254
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Lokhttp3/Address;->k()Lokhttp3/CertificatePinner;

    move-result-object v5

    invoke-virtual {v2}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->i()Ljava/lang/String;

    move-result-object v2

    .line 255
    invoke-virtual {v4}, Lokhttp3/Handshake;->c()Ljava/util/List;

    move-result-object v6

    .line 254
    invoke-virtual {v5, v2, v6}, Lokhttp3/CertificatePinner;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 258
    invoke-virtual {v3}, Lokhttp3/ConnectionSpec;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 259
    invoke-static {}, Lokhttp3/internal/platform/Platform;->b()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/internal/platform/Platform;->a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v1

    .line 261
    :cond_3
    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->a:Ljava/net/Socket;

    .line 262
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->a:Ljava/net/Socket;

    invoke-static {v2}, Lokio/Okio;->b(Ljava/net/Socket;)Lokio/Source;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->a(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v2

    iput-object v2, p0, Lokhttp3/internal/connection/RealConnection;->d:Lokio/BufferedSource;

    .line 263
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->a:Ljava/net/Socket;

    invoke-static {v2}, Lokio/Okio;->a(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->a(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v2

    iput-object v2, p0, Lokhttp3/internal/connection/RealConnection;->e:Lokio/BufferedSink;

    .line 264
    iput-object v4, p0, Lokhttp3/internal/connection/RealConnection;->m:Lokhttp3/Handshake;

    .line 265
    if-eqz v1, :cond_5

    .line 266
    invoke-static {v1}, Lokhttp3/Protocol;->get(Ljava/lang/String;)Lokhttp3/Protocol;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lokhttp3/internal/connection/RealConnection;->n:Lokhttp3/Protocol;
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 273
    if-eqz v0, :cond_4

    .line 274
    invoke-static {}, Lokhttp3/internal/platform/Platform;->b()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/internal/platform/Platform;->b(Ljavax/net/ssl/SSLSocket;)V

    .line 280
    :cond_4
    return-void

    .line 266
    :cond_5
    :try_start_4
    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 271
    :cond_6
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 273
    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_1

    .line 269
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private g()Lokhttp3/Request;
    .locals 4

    .prologue
    .line 340
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->k:Lokhttp3/Route;

    .line 341
    invoke-virtual {v1}, Lokhttp3/Route;->a()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->a(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Host"

    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->k:Lokhttp3/Route;

    .line 342
    invoke-virtual {v2}, Lokhttp3/Route;->a()Lokhttp3/Address;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lokhttp3/internal/Util;->a(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    .line 343
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "User-Agent"

    .line 344
    invoke-static {}, Lokhttp3/internal/Version;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->d()Lokhttp3/Request;

    move-result-object v0

    .line 340
    return-object v0
.end method


# virtual methods
.method public a()Lokhttp3/Route;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->k:Lokhttp3/Route;

    return-object v0
.end method

.method public a(IIILjava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->n:Lokhttp3/Protocol;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    new-instance v3, Lokhttp3/internal/connection/ConnectionSpecSelector;

    invoke-direct {v3, p4}, Lokhttp3/internal/connection/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    .line 96
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->k:Lokhttp3/Route;

    invoke-virtual {v0}, Lokhttp3/Route;->a()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Address;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_7

    .line 97
    sget-object v0, Lokhttp3/ConnectionSpec;->c:Lokhttp3/ConnectionSpec;

    invoke-interface {p4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Lokhttp3/internal/connection/RouteException;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 101
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->k:Lokhttp3/Route;

    invoke-virtual {v0}, Lokhttp3/Route;->a()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->i()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {}, Lokhttp3/internal/platform/Platform;->b()Lokhttp3/internal/platform/Platform;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/internal/platform/Platform;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 103
    new-instance v1, Lokhttp3/internal/connection/RouteException;

    new-instance v2, Ljava/net/UnknownServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEARTEXT communication to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " not permitted by network security policy"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 108
    :cond_2
    :goto_0
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->n:Lokhttp3/Protocol;

    if-nez v2, :cond_6

    .line 110
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->k:Lokhttp3/Route;

    invoke-virtual {v2}, Lokhttp3/Route;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 111
    invoke-direct {p0, p1, p2, p3, v3}, Lokhttp3/internal/connection/RealConnection;->a(IIILokhttp3/internal/connection/ConnectionSpecSelector;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v2

    .line 117
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->a:Ljava/net/Socket;

    invoke-static {v4}, Lokhttp3/internal/Util;->a(Ljava/net/Socket;)V

    .line 118
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->l:Ljava/net/Socket;

    invoke-static {v4}, Lokhttp3/internal/Util;->a(Ljava/net/Socket;)V

    .line 119
    iput-object v1, p0, Lokhttp3/internal/connection/RealConnection;->a:Ljava/net/Socket;

    .line 120
    iput-object v1, p0, Lokhttp3/internal/connection/RealConnection;->l:Ljava/net/Socket;

    .line 121
    iput-object v1, p0, Lokhttp3/internal/connection/RealConnection;->d:Lokio/BufferedSource;

    .line 122
    iput-object v1, p0, Lokhttp3/internal/connection/RealConnection;->e:Lokio/BufferedSink;

    .line 123
    iput-object v1, p0, Lokhttp3/internal/connection/RealConnection;->m:Lokhttp3/Handshake;

    .line 124
    iput-object v1, p0, Lokhttp3/internal/connection/RealConnection;->n:Lokhttp3/Protocol;

    .line 126
    if-nez v0, :cond_5

    .line 127
    new-instance v0, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v0, v2}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    .line 132
    :goto_1
    if-eqz p5, :cond_3

    invoke-virtual {v3, v2}, Lokhttp3/internal/connection/ConnectionSpecSelector;->a(Ljava/io/IOException;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 133
    :cond_3
    throw v0

    .line 114
    :cond_4
    :try_start_1
    invoke-direct {p0, p1, p2, p3, v3}, Lokhttp3/internal/connection/RealConnection;->b(IIILokhttp3/internal/connection/ConnectionSpecSelector;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 129
    :cond_5
    invoke-virtual {v0, v2}, Lokhttp3/internal/connection/RouteException;->addConnectException(Ljava/io/IOException;)V

    goto :goto_1

    .line 137
    :cond_6
    return-void

    :cond_7
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lokhttp3/internal/framed/FramedConnection;)V
    .locals 1

    .prologue
    .line 400
    invoke-virtual {p1}, Lokhttp3/internal/framed/FramedConnection;->c()I

    move-result v0

    iput v0, p0, Lokhttp3/internal/connection/RealConnection;->f:I

    .line 401
    return-void
.end method

.method public a(Lokhttp3/internal/framed/FramedStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/ErrorCode;)V

    .line 396
    return-void
.end method

.method public a(Z)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 363
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->a:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->a:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->a:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 390
    :cond_1
    :goto_0
    return v0

    .line 367
    :cond_2
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/internal/framed/FramedConnection;

    if-nez v2, :cond_1

    .line 371
    if-eqz p1, :cond_1

    .line 373
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->a:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 375
    :try_start_1
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->a:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 376
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->d:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->g()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 381
    :try_start_2
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->a:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    move v0, v1

    .line 377
    goto :goto_0

    .line 381
    :cond_3
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->a:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_0

    .line 383
    :catch_0
    move-exception v1

    goto :goto_0

    .line 381
    :catchall_0
    move-exception v2

    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->a:Ljava/net/Socket;

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v2
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 385
    :catch_1
    move-exception v0

    move v0, v1

    .line 386
    goto :goto_0
.end method

.method public b()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->a:Ljava/net/Socket;

    return-object v0
.end method

.method public c()Lokhttp3/Handshake;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->m:Lokhttp3/Handshake;

    return-object v0
.end method

.method public d()Lokhttp3/Protocol;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/internal/framed/FramedConnection;

    if-nez v0, :cond_1

    .line 417
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->n:Lokhttp3/Protocol;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->n:Lokhttp3/Protocol;

    .line 419
    :goto_0
    return-object v0

    .line 417
    :cond_0
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    goto :goto_0

    .line 419
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedConnection;->a()Lokhttp3/Protocol;

    move-result-object v0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->l:Ljava/net/Socket;

    invoke-static {v0}, Lokhttp3/internal/Util;->a(Ljava/net/Socket;)V

    .line 355
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/internal/framed/FramedConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->k:Lokhttp3/Route;

    .line 425
    invoke-virtual {v1}, Lokhttp3/Route;->a()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->k:Lokhttp3/Route;

    invoke-virtual {v1}, Lokhttp3/Route;->a()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->k:Lokhttp3/Route;

    .line 427
    invoke-virtual {v1}, Lokhttp3/Route;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->k:Lokhttp3/Route;

    .line 429
    invoke-virtual {v1}, Lokhttp3/Route;->c()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->m:Lokhttp3/Handshake;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->m:Lokhttp3/Handshake;

    .line 431
    invoke-virtual {v0}, Lokhttp3/Handshake;->b()Lokhttp3/CipherSuite;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->n:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    return-object v0

    .line 431
    :cond_0
    const-string v0, "none"

    goto :goto_0
.end method
