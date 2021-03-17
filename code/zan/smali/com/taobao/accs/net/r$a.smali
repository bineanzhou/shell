.class Lcom/taobao/accs/net/r$a;
.super Ljava/lang/Thread;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/net/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:I

.field b:J

.field final synthetic c:Lcom/taobao/accs/net/r;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taobao/accs/net/r;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 707
    iput-object p1, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    .line 708
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p0}, Lcom/taobao/accs/net/r$a;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    .line 703
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/accs/net/r$a;->a:I

    .line 709
    return-void
.end method

.method private a(Z)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1388

    const/4 v5, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 712
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->b(Lcom/taobao/accs/net/r;)I

    move-result v0

    if-eq v0, v3, :cond_7

    .line 713
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget-object v0, v0, Lcom/taobao/accs/net/r;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget v2, v2, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Network not available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    if-eqz p1, :cond_2

    .line 718
    iput v4, p0, Lcom/taobao/accs/net/r$a;->a:I

    .line 720
    :cond_2
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget v2, v2, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " try connect, force = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failTimes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/taobao/accs/net/r$a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 722
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->b(Lcom/taobao/accs/net/r;)I

    move-result v0

    if-eq v0, v3, :cond_3

    iget v0, p0, Lcom/taobao/accs/net/r$a;->a:I

    if-lt v0, v5, :cond_3

    .line 723
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0, v3}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;Z)Z

    .line 724
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget v2, v2, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " try connect fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 726
    :cond_3
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->b(Lcom/taobao/accs/net/r;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 727
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget v0, v0, Lcom/taobao/accs/net/r;->c:I

    if-ne v0, v3, :cond_5

    iget v0, p0, Lcom/taobao/accs/net/r$a;->a:I

    if-nez v0, :cond_5

    .line 728
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget v2, v2, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " try connect in app, no sleep"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 738
    :goto_1
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;Ljava/lang/String;)Ljava/lang/String;

    .line 741
    iget v0, p0, Lcom/taobao/accs/net/r$a;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 742
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->e(Lcom/taobao/accs/net/r;)Lcom/taobao/accs/net/h;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-virtual {v1}, Lcom/taobao/accs/net/r;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/accs/net/h;->b(Ljava/lang/String;)V

    .line 745
    :cond_4
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/accs/net/r;->b(Lcom/taobao/accs/net/r;Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->d(Lcom/taobao/accs/net/r;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v0

    iget v1, p0, Lcom/taobao/accs/net/r$a;->a:I

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setRetryTimes(I)V

    .line 748
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->b(Lcom/taobao/accs/net/r;)I

    move-result v0

    if-eq v0, v3, :cond_6

    .line 749
    iget v0, p0, Lcom/taobao/accs/net/r$a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/accs/net/r$a;->a:I

    .line 750
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget v2, v2, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " try connect fail, ready for reconnect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 751
    invoke-direct {p0, v4}, Lcom/taobao/accs/net/r$a;->a(Z)V

    goto/16 :goto_0

    .line 730
    :cond_5
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget v2, v2, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " try connect, need sleep"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 732
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Lcom/taobao/accs/net/r$a;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 733
    :catch_0
    move-exception v0

    .line 734
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 753
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/net/r$a;->b:J

    goto/16 :goto_0

    .line 756
    :cond_7
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->b(Lcom/taobao/accs/net/r;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 757
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/taobao/accs/net/r$a;->b:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    .line 758
    iput v4, p0, Lcom/taobao/accs/net/r$a;->a:I

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/16 v12, 0x64

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 764
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget v2, v2, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NetworkThread run"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 765
    const/4 v0, 0x0

    .line 766
    iput v8, p0, Lcom/taobao/accs/net/r$a;->a:I

    .line 767
    :goto_0
    iget-object v1, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v1}, Lcom/taobao/accs/net/r;->f(Lcom/taobao/accs/net/r;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 768
    iget-object v1, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    const-string v2, "ready to get message"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 769
    iget-object v1, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v1}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 770
    :try_start_0
    iget-object v2, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v2}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 772
    :try_start_1
    iget-object v2, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    const-string v3, "no message, wait"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 773
    iget-object v2, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v2}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 779
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    const-string v3, "try get message"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 780
    iget-object v2, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v2}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 781
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/data/Message;

    .line 783
    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 784
    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onTakeFromQueue()V

    :cond_1
    move-object v6, v0

    .line 787
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 788
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->f(Lcom/taobao/accs/net/r;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 906
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-virtual {v0}, Lcom/taobao/accs/net/r;->l()V

    .line 907
    return-void

    .line 774
    :catch_0
    move-exception v0

    .line 775
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 776
    monitor-exit v1

    goto :goto_1

    .line 787
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 791
    :cond_3
    if-eqz v6, :cond_20

    .line 793
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    const-string v1, "send message not null"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 800
    :try_start_4
    invoke-virtual {v6}, Lcom/taobao/accs/data/Message;->a()I

    move-result v0

    .line 801
    iget-object v1, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget v3, v3, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " send:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/taobao/accs/data/Message$b;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v3}, Lcom/taobao/accs/net/r;->b(Lcom/taobao/accs/net/r;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 802
    if-ne v0, v11, :cond_b

    .line 803
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget v0, v0, Lcom/taobao/accs/net/r;->c:I

    if-ne v0, v7, :cond_4

    .line 804
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    const-string v1, "INAPP ping, skip"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 894
    :try_start_5
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    const-string v1, "send succ, remove it"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 896
    :try_start_6
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 897
    monitor-exit v1

    move-object v0, v6

    .line 901
    goto/16 :goto_0

    .line 897
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 899
    :catch_1
    move-exception v0

    .line 900
    iget-object v1, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    const-string v2, " run finally error"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v0, v6

    .line 901
    goto/16 :goto_0

    .line 808
    :cond_4
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v2}, Lcom/taobao/accs/net/r;->g(Lcom/taobao/accs/net/r;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget-object v2, v2, Lcom/taobao/accs/net/r;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/net/g;->a(Landroid/content/Context;)Lcom/taobao/accs/net/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/accs/net/g;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    iget-boolean v0, v6, Lcom/taobao/accs/data/Message;->d:Z

    if-eqz v0, :cond_a

    .line 809
    :cond_5
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ms:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v4}, Lcom/taobao/accs/net/r;->g(Lcom/taobao/accs/net/r;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " force:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v6, Lcom/taobao/accs/data/Message;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 810
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/taobao/accs/net/r$a;->a(Z)V

    .line 811
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->h(Lcom/taobao/accs/net/r;)Lorg/android/spdy/SpdySession;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->b(Lcom/taobao/accs/net/r;)I

    move-result v0

    if-ne v0, v7, :cond_9

    .line 812
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v2}, Lcom/taobao/accs/net/r;->g(Lcom/taobao/accs/net/r;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget-object v2, v2, Lcom/taobao/accs/net/r;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/net/g;->a(Landroid/content/Context;)Lcom/taobao/accs/net/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/accs/net/g;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_16

    .line 813
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget v2, v2, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSendPing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 814
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget-object v0, v0, Lcom/taobao/accs/net/r;->e:Lcom/taobao/accs/data/a;

    invoke-virtual {v0}, Lcom/taobao/accs/data/a;->a()V

    .line 815
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->h(Lcom/taobao/accs/net/r;)Lorg/android/spdy/SpdySession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/android/spdy/SpdySession;->submitPing()I

    .line 816
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->d(Lcom/taobao/accs/net/r;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onSendPing()V

    .line 818
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;J)J

    .line 819
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/net/r;->b(Lcom/taobao/accs/net/r;J)J

    .line 820
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-virtual {v0}, Lcom/taobao/accs/net/r;->f()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move v1, v7

    .line 866
    :goto_2
    :try_start_9
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->i(Lcom/taobao/accs/net/r;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 875
    if-nez v1, :cond_18

    .line 877
    :try_start_a
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-virtual {v0}, Lcom/taobao/accs/net/r;->l()V

    .line 878
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->d(Lcom/taobao/accs/net/r;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 879
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->d(Lcom/taobao/accs/net/r;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v0

    const-string v1, "send fail"

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 881
    :cond_6
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    .line 882
    :try_start_b
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3
    if-ltz v1, :cond_17

    .line 883
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/data/Message;

    .line 884
    if-eqz v0, :cond_8

    iget-object v3, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v12, :cond_7

    iget-object v3, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xc9

    if-ne v3, v4, :cond_8

    .line 886
    :cond_7
    iget-object v3, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget-object v3, v3, Lcom/taobao/accs/net/r;->e:Lcom/taobao/accs/data/a;

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;I)V

    .line 887
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 882
    :cond_8
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    :cond_9
    move v1, v8

    .line 823
    goto :goto_2

    .line 826
    :cond_a
    const/4 v0, 0x0

    :try_start_c
    invoke-direct {p0, v0}, Lcom/taobao/accs/net/r$a;->a(Z)V

    move v1, v7

    goto :goto_2

    .line 829
    :cond_b
    if-ne v0, v7, :cond_15

    .line 830
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/taobao/accs/net/r$a;->a(Z)V

    .line 831
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->b(Lcom/taobao/accs/net/r;)I

    move-result v0

    if-ne v0, v7, :cond_14

    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->h(Lcom/taobao/accs/net/r;)Lorg/android/spdy/SpdySession;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 832
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget-object v0, v0, Lcom/taobao/accs/net/r;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget v1, v1, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v6, v0, v1}, Lcom/taobao/accs/data/Message;->a(Landroid/content/Context;I)[B

    move-result-object v5

    .line 833
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/taobao/accs/data/Message;->a(J)V

    .line 834
    array-length v0, v5

    const/16 v1, 0x4000

    if-le v0, v1, :cond_c

    iget-object v0, v6, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_c

    .line 835
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget-object v0, v0, Lcom/taobao/accs/net/r;->e:Lcom/taobao/accs/data/a;

    const/4 v1, -0x4

    invoke-virtual {v0, v6, v1}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;I)V

    :goto_4
    move v1, v7

    .line 858
    goto/16 :goto_2

    .line 838
    :cond_c
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->h(Lcom/taobao/accs/net/r;)Lorg/android/spdy/SpdySession;

    move-result-object v0

    invoke-virtual {v6}, Lcom/taobao/accs/data/Message;->d()I

    move-result v1

    const/16 v2, 0xc8

    const/4 v3, 0x0

    if-nez v5, :cond_12

    move v4, v8

    :goto_5
    invoke-virtual/range {v0 .. v5}, Lorg/android/spdy/SpdySession;->sendCustomControlFrame(IIII[B)I

    .line 839
    iget-object v1, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget v2, v2, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " send data len"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez v5, :cond_13

    move v0, v8

    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const-string v4, "dataId"

    aput-object v4, v3, v0

    const/4 v0, 0x2

    invoke-virtual {v6}, Lcom/taobao/accs/data/Message;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const-string v4, "utdid"

    aput-object v4, v3, v0

    const/4 v0, 0x4

    iget-object v4, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget-object v4, v4, Lcom/taobao/accs/net/r;->j:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 843
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget-object v0, v0, Lcom/taobao/accs/net/r;->e:Lcom/taobao/accs/data/a;

    invoke-virtual {v0, v6}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;)V

    .line 845
    iget-boolean v0, v6, Lcom/taobao/accs/data/Message;->c:Z

    if-eqz v0, :cond_d

    .line 846
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget v2, v2, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sendCFrame end ack"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "dataId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v6}, Lcom/taobao/accs/data/Message;->d()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 847
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget-object v0, v0, Lcom/taobao/accs/net/r;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Lcom/taobao/accs/data/Message;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    :cond_d
    invoke-virtual {v6}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 851
    invoke-virtual {v6}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onSendData()V

    .line 853
    :cond_e
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-virtual {v6}, Lcom/taobao/accs/data/Message;->b()Ljava/lang/String;

    move-result-object v1

    iget v2, v6, Lcom/taobao/accs/data/Message;->Q:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/accs/net/r;->a(Ljava/lang/String;J)V

    .line 855
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget-object v9, v0, Lcom/taobao/accs/net/r;->e:Lcom/taobao/accs/data/a;

    new-instance v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    iget-object v1, v6, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v2

    iget-object v3, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-virtual {v3}, Lcom/taobao/accs/net/r;->m()Ljava/lang/String;

    move-result-object v3

    array-length v4, v5

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;-><init>(Ljava/lang/String;ZLjava/lang/String;J)V

    invoke-virtual {v9, v0}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto/16 :goto_4

    .line 868
    :catch_2
    move-exception v0

    move v1, v7

    .line 870
    :goto_7
    :try_start_d
    const-string v2, "accs"

    const-string v3, "send_fail"

    iget-object v4, v6, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    const-string v5, "1"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget v10, v10, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v3, v4, v5, v9}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 872
    iget-object v2, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    const-string v3, "service connection run"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 875
    if-nez v1, :cond_1a

    .line 877
    :try_start_e
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-virtual {v0}, Lcom/taobao/accs/net/r;->l()V

    .line 878
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->d(Lcom/taobao/accs/net/r;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 879
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->d(Lcom/taobao/accs/net/r;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v0

    const-string v1, "send fail"

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 881
    :cond_f
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4

    .line 882
    :try_start_f
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_8
    if-ltz v1, :cond_19

    .line 883
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/data/Message;

    .line 884
    if-eqz v0, :cond_11

    iget-object v3, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    if-eqz v3, :cond_11

    iget-object v3, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v12, :cond_10

    iget-object v3, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xc9

    if-ne v3, v4, :cond_11

    .line 886
    :cond_10
    iget-object v3, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget-object v3, v3, Lcom/taobao/accs/net/r;->e:Lcom/taobao/accs/data/a;

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;I)V

    .line 887
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 882
    :cond_11
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_8

    .line 838
    :cond_12
    :try_start_10
    array-length v4, v5

    goto/16 :goto_5

    .line 839
    :cond_13
    array-length v0, v5

    goto/16 :goto_6

    :cond_14
    move v1, v8

    .line 859
    goto/16 :goto_2

    .line 862
    :cond_15
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/taobao/accs/net/r$a;->a(Z)V

    .line 864
    iget-object v1, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget v3, v3, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " skip msg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :cond_16
    move v1, v7

    goto/16 :goto_2

    .line 890
    :cond_17
    :try_start_11
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget v3, v3, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " network disconnected, wait"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 891
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 892
    monitor-exit v2

    :goto_9
    move-object v0, v6

    .line 904
    goto/16 :goto_0

    .line 892
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    throw v0
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_3

    .line 899
    :catch_3
    move-exception v0

    .line 900
    iget-object v1, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    const-string v2, " run finally error"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_9

    .line 894
    :cond_18
    :try_start_13
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    const-string v1, "send succ, remove it"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_3

    .line 896
    :try_start_14
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 897
    monitor-exit v1

    goto :goto_9

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :try_start_15
    throw v0
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_3

    .line 890
    :cond_19
    :try_start_16
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget v3, v3, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " network disconnected, wait"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 891
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 892
    monitor-exit v2

    goto :goto_9

    :catchall_4
    move-exception v0

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :try_start_17
    throw v0
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_4

    .line 899
    :catch_4
    move-exception v0

    .line 900
    iget-object v1, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    const-string v2, " run finally error"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_9

    .line 894
    :cond_1a
    :try_start_18
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    const-string v1, "send succ, remove it"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_4

    .line 896
    :try_start_19
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 897
    monitor-exit v1

    goto/16 :goto_9

    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    :try_start_1a
    throw v0
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_4

    .line 874
    :catchall_6
    move-exception v0

    move-object v1, v0

    .line 875
    :goto_a
    if-nez v7, :cond_1f

    .line 877
    :try_start_1b
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-virtual {v0}, Lcom/taobao/accs/net/r;->l()V

    .line 878
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->d(Lcom/taobao/accs/net/r;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 879
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->d(Lcom/taobao/accs/net/r;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v0

    const-string v2, "send fail"

    invoke-virtual {v0, v2}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 881
    :cond_1b
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_5

    .line 882
    :try_start_1c
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_b
    if-ltz v2, :cond_1e

    .line 883
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/data/Message;

    .line 884
    if-eqz v0, :cond_1d

    iget-object v4, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    if-eqz v4, :cond_1d

    iget-object v4, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v12, :cond_1c

    iget-object v4, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xc9

    if-ne v4, v5, :cond_1d

    .line 886
    :cond_1c
    iget-object v4, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget-object v4, v4, Lcom/taobao/accs/net/r;->e:Lcom/taobao/accs/data/a;

    const/4 v5, -0x1

    invoke-virtual {v4, v0, v5}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;I)V

    .line 887
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 882
    :cond_1d
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_b

    .line 890
    :cond_1e
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    iget v4, v4, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " network disconnected, wait"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 891
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 892
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    .line 901
    :goto_c
    throw v1

    .line 892
    :catchall_7
    move-exception v0

    :try_start_1d
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    :try_start_1e
    throw v0
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_5

    .line 899
    :catch_5
    move-exception v0

    .line 900
    iget-object v2, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    const-string v3, " run finally error"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_c

    .line 894
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->d:Ljava/lang/String;

    const-string v2, "send succ, remove it"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_5

    .line 896
    :try_start_20
    iget-object v0, p0, Lcom/taobao/accs/net/r$a;->c:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 897
    monitor-exit v2

    goto :goto_c

    :catchall_8
    move-exception v0

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    :try_start_21
    throw v0
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_5

    .line 874
    :catchall_9
    move-exception v0

    move v7, v1

    move-object v1, v0

    goto/16 :goto_a

    .line 868
    :catch_6
    move-exception v0

    goto/16 :goto_7

    :cond_20
    move-object v0, v6

    goto/16 :goto_0
.end method
