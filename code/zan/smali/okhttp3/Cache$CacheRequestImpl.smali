.class final Lokhttp3/Cache$CacheRequestImpl;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lokhttp3/internal/cache/CacheRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CacheRequestImpl"
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/Cache;

.field private final b:Lokhttp3/internal/cache/DiskLruCache$Editor;

.field private c:Lokio/Sink;

.field private d:Z

.field private e:Lokio/Sink;


# direct methods
.method public constructor <init>(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 2

    .prologue
    .line 435
    iput-object p1, p0, Lokhttp3/Cache$CacheRequestImpl;->a:Lokhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput-object p2, p0, Lokhttp3/Cache$CacheRequestImpl;->b:Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 437
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->b(I)Lokio/Sink;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$CacheRequestImpl;->c:Lokio/Sink;

    .line 438
    new-instance v0, Lokhttp3/Cache$CacheRequestImpl$1;

    iget-object v1, p0, Lokhttp3/Cache$CacheRequestImpl;->c:Lokio/Sink;

    invoke-direct {v0, p0, v1, p1, p2}, Lokhttp3/Cache$CacheRequestImpl$1;-><init>(Lokhttp3/Cache$CacheRequestImpl;Lokio/Sink;Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    iput-object v0, p0, Lokhttp3/Cache$CacheRequestImpl;->e:Lokio/Sink;

    .line 451
    return-void
.end method

.method static synthetic a(Lokhttp3/Cache$CacheRequestImpl;)Z
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Lokhttp3/Cache$CacheRequestImpl;->d:Z

    return v0
.end method

.method static synthetic a(Lokhttp3/Cache$CacheRequestImpl;Z)Z
    .locals 0

    .prologue
    .line 429
    iput-boolean p1, p0, Lokhttp3/Cache$CacheRequestImpl;->d:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 454
    iget-object v1, p0, Lokhttp3/Cache$CacheRequestImpl;->a:Lokhttp3/Cache;

    monitor-enter v1

    .line 455
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/Cache$CacheRequestImpl;->d:Z

    if-eqz v0, :cond_0

    .line 456
    monitor-exit v1

    .line 466
    :goto_0
    return-void

    .line 458
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/Cache$CacheRequestImpl;->d:Z

    .line 459
    iget-object v0, p0, Lokhttp3/Cache$CacheRequestImpl;->a:Lokhttp3/Cache;

    invoke-static {v0}, Lokhttp3/Cache;->d(Lokhttp3/Cache;)I

    .line 460
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    iget-object v0, p0, Lokhttp3/Cache$CacheRequestImpl;->c:Lokio/Sink;

    invoke-static {v0}, Lokhttp3/internal/Util;->a(Ljava/io/Closeable;)V

    .line 463
    :try_start_1
    iget-object v0, p0, Lokhttp3/Cache$CacheRequestImpl;->b:Lokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->c()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    goto :goto_0

    .line 460
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public b()Lokio/Sink;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lokhttp3/Cache$CacheRequestImpl;->e:Lokio/Sink;

    return-object v0
.end method
