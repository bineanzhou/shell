.class public final Lokhttp3/Cache;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Cache$CacheResponseBody;,
        Lokhttp3/Cache$Entry;,
        Lokhttp3/Cache$CacheRequestImpl;
    }
.end annotation


# static fields
.field private static final b:I = 0x31191

.field private static final c:I = 0x0

.field private static final d:I = 0x1

.field private static final e:I = 0x2


# instance fields
.field final a:Lokhttp3/internal/cache/InternalCache;

.field private final f:Lokhttp3/internal/cache/DiskLruCache;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 2

    .prologue
    .line 178
    sget-object v0, Lokhttp3/internal/io/FileSystem;->a:Lokhttp3/internal/io/FileSystem;

    invoke-direct {p0, p1, p2, p3, v0}, Lokhttp3/Cache;-><init>(Ljava/io/File;JLokhttp3/internal/io/FileSystem;)V

    .line 179
    return-void
.end method

.method constructor <init>(Ljava/io/File;JLokhttp3/internal/io/FileSystem;)V
    .locals 6

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Lokhttp3/Cache$1;

    invoke-direct {v0, p0}, Lokhttp3/Cache$1;-><init>(Lokhttp3/Cache;)V

    iput-object v0, p0, Lokhttp3/Cache;->a:Lokhttp3/internal/cache/InternalCache;

    .line 182
    const v2, 0x31191

    const/4 v3, 0x2

    move-object v0, p4

    move-object v1, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokhttp3/internal/cache/DiskLruCache;->a(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJ)Lokhttp3/internal/cache/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache;->f:Lokhttp3/internal/cache/DiskLruCache;

    .line 183
    return-void
.end method

