.class public final Lokhttp3/internal/cache/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache/DiskLruCache$Entry;,
        Lokhttp3/internal/cache/DiskLruCache$Editor;,
        Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field private static final G:Lokio/Sink;

.field static final a:Ljava/lang/String; = "journal"

.field static final b:Ljava/lang/String; = "journal.tmp"

.field static final c:Ljava/lang/String; = "journal.bkp"

.field static final d:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field static final e:Ljava/lang/String; = "1"

.field static final f:J = -0x1L

.field static final g:Ljava/util/regex/Pattern;

.field static final synthetic h:Z

.field private static final i:Ljava/lang/String; = "CLEAN"

.field private static final j:Ljava/lang/String; = "DIRTY"

.field private static final k:Ljava/lang/String; = "REMOVE"

.field private static final l:Ljava/lang/String; = "READ"


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:J

.field private final E:Ljava/util/concurrent/Executor;

.field private final F:Ljava/lang/Runnable;

.field private final m:Lokhttp3/internal/io/FileSystem;

.field private final n:Ljava/io/File;

.field private final o:Ljava/io/File;

.field private final p:Ljava/io/File;

.field private final q:Ljava/io/File;

.field private final r:I

.field private s:J

.field private final t:I

.field private u:J

.field private v:Lokio/BufferedSink;

.field private final w:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lokhttp3/internal/cache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-class v0, Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lokhttp3/internal/cache/DiskLruCache;->h:Z

    .line 95
    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->g:Ljava/util/regex/Pattern;

    .line 825
    new-instance v0, Lokhttp3/internal/cache/DiskLruCache$4;

    invoke-direct {v0}, Lokhttp3/internal/cache/DiskLruCache$4;-><init>()V

    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->G:Lokio/Sink;

    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-wide v4, p0, Lokhttp3/internal/cache/DiskLruCache;->u:J

    .line 151
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    .line 166
    iput-wide v4, p0, Lokhttp3/internal/cache/DiskLruCache;->D:J

    .line 170
    new-instance v0, Lokhttp3/internal/cache/DiskLruCache$1;

    invoke-direct {v0, p0}, Lokhttp3/internal/cache/DiskLruCache$1;-><init>(Lokhttp3/internal/cache/DiskLruCache;)V

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->F:Ljava/lang/Runnable;

    .line 198
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/io/FileSystem;

    .line 199
    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache;->n:Ljava/io/File;

    .line 200
    iput p3, p0, Lokhttp3/internal/cache/DiskLruCache;->r:I

    .line 201
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->o:Ljava/io/File;

    .line 202
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->p:Ljava/io/File;

    .line 203
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->q:Ljava/io/File;

    .line 204
    iput p4, p0, Lokhttp3/internal/cache/DiskLruCache;->t:I

    .line 205
    iput-wide p5, p0, Lokhttp3/internal/cache/DiskLruCache;->s:J

    .line 206
    iput-object p7, p0, Lokhttp3/internal/cache/DiskLruCache;->E:Ljava/util/concurrent/Executor;

    .line 207
    return-void
.end method

