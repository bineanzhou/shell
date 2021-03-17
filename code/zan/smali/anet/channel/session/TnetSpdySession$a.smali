.class Lanet/channel/session/TnetSpdySession$a;
.super Lanet/channel/session/a;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/session/TnetSpdySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lanet/channel/session/TnetSpdySession;

.field private b:Lanet/channel/request/Request;

.field private c:Lanet/channel/RequestCb;

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>(Lanet/channel/session/TnetSpdySession;Lanet/channel/request/Request;Lanet/channel/RequestCb;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 634
    iput-object p1, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    invoke-direct {p0}, Lanet/channel/session/a;-><init>()V

    .line 631
    iput-wide v0, p0, Lanet/channel/session/TnetSpdySession$a;->d:J

    .line 632
    iput-wide v0, p0, Lanet/channel/session/TnetSpdySession$a;->e:J

    .line 633
    iput-wide v0, p0, Lanet/channel/session/TnetSpdySession$a;->f:J

    .line 635
    iput-object p2, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    .line 636
    iput-object p3, p0, Lanet/channel/session/TnetSpdySession$a;->c:Lanet/channel/RequestCb;

    .line 637
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lanet/channel/session/TnetSpdySession$a;->d:J

    .line 638
    return-void
.end method

.method private a(Lorg/android/spdy/SuperviseData;)V
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 690
    :try_start_0
    iget-wide v2, p0, Lanet/channel/session/TnetSpdySession$a;->e:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v2, p0, Lanet/channel/session/TnetSpdySession$a;->d:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_1

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    iget-object v2, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object v2, v2, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v4, p0, Lanet/channel/session/TnetSpdySession$a;->f:J

    iput-wide v4, v2, Lanet/channel/statist/RequestStatistic;->serverRT:J

    .line 695
    iget-object v2, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object v2, v2, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-object v3, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object v3, v3, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v4, v3, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    cmp-long v3, v4, v0

    if-eqz v3, :cond_2

    iget-wide v0, p0, Lanet/channel/session/TnetSpdySession$a;->e:J

    iget-object v3, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object v3, v3, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v4, v3, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    sub-long/2addr v0, v4

    :cond_2
    iput-wide v0, v2, Lanet/channel/statist/RequestStatistic;->recDataTime:J

    .line 696
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object v0, v0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, p0, Lanet/channel/session/TnetSpdySession$a;->e:J

    iget-object v1, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object v1, v1, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v4, v1, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->oneWayTime:J

    .line 697
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object v0, v0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-object v1, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object v1, v1, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, v1, Lanet/channel/statist/RequestStatistic;->oneWayTime:J

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->waitingTime:J

    .line 699
    if-eqz p1, :cond_0

    .line 700
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object v0, v0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, p1, Lorg/android/spdy/SuperviseData;->responseStart:J

    iget-wide v4, p1, Lorg/android/spdy/SuperviseData;->sendStart:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    .line 702
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object v0, v0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, p1, Lorg/android/spdy/SuperviseData;->responseEnd:J

    iget-wide v4, p1, Lorg/android/spdy/SuperviseData;->responseStart:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->recDataTime:J

    .line 703
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object v0, v0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, p1, Lorg/android/spdy/SuperviseData;->sendStart:J

    iget-wide v4, p0, Lanet/channel/session/TnetSpdySession$a;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->sendBeforeTime:J

    .line 704
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object v0, v0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, p1, Lorg/android/spdy/SuperviseData;->sendEnd:J

    iget-wide v4, p1, Lorg/android/spdy/SuperviseData;->sendStart:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->sendDataTime:J

    .line 705
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object v0, v0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget v1, p1, Lorg/android/spdy/SuperviseData;->bodySize:I

    iget v2, p1, Lorg/android/spdy/SuperviseData;->compressSize:I

    add-int/2addr v1, v2

    int-to-long v2, v1

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->sendDataSize:J

    .line 706
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object v0, v0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget v1, p1, Lorg/android/spdy/SuperviseData;->recvBodySize:I

    iget v2, p1, Lorg/android/spdy/SuperviseData;->recvCompressSize:I

    add-int/2addr v1, v2

    int-to-long v2, v1

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    .line 709
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    iget-object v0, v0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-wide v2, v0, Lanet/channel/statist/SessionStatistic;->recvSizeCount:J

    iget v1, p1, Lorg/android/spdy/SuperviseData;->recvBodySize:I

    iget v4, p1, Lorg/android/spdy/SuperviseData;->recvCompressSize:I

    add-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lanet/channel/statist/SessionStatistic;->recvSizeCount:J

    .line 710
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    iget-object v0, v0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-wide v2, v0, Lanet/channel/statist/SessionStatistic;->sendSizeCount:J

    iget v1, p1, Lorg/android/spdy/SuperviseData;->bodySize:I

    iget v4, p1, Lorg/android/spdy/SuperviseData;->compressSize:I

    add-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lanet/channel/statist/SessionStatistic;->sendSizeCount:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method


# virtual methods
.method public spdyDataChunkRecvCB(Lorg/android/spdy/SpdySession;ZJLorg/android/spdy/SpdyByteArray;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 643
    const-string v0, "awcn.TnetSpdySession"

    const-string v1, "spdyDataChunkRecvCB"

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    invoke-virtual {v2}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "len"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p5}, Lorg/android/spdy/SpdyByteArray;->getDataLength()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "fin"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 644
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object v0, v0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v0, v0, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 645
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object v0, v0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    .line 648
    :cond_0
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$a;->c:Lanet/channel/RequestCb;

    if-eqz v0, :cond_1

    .line 649
    sget-object v0, Lanet/channel/bytes/a$a;->a:Lanet/channel/bytes/a;

    invoke-virtual {p5}, Lorg/android/spdy/SpdyByteArray;->getByteArray()[B

    move-result-object v1

    invoke-virtual {p5}, Lorg/android/spdy/SpdyByteArray;->getDataLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lanet/channel/bytes/a;->a([BI)Lanet/channel/bytes/ByteArray;

    move-result-object v0

    .line 650
    invoke-virtual {p5}, Lorg/android/spdy/SpdyByteArray;->recycle()V

    .line 651
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession$a;->c:Lanet/channel/RequestCb;

    invoke-interface {v1, v0, p2}, Lanet/channel/RequestCb;->onDataReceive(Lanet/channel/bytes/ByteArray;Z)V

    .line 653
    :cond_1
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    sget-object v1, Lanet/channel/entity/EventType;->DATA_RECEIVE:Lanet/channel/entity/EventType;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lanet/channel/session/TnetSpdySession;->access$400(Lanet/channel/session/TnetSpdySession;Lanet/channel/entity/EventType;Lanet/channel/entity/d;)V

    .line 654
    return-void
.end method

.method public spdyOnStreamResponse(Lorg/android/spdy/SpdySession;JLjava/util/Map;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/android/spdy/SpdySession;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 719
    .line 722
    :try_start_0
    const-string v0, ":status"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 723
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 724
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    move v2, v0

    .line 729
    :goto_1
    if-lez v2, :cond_0

    .line 730
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object v0, v0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iput-boolean v7, v0, Lanet/channel/statist/RequestStatistic;->ret:Z

    .line 731
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    invoke-static {v0, v1}, Lanet/channel/session/TnetSpdySession;->access$502(Lanet/channel/session/TnetSpdySession;I)I

    .line 734
    :cond_0
    const-string v0, "awcn.TnetSpdySession"

    const-string v3, ""

    iget-object v4, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    invoke-virtual {v4}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "httpStatusCode"

    aput-object v6, v5, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v0, v3, v4, v5}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 735
    const-string v0, "awcn.TnetSpdySession"

    const-string v3, ""

    iget-object v4, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    invoke-virtual {v4}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "response headers"

    aput-object v6, v5, v1

    aput-object p4, v5, v7

    invoke-static {v0, v3, v4, v5}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 737
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$a;->c:Lanet/channel/RequestCb;

    if-eqz v0, :cond_1

    .line 738
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$a;->c:Lanet/channel/RequestCb;

    invoke-static {p4}, Lanet/channel/util/a;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lanet/channel/RequestCb;->onResponseCode(ILjava/util/Map;)V

    .line 741
    :cond_1
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    sget-object v1, Lanet/channel/entity/EventType;->HEADER_RECEIVE:Lanet/channel/entity/EventType;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lanet/channel/session/TnetSpdySession;->access$800(Lanet/channel/session/TnetSpdySession;Lanet/channel/entity/EventType;Lanet/channel/entity/d;)V

    .line 744
    :try_start_1
    const-string v0, "s-rt"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 745
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 746
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lanet/channel/session/TnetSpdySession$a;->f:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 751
    :cond_2
    :goto_2
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    iget-object v1, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    invoke-static {v0, v1, v2}, Lanet/channel/session/TnetSpdySession;->access$900(Lanet/channel/session/TnetSpdySession;Lanet/channel/request/Request;I)V

    .line 752
    return-void

    :catch_0
    move-exception v0

    move v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;JILjava/lang/Object;Lorg/android/spdy/SuperviseData;)V
    .locals 12

    .prologue
    const/16 v7, -0x12c

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 658
    const-string v2, "awcn.TnetSpdySession"

    const-string v3, "spdyStreamCloseCallback"

    iget-object v4, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    invoke-virtual {v4}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    const-string v6, "streamId"

    aput-object v6, v5, v8

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lanet/channel/session/TnetSpdySession$a;->e:J

    .line 660
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lanet/channel/session/TnetSpdySession$a;->a(Lorg/android/spdy/SuperviseData;)V

    .line 662
    const-string v2, "SUCCESS"

    .line 663
    if-eqz p4, :cond_1

    .line 664
    const/16 v3, -0x7d5

    move/from16 v0, p4

    if-eq v0, v3, :cond_0

    .line 665
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "statusCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lanet/channel/util/ErrorConstant;->formatMsg(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 666
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v3

    new-instance v4, Lanet/channel/statist/ExceptionStatistic;

    iget-object v5, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object v5, v5, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    const/4 v6, 0x0

    invoke-direct {v4, v7, v2, v5, v6}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 669
    :cond_0
    const-string v3, "awcn.TnetSpdySession"

    const-string v4, "spdyStreamCloseCallback error"

    iget-object v5, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    invoke-virtual {v5}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    const-string v7, "status code"

    aput-object v7, v6, v8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v3, v4, v5, v6}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 672
    :cond_1
    iget-object v3, p0, Lanet/channel/session/TnetSpdySession$a;->c:Lanet/channel/RequestCb;

    if-eqz v3, :cond_2

    .line 673
    iget-object v3, p0, Lanet/channel/session/TnetSpdySession$a;->c:Lanet/channel/RequestCb;

    iget-object v4, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object v4, v4, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    move/from16 v0, p4

    invoke-interface {v3, v0, v2, v4}, Lanet/channel/RequestCb;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    .line 677
    :cond_2
    const/16 v2, -0x7d4

    move/from16 v0, p4

    if-ne v0, v2, :cond_3

    .line 678
    iget-object v2, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    invoke-static {v2}, Lanet/channel/session/TnetSpdySession;->access$504(Lanet/channel/session/TnetSpdySession;)I

    move-result v2

    if-lt v2, v10, :cond_3

    .line 679
    new-instance v2, Lanet/channel/strategy/ConnEvent;

    invoke-direct {v2}, Lanet/channel/strategy/ConnEvent;-><init>()V

    .line 680
    iput-boolean v8, v2, Lanet/channel/strategy/ConnEvent;->isSuccess:Z

    .line 681
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v3

    iget-object v4, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    invoke-static {v4}, Lanet/channel/session/TnetSpdySession;->access$600(Lanet/channel/session/TnetSpdySession;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    invoke-static {v5}, Lanet/channel/session/TnetSpdySession;->access$700(Lanet/channel/session/TnetSpdySession;)Lanet/channel/strategy/IConnStrategy;

    move-result-object v5

    invoke-interface {v3, v4, v5, v2}, Lanet/channel/strategy/IStrategyInstance;->notifyConnEvent(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V

    .line 682
    iget-object v2, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    invoke-virtual {v2, v9}, Lanet/channel/session/TnetSpdySession;->close(Z)V

    .line 685
    :cond_3
    return-void
.end method