.method static synthetic a(Lokio/BufferedSource;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p0}, Lokhttp3/Cache;->b(Lokio/BufferedSource;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lokhttp3/Cache;Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lokhttp3/Cache;->a(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method private a(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 221
    invoke-virtual {p1}, Lokhttp3/Response;->a()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->b()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {p1}, Lokhttp3/Response;->a()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/internal/http/HttpMethod;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->a()Lokhttp3/Request;

    move-result-object v1

    invoke-direct {p0, v1}, Lokhttp3/Cache;->c(Lokhttp3/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 253
    :cond_0
    :goto_0
    return-object v0

    .line 231
    :cond_1
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->b(Lokhttp3/Response;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    new-instance v1, Lokhttp3/Cache$Entry;

    invoke-direct {v1, p1}, Lokhttp3/Cache$Entry;-><init>(Lokhttp3/Response;)V

    .line 245
    :try_start_1
    iget-object v2, p0, Lokhttp3/Cache;->f:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {p1}, Lokhttp3/Response;->a()Lokhttp3/Request;

    move-result-object v3

    invoke-static {v3}, Lokhttp3/Cache;->b(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/internal/cache/DiskLruCache;->b(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 246
    if-eqz v2, :cond_0

    .line 249
    :try_start_2
    invoke-virtual {v1, v2}, Lokhttp3/Cache$Entry;->a(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 250
    new-instance v1, Lokhttp3/Cache$CacheRequestImpl;

    invoke-direct {v1, p0, v2}, Lokhttp3/Cache$CacheRequestImpl;-><init>(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    goto :goto_0

    .line 251
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 252
    :goto_1
    invoke-direct {p0, v1}, Lokhttp3/Cache;->a(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    goto :goto_0

    .line 251
    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_1

    .line 226
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lokhttp3/Cache;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lokhttp3/Cache;->n()V

    return-void
.end method

.method static synthetic a(Lokhttp3/Cache;Lokhttp3/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lokhttp3/Cache;->c(Lokhttp3/Request;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/Cache;Lokhttp3/Response;Lokhttp3/Response;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Lokhttp3/Cache;->a(Lokhttp3/Response;Lokhttp3/Response;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/Cache;Lokhttp3/internal/cache/CacheStrategy;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lokhttp3/Cache;->a(Lokhttp3/internal/cache/CacheStrategy;)V

    return-void
.end method

.method private a(Lokhttp3/Response;Lokhttp3/Response;)V
    .locals 3

    .prologue
    .line 262
    new-instance v1, Lokhttp3/Cache$Entry;

    invoke-direct {v1, p2}, Lokhttp3/Cache$Entry;-><init>(Lokhttp3/Response;)V

    .line 263
    invoke-virtual {p1}, Lokhttp3/Response;->h()Lokhttp3/ResponseBody;

    move-result-object v0

    check-cast v0, Lokhttp3/Cache$CacheResponseBody;

    invoke-static {v0}, Lokhttp3/Cache$CacheResponseBody;->a(Lokhttp3/Cache$CacheResponseBody;)Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v2

    .line 264
    const/4 v0, 0x0

    .line 266
    :try_start_0
    invoke-virtual {v2}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->b()Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v1, v0}, Lokhttp3/Cache$Entry;->a(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 269
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v1

    .line 272
    invoke-direct {p0, v0}, Lokhttp3/Cache;->a(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    goto :goto_0
.end method

.method private declared-synchronized a(Lokhttp3/internal/cache/CacheStrategy;)V
    .locals 1

    .prologue
    .line 402
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/Cache;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/Cache;->k:I

    .line 404
    iget-object v0, p1, Lokhttp3/internal/cache/CacheStrategy;->a:Lokhttp3/Request;

    if-eqz v0, :cond_1

    .line 406
    iget v0, p0, Lokhttp3/Cache;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/Cache;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 407
    :cond_1
    :try_start_1
    iget-object v0, p1, Lokhttp3/internal/cache/CacheStrategy;->b:Lokhttp3/Response;

    if-eqz v0, :cond_0

    .line 409
    iget v0, p0, Lokhttp3/Cache;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/Cache;->j:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 1

    .prologue
    .line 279
    if-eqz p1, :cond_0

    .line 280
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b(Lokio/BufferedSource;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 725
    :try_start_0
    invoke-interface {p0}, Lokio/BufferedSource;->q()J

    move-result-wide v0

    .line 726
    invoke-interface {p0}, Lokio/BufferedSource;->v()Ljava/lang/String;

    move-result-object v2

    .line 727
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-ltz v3, :cond_0

    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 728
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected an int but was \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :catch_0
    move-exception v0

    .line 732
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 730
    :cond_1
    long-to-int v0, v0

    return v0
.end method

.method private static b(Lokhttp3/Request;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lokhttp3/Cache;)Lokhttp3/internal/cache/DiskLruCache;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lokhttp3/Cache;->f:Lokhttp3/internal/cache/DiskLruCache;

    return-object v0
.end method

.method static synthetic c(Lokhttp3/Cache;)I
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lokhttp3/Cache;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lokhttp3/Cache;->g:I

    return v0
.end method

.method private c(Lokhttp3/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lokhttp3/Cache;->f:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {p1}, Lokhttp3/Cache;->b(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/internal/cache/DiskLruCache;->c(Ljava/lang/String;)Z

    .line 259
    return-void
.end method

.method static synthetic d(Lokhttp3/Cache;)I
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lokhttp3/Cache;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lokhttp3/Cache;->h:I

    return v0
.end method

.method private declared-synchronized n()V
    .locals 1

    .prologue
    .line 414
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/Cache;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/Cache;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    monitor-exit p0

    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method a(Lokhttp3/Request;)Lokhttp3/Response;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-static {p1}, Lokhttp3/Cache;->b(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v1

    .line 194
    :try_start_0
    iget-object v2, p0, Lokhttp3/Cache;->f:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v2, v1}, Lokhttp3/internal/cache/DiskLruCache;->a(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 195
    if-nez v1, :cond_0

    .line 217
    :goto_0
    return-object v0

    .line 204
    :cond_0
    :try_start_1
    new-instance v2, Lokhttp3/Cache$Entry;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->a(I)Lokio/Source;

    move-result-object v3

    invoke-direct {v2, v3}, Lokhttp3/Cache$Entry;-><init>(Lokio/Source;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 210
    invoke-virtual {v2, v1}, Lokhttp3/Cache$Entry;->a(Lokhttp3/internal/cache/DiskLruCache$Snapshot;)Lokhttp3/Response;

    move-result-object v1

    .line 212
    invoke-virtual {v2, p1, v1}, Lokhttp3/Cache$Entry;->a(Lokhttp3/Request;Lokhttp3/Response;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 213
    invoke-virtual {v1}, Lokhttp3/Response;->h()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/Util;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 205
    :catch_0
    move-exception v2

    .line 206
    invoke-static {v1}, Lokhttp3/internal/Util;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 217
    goto :goto_0

    .line 198
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lokhttp3/Cache;->f:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->a()V

    .line 299
    return-void
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lokhttp3/Cache;->f:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->f()V

    .line 307
    return-void
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lokhttp3/Cache;->f:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->g()V

    .line 315
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lokhttp3/Cache;->f:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->close()V

    .line 391
    return-void
.end method

.method public d()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    new-instance v0, Lokhttp3/Cache$2;

    invoke-direct {v0, p0}, Lokhttp3/Cache$2;-><init>(Lokhttp3/Cache;)V

    return-object v0
.end method

.method public declared-synchronized e()I
    .locals 1

    .prologue
    .line 370
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/Cache;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()I
    .locals 1

    .prologue
    .line 374
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/Cache;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lokhttp3/Cache;->f:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->flush()V

    .line 387
    return-void
.end method

.method public g()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lokhttp3/Cache;->f:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lokhttp3/Cache;->f:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public i()Ljava/io/File;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lokhttp3/Cache;->f:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->b()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lokhttp3/Cache;->f:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->e()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized k()I
    .locals 1

    .prologue
    .line 418
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/Cache;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l()I
    .locals 1

    .prologue
    .line 422
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/Cache;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized m()I
    .locals 1

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/Cache;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
