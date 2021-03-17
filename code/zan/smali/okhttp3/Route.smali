.class public final Lokhttp3/Route;
.super Ljava/lang/Object;
.source "Route.java"


# instance fields
.field final a:Lokhttp3/Address;

.field final b:Ljava/net/Proxy;

.field final c:Ljava/net/InetSocketAddress;


# direct methods
.method public constructor <init>(Lokhttp3/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "address == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    if-nez p2, :cond_1

    .line 46
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxy == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    if-nez p3, :cond_2

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inetSocketAddress == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_2
    iput-object p1, p0, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 52
    iput-object p2, p0, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 53
    iput-object p3, p0, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    .line 54
    return-void
.end method


# virtual methods
.method public a()Lokhttp3/Address;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lokhttp3/Route;->a:Lokhttp3/Address;

    return-object v0
.end method

.method public b()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lokhttp3/Route;->b:Ljava/net/Proxy;

    return-object v0
.end method

.method public c()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lokhttp3/Route;->a:Lokhttp3/Address;

    iget-object v0, v0, Lokhttp3/Address;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/Route;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 83
    instance-of v1, p1, Lokhttp3/Route;

    if-eqz v1, :cond_0

    .line 84
    check-cast p1, Lokhttp3/Route;

    .line 85
    iget-object v1, p0, Lokhttp3/Route;->a:Lokhttp3/Address;

    iget-object v2, p1, Lokhttp3/Route;->a:Lokhttp3/Address;

    invoke-virtual {v1, v2}, Lokhttp3/Address;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lokhttp3/Route;->b:Ljava/net/Proxy;

    iget-object v2, p1, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 86
    invoke-virtual {v1, v2}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    iget-object v2, p1, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    .line 87
    invoke-virtual {v1, v2}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 89
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 93
    .line 94
    iget-object v0, p0, Lokhttp3/Route;->a:Lokhttp3/Address;

    invoke-virtual {v0}, Lokhttp3/Address;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 95
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lokhttp3/Route;->b:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    return v0
.end method
