.class final Lokhttp3/internal/framed/Http2$Writer;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lokhttp3/internal/framed/FrameWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field final a:Lokhttp3/internal/framed/Hpack$Writer;

.field private final b:Lokio/BufferedSink;

.field private final c:Z

.field private final d:Lokio/Buffer;

.field private e:I

.field private f:Z


# direct methods
.method constructor <init>(Lokio/BufferedSink;Z)V
    .locals 2

    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-object p1, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Lokio/BufferedSink;

    .line 369
    iput-boolean p2, p0, Lokhttp3/internal/framed/Http2$Writer;->c:Z

    .line 370
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->d:Lokio/Buffer;

    .line 371
    new-instance v0, Lokhttp3/internal/framed/Hpack$Writer;

    iget-object v1, p0, Lokhttp3/internal/framed/Http2$Writer;->d:Lokio/Buffer;

    invoke-direct {v0, v1}, Lokhttp3/internal/framed/Hpack$Writer;-><init>(Lokio/Buffer;)V

    iput-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokhttp3/internal/framed/Hpack$Writer;

    .line 372
    const/16 v0, 0x4000

    iput v0, p0, Lokhttp3/internal/framed/Http2$Writer;->e:I

    .line 373
    return-void
.end method

.method private b(IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 457
    :goto_0
    cmp-long v0, p2, v6

    if-lez v0, :cond_1

    .line 458
    iget v0, p0, Lokhttp3/internal/framed/Http2$Writer;->e:I

    int-to-long v0, v0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 459
    int-to-long v2, v1

    sub-long/2addr p2, v2

    .line 460
    const/16 v2, 0x9

    cmp-long v0, p2, v6

    if-nez v0, :cond_0

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p0, p1, v1, v2, v0}, Lokhttp3/internal/framed/Http2$Writer;->a(IIBB)V

    .line 461
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Lokio/BufferedSink;

    iget-object v2, p0, Lokhttp3/internal/framed/Http2$Writer;->d:Lokio/Buffer;

    int-to-long v4, v1

    invoke-interface {v0, v2, v4, v5}, Lokio/BufferedSink;->a_(Lokio/Buffer;J)V

    goto :goto_0

    .line 460
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 463
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 397
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 403
    :goto_0
    monitor-exit p0

    return-void

    .line 398
    :cond_1
    :try_start_2
    invoke-static {}, Lokhttp3/internal/framed/Http2;->c()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    invoke-static {}, Lokhttp3/internal/framed/Http2;->c()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lokhttp3/internal/framed/Http2;->b()Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lokhttp3/internal/Util;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 401
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Lokio/BufferedSink;

    invoke-static {}, Lokhttp3/internal/framed/Http2;->b()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->d([B)Lokio/BufferedSink;

    .line 402
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method a(IBLokio/Buffer;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    const/4 v0, 0x0

    .line 492
    invoke-virtual {p0, p1, p4, v0, p2}, Lokhttp3/internal/framed/Http2$Writer;->a(IIBB)V

    .line 493
    if-lez p4, :cond_0

    .line 494
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Lokio/BufferedSink;

    int-to-long v2, p4

    invoke-interface {v0, p3, v2, v3}, Lokio/BufferedSink;->a_(Lokio/Buffer;J)V

    .line 496
    :cond_0
    return-void
.end method

.method a(IIBB)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 570
    invoke-static {}, Lokhttp3/internal/framed/Http2;->c()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lokhttp3/internal/framed/Http2;->c()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-static {v3, p1, p2, p3, p4}, Lokhttp3/internal/framed/Http2$FrameLogger;->a(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 571
    :cond_0
    iget v0, p0, Lokhttp3/internal/framed/Http2$Writer;->e:I

    if-le p2, v0, :cond_1

    .line 572
    const-string v0, "FRAME_SIZE_ERROR length > %d: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lokhttp3/internal/framed/Http2$Writer;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 574
    :cond_1
    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    const-string v0, "reserved bit set: %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 575
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Lokio/BufferedSink;

    invoke-static {v0, p2}, Lokhttp3/internal/framed/Http2;->a(Lokio/BufferedSink;I)V

    .line 576
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Lokio/BufferedSink;

    and-int/lit16 v1, p3, 0xff

    invoke-interface {v0, v1}, Lokio/BufferedSink;->m(I)Lokio/BufferedSink;

    .line 577
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Lokio/BufferedSink;

    and-int/lit16 v1, p4, 0xff

    invoke-interface {v0, v1}, Lokio/BufferedSink;->m(I)Lokio/BufferedSink;

    .line 578
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Lokio/BufferedSink;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->j(I)Lokio/BufferedSink;

    .line 579
    return-void
.end method

.method public declared-synchronized a(IILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 428
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokhttp3/internal/framed/Hpack$Writer;

    invoke-virtual {v0, p3}, Lokhttp3/internal/framed/Hpack$Writer;->a(Ljava/util/List;)V

    .line 430
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->d:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->b()J

    move-result-wide v2

    .line 431
    iget v0, p0, Lokhttp3/internal/framed/Http2$Writer;->e:I

    add-int/lit8 v0, v0, -0x4

    int-to-long v0, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 432
    const/4 v4, 0x5

    .line 433
    int-to-long v6, v1

    cmp-long v0, v2, v6

    if-nez v0, :cond_2

    const/4 v0, 0x4

    .line 434
    :goto_0
    add-int/lit8 v5, v1, 0x4

    invoke-virtual {p0, p1, v5, v4, v0}, Lokhttp3/internal/framed/Http2$Writer;->a(IIBB)V

    .line 435
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Lokio/BufferedSink;

    const v4, 0x7fffffff

    and-int/2addr v4, p2

    invoke-interface {v0, v4}, Lokio/BufferedSink;->j(I)Lokio/BufferedSink;

    .line 436
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Lokio/BufferedSink;

    iget-object v4, p0, Lokhttp3/internal/framed/Http2$Writer;->d:Lokio/Buffer;

    int-to-long v6, v1

    invoke-interface {v0, v4, v6, v7}, Lokio/BufferedSink;->a_(Lokio/Buffer;J)V

    .line 438
    int-to-long v4, v1

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    int-to-long v0, v1

    sub-long v0, v2, v0

    invoke-direct {p0, p1, v0, v1}, Lokhttp3/internal/framed/Http2$Writer;->b(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    :cond_1
    monitor-exit p0

    return-void

    .line 433
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized a(IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 552
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 553
    :cond_1
    :try_start_1
    const-string v0, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 554
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 553
    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 556
    :cond_2
    const/4 v0, 0x4

    .line 557
    const/16 v1, 0x8

    .line 558
    const/4 v2, 0x0

    .line 559
    invoke-virtual {p0, p1, v0, v1, v2}, Lokhttp3/internal/framed/Http2$Writer;->a(IIBB)V

    .line 560
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Lokio/BufferedSink;

    long-to-int v1, p2

    invoke-interface {v0, v1}, Lokio/BufferedSink;->j(I)Lokio/BufferedSink;

    .line 561
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 562
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 422
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0, p1, p2}, Lokhttp3/internal/framed/Http2$Writer;->b(ZILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ILokhttp3/internal/framed/ErrorCode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 468
    :cond_0
    :try_start_1
    iget v0, p2, Lokhttp3/internal/framed/ErrorCode;->httpCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 470
    :cond_1
    const/4 v0, 0x4

    .line 471
    const/4 v1, 0x3

    .line 472
    const/4 v2, 0x0

    .line 473
    invoke-virtual {p0, p1, v0, v1, v2}, Lokhttp3/internal/framed/Http2$Writer;->a(IIBB)V

    .line 474
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Lokio/BufferedSink;

    iget v1, p2, Lokhttp3/internal/framed/ErrorCode;->httpCode:I

    invoke-interface {v0, v1}, Lokio/BufferedSink;->j(I)Lokio/BufferedSink;

    .line 475
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ILokhttp3/internal/framed/ErrorCode;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 535
    :cond_0
    :try_start_1
    iget v0, p2, Lokhttp3/internal/framed/ErrorCode;->httpCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "errorCode.httpCode == -1"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 536
    :cond_1
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    .line 537
    const/4 v1, 0x7

    .line 538
    const/4 v2, 0x0

    .line 539
    const/4 v3, 0x0

    .line 540
    invoke-virtual {p0, v3, v0, v1, v2}, Lokhttp3/internal/framed/Http2$Writer;->a(IIBB)V

    .line 541
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Lokio/BufferedSink;

    invoke-interface {v0, p1}, Lokio/BufferedSink;->j(I)Lokio/BufferedSink;

    .line 542
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Lokio/BufferedSink;

    iget v1, p2, Lokhttp3/internal/framed/ErrorCode;->httpCode:I

    invoke-interface {v0, v1}, Lokio/BufferedSink;->j(I)Lokio/BufferedSink;

    .line 543
    array-length v0, p3

    if-lez v0, :cond_2

    .line 544
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Lokio/BufferedSink;

    invoke-interface {v0, p3}, Lokio/BufferedSink;->d([B)Lokio/BufferedSink;

    .line 546
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Lokhttp3/internal/framed/Settings;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 383
    :cond_0
    :try_start_1
    iget v0, p0, Lokhttp3/internal/framed/Http2$Writer;->e:I

    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/Settings;->i(I)I

    move-result v0

    iput v0, p0, Lokhttp3/internal/framed/Http2$Writer;->e:I

    .line 384
    invoke-virtual {p1}, Lokhttp3/internal/framed/Settings;->c()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 385
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokhttp3/internal/framed/Hpack$Writer;

    invoke-virtual {p1}, Lokhttp3/internal/framed/Settings;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/Hpack$Writer;->a(I)V

    .line 387
    :cond_1
    const/4 v0, 0x0

    .line 388
    const/4 v1, 0x4

    .line 389
    const/4 v2, 0x1

    .line 390
    const/4 v3, 0x0

    .line 391
    invoke-virtual {p0, v3, v0, v1, v2}, Lokhttp3/internal/framed/Http2$Writer;->a(IIBB)V

    .line 392
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ZII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 521
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lokhttp3/internal/framed/Http2$Writer;->f:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 522
    :cond_0
    const/16 v1, 0x8

    .line 523
    const/4 v2, 0x6

    .line 524
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 525
    :cond_1
    const/4 v3, 0x0

    .line 526
    :try_start_1
    invoke-virtual {p0, v3, v1, v2, v0}, Lokhttp3/internal/framed/Http2$Writer;->a(IIBB)V

    .line 527
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Lokio/BufferedSink;

    invoke-interface {v0, p2}, Lokio/BufferedSink;->j(I)Lokio/BufferedSink;

    .line 528
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Lokio/BufferedSink;

    invoke-interface {v0, p3}, Lokio/BufferedSink;->j(I)Lokio/BufferedSink;

    .line 529
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ZILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 416
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lokhttp3/internal/framed/Http2$Writer;->b(ZILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ZILokio/Buffer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 485
    :cond_0
    const/4 v0, 0x0

    .line 486
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    int-to-byte v0, v0

    .line 487
    :cond_1
    :try_start_1
    invoke-virtual {p0, p2, v0, p3, p4}, Lokhttp3/internal/framed/Http2$Writer;->a(IBLokio/Buffer;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ZZIILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 409
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->f:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_1
    invoke-virtual {p0, p1, p3, p5}, Lokhttp3/internal/framed/Http2$Writer;->b(ZILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 377
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(Lokhttp3/internal/framed/Settings;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 499
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 500
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lokhttp3/internal/framed/Settings;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    .line 501
    const/4 v3, 0x4

    .line 502
    const/4 v4, 0x0

    .line 503
    const/4 v5, 0x0

    .line 504
    invoke-virtual {p0, v5, v0, v3, v4}, Lokhttp3/internal/framed/Http2$Writer;->a(IIBB)V

    .line 505
    :goto_0
    const/16 v0, 0xa

    if-ge v2, v0, :cond_3

    .line 506
    invoke-virtual {p1, v2}, Lokhttp3/internal/framed/Settings;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 505
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 508
    :cond_1
    if-ne v2, v1, :cond_2

    .line 509
    const/4 v0, 0x3

    .line 513
    :goto_2
    iget-object v3, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Lokio/BufferedSink;

    invoke-interface {v3, v0}, Lokio/BufferedSink;->l(I)Lokio/BufferedSink;

    .line 514
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Lokio/BufferedSink;

    invoke-virtual {p1, v2}, Lokhttp3/internal/framed/Settings;->b(I)I

    move-result v3

    invoke-interface {v0, v3}, Lokio/BufferedSink;->j(I)Lokio/BufferedSink;

    goto :goto_1

    .line 510
    :cond_2
    const/4 v0, 0x7

    if-ne v2, v0, :cond_4

    move v0, v1

    .line 511
    goto :goto_2

    .line 516
    :cond_3
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    monitor-exit p0

    return-void

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method b(ZILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 442
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokhttp3/internal/framed/Hpack$Writer;

    invoke-virtual {v0, p3}, Lokhttp3/internal/framed/Hpack$Writer;->a(Ljava/util/List;)V

    .line 445
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->d:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->b()J

    move-result-wide v2

    .line 446
    iget v0, p0, Lokhttp3/internal/framed/Http2$Writer;->e:I

    int-to-long v0, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 447
    const/4 v4, 0x1

    .line 448
    int-to-long v6, v1

    cmp-long v0, v2, v6

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 449
    :goto_0
    if-eqz p1, :cond_1

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    .line 450
    :cond_1
    invoke-virtual {p0, p2, v1, v4, v0}, Lokhttp3/internal/framed/Http2$Writer;->a(IIBB)V

    .line 451
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Lokio/BufferedSink;

    iget-object v4, p0, Lokhttp3/internal/framed/Http2$Writer;->d:Lokio/Buffer;

    int-to-long v6, v1

    invoke-interface {v0, v4, v6, v7}, Lokio/BufferedSink;->a_(Lokio/Buffer;J)V

    .line 453
    int-to-long v4, v1

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    int-to-long v0, v1

    sub-long v0, v2, v0

    invoke-direct {p0, p2, v0, v1}, Lokhttp3/internal/framed/Http2$Writer;->b(IJ)V

    .line 454
    :cond_2
    return-void

    .line 448
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lokhttp3/internal/framed/Http2$Writer;->e:I

    return v0
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->f:Z

    .line 566
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    monitor-exit p0

    return-void

    .line 565
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
