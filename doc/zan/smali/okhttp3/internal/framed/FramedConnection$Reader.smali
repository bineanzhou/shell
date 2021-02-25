.class Lokhttp3/internal/framed/FramedConnection$Reader;
.super Lokhttp3/internal/NamedRunnable;
.source "FramedConnection.java"

# interfaces
.implements Lokhttp3/internal/framed/FrameReader$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/FramedConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Reader"
.end annotation


# instance fields
.field final a:Lokhttp3/internal/framed/FrameReader;

.field final synthetic c:Lokhttp3/internal/framed/FramedConnection;


# direct methods
.method private constructor <init>(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/FrameReader;)V
    .locals 4

    .prologue
    .line 577
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    .line 578
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    iput-object p2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->a:Lokhttp3/internal/framed/FrameReader;

    .line 580
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/FrameReader;Lokhttp3/internal/framed/FramedConnection$1;)V
    .locals 0

    .prologue
    .line 574
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/framed/FramedConnection$Reader;-><init>(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/FrameReader;)V

    return-void
.end method

.method private a(Lokhttp3/internal/framed/Settings;)V
    .locals 6

    .prologue
    .line 732
    invoke-static {}, Lokhttp3/internal/framed/FramedConnection;->g()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lokhttp3/internal/framed/FramedConnection$Reader$3;

    const-string v2, "OkHttp %s ACK Settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v5}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3, p1}, Lokhttp3/internal/framed/FramedConnection$Reader$3;-><init>(Lokhttp3/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/framed/Settings;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 740
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 744
    return-void
.end method

.method public a(IIIZ)V
    .locals 0

    .prologue
    .line 797
    return-void
.end method

.method public a(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 801
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0, p2, p3}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;ILjava/util/List;)V

    .line 802
    return-void
.end method

.method public a(IJ)V
    .locals 4

    .prologue
    .line 779
    if-nez p1, :cond_1

    .line 780
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter v1

    .line 781
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    iget-wide v2, v0, Lokhttp3/internal/framed/FramedConnection;->d:J

    add-long/2addr v2, p2

    iput-wide v2, v0, Lokhttp3/internal/framed/FramedConnection;->d:J

    .line 782
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 783
    monitor-exit v1

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 783
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 785
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0, p1}, Lokhttp3/internal/framed/FramedConnection;->a(I)Lokhttp3/internal/framed/FramedStream;

    move-result-object v1

    .line 786
    if-eqz v1, :cond_0

    .line 787
    monitor-enter v1

    .line 788
    :try_start_1
    invoke-virtual {v1, p2, p3}, Lokhttp3/internal/framed/FramedStream;->a(J)V

    .line 789
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public a(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V
    .locals 0

    .prologue
    .line 807
    return-void
.end method

.method public a(ILokhttp3/internal/framed/ErrorCode;)V
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0, p1}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0, p1, p2}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;ILokhttp3/internal/framed/ErrorCode;)V

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0, p1}, Lokhttp3/internal/framed/FramedConnection;->b(I)Lokhttp3/internal/framed/FramedStream;

    move-result-object v0

    .line 690
    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {v0, p2}, Lokhttp3/internal/framed/FramedStream;->c(Lokhttp3/internal/framed/ErrorCode;)V

    goto :goto_0
.end method

.method public a(ILokhttp3/internal/framed/ErrorCode;Lokio/ByteString;)V
    .locals 5

    .prologue
    .line 759
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 764
    :cond_0
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter v1

    .line 765
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedConnection;->e(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v2}, Lokhttp3/internal/framed/FramedConnection;->e(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lokhttp3/internal/framed/FramedStream;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/framed/FramedStream;

    .line 766
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lokhttp3/internal/framed/FramedConnection;->b(Lokhttp3/internal/framed/FramedConnection;Z)Z

    .line 767
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 771
    invoke-virtual {v3}, Lokhttp3/internal/framed/FramedStream;->a()I

    move-result v4

    if-le v4, p1, :cond_1

    invoke-virtual {v3}, Lokhttp3/internal/framed/FramedStream;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 772
    sget-object v4, Lokhttp3/internal/framed/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v3, v4}, Lokhttp3/internal/framed/FramedStream;->c(Lokhttp3/internal/framed/ErrorCode;)V

    .line 773
    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v3}, Lokhttp3/internal/framed/FramedStream;->a()I

    move-result v3

    invoke-virtual {v4, v3}, Lokhttp3/internal/framed/FramedConnection;->b(I)Lokhttp3/internal/framed/FramedStream;

    .line 770
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 767
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 776
    :cond_2
    return-void
.end method

