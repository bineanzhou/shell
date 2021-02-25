.class public final Lcom/bumptech/glide/disklrucache/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;,
        Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;,
        Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "journal"

.field static final b:Ljava/lang/String; = "journal.tmp"

.field static final c:Ljava/lang/String; = "journal.bkp"

.field static final d:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field static final e:Ljava/lang/String; = "1"

.field static final f:J = -0x1L

.field private static final h:Ljava/lang/String; = "CLEAN"

.field private static final i:Ljava/lang/String; = "DIRTY"

.field private static final j:Ljava/lang/String; = "REMOVE"

.field private static final k:Ljava/lang/String; = "READ"


# instance fields
.field final g:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final l:Ljava/io/File;

.field private final m:Ljava/io/File;

.field private final n:Ljava/io/File;

.field private final o:Ljava/io/File;

.field private final p:I

.field private q:J

.field private final r:I

.field private s:J

.field private t:Ljava/io/Writer;

.field private final u:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private v:I

.field private w:J

.field private final x:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-wide v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->s:J

    .line 146
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->u:Ljava/util/LinkedHashMap;

    .line 155
    iput-wide v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->w:J

    .line 158
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 160
    new-instance v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->x:Ljava/util/concurrent/Callable;

    .line 177
    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->l:Ljava/io/File;

    .line 178
    iput p2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->p:I

    .line 179
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->m:Ljava/io/File;

    .line 180
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->n:Ljava/io/File;

    .line 181
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->o:Ljava/io/File;

    .line 182
    iput p3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->r:I

    .line 183
    iput-wide p4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->q:J

    .line 184
    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/disklrucache/DiskLruCache;I)I
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->v:I

    return p1
.end method