.method static synthetic a(Lokhttp3/internal/cache/DiskLruCache;I)I
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lokhttp3/internal/cache/DiskLruCache;->x:I

    return p1
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lokhttp3/internal/cache/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 458
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->a()V

    .line 460
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->o()V

    .line 461
    invoke-direct {p0, p1}, Lokhttp3/internal/cache/DiskLruCache;->e(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 463
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    .line 464
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->g(Lokhttp3/internal/cache/DiskLruCache$Entry;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 494
    :goto_0
    monitor-exit p0

    return-object v0

    .line 467
    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->a(Lokhttp3/internal/cache/DiskLruCache$Entry;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 468
    goto :goto_0

    .line 470
    :cond_2
    iget-boolean v2, p0, Lokhttp3/internal/cache/DiskLruCache;->B:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lokhttp3/internal/cache/DiskLruCache;->C:Z

    if-eqz v2, :cond_4

    .line 476
    :cond_3
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->E:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->F:Ljava/lang/Runnable;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    move-object v0, v1

    .line 477
    goto :goto_0

    .line 481
    :cond_4
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/BufferedSink;

    const-string v3, "DIRTY"

    invoke-interface {v2, v3}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const/16 v3, 0x20

    invoke-interface {v2, v3}, Lokio/BufferedSink;->m(I)Lokio/BufferedSink;

    move-result-object v2

    invoke-interface {v2, p1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lokio/BufferedSink;->m(I)Lokio/BufferedSink;

    .line 482
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/BufferedSink;

    invoke-interface {v2}, Lokio/BufferedSink;->flush()V

    .line 484
    iget-boolean v2, p0, Lokhttp3/internal/cache/DiskLruCache;->y:Z

    if-eqz v2, :cond_5

    move-object v0, v1

    .line 485
    goto :goto_0

    .line 488
    :cond_5
    if-nez v0, :cond_6

    .line 489
    new-instance v0, Lokhttp3/internal/cache/DiskLruCache$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;-><init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;Lokhttp3/internal/cache/DiskLruCache$1;)V

    .line 490
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 492
    :goto_1
    new-instance v0, Lokhttp3/internal/cache/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lokhttp3/internal/cache/DiskLruCache$Editor;-><init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;Lokhttp3/internal/cache/DiskLruCache$1;)V

    .line 493
    invoke-static {v1, v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->a(Lokhttp3/internal/cache/DiskLruCache$Entry;Lokhttp3/internal/cache/DiskLruCache$Editor;)Lokhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method

.method static synthetic a(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;J)Lokhttp3/internal/cache/DiskLruCache$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/cache/DiskLruCache;->a(Ljava/lang/String;J)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJ)Lokhttp3/internal/cache/DiskLruCache;
    .locals 12

    .prologue
    .line 256
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gtz v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_0
    if-gtz p3, :cond_1

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_1
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp DiskLruCache"

    const/4 v8, 0x1

    .line 265
    invoke-static {v0, v8}, Lokhttp3/internal/Util;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 267
    new-instance v3, Lokhttp3/internal/cache/DiskLruCache;

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-wide/from16 v8, p4

    move-object v10, v1

    invoke-direct/range {v3 .. v10}, Lokhttp3/internal/cache/DiskLruCache;-><init>(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V

    return-object v3
.end method

.method static synthetic a(Lokhttp3/internal/cache/DiskLruCache;Lokio/BufferedSink;)Lokio/BufferedSink;
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/BufferedSink;

    return-object p1
.end method

.method private declared-synchronized a(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 530
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->a(Lokhttp3/internal/cache/DiskLruCache$Editor;)Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-result-object v2

    .line 531
    invoke-static {v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->a(Lokhttp3/internal/cache/DiskLruCache$Entry;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 532
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 536
    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    invoke-static {v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->f(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v0

    .line 537
    :goto_0
    iget v3, p0, Lokhttp3/internal/cache/DiskLruCache;->t:I

    if-ge v1, v3, :cond_4

    .line 538
    invoke-static {p1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->b(Lokhttp3/internal/cache/DiskLruCache$Editor;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-nez v3, :cond_1

    .line 539
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->c()V

    .line 540
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Newly created entry didn\'t create value for index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_1
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/io/FileSystem;

    invoke-static {v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->d(Lokhttp3/internal/cache/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-interface {v3, v4}, Lokhttp3/internal/io/FileSystem;->e(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 543
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 537
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 549
    :cond_4
    :goto_2
    :try_start_2
    iget v1, p0, Lokhttp3/internal/cache/DiskLruCache;->t:I

    if-ge v0, v1, :cond_7

    .line 550
    invoke-static {v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->d(Lokhttp3/internal/cache/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v1

    aget-object v1, v1, v0

    .line 551
    if-eqz p2, :cond_6

    .line 552
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/io/FileSystem;

    invoke-interface {v3, v1}, Lokhttp3/internal/io/FileSystem;->e(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 553
    invoke-static {v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->c(Lokhttp3/internal/cache/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v3

    aget-object v3, v3, v0

    .line 554
    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/io/FileSystem;

    invoke-interface {v4, v1, v3}, Lokhttp3/internal/io/FileSystem;->a(Ljava/io/File;Ljava/io/File;)V

    .line 555
    invoke-static {v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->b(Lokhttp3/internal/cache/DiskLruCache$Entry;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    .line 556
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/io/FileSystem;

    invoke-interface {v1, v3}, Lokhttp3/internal/io/FileSystem;->f(Ljava/io/File;)J

    move-result-wide v6

    .line 557
    invoke-static {v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->b(Lokhttp3/internal/cache/DiskLruCache$Entry;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    .line 558
    iget-wide v8, p0, Lokhttp3/internal/cache/DiskLruCache;->u:J

    sub-long v4, v8, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lokhttp3/internal/cache/DiskLruCache;->u:J

    .line 549
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 561
    :cond_6
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/io/FileSystem;

    invoke-interface {v3, v1}, Lokhttp3/internal/io/FileSystem;->d(Ljava/io/File;)V

    goto :goto_3

    .line 565
    :cond_7
    iget v0, p0, Lokhttp3/internal/cache/DiskLruCache;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/cache/DiskLruCache;->x:I

    .line 566
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->a(Lokhttp3/internal/cache/DiskLruCache$Entry;Lokhttp3/internal/cache/DiskLruCache$Editor;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 567
    invoke-static {v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->f(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_a

    .line 568
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->a(Lokhttp3/internal/cache/DiskLruCache$Entry;Z)Z

    .line 569
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/BufferedSink;

    const-string v1, "CLEAN"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Lokio/BufferedSink;->m(I)Lokio/BufferedSink;

    .line 570
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/BufferedSink;

    invoke-static {v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->e(Lokhttp3/internal/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    .line 571
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/BufferedSink;

    invoke-virtual {v2, v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->a(Lokio/BufferedSink;)V

    .line 572
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/BufferedSink;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lokio/BufferedSink;->m(I)Lokio/BufferedSink;

    .line 573
    if-eqz p2, :cond_8

    .line 574
    iget-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->D:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lokhttp3/internal/cache/DiskLruCache;->D:J

    invoke-static {v2, v0, v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->a(Lokhttp3/internal/cache/DiskLruCache$Entry;J)J

    .line 582
    :cond_8
    :goto_4
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 584
    iget-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->u:J

    iget-wide v2, p0, Lokhttp3/internal/cache/DiskLruCache;->s:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 585
    :cond_9
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->E:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->F:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 577
    :cond_a
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->e(Lokhttp3/internal/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/BufferedSink;

    const-string v1, "REMOVE"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Lokio/BufferedSink;->m(I)Lokio/BufferedSink;

    .line 579
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/BufferedSink;

    invoke-static {v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->e(Lokhttp3/internal/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    .line 580
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/BufferedSink;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lokio/BufferedSink;->m(I)Lokio/BufferedSink;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method static synthetic a(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/cache/DiskLruCache;->a(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V

    return-void
.end method

.method private a(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    invoke-static {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->a(Lokhttp3/internal/cache/DiskLruCache$Entry;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 619
    invoke-static {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->a(Lokhttp3/internal/cache/DiskLruCache$Entry;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->a()V

    .line 622
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lokhttp3/internal/cache/DiskLruCache;->t:I

    if-ge v0, v1, :cond_1

    .line 623
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/io/FileSystem;

    invoke-static {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->c(Lokhttp3/internal/cache/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lokhttp3/internal/io/FileSystem;->d(Ljava/io/File;)V

    .line 624
    iget-wide v2, p0, Lokhttp3/internal/cache/DiskLruCache;->u:J

    invoke-static {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->b(Lokhttp3/internal/cache/DiskLruCache$Entry;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokhttp3/internal/cache/DiskLruCache;->u:J

    .line 625
    invoke-static {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->b(Lokhttp3/internal/cache/DiskLruCache$Entry;)[J

    move-result-object v1

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 628
    :cond_1
    iget v0, p0, Lokhttp3/internal/cache/DiskLruCache;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/cache/DiskLruCache;->x:I

    .line 629
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/BufferedSink;

    const-string v1, "REMOVE"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Lokio/BufferedSink;->m(I)Lokio/BufferedSink;

    move-result-object v0

    invoke-static {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->e(Lokhttp3/internal/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lokio/BufferedSink;->m(I)Lokio/BufferedSink;

    .line 630
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->e(Lokhttp3/internal/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 633
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->E:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->F:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 636
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic a(Lokhttp3/internal/cache/DiskLruCache;)Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->z:Z

    return v0
.end method

.method static synthetic a(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lokhttp3/internal/cache/DiskLruCache;->a(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lokhttp3/internal/cache/DiskLruCache;Z)Z
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lokhttp3/internal/cache/DiskLruCache;->B:Z

    return p1
.end method

.method static synthetic b(Lokhttp3/internal/cache/DiskLruCache;)Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->A:Z

    return v0
.end method

.method static synthetic b(Lokhttp3/internal/cache/DiskLruCache;Z)Z
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lokhttp3/internal/cache/DiskLruCache;->C:Z

    return p1
.end method

.method static synthetic c(Lokhttp3/internal/cache/DiskLruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->p()V

    return-void
.end method

.method static synthetic c(Lokhttp3/internal/cache/DiskLruCache;Z)Z
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lokhttp3/internal/cache/DiskLruCache;->y:Z

    return p1
.end method

.method private d(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x20

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 321
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 322
    if-ne v2, v5, :cond_0

    .line 323
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    add-int/lit8 v0, v2, 0x1

    .line 327
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 329
    if-ne v3, v5, :cond_2

    .line 330
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    const-string v1, "REMOVE"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_7

    const-string v1, "REMOVE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 332
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    :cond_1
    :goto_0
    return-void

    .line 336
    :cond_2
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 339
    :goto_1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 340
    if-nez v0, :cond_3

    .line 341
    new-instance v0, Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-direct {v0, p0, v1, v6}, Lokhttp3/internal/cache/DiskLruCache$Entry;-><init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;Lokhttp3/internal/cache/DiskLruCache$1;)V

    .line 342
    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    :cond_3
    if-eq v3, v5, :cond_4

    const-string v1, "CLEAN"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_4

    const-string v1, "CLEAN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 346
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 347
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->a(Lokhttp3/internal/cache/DiskLruCache$Entry;Z)Z

    .line 348
    invoke-static {v0, v6}, Lokhttp3/internal/cache/DiskLruCache$Entry;->a(Lokhttp3/internal/cache/DiskLruCache$Entry;Lokhttp3/internal/cache/DiskLruCache$Editor;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 349
    invoke-static {v0, v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->a(Lokhttp3/internal/cache/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_4
    if-ne v3, v5, :cond_5

    const-string v1, "DIRTY"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_5

    const-string v1, "DIRTY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 351
    new-instance v1, Lokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-direct {v1, p0, v0, v6}, Lokhttp3/internal/cache/DiskLruCache$Editor;-><init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;Lokhttp3/internal/cache/DiskLruCache$1;)V

    invoke-static {v0, v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->a(Lokhttp3/internal/cache/DiskLruCache$Entry;Lokhttp3/internal/cache/DiskLruCache$Editor;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    goto :goto_0

    .line 352
    :cond_5
    if-ne v3, v5, :cond_6

    const-string v0, "READ"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v2, v0, :cond_6

    const-string v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v1, v0

    goto/16 :goto_1
.end method

.method static synthetic d(Lokhttp3/internal/cache/DiskLruCache;)Z
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->n()Z

    move-result v0

    return v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 708
    sget-object v0, Lokhttp3/internal/cache/DiskLruCache;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 709
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :cond_0
    return-void
.end method

.method static synthetic e(Lokhttp3/internal/cache/DiskLruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->m()V

    return-void
.end method

.method static synthetic f(Lokhttp3/internal/cache/DiskLruCache;)Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic g(Lokhttp3/internal/cache/DiskLruCache;)I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lokhttp3/internal/cache/DiskLruCache;->t:I

    return v0
.end method

.method static synthetic h(Lokhttp3/internal/cache/DiskLruCache;)Lokhttp3/internal/io/FileSystem;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/io/FileSystem;

    return-object v0
.end method

.method static synthetic i(Lokhttp3/internal/cache/DiskLruCache;)Ljava/io/File;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->n:Ljava/io/File;

    return-object v0
.end method

.method static synthetic i()Lokio/Sink;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lokhttp3/internal/cache/DiskLruCache;->G:Lokio/Sink;

    return-object v0
.end method

.method private j()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->o:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->a(Ljava/io/File;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->a(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    .line 273
    :try_start_0
    invoke-interface {v1}, Lokio/BufferedSource;->v()Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-interface {v1}, Lokio/BufferedSource;->v()Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-interface {v1}, Lokio/BufferedSource;->v()Ljava/lang/String;

    move-result-object v3

    .line 276
    invoke-interface {v1}, Lokio/BufferedSource;->v()Ljava/lang/String;

    move-result-object v4

    .line 277
    invoke-interface {v1}, Lokio/BufferedSource;->v()Ljava/lang/String;

    move-result-object v5

    .line 278
    const-string v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    .line 279
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lokhttp3/internal/cache/DiskLruCache;->r:I

    .line 280
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lokhttp3/internal/cache/DiskLruCache;->t:I

    .line 281
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    .line 282
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 283
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected journal header: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lokhttp3/internal/Util;->a(Ljava/io/Closeable;)V

    throw v0

    .line 287
    :cond_1
    const/4 v0, 0x0

    .line 290
    :goto_0
    :try_start_1
    invoke-interface {v1}, Lokio/BufferedSource;->v()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lokhttp3/internal/cache/DiskLruCache;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :catch_0
    move-exception v2

    .line 296
    :try_start_2
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lokhttp3/internal/cache/DiskLruCache;->x:I

    .line 299
    invoke-interface {v1}, Lokio/BufferedSource;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 300
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->m()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 305
    :goto_1
    invoke-static {v1}, Lokhttp3/internal/Util;->a(Ljava/io/Closeable;)V

    .line 307
    return-void

    .line 302
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->k()Lokio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/BufferedSink;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private k()Lokio/BufferedSink;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->o:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->c(Ljava/io/File;)Lokio/Sink;

    move-result-object v0

    .line 311
    new-instance v1, Lokhttp3/internal/cache/DiskLruCache$2;

    invoke-direct {v1, p0, v0}, Lokhttp3/internal/cache/DiskLruCache$2;-><init>(Lokhttp3/internal/cache/DiskLruCache;Lokio/Sink;)V

    .line 317
    invoke-static {v1}, Lokio/Okio;->a(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method private l()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 364
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->p:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->d(Ljava/io/File;)V

    .line 365
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 366
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 367
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->a(Lokhttp3/internal/cache/DiskLruCache$Entry;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    .line 368
    :goto_1
    iget v4, p0, Lokhttp3/internal/cache/DiskLruCache;->t:I

    if-ge v1, v4, :cond_0

    .line 369
    iget-wide v4, p0, Lokhttp3/internal/cache/DiskLruCache;->u:J

    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->b(Lokhttp3/internal/cache/DiskLruCache$Entry;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lokhttp3/internal/cache/DiskLruCache;->u:J

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 372
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->a(Lokhttp3/internal/cache/DiskLruCache$Entry;Lokhttp3/internal/cache/DiskLruCache$Editor;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move v1, v2

    .line 373
    :goto_2
    iget v4, p0, Lokhttp3/internal/cache/DiskLruCache;->t:I

    if-ge v1, v4, :cond_2

    .line 374
    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/io/FileSystem;

    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->c(Lokhttp3/internal/cache/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-interface {v4, v5}, Lokhttp3/internal/io/FileSystem;->d(Ljava/io/File;)V

    .line 375
    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/io/FileSystem;

    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->d(Lokhttp3/internal/cache/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-interface {v4, v5}, Lokhttp3/internal/io/FileSystem;->d(Ljava/io/File;)V

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 377
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 380
    :cond_3
    return-void
.end method

.method private declared-synchronized m()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/BufferedSink;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    .line 391
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->p:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->b(Ljava/io/File;)Lokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->a(Lokio/Sink;)Lokio/BufferedSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 393
    :try_start_1
    const-string v0, "libcore.io.DiskLruCache"

    invoke-interface {v1, v0}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lokio/BufferedSink;->m(I)Lokio/BufferedSink;

    .line 394
    const-string v0, "1"

    invoke-interface {v1, v0}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lokio/BufferedSink;->m(I)Lokio/BufferedSink;

    .line 395
    iget v0, p0, Lokhttp3/internal/cache/DiskLruCache;->r:I

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lokio/BufferedSink;->n(J)Lokio/BufferedSink;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lokio/BufferedSink;->m(I)Lokio/BufferedSink;

    .line 396
    iget v0, p0, Lokhttp3/internal/cache/DiskLruCache;->t:I

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lokio/BufferedSink;->n(J)Lokio/BufferedSink;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lokio/BufferedSink;->m(I)Lokio/BufferedSink;

    .line 397
    const/16 v0, 0xa

    invoke-interface {v1, v0}, Lokio/BufferedSink;->m(I)Lokio/BufferedSink;

    .line 399
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 400
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->a(Lokhttp3/internal/cache/DiskLruCache$Entry;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 401
    const-string v3, "DIRTY"

    invoke-interface {v1, v3}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v3

    const/16 v4, 0x20

    invoke-interface {v3, v4}, Lokio/BufferedSink;->m(I)Lokio/BufferedSink;

    .line 402
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->e(Lokhttp3/internal/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    .line 403
    const/16 v0, 0xa

    invoke-interface {v1, v0}, Lokio/BufferedSink;->m(I)Lokio/BufferedSink;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v1}, Lokio/BufferedSink;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 387
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 405
    :cond_1
    :try_start_3
    const-string v3, "CLEAN"

    invoke-interface {v1, v3}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v3

    const/16 v4, 0x20

    invoke-interface {v3, v4}, Lokio/BufferedSink;->m(I)Lokio/BufferedSink;

    .line 406
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->e(Lokhttp3/internal/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    .line 407
    invoke-virtual {v0, v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->a(Lokio/BufferedSink;)V

    .line 408
    const/16 v0, 0xa

    invoke-interface {v1, v0}, Lokio/BufferedSink;->m(I)Lokio/BufferedSink;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 412
    :cond_2
    :try_start_4
    invoke-interface {v1}, Lokio/BufferedSink;->close()V

    .line 415
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->o:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->e(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 416
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->o:Ljava/io/File;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->q:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lokhttp3/internal/io/FileSystem;->a(Ljava/io/File;Ljava/io/File;)V

    .line 418
    :cond_3
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->p:Ljava/io/File;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->o:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lokhttp3/internal/io/FileSystem;->a(Ljava/io/File;Ljava/io/File;)V

    .line 419
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->q:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->d(Ljava/io/File;)V

    .line 421
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->k()Lokio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/BufferedSink;

    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->y:Z

    .line 423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->C:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 424
    monitor-exit p0

    return-void
.end method

.method private n()Z
    .locals 2

    .prologue
    .line 594
    .line 595
    iget v0, p0, Lokhttp3/internal/cache/DiskLruCache;->x:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lokhttp3/internal/cache/DiskLruCache;->x:I

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    .line 596
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 595
    :goto_0
    return v0

    .line 596
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized o()V
    .locals 2

    .prologue
    .line 645
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 648
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private p()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 678
    :goto_0
    iget-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->u:J

    iget-wide v2, p0, Lokhttp3/internal/cache/DiskLruCache;->s:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 679
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 680
    invoke-direct {p0, v0}, Lokhttp3/internal/cache/DiskLruCache;->a(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    goto :goto_0

    .line 682
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->B:Z

    .line 683
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 431
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->a()V

    .line 433
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->o()V

    .line 434
    invoke-direct {p0, p1}, Lokhttp3/internal/cache/DiskLruCache;->e(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 436
    if-eqz v0, :cond_0

    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->f(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 447
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 438
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->a()Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v0

    .line 439
    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    .line 441
    :cond_3
    iget v1, p0, Lokhttp3/internal/cache/DiskLruCache;->x:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lokhttp3/internal/cache/DiskLruCache;->x:I

    .line 442
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/BufferedSink;

    const-string v2, "READ"

    invoke-interface {v1, v2}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v1

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Lokio/BufferedSink;->m(I)Lokio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, p1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lokio/BufferedSink;->m(I)Lokio/BufferedSink;

    .line 443
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 444
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->E:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->F:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lokhttp3/internal/cache/DiskLruCache;->h:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 212
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->z:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 244
    :goto_0
    monitor-exit p0

    return-void

    .line 217
    :cond_1
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->q:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->e(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->o:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->e(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 220
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->q:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->d(Ljava/io/File;)V

    .line 227
    :cond_2
    :goto_1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->o:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->e(Ljava/io/File;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    :try_start_3
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->j()V

    .line 230
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->l()V

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->z:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    :try_start_4
    invoke-static {}, Lokhttp3/internal/platform/Platform;->b()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache;->n:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 235
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", removing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 234
    invoke-virtual {v1, v2, v3, v0}, Lokhttp3/internal/platform/Platform;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->f()V

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->A:Z

    .line 241
    :cond_3
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->m()V

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->z:Z

    goto :goto_0

    .line 222
    :cond_4
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->q:Ljava/io/File;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->o:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lokhttp3/internal/io/FileSystem;->a(Ljava/io/File;Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized a(J)V
    .locals 3

    .prologue
    .line 514
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lokhttp3/internal/cache/DiskLruCache;->s:J

    .line 515
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->z:Z

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->E:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->F:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    :cond_0
    monitor-exit p0

    return-void

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Ljava/io/File;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->n:Ljava/io/File;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lokhttp3/internal/cache/DiskLruCache;->a(Ljava/lang/String;J)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized c()J
    .locals 2

    .prologue
    .line 506
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->s:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 606
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->a()V

    .line 608
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->o()V

    .line 609
    invoke-direct {p0, p1}, Lokhttp3/internal/cache/DiskLruCache;->e(Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/cache/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    if-nez v0, :cond_1

    move v0, v1

    .line 614
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 612
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lokhttp3/internal/cache/DiskLruCache;->a(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    move-result v0

    .line 613
    if-eqz v0, :cond_0

    iget-wide v2, p0, Lokhttp3/internal/cache/DiskLruCache;->u:J

    iget-wide v4, p0, Lokhttp3/internal/cache/DiskLruCache;->s:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->B:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 606
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->z:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->A:Z

    if-eqz v0, :cond_1

    .line 662
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    :goto_0
    monitor-exit p0

    return-void

    .line 666
    :cond_1
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/cache/DiskLruCache$Entry;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 667
    invoke-static {v3}, Lokhttp3/internal/cache/DiskLruCache$Entry;->a(Lokhttp3/internal/cache/DiskLruCache$Entry;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 668
    invoke-static {v3}, Lokhttp3/internal/cache/DiskLruCache$Entry;->a(Lokhttp3/internal/cache/DiskLruCache$Entry;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/internal/cache/DiskLruCache$Editor;->c()V

    .line 666
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 671
    :cond_3
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->p()V

    .line 672
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    .line 673
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/BufferedSink;

    .line 674
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->A:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 661
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->a()V

    .line 526
    iget-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->u:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 525
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Z
    .locals 1

    .prologue
    .line 641
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 690
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->close()V

    .line 691
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->n:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->g(Ljava/io/File;)V

    .line 692
    return-void
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 652
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 657
    :goto_0
    monitor-exit p0

    return-void

    .line 654
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->o()V

    .line 655
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->p()V

    .line 656
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 652
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 699
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->a()V

    .line 701
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    new-array v2, v2, [Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/cache/DiskLruCache$Entry;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 702
    invoke-direct {p0, v3}, Lokhttp3/internal/cache/DiskLruCache;->a(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    .line 701
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 704
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    monitor-exit p0

    return-void

    .line 699
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 731
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->a()V

    .line 732
    new-instance v0, Lokhttp3/internal/cache/DiskLruCache$3;

    invoke-direct {v0, p0}, Lokhttp3/internal/cache/DiskLruCache$3;-><init>(Lokhttp3/internal/cache/DiskLruCache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 731
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