.method public a(ZII)V
    .locals 3

    .prologue
    .line 747
    if-eqz p1, :cond_1

    .line 748
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0, p2}, Lokhttp3/internal/framed/FramedConnection;->c(Lokhttp3/internal/framed/FramedConnection;I)Lokhttp3/internal/framed/Ping;

    move-result-object v0

    .line 749
    if-eqz v0, :cond_0

    .line 750
    invoke-virtual {v0}, Lokhttp3/internal/framed/Ping;->b()V

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, p3, v2}, Lokhttp3/internal/framed/FramedConnection;->b(Lokhttp3/internal/framed/FramedConnection;ZIILokhttp3/internal/framed/Ping;)V

    goto :goto_0
.end method

.method public a(ZILokio/BufferedSource;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 607
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0, p2}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0, p2, p3, p4, p1}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;ILokio/BufferedSource;IZ)V

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0, p2}, Lokhttp3/internal/framed/FramedConnection;->a(I)Lokhttp3/internal/framed/FramedStream;

    move-result-object v0

    .line 612
    if-nez v0, :cond_2

    .line 613
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->INVALID_STREAM:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v0, p2, v1}, Lokhttp3/internal/framed/FramedConnection;->a(ILokhttp3/internal/framed/ErrorCode;)V

    .line 614
    int-to-long v0, p4

    invoke-interface {p3, v0, v1}, Lokio/BufferedSource;->h(J)V

    goto :goto_0

    .line 617
    :cond_2
    invoke-virtual {v0, p3, p4}, Lokhttp3/internal/framed/FramedStream;->a(Lokio/BufferedSource;I)V

    .line 618
    if-eqz p1, :cond_0

    .line 619
    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->l()V

    goto :goto_0
.end method