.method static synthetic a(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a(Ljava/lang/String;J)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 445
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->k()V

    .line 446
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 447
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->e(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 467
    :goto_0
    monitor-exit p0

    return-object v0

    .line 451
    :cond_1
    if-nez v0, :cond_2

    .line 452
    :try_start_1
    new-instance v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V

    .line 453
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 458
    :goto_1
    new-instance v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V

    .line 459
    invoke-static {v1, v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 462
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;

    const-string v2, "DIRTY"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 463
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 464
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 465
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 466
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 454
    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 455
    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public static a(Ljava/io/File;IIJ)Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    if-gtz p2, :cond_1

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 217
    :cond_2
    :goto_0
    new-instance v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 218
    iget-object v1, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->m:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 220
    :try_start_0
    invoke-direct {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->g()V

    .line 221
    invoke-direct {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->h()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_1
    return-object v0

    .line 212
    :cond_3
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    .line 223
    :catch_0
    move-exception v1

    .line 224
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", removing"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->f()V

    .line 235
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 236
    new-instance v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 237
    invoke-direct {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->i()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 502
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    move-result-object v2

    .line 503
    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 504
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 508
    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->d(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v0

    .line 509
    :goto_0
    iget v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->r:I

    if-ge v1, v3, :cond_4

    .line 510
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->b(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-nez v3, :cond_1

    .line 511
    invoke-virtual {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->b()V

    .line 512
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

    .line 514
    :cond_1
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 515
    invoke-virtual {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 562
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 509
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 521
    :cond_4
    :goto_2
    :try_start_2
    iget v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->r:I

    if-ge v0, v1, :cond_7

    .line 522
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->b(I)Ljava/io/File;

    move-result-object v1

    .line 523
    if-eqz p2, :cond_6

    .line 524
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 525
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(I)Ljava/io/File;

    move-result-object v3

    .line 526
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 527
    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->b(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    .line 528
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 529
    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->b(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    .line 530
    iget-wide v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->s:J

    sub-long v4, v8, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->s:J

    .line 521
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 533
    :cond_6
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a(Ljava/io/File;)V

    goto :goto_3

    .line 537
    :cond_7
    iget v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->v:I

    .line 538
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 539
    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->d(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_a

    .line 540
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Z)Z

    .line 541
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;

    const-string v1, "CLEAN"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 542
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 543
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;

    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->c(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 544
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;

    invoke-virtual {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 545
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 547
    if-eqz p2, :cond_8

    .line 548
    iget-wide v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->w:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->w:J

    invoke-static {v2, v0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;J)J

    .line 557
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 559
    iget-wide v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->s:J

    iget-wide v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->q:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->x:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_1

    .line 551
    :cond_a
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->u:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->c(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;

    const-string v1, "REMOVE"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 553
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 554
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;

    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->c(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 555
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method static synthetic a(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 390
    :cond_0
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    if-eqz p2, :cond_0

    .line 394
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a(Ljava/io/File;)V

    .line 396
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 399
    :cond_1
    return-void
.end method

.method private static b(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 662
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/bumptech/glide/disklrucache/Util;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/Util;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->l()V

    return-void
.end method

.method static synthetic c(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Z
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->i()V

    return-void
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

    .line 282
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 283
    if-ne v2, v5, :cond_0

    .line 284
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

    .line 287
    :cond_0
    add-int/lit8 v0, v2, 0x1

    .line 288
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 290
    if-ne v3, v5, :cond_2

    .line 291
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    const-string v1, "REMOVE"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_7

    const-string v1, "REMOVE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 293
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_1
    :goto_0
    return-void

    .line 297
    :cond_2
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 300
    :goto_1
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 301
    if-nez v0, :cond_3

    .line 302
    new-instance v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    invoke-direct {v0, p0, v1, v6}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V

    .line 303
    iget-object v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
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

    .line 307
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 308
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Z)Z

    .line 309
    invoke-static {v0, v6}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 310
    invoke-static {v0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_0

    .line 311
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

    .line 312
    new-instance v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    invoke-direct {v1, p0, v0, v6}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V

    invoke-static {v0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    goto :goto_0

    .line 313
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

    .line 316
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

.method static synthetic e(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->r:I

    return v0
.end method

.method static synthetic f(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/File;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->l:Ljava/io/File;

    return-object v0
.end method

.method private g()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    new-instance v1, Lcom/bumptech/glide/disklrucache/StrictLineReader;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->m:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Lcom/bumptech/glide/disklrucache/Util;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/disklrucache/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 244
    :try_start_0
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->a()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->a()Ljava/lang/String;

    move-result-object v2

    .line 246
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->a()Ljava/lang/String;

    move-result-object v3

    .line 247
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->a()Ljava/lang/String;

    move-result-object v4

    .line 248
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->a()Ljava/lang/String;

    move-result-object v5

    .line 249
    const-string v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->p:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 254
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

    .line 277
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/Util;->a(Ljava/io/Closeable;)V

    throw v0

    .line 258
    :cond_1
    const/4 v0, 0x0

    .line 261
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :catch_0
    move-exception v2

    .line 267
    :try_start_2
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->v:I

    .line 270
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->i()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    :goto_1
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/Util;->a(Ljava/io/Closeable;)V

    .line 279
    return-void

    .line 273
    :cond_2
    :try_start_3
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->m:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/bumptech/glide/disklrucache/Util;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private h()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 325
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->n:Ljava/io/File;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a(Ljava/io/File;)V

    .line 326
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 327
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 328
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    .line 329
    :goto_1
    iget v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->r:I

    if-ge v1, v4, :cond_0

    .line 330
    iget-wide v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->s:J

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->b(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->s:J

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 333
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move v1, v2

    .line 334
    :goto_2
    iget v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->r:I

    if-ge v1, v4, :cond_2

    .line 335
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a(Ljava/io/File;)V

    .line 336
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->b(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a(Ljava/io/File;)V

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 338
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 341
    :cond_3
    return-void
.end method

.method private declared-synchronized i()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 352
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->n:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/bumptech/glide/disklrucache/Util;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 355
    :try_start_1
    const-string v0, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 356
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 357
    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 358
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 359
    iget v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->p:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 360
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 361
    iget v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 362
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 363
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->u:Ljava/util/LinkedHashMap;

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

    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 366
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->c(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 373
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 348
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 369
    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->c(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 373
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 376
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->m:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 377
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->m:Ljava/io/File;

    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->o:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 379
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->n:Ljava/io/File;

    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->m:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 380
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->o:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 382
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->m:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Lcom/bumptech/glide/disklrucache/Util;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 384
    monitor-exit p0

    return-void
.end method

.method private j()Z
    .locals 2

    .prologue
    .line 569
    .line 570
    iget v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->v:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->v:I

    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 618
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :cond_0
    return-void
.end method

.method private l()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 645
    :goto_0
    iget-wide v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->s:J

    iget-wide v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->q:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 647
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->c(Ljava/lang/String;)Z

    goto :goto_0

    .line 649
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 407
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->k()V

    .line 408
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    if-nez v0, :cond_1

    .line 433
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 413
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->d(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    iget-object v3, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a:[Ljava/io/File;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 419
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 417
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 424
    :cond_2
    iget v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->v:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->v:I

    .line 425
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;

    const-string v2, "READ"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 426
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 427
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 428
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 429
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 430
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->x:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 433
    :cond_3
    new-instance v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->e(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)J

    move-result-wide v4

    iget-object v6, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a:[Ljava/io/File;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->b(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[JLcom/bumptech/glide/disklrucache/DiskLruCache$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()Ljava/io/File;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->l:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized a(J)V
    .locals 3

    .prologue
    .line 488
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->q:J

    .line 489
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->x:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    monitor-exit p0

    return-void

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()J
    .locals 2

    .prologue
    .line 480
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a(Ljava/lang/String;J)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized c()J
    .locals 2

    .prologue
    .line 498
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->s:J
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

    .line 581
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->k()V

    .line 582
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 583
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 608
    :goto_0
    monitor-exit p0

    return v0

    .line 592
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->s:J

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->b(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->s:J

    .line 593
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->b(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    .line 587
    add-int/lit8 v1, v1, 0x1

    :cond_2
    iget v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->r:I

    if-ge v1, v2, :cond_3

    .line 588
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(I)Ljava/io/File;

    move-result-object v2

    .line 589
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 590
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to delete "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 596
    :cond_3
    :try_start_2
    iget v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->v:I

    .line 597
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;

    const-string v1, "REMOVE"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 598
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 599
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 600
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 602
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 605
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->x:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 608
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 631
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 642
    :goto_0
    monitor-exit p0

    return-void

    .line 634
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 635
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 636
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 631
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 639
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->l()V

    .line 640
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized d()Z
    .locals 1

    .prologue
    .line 613
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 624
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->k()V

    .line 625
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->l()V

    .line 626
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->t:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    monitor-exit p0

    return-void

    .line 624
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->close()V

    .line 658
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->l:Ljava/io/File;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/Util;->a(Ljava/io/File;)V

    .line 659
    return-void
.end method
