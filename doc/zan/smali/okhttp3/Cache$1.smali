.class Lokhttp3/Cache$1;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lokhttp3/internal/cache/InternalCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/Cache;


# direct methods
.method constructor <init>(Lokhttp3/Cache;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lokhttp3/Cache$1;->a:Lokhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Request;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lokhttp3/Cache$1;->a:Lokhttp3/Cache;

    invoke-virtual {v0, p1}, Lokhttp3/Cache;->a(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public a(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lokhttp3/Cache$1;->a:Lokhttp3/Cache;

    invoke-static {v0, p1}, Lokhttp3/Cache;->a(Lokhttp3/Cache;Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lokhttp3/Cache$1;->a:Lokhttp3/Cache;

    invoke-static {v0}, Lokhttp3/Cache;->a(Lokhttp3/Cache;)V

    .line 161
    return-void
.end method

.method public a(Lokhttp3/Response;Lokhttp3/Response;)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lokhttp3/Cache$1;->a:Lokhttp3/Cache;

    invoke-static {v0, p1, p2}, Lokhttp3/Cache;->a(Lokhttp3/Cache;Lokhttp3/Response;Lokhttp3/Response;)V

    .line 157
    return-void
.end method

.method public a(Lokhttp3/internal/cache/CacheStrategy;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lokhttp3/Cache$1;->a:Lokhttp3/Cache;

    invoke-static {v0, p1}, Lokhttp3/Cache;->a(Lokhttp3/Cache;Lokhttp3/internal/cache/CacheStrategy;)V

    .line 165
    return-void
.end method

.method public b(Lokhttp3/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lokhttp3/Cache$1;->a:Lokhttp3/Cache;

    invoke-static {v0, p1}, Lokhttp3/Cache;->a(Lokhttp3/Cache;Lokhttp3/Request;)V

    .line 153
    return-void
.end method
