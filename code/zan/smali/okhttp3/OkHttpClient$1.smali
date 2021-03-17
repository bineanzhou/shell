.class final Lokhttp3/OkHttpClient$1;
.super Lokhttp3/internal/Internal;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lokhttp3/internal/Internal;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {p1}, Lokhttp3/HttpUrl;->h(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public a(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;)Lokhttp3/internal/connection/RealConnection;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p1, p2, p3}, Lokhttp3/ConnectionPool;->a(Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;)Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    return-object v0
.end method

.method public a(Lokhttp3/ConnectionPool;)Lokhttp3/internal/connection/RouteDatabase;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p1, Lokhttp3/ConnectionPool;->a:Lokhttp3/internal/connection/RouteDatabase;

    return-object v0
.end method

.method public a(Lokhttp3/Call;)Lokhttp3/internal/connection/StreamAllocation;
    .locals 1

    .prologue
    .line 157
    check-cast p1, Lokhttp3/RealCall;

    invoke-virtual {p1}, Lokhttp3/RealCall;->g()Lokhttp3/internal/connection/StreamAllocation;

    move-result-object v0

    return-object v0
.end method

.method public a(Lokhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0

    .prologue
    .line 162
    invoke-virtual {p1, p2, p3}, Lokhttp3/ConnectionSpec;->a(Ljavax/net/ssl/SSLSocket;Z)V

    .line 163
    return-void
.end method

.method public a(Lokhttp3/Headers$Builder;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    invoke-virtual {p1, p2}, Lokhttp3/Headers$Builder;->a(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 128
    return-void
.end method

.method public a(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    invoke-virtual {p1, p2, p3}, Lokhttp3/Headers$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 132
    return-void
.end method

.method public a(Lokhttp3/OkHttpClient$Builder;Lokhttp3/internal/cache/InternalCache;)V
    .locals 0

    .prologue
    .line 135
    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->a(Lokhttp3/internal/cache/InternalCache;)V

    .line 136
    return-void
.end method

.method public a(Lokhttp3/ConnectionPool;Lokhttp3/internal/connection/RealConnection;)Z
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p1, p2}, Lokhttp3/ConnectionPool;->b(Lokhttp3/internal/connection/RealConnection;)Z

    move-result v0

    return v0
.end method

.method public b(Lokhttp3/Call;)V
    .locals 0

    .prologue
    .line 171
    check-cast p1, Lokhttp3/RealCall;

    invoke-virtual {p1}, Lokhttp3/RealCall;->f()V

    .line 172
    return-void
.end method

.method public b(Lokhttp3/ConnectionPool;Lokhttp3/internal/connection/RealConnection;)V
    .locals 0

    .prologue
    .line 149
    invoke-virtual {p1, p2}, Lokhttp3/ConnectionPool;->a(Lokhttp3/internal/connection/RealConnection;)V

    .line 150
    return-void
.end method