.method public a(ZLokhttp3/internal/framed/Settings;)V
    .locals 13

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 696
    .line 697
    const/4 v0, 0x0

    .line 698
    iget-object v8, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter v8

    .line 699
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    iget-object v2, v2, Lokhttp3/internal/framed/FramedConnection;->f:Lokhttp3/internal/framed/Settings;

    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Lokhttp3/internal/framed/Settings;->l(I)I

    move-result v2

    .line 700
    if-eqz p1, :cond_0

    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    iget-object v3, v3, Lokhttp3/internal/framed/FramedConnection;->f:Lokhttp3/internal/framed/Settings;

    invoke-virtual {v3}, Lokhttp3/internal/framed/Settings;->a()V

    .line 701
    :cond_0
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    iget-object v3, v3, Lokhttp3/internal/framed/FramedConnection;->f:Lokhttp3/internal/framed/Settings;

    invoke-virtual {v3, p2}, Lokhttp3/internal/framed/Settings;->a(Lokhttp3/internal/framed/Settings;)V

    .line 702
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v3}, Lokhttp3/internal/framed/FramedConnection;->a()Lokhttp3/Protocol;

    move-result-object v3

    sget-object v4, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne v3, v4, :cond_1

    .line 703
    invoke-direct {p0, p2}, Lokhttp3/internal/framed/FramedConnection$Reader;->a(Lokhttp3/internal/framed/Settings;)V

    .line 705
    :cond_1
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    iget-object v3, v3, Lokhttp3/internal/framed/FramedConnection;->f:Lokhttp3/internal/framed/Settings;

    const/high16 v4, 0x10000

    invoke-virtual {v3, v4}, Lokhttp3/internal/framed/Settings;->l(I)I

    move-result v3

    .line 706
    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    if-eq v3, v2, :cond_5

    .line 707
    sub-int v2, v3, v2

    int-to-long v2, v2

    .line 708
    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v4}, Lokhttp3/internal/framed/FramedConnection;->g(Lokhttp3/internal/framed/FramedConnection;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 709
    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v4, v2, v3}, Lokhttp3/internal/framed/FramedConnection;->a(J)V

    .line 710
    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;Z)Z

    .line 712
    :cond_2
    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v4}, Lokhttp3/internal/framed/FramedConnection;->e(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 713
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedConnection;->e(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v4}, Lokhttp3/internal/framed/FramedConnection;->e(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lokhttp3/internal/framed/FramedStream;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/framed/FramedStream;

    move-wide v4, v2

    move-object v2, v0

    .line 716
    :goto_0
    invoke-static {}, Lokhttp3/internal/framed/FramedConnection;->g()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v3, Lokhttp3/internal/framed/FramedConnection$Reader$2;

    const-string v9, "OkHttp %s settings"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v12}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-direct {v3, p0, v9, v10}, Lokhttp3/internal/framed/FramedConnection$Reader$2;-><init>(Lokhttp3/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 721
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    if-eqz v2, :cond_3

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    .line 723
    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v1, v2, v0

    .line 724
    monitor-enter v1

    .line 725
    :try_start_1
    invoke-virtual {v1, v4, v5}, Lokhttp3/internal/framed/FramedStream;->a(J)V

    .line 726
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 721
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 726
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 729
    :cond_3
    return-void

    :cond_4
    move-wide v4, v2

    move-object v2, v0

    goto :goto_0

    :cond_5
    move-object v2, v0

    move-wide v4, v6

    goto :goto_0
.end method

.method public a(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;",
            "Lokhttp3/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 625
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0, p3}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0, p3, p5, p2}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;ILjava/util/List;Z)V

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    iget-object v6, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter v6

    .line 632
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedConnection;->b(Lokhttp3/internal/framed/FramedConnection;)Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit v6

    goto :goto_0

    .line 670
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 634
    :cond_2
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0, p3}, Lokhttp3/internal/framed/FramedConnection;->a(I)Lokhttp3/internal/framed/FramedStream;

    move-result-object v0

    .line 636
    if-nez v0, :cond_6

    .line 638
    invoke-virtual {p6}, Lokhttp3/internal/framed/HeadersMode;->failIfStreamAbsent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 639
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->INVALID_STREAM:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v0, p3, v1}, Lokhttp3/internal/framed/FramedConnection;->a(ILokhttp3/internal/framed/ErrorCode;)V

    .line 640
    monitor-exit v6

    goto :goto_0

    .line 644
    :cond_3
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedConnection;->c(Lokhttp3/internal/framed/FramedConnection;)I

    move-result v0

    if-gt p3, v0, :cond_4

    monitor-exit v6

    goto :goto_0

    .line 647
    :cond_4
    rem-int/lit8 v0, p3, 0x2

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedConnection;->d(Lokhttp3/internal/framed/FramedConnection;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_5

    monitor-exit v6

    goto :goto_0

    .line 651
    :cond_5
    new-instance v0, Lokhttp3/internal/framed/FramedStream;

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    move v1, p3

    move v3, p1

    move v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/FramedStream;-><init>(ILokhttp3/internal/framed/FramedConnection;ZZLjava/util/List;)V

    .line 653
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v1, p3}, Lokhttp3/internal/framed/FramedConnection;->b(Lokhttp3/internal/framed/FramedConnection;I)I

    .line 654
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedConnection;->e(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    invoke-static {}, Lokhttp3/internal/framed/FramedConnection;->g()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lokhttp3/internal/framed/FramedConnection$Reader$1;

    const-string v3, "OkHttp %s stream %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v7}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-direct {v2, p0, v3, v4, v0}, Lokhttp3/internal/framed/FramedConnection$Reader$1;-><init>(Lokhttp3/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/framed/FramedStream;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 668
    monitor-exit v6

    goto :goto_0

    .line 670
    :cond_6
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 673
    invoke-virtual {p6}, Lokhttp3/internal/framed/HeadersMode;->failIfStreamPresent()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 674
    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/FramedStream;->b(Lokhttp3/internal/framed/ErrorCode;)V

    .line 675
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0, p3}, Lokhttp3/internal/framed/FramedConnection;->b(I)Lokhttp3/internal/framed/FramedStream;

    goto/16 :goto_0

    .line 680
    :cond_7
    invoke-virtual {v0, p5, p6}, Lokhttp3/internal/framed/FramedStream;->a(Ljava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    .line 681
    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->l()V

    goto/16 :goto_0
.end method

.method protected d()V
    .locals 5

    .prologue
    .line 583
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    .line 584
    sget-object v2, Lokhttp3/internal/framed/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    .line 586
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    iget-boolean v1, v1, Lokhttp3/internal/framed/FramedConnection;->b:Z

    if-nez v1, :cond_0

    .line 587
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->a:Lokhttp3/internal/framed/FrameReader;

    invoke-interface {v1}, Lokhttp3/internal/framed/FrameReader;->a()V

    .line 589
    :cond_0
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->a:Lokhttp3/internal/framed/FrameReader;

    invoke-interface {v1, p0}, Lokhttp3/internal/framed/FrameReader;->a(Lokhttp3/internal/framed/FrameReader$Handler;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 591
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->NO_ERROR:Lokhttp3/internal/framed/ErrorCode;

    .line 592
    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->CANCEL:Lokhttp3/internal/framed/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    :try_start_1
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v2, v0, v1}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 601
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->a:Lokhttp3/internal/framed/FrameReader;

    invoke-static {v0}, Lokhttp3/internal/Util;->a(Ljava/io/Closeable;)V

    .line 603
    :goto_1
    return-void

    .line 593
    :catch_0
    move-exception v1

    .line 594
    :try_start_2
    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/framed/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 595
    :try_start_3
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/framed/ErrorCode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 598
    :try_start_4
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v2, v1, v0}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 601
    :goto_2
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->a:Lokhttp3/internal/framed/FrameReader;

    invoke-static {v0}, Lokhttp3/internal/Util;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 597
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 598
    :goto_3
    :try_start_5
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v3, v1, v2}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 601
    :goto_4
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->a:Lokhttp3/internal/framed/FrameReader;

    invoke-static {v1}, Lokhttp3/internal/Util;->a(Ljava/io/Closeable;)V

    throw v0

    .line 599
    :catch_1
    move-exception v1

    goto :goto_4

    .line 597
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 599
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_0
.end method
