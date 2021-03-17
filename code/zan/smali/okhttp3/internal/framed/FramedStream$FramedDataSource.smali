.class final Lokhttp3/internal/framed/FramedStream$FramedDataSource;
.super Ljava/lang/Object;
.source "FramedStream.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/FramedStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FramedDataSource"
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lokhttp3/internal/framed/FramedStream;

.field private final c:Lokio/Buffer;

.field private final d:Lokio/Buffer;

.field private final e:J

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 313
    const-class v0, Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lokhttp3/internal/framed/FramedStream;J)V
    .locals 2

    .prologue
    .line 332
    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->c:Lokio/Buffer;

    .line 318
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->d:Lokio/Buffer;

    .line 333
    iput-wide p2, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->e:J

    .line 334
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/framed/FramedStream;JLokhttp3/internal/framed/FramedStream$1;)V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;-><init>(Lokhttp3/internal/framed/FramedStream;J)V

    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/FramedStream$FramedDataSource;)Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->g:Z

    return v0
.end method

.method static synthetic a(Lokhttp3/internal/framed/FramedStream$FramedDataSource;Z)Z
    .locals 0

    .prologue
    .line 313
    iput-boolean p1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->g:Z

    return p1
.end method

.method private b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->c(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->c()V

    .line 375
    :goto_0
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->d:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->d(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->e(Lokhttp3/internal/framed/FramedStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream;->c(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->b()V

    throw v0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->c(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->b()V

    .line 381
    return-void
.end method

.method static synthetic b(Lokhttp3/internal/framed/FramedStream$FramedDataSource;)Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->f:Z

    return v0
.end method

.method private c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->f:Z

    if-eqz v0, :cond_0

    .line 438
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->d(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 441
    new-instance v0, Lokhttp3/internal/framed/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream;->d(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v1

    invoke-direct {v0, v1}, Lokhttp3/internal/framed/StreamResetException;-><init>(Lokhttp3/internal/framed/ErrorCode;)V

    throw v0

    .line 443
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lokio/Buffer;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 338
    cmp-long v0, p2, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_0
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v2

    .line 342
    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b()V

    .line 343
    invoke-direct {p0}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->c()V

    .line 344
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->d:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->b()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    monitor-exit v2

    .line 368
    :goto_0
    return-wide v0

    .line 347
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->d:Lokio/Buffer;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->d:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->b()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v0, p1, v4, v5}, Lokio/Buffer;->a(Lokio/Buffer;J)J

    move-result-wide v0

    .line 350
    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    iget-wide v4, v3, Lokhttp3/internal/framed/FramedStream;->a:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lokhttp3/internal/framed/FramedStream;->a:J

    .line 351
    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    iget-wide v4, v3, Lokhttp3/internal/framed/FramedStream;->a:J

    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    .line 352
    invoke-static {v3}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v3

    iget-object v3, v3, Lokhttp3/internal/framed/FramedConnection;->e:Lokhttp3/internal/framed/Settings;

    const/high16 v6, 0x10000

    invoke-virtual {v3, v6}, Lokhttp3/internal/framed/Settings;->l(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_2

    .line 353
    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v3}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v4}, Lokhttp3/internal/framed/FramedStream;->b(Lokhttp3/internal/framed/FramedStream;)I

    move-result v4

    iget-object v5, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    iget-wide v6, v5, Lokhttp3/internal/framed/FramedStream;->a:J

    invoke-virtual {v3, v4, v6, v7}, Lokhttp3/internal/framed/FramedConnection;->a(IJ)V

    .line 354
    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lokhttp3/internal/framed/FramedStream;->a:J

    .line 356
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 359
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v2}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v2

    monitor-enter v2

    .line 360
    :try_start_1
    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v3}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v3

    iget-wide v4, v3, Lokhttp3/internal/framed/FramedConnection;->c:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lokhttp3/internal/framed/FramedConnection;->c:J

    .line 361
    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v3}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v3

    iget-wide v4, v3, Lokhttp3/internal/framed/FramedConnection;->c:J

    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    .line 362
    invoke-static {v3}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v3

    iget-object v3, v3, Lokhttp3/internal/framed/FramedConnection;->e:Lokhttp3/internal/framed/Settings;

    const/high16 v6, 0x10000

    invoke-virtual {v3, v6}, Lokhttp3/internal/framed/Settings;->l(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_3

    .line 363
    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v3}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v5}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v5

    iget-wide v6, v5, Lokhttp3/internal/framed/FramedConnection;->c:J

    invoke-virtual {v3, v4, v6, v7}, Lokhttp3/internal/framed/FramedConnection;->a(IJ)V

    .line 364
    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v3}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v3

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lokhttp3/internal/framed/FramedConnection;->c:J

    .line 366
    :cond_3
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 356
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public a()Lokio/Timeout;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->c(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    return-object v0
.end method

.method a(Lokio/BufferedSource;J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 384
    sget-boolean v0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 410
    :cond_0
    sub-long/2addr p2, v4

    .line 413
    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v3

    .line 414
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->d:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->b()J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-nez v0, :cond_7

    move v0, v1

    .line 415
    :goto_0
    iget-object v4, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->d:Lokio/Buffer;

    iget-object v5, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->c:Lokio/Buffer;

    invoke-virtual {v4, v5}, Lokio/Buffer;->a(Lokio/Source;)J

    .line 416
    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 419
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 386
    :cond_2
    cmp-long v0, p2, v10

    if-lez v0, :cond_3

    .line 389
    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v3

    .line 390
    :try_start_1
    iget-boolean v4, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->g:Z

    .line 391
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->d:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->b()J

    move-result-wide v6

    add-long/2addr v6, p2

    iget-wide v8, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->e:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_4

    move v0, v1

    .line 392
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    if-eqz v0, :cond_5

    .line 396
    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->h(J)V

    .line 397
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/FramedStream;->b(Lokhttp3/internal/framed/ErrorCode;)V

    .line 421
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v0, v2

    .line 391
    goto :goto_1

    .line 392
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 402
    :cond_5
    if-eqz v4, :cond_6

    .line 403
    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->h(J)V

    goto :goto_2

    .line 408
    :cond_6
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->c:Lokio/Buffer;

    invoke-interface {p1, v0, p2, p3}, Lokio/BufferedSource;->a(Lokio/Buffer;J)J

    move-result-wide v4

    .line 409
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_7
    move v0, v2

    .line 414
    goto :goto_0

    .line 419
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v1

    .line 429
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->f:Z

    .line 430
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->d:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->y()V

    .line 431
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 432
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->f(Lokhttp3/internal/framed/FramedStream;)V

    .line 434
    return-void

    .line 432
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
