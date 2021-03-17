.class public Lcom/taobao/accs/net/r;
.super Lcom/taobao/accs/net/b;
.source "Taobao"

# interfaces
.implements Lorg/android/spdy/SessionCb;
.implements Lorg/android/spdy/Spdycb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/net/r$a;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/Object;

.field private B:J

.field private C:J

.field private D:J

.field private E:J

.field private F:I

.field private G:Ljava/lang/String;

.field private H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

.field private I:Lcom/taobao/accs/ut/statistics/c;

.field private J:Z

.field private K:Ljava/lang/String;

.field private L:Z

.field private M:Lcom/taobao/accs/net/h;

.field private N:Ljava/lang/String;

.field protected n:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field protected o:Ljava/lang/String;

.field protected p:I

.field protected q:Ljava/lang/String;

.field protected r:I

.field private s:I

.field private t:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/taobao/accs/data/Message;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/taobao/accs/net/r$a;

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Lorg/android/spdy/SpdyAgent;

.field private z:Lorg/android/spdy/SpdySession;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 133
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/accs/net/b;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 79
    const/4 v0, 0x3

    iput v0, p0, Lcom/taobao/accs/net/r;->s:I

    .line 81
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/net/r;->t:Ljava/util/LinkedList;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/accs/net/r;->v:Z

    .line 91
    iput-object v1, p0, Lcom/taobao/accs/net/r;->y:Lorg/android/spdy/SpdyAgent;

    .line 93
    iput-object v1, p0, Lcom/taobao/accs/net/r;->z:Lorg/android/spdy/SpdySession;

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/net/r;->A:Ljava/lang/Object;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/accs/net/r;->F:I

    .line 107
    iput-object v1, p0, Lcom/taobao/accs/net/r;->G:Ljava/lang/String;

    .line 113
    iput-boolean v2, p0, Lcom/taobao/accs/net/r;->J:Z

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/accs/net/r;->K:Ljava/lang/String;

    .line 117
    iput-boolean v2, p0, Lcom/taobao/accs/net/r;->L:Z

    .line 135
    new-instance v0, Lcom/taobao/accs/net/h;

    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->m()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/accs/net/h;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/accs/net/r;->M:Lcom/taobao/accs/net/h;

    .line 160
    invoke-direct {p0}, Lcom/taobao/accs/net/r;->r()V

    .line 161
    return-void
.end method

.method static synthetic a(Lcom/taobao/accs/net/r;J)J
    .locals 1

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/taobao/accs/net/r;->B:J

    return-wide p1
.end method

.method static synthetic a(Lcom/taobao/accs/net/r;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/taobao/accs/net/r;->K:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/taobao/accs/net/r;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/taobao/accs/net/r;->t:Ljava/util/LinkedList;

    return-object v0
.end method

.method private a(Lcom/taobao/accs/data/Message;)V
    .locals 5

    .prologue
    .line 308
    iget-object v0, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/accs/net/r;->t:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/taobao/accs/net/r;->t:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_7

    .line 313
    iget-object v0, p0, Lcom/taobao/accs/net/r;->t:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/data/Message;

    .line 314
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 316
    iget-object v2, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 340
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearRepeatControlCommand message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 319
    :pswitch_0
    iget-object v2, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 321
    :cond_4
    iget-object v2, p0, Lcom/taobao/accs/net/r;->t:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 326
    :pswitch_1
    iget-object v2, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 328
    :cond_5
    iget-object v2, p0, Lcom/taobao/accs/net/r;->t:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 333
    :pswitch_2
    iget-object v2, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_6

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 335
    :cond_6
    iget-object v2, p0, Lcom/taobao/accs/net/r;->t:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 344
    :cond_7
    iget-object v0, p0, Lcom/taobao/accs/net/r;->e:Lcom/taobao/accs/data/a;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/taobao/accs/net/r;->e:Lcom/taobao/accs/data/a;

    invoke-virtual {v0, p1}, Lcom/taobao/accs/data/a;->b(Lcom/taobao/accs/data/Message;)V

    goto/16 :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/taobao/accs/net/r;Lcom/taobao/accs/data/Message;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/data/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/taobao/accs/net/r;Z)Z
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/taobao/accs/net/r;->J:Z

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    .prologue
    const/4 v0, 0x3

    const/4 v6, 0x2

    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 523
    .line 524
    iget-object v1, p0, Lcom/taobao/accs/net/r;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/l;->a(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 555
    :cond_0
    :goto_0
    return v8

    .line 528
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    :cond_2
    invoke-direct {p0, v0}, Lcom/taobao/accs/net/r;->c(I)V

    .line 534
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v7, v8

    .line 541
    :goto_1
    iget-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0, v7}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setFailReason(I)V

    .line 542
    iget-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onConnectStop()V

    .line 543
    iget v0, p0, Lcom/taobao/accs/net/r;->c:I

    if-nez v0, :cond_5

    const-string v0, "service"

    move-object v2, v0

    .line 546
    :goto_2
    iget-object v0, p0, Lcom/taobao/accs/net/r;->u:Lcom/taobao/accs/net/r$a;

    if-eqz v0, :cond_6

    .line 547
    iget-object v0, p0, Lcom/taobao/accs/net/r;->u:Lcom/taobao/accs/net/r$a;

    iget v0, v0, Lcom/taobao/accs/net/r$a;->a:I

    move v9, v0

    .line 549
    :goto_3
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DISCONNECT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xdd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/String;

    iget-object v11, p0, Lcom/taobao/accs/net/r;->x:Ljava/lang/String;

    aput-object v11, v6, v10

    iget-object v11, p0, Lcom/taobao/accs/net/r;->K:Ljava/lang/String;

    aput-object v11, v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 552
    const-string v0, "accs"

    const-string v1, "connect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retrytimes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v8, v10

    goto/16 :goto_0

    .line 536
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v7, v6

    .line 537
    goto/16 :goto_1

    .line 538
    :cond_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v7, v0

    .line 539
    goto/16 :goto_1

    .line 543
    :cond_5
    const-string v0, "inapp"

    move-object v2, v0

    goto/16 :goto_2

    :cond_6
    move v9, v10

    goto :goto_3

    :cond_7
    move v7, v8

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/taobao/accs/net/r;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/taobao/accs/net/r;->s:I

    return v0
.end method

.method static synthetic b(Lcom/taobao/accs/net/r;J)J
    .locals 1

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/taobao/accs/net/r;->C:J

    return-wide p1
.end method

.method static synthetic b(Lcom/taobao/accs/net/r;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/taobao/accs/net/r;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/taobao/accs/net/r;Z)Z
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/taobao/accs/net/r;->L:Z

    return p1
.end method

.method static synthetic c(Lcom/taobao/accs/net/r;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/taobao/accs/net/r;->N:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized c(I)V
    .locals 6

    .prologue
    .line 584
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " notifyStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/taobao/accs/net/r;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    iget v0, p0, Lcom/taobao/accs/net/r;->s:I

    if-ne p1, v0, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ignore notifyStatus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    :goto_0
    monitor-exit p0

    return-void

    .line 589
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/taobao/accs/net/r;->s:I

    .line 591
    packed-switch p1, :pswitch_data_0

    .line 651
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " notifyStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/taobao/accs/net/r;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " handled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 584
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 593
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/taobao/accs/net/r;->n:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/taobao/accs/net/r;->n:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/taobao/accs/net/r;->N:Ljava/lang/String;

    .line 597
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/taobao/accs/net/t;

    invoke-direct {v2, p0, v0}, Lcom/taobao/accs/net/t;-><init>(Lcom/taobao/accs/net/r;Ljava/lang/String;)V

    const-wide/32 v4, 0x1d4c0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    .line 615
    :pswitch_2
    iget-object v0, p0, Lcom/taobao/accs/net/r;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/net/g;->a(Landroid/content/Context;)Lcom/taobao/accs/net/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/net/g;->f()V

    .line 616
    invoke-direct {p0}, Lcom/taobao/accs/net/r;->q()V

    .line 617
    iget-object v0, p0, Lcom/taobao/accs/net/r;->n:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    .line 618
    iget-object v0, p0, Lcom/taobao/accs/net/r;->n:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 621
    :cond_2
    iget-object v1, p0, Lcom/taobao/accs/net/r;->A:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 623
    :try_start_3
    iget-object v0, p0, Lcom/taobao/accs/net/r;->A:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 626
    :goto_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 627
    :try_start_5
    iget-object v1, p0, Lcom/taobao/accs/net/r;->t:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 629
    :try_start_6
    iget-object v0, p0, Lcom/taobao/accs/net/r;->t:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 632
    :goto_3
    :try_start_7
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 626
    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0

    .line 637
    :pswitch_3
    invoke-direct {p0}, Lcom/taobao/accs/net/r;->q()V

    .line 638
    iget-object v0, p0, Lcom/taobao/accs/net/r;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/net/g;->a(Landroid/content/Context;)Lcom/taobao/accs/net/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/net/g;->d()V

    .line 639
    iget-object v1, p0, Lcom/taobao/accs/net/r;->A:Ljava/lang/Object;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 641
    :try_start_b
    iget-object v0, p0, Lcom/taobao/accs/net/r;->A:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 644
    :goto_4
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 645
    :try_start_d
    iget-object v0, p0, Lcom/taobao/accs/net/r;->e:Lcom/taobao/accs/data/a;

    const/16 v1, -0xa

    invoke-virtual {v0, v1}, Lcom/taobao/accs/data/a;->a(I)V

    .line 646
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/taobao/accs/net/r;->a(ZZ)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 644
    :catchall_3
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    .line 591
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic d(Lcom/taobao/accs/net/r;)Lcom/taobao/accs/ut/monitor/SessionMonitor;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    return-object v0
.end method

.method private d(I)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 1115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/accs/net/r;->k:Ljava/lang/String;

    .line 1116
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->l()V

    .line 1119
    iget-object v0, p0, Lcom/taobao/accs/net/r;->u:Lcom/taobao/accs/net/r$a;

    if-eqz v0, :cond_1

    .line 1120
    iget-object v0, p0, Lcom/taobao/accs/net/r;->u:Lcom/taobao/accs/net/r$a;

    iget v0, v0, Lcom/taobao/accs/net/r$a;->a:I

    move v4, v0

    .line 1122
    :goto_0
    iget-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code not 200 is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 1123
    iput-boolean v9, p0, Lcom/taobao/accs/net/r;->L:Z

    .line 1124
    iget v0, p0, Lcom/taobao/accs/net/r;->c:I

    if-nez v0, :cond_0

    const-string v0, "service"

    move-object v2, v0

    .line 1125
    :goto_1
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CONNECTED NO 200 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xdd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    iget-object v8, p0, Lcom/taobao/accs/net/r;->x:Ljava/lang/String;

    aput-object v8, v6, v7

    iget-object v7, p0, Lcom/taobao/accs/net/r;->K:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 1126
    const-string v0, "accs"

    const-string v1, "auth"

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    return-void

    .line 1124
    :cond_0
    const-string v0, "inapp"

    move-object v2, v0

    goto :goto_1

    :cond_1
    move v4, v7

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/16 v1, 0x1bb

    const/4 v2, 0x2

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 351
    iget v0, p0, Lcom/taobao/accs/net/r;->s:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/taobao/accs/net/r;->s:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/taobao/accs/net/r;->M:Lcom/taobao/accs/net/h;

    if-nez v0, :cond_2

    .line 358
    new-instance v0, Lcom/taobao/accs/net/h;

    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->m()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/taobao/accs/net/h;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/accs/net/r;->M:Lcom/taobao/accs/net/h;

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/taobao/accs/net/r;->M:Lcom/taobao/accs/net/h;

    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/taobao/accs/net/h;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 368
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/IConnStrategy;

    .line 369
    if-eqz v0, :cond_3

    .line 370
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " connect strategys ip:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " port:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getPort()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 374
    :cond_4
    iget-boolean v0, p0, Lcom/taobao/accs/net/r;->L:Z

    if-eqz v0, :cond_5

    .line 375
    iget-object v0, p0, Lcom/taobao/accs/net/r;->M:Lcom/taobao/accs/net/h;

    invoke-virtual {v0}, Lcom/taobao/accs/net/h;->b()V

    .line 376
    iput-boolean v6, p0, Lcom/taobao/accs/net/r;->L:Z

    .line 378
    :cond_5
    iget-object v0, p0, Lcom/taobao/accs/net/r;->M:Lcom/taobao/accs/net/h;

    invoke-virtual {v0}, Lcom/taobao/accs/net/h;->a()Lanet/channel/strategy/IConnStrategy;

    move-result-object v2

    .line 379
    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->m()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/taobao/accs/net/r;->o:Ljava/lang/String;

    .line 380
    if-nez v2, :cond_8

    move v0, v1

    :goto_3
    iput v0, p0, Lcom/taobao/accs/net/r;->p:I

    .line 381
    const-string v0, "accs"

    const-string v1, "dns"

    const-string v2, "httpdns"

    invoke-static {v0, v1, v2, v8, v9}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 382
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " get ip from amdc succ:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/r;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/taobao/accs/net/r;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " originPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/r;->M:Lcom/taobao/accs/net/h;

    invoke-virtual {v2}, Lcom/taobao/accs/net/h;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/net/r;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/taobao/accs/net/r;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/accs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/net/r;->w:Ljava/lang/String;

    .line 396
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " connect URL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/r;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/net/r;->N:Ljava/lang/String;

    .line 399
    iget-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    if-eqz v0, :cond_6

    .line 401
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-interface {v0, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 403
    :cond_6
    new-instance v0, Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-direct {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    .line 404
    iget-object v1, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget v0, p0, Lcom/taobao/accs/net/r;->c:I

    if-nez v0, :cond_c

    const-string v0, "service"

    :goto_5
    invoke-virtual {v1, v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setConnectType(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/taobao/accs/net/r;->y:Lorg/android/spdy/SpdyAgent;

    if-eqz v0, :cond_0

    .line 411
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/net/r;->D:J

    .line 412
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/net/r;->E:J

    .line 413
    iget-object v0, p0, Lcom/taobao/accs/net/r;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->getProxyHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/net/r;->q:Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lcom/taobao/accs/net/r;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->getProxyPort(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/taobao/accs/net/r;->r:I

    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/net/r;->B:J

    .line 417
    iget-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onStartConnect()V

    .line 419
    iget-object v9, p0, Lcom/taobao/accs/net/r;->A:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :try_start_1
    iget-object v0, p0, Lcom/taobao/accs/net/r;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget v0, p0, Lcom/taobao/accs/net/r;->r:I

    if-ltz v0, :cond_d

    iget-boolean v0, p0, Lcom/taobao/accs/net/r;->J:Z

    if-eqz v0, :cond_d

    .line 423
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " connect with proxy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/r;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/taobao/accs/net/r;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    new-instance v0, Lorg/android/spdy/SessionInfo;

    iget-object v1, p0, Lcom/taobao/accs/net/r;->o:Ljava/lang/String;

    iget v2, p0, Lcom/taobao/accs/net/r;->p:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/accs/net/r;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/accs/net/r;->q:Ljava/lang/String;

    iget v5, p0, Lcom/taobao/accs/net/r;->r:I

    iget-object v6, p0, Lcom/taobao/accs/net/r;->N:Ljava/lang/String;

    const/16 v8, 0x1082

    move-object v7, p0

    invoke-direct/range {v0 .. v8}, Lorg/android/spdy/SessionInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lorg/android/spdy/SessionCb;I)V

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/accs/net/r;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/taobao/accs/net/r;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/accs/net/r;->K:Ljava/lang/String;

    .line 431
    :goto_6
    invoke-direct {p0}, Lcom/taobao/accs/net/r;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/android/spdy/SessionInfo;->setPubKeySeqNum(I)V

    .line 433
    const v1, 0x9c40

    invoke-virtual {v0, v1}, Lorg/android/spdy/SessionInfo;->setConnectionTimeoutMs(I)V

    .line 435
    iget-object v1, p0, Lcom/taobao/accs/net/r;->y:Lorg/android/spdy/SpdyAgent;

    invoke-virtual {v1, v0}, Lorg/android/spdy/SpdyAgent;->createSession(Lorg/android/spdy/SessionInfo;)Lorg/android/spdy/SpdySession;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/net/r;->z:Lorg/android/spdy/SpdySession;

    .line 437
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/taobao/accs/net/r;->c(I)V

    .line 438
    iget-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->connection_stop_date:J

    .line 439
    iget-object v0, p0, Lcom/taobao/accs/net/r;->A:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    :goto_7
    :try_start_2
    monitor-exit v9

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 379
    :cond_7
    invoke-interface {v2}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 380
    :cond_8
    invoke-interface {v2}, Lanet/channel/strategy/IConnStrategy;->getPort()I

    move-result v0

    goto/16 :goto_3

    .line 384
    :cond_9
    if-eqz p1, :cond_b

    .line 385
    iput-object p1, p0, Lcom/taobao/accs/net/r;->o:Ljava/lang/String;

    .line 390
    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_a

    const/16 v1, 0x50

    :cond_a
    iput v1, p0, Lcom/taobao/accs/net/r;->p:I

    .line 391
    const-string v0, "accs"

    const-string v1, "dns"

    const-string v2, "localdns"

    invoke-static {v0, v1, v2, v8, v9}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 392
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " get ip from amdc fail!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 387
    :cond_b
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/net/r;->o:Ljava/lang/String;

    goto :goto_8

    .line 404
    :cond_c
    const-string v0, "inapp"

    goto/16 :goto_5

    .line 427
    :cond_d
    :try_start_4
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " connect normal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    new-instance v0, Lorg/android/spdy/SessionInfo;

    iget-object v1, p0, Lcom/taobao/accs/net/r;->o:Ljava/lang/String;

    iget v2, p0, Lcom/taobao/accs/net/r;->p:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/accs/net/r;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/taobao/accs/net/r;->N:Ljava/lang/String;

    const/16 v8, 0x1082

    move-object v7, p0

    invoke-direct/range {v0 .. v8}, Lorg/android/spdy/SessionInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lorg/android/spdy/SessionCb;I)V

    .line 429
    const-string v1, ""

    iput-object v1, p0, Lcom/taobao/accs/net/r;->K:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    .line 440
    :catch_1
    move-exception v0

    .line 441
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_7

    .line 442
    :catch_2
    move-exception v0

    .line 443
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/accs/net/r;->J:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_7
.end method

.method static synthetic e(Lcom/taobao/accs/net/r;)Lcom/taobao/accs/net/h;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/taobao/accs/net/r;->M:Lcom/taobao/accs/net/h;

    return-object v0
.end method

.method static synthetic f(Lcom/taobao/accs/net/r;)Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/taobao/accs/net/r;->v:Z

    return v0
.end method

.method static synthetic g(Lcom/taobao/accs/net/r;)J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/taobao/accs/net/r;->B:J

    return-wide v0
.end method

.method static synthetic h(Lcom/taobao/accs/net/r;)Lorg/android/spdy/SpdySession;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/taobao/accs/net/r;->z:Lorg/android/spdy/SpdySession;

    return-object v0
.end method

.method static synthetic i(Lcom/taobao/accs/net/r;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/taobao/accs/net/r;->q()V

    return-void
.end method

.method private o()I
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 455
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->k()Z

    move-result v2

    .line 457
    sget v1, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    if-ne v1, v4, :cond_1

    .line 458
    if-eqz v2, :cond_0

    .line 480
    :cond_0
    :goto_0
    return v0

    .line 467
    :cond_1
    iget-object v1, p0, Lcom/taobao/accs/net/r;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v1}, Lcom/taobao/accs/AccsClientConfig;->getChannelPubKey()I

    move-result v1

    .line 468
    if-lez v1, :cond_2

    .line 469
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "use custom pub key"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "pubKey"

    aput-object v5, v4, v0

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 470
    goto :goto_0

    .line 473
    :cond_2
    if-eqz v2, :cond_3

    .line 474
    const/4 v0, 0x4

    goto :goto_0

    .line 476
    :cond_3
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private p()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 485
    iget-object v0, p0, Lcom/taobao/accs/net/r;->z:Lorg/android/spdy/SpdySession;

    if-nez v0, :cond_0

    .line 486
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/taobao/accs/net/r;->c(I)V

    .line 519
    :goto_0
    return-void

    .line 490
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/net/r;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    iget-object v1, p0, Lcom/taobao/accs/net/r;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/net/r;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v3}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/accs/net/r;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/accs/net/r;->m:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/taobao/accs/utl/UtilityImpl;->getAppsign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 495
    iget-object v2, p0, Lcom/taobao/accs/net/r;->w:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/taobao/accs/net/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 496
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " auth URL:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    iput-object v2, p0, Lcom/taobao/accs/net/r;->x:Ljava/lang/String;

    .line 499
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3, v1}, Lcom/taobao/accs/net/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 500
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " auth param error!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    const/4 v0, -0x6

    invoke-direct {p0, v0}, Lcom/taobao/accs/net/r;->d(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 514
    :catch_0
    move-exception v0

    .line 515
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " auth exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 516
    const/4 v0, -0x7

    invoke-direct {p0, v0}, Lcom/taobao/accs/net/r;->d(I)V

    goto/16 :goto_0

    .line 505
    :cond_1
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 506
    new-instance v0, Lorg/android/spdy/SpdyRequest;

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v2, "GET"

    sget-object v3, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    const v4, 0x13880

    const v5, 0x9c40

    invoke-direct/range {v0 .. v5}, Lorg/android/spdy/SpdyRequest;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/android/spdy/RequestPriority;II)V

    .line 511
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/android/spdy/SpdyRequest;->setDomain(Ljava/lang/String;)V

    .line 512
    new-instance v2, Lorg/android/spdy/SpdyDataProvider;

    const/4 v1, 0x0

    check-cast v1, [B

    invoke-direct {v2, v1}, Lorg/android/spdy/SpdyDataProvider;-><init>([B)V

    .line 513
    iget-object v1, p0, Lcom/taobao/accs/net/r;->z:Lorg/android/spdy/SpdySession;

    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3, p0}, Lorg/android/spdy/SpdySession;->submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Lorg/android/spdy/Spdycb;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private declared-synchronized q()V
    .locals 2

    .prologue
    .line 560
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/taobao/accs/net/r;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 581
    :goto_0
    monitor-exit p0

    return-void

    .line 563
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/net/r;->B:J

    .line 564
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/net/r;->C:J

    .line 580
    iget-object v0, p0, Lcom/taobao/accs/net/r;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/net/g;->a(Landroid/content/Context;)Lcom/taobao/accs/net/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/net/g;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 560
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private r()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 664
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lorg/android/spdy/SpdyAgent;->enableDebug:Z

    .line 665
    iget-object v0, p0, Lcom/taobao/accs/net/r;->d:Landroid/content/Context;

    sget-object v1, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v2, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {v0, v1, v2}, Lorg/android/spdy/SpdyAgent;->getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/net/r;->y:Lorg/android/spdy/SpdyAgent;

    .line 667
    invoke-static {}, Lorg/android/spdy/SpdyAgent;->checkLoadSucc()Z

    move-result v0

    .line 668
    if-eqz v0, :cond_3

    .line 669
    invoke-static {}, Lcom/taobao/accs/utl/f;->a()V

    .line 670
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/taobao/accs/net/r;->y:Lorg/android/spdy/SpdyAgent;

    new-instance v1, Lcom/taobao/accs/net/u;

    invoke-direct {v1, p0}, Lcom/taobao/accs/net/u;-><init>(Lcom/taobao/accs/net/r;)V

    invoke-virtual {v0, v1}, Lorg/android/spdy/SpdyAgent;->setAccsSslCallback(Lorg/android/spdy/AccsSSLCallback;)V

    .line 679
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/taobao/accs/utl/i;->a(Z)Z

    move-result v0

    .line 680
    if-nez v0, :cond_1

    .line 681
    iget v0, p0, Lcom/taobao/accs/net/r;->c:I

    if-nez v0, :cond_2

    const-string v0, "service"

    .line 682
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "into--[setTnetLogPath]"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 683
    iget-object v1, p0, Lcom/taobao/accs/net/r;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/taobao/accs/utl/UtilityImpl;->getTnetLogFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 684
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config tnet log path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 685
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 686
    iget-object v1, p0, Lcom/taobao/accs/net/r;->y:Lorg/android/spdy/SpdyAgent;

    const/high16 v2, 0x500000

    const/4 v3, 0x5

    invoke-virtual {v1, v0, v2, v3}, Lorg/android/spdy/SpdyAgent;->configLogFile(Ljava/lang/String;II)I

    .line 698
    :cond_1
    :goto_1
    return-void

    .line 681
    :cond_2
    const-string v0, "inapp"

    goto :goto_0

    .line 691
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadSoFail"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 692
    invoke-static {}, Lcom/taobao/accs/utl/f;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 695
    :catch_0
    move-exception v0

    .line 696
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "loadSoFail"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/accs/net/r;->v:Z

    .line 166
    iget-object v0, p0, Lcom/taobao/accs/net/r;->d:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/taobao/accs/net/r;->a(Landroid/content/Context;)V

    .line 167
    iget-object v0, p0, Lcom/taobao/accs/net/r;->u:Lcom/taobao/accs/net/r$a;

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    new-instance v0, Lcom/taobao/accs/net/r$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkThread_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/r;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/taobao/accs/net/r$a;-><init>(Lcom/taobao/accs/net/r;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/accs/net/r;->u:Lcom/taobao/accs/net/r$a;

    .line 170
    iget-object v0, p0, Lcom/taobao/accs/net/r;->u:Lcom/taobao/accs/net/r$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/taobao/accs/net/r$a;->setPriority(I)V

    .line 171
    iget-object v0, p0, Lcom/taobao/accs/net/r;->u:Lcom/taobao/accs/net/r$a;

    invoke-virtual {v0}, Lcom/taobao/accs/net/r$a;->start()V

    .line 173
    :cond_0
    invoke-virtual {p0, v3, v3}, Lcom/taobao/accs/net/r;->a(ZZ)V

    .line 174
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1223
    iget-boolean v0, p0, Lcom/taobao/accs/net/r;->g:Z

    if-eqz v0, :cond_0

    .line 1230
    :goto_0
    return-void

    .line 1226
    :cond_0
    invoke-super {p0, p1}, Lcom/taobao/accs/net/b;->a(Landroid/content/Context;)V

    .line 1227
    invoke-static {v2}, Lanet/channel/GlobalAppRuntimeInfo;->setBackground(Z)V

    .line 1228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/accs/net/r;->g:Z

    .line 1229
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "init awcn success!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected a(Lcom/taobao/accs/data/Message;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 177
    iget-boolean v0, p0, Lcom/taobao/accs/net/r;->v:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not running or msg null! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/taobao/accs/net/r;->v:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    :cond_1
    :goto_0
    return-void

    .line 182
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_3

    .line 183
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "accs"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 240
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/taobao/accs/net/r;->e:Lcom/taobao/accs/data/a;

    const v1, 0x11178

    invoke-virtual {v0, p1, v1}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;I)V

    .line 241
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "send queue full count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 186
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/taobao/accs/net/s;

    invoke-direct {v1, p0, p1, p2}, Lcom/taobao/accs/net/s;-><init>(Lcom/taobao/accs/net/r;Lcom/taobao/accs/data/Message;Z)V

    iget-wide v2, p1, Lcom/taobao/accs/data/Message;->O:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 224
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    iget-object v1, p1, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 227
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 228
    iget-object v1, p1, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/taobao/accs/net/r;->a(Ljava/lang/String;)Z

    .line 230
    :cond_4
    iget-object v1, p0, Lcom/taobao/accs/net/r;->e:Lcom/taobao/accs/data/a;

    iget-object v1, v1, Lcom/taobao/accs/data/a;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-object v2, p1, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_5
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/net/r;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setDeviceId(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    iget v1, p0, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setConnType(I)V

    .line 236
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onEnterQueueData()V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 242
    :catch_1
    move-exception v0

    .line 243
    iget-object v1, p0, Lcom/taobao/accs/net/r;->e:Lcom/taobao/accs/data/a;

    const/4 v2, -0x8

    invoke-virtual {v1, p1, v2}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;I)V

    .line 244
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "send error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1157
    const/4 v0, 0x4

    :try_start_0
    invoke-direct {p0, v0}, Lcom/taobao/accs/net/r;->c(I)V

    .line 1158
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->l()V

    .line 1159
    iget-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0, p2}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1163
    :goto_0
    return-void

    .line 1160
    :catch_0
    move-exception v0

    .line 1161
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(ZZ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 267
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try ping, force:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    iget v0, p0, Lcom/taobao/accs/net/r;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INAPP, skip"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    :goto_0
    return-void

    .line 272
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    :goto_1
    double-to-int v0, v0

    invoke-static {p1, v0}, Lcom/taobao/accs/data/Message;->a(ZI)Lcom/taobao/accs/data/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/taobao/accs/net/r;->b(Lcom/taobao/accs/data/Message;Z)V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 1172
    const/4 v2, 0x0

    .line 1173
    iget-object v4, p0, Lcom/taobao/accs/net/r;->t:Ljava/util/LinkedList;

    monitor-enter v4

    .line 1174
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/net/r;->t:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_1

    .line 1175
    iget-object v0, p0, Lcom/taobao/accs/net/r;->t:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/data/Message;

    .line 1176
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->a()I

    move-result v5

    if-ne v5, v1, :cond_0

    iget-object v5, v0, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/taobao/accs/net/r;->t:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move v0, v1

    .line 1185
    :goto_1
    monitor-exit v4

    .line 1187
    return v0

    .line 1174
    :cond_0
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    .line 1185
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1145
    iput-boolean v0, p0, Lcom/taobao/accs/net/r;->J:Z

    .line 1146
    iput v0, p0, Lcom/taobao/accs/net/r;->f:I

    .line 1147
    return-void
.end method

.method public bioPingRecvCallback(Lorg/android/spdy/SpdySession;I)V
    .locals 3

    .prologue
    .line 1151
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bioPingRecvCallback uniId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1152
    return-void
.end method

.method public c()Lcom/taobao/accs/ut/statistics/c;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 292
    iget-object v0, p0, Lcom/taobao/accs/net/r;->I:Lcom/taobao/accs/ut/statistics/c;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lcom/taobao/accs/ut/statistics/c;

    invoke-direct {v0}, Lcom/taobao/accs/ut/statistics/c;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/net/r;->I:Lcom/taobao/accs/ut/statistics/c;

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/net/r;->I:Lcom/taobao/accs/ut/statistics/c;

    iget v2, p0, Lcom/taobao/accs/net/r;->c:I

    iput v2, v0, Lcom/taobao/accs/ut/statistics/c;->b:I

    .line 296
    iget-object v0, p0, Lcom/taobao/accs/net/r;->I:Lcom/taobao/accs/ut/statistics/c;

    iget-object v2, p0, Lcom/taobao/accs/net/r;->t:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iput v2, v0, Lcom/taobao/accs/ut/statistics/c;->d:I

    .line 297
    iget-object v0, p0, Lcom/taobao/accs/net/r;->I:Lcom/taobao/accs/ut/statistics/c;

    iget-object v2, p0, Lcom/taobao/accs/net/r;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/taobao/accs/ut/statistics/c;->i:Z

    .line 298
    iget-object v0, p0, Lcom/taobao/accs/net/r;->I:Lcom/taobao/accs/ut/statistics/c;

    iget-object v2, p0, Lcom/taobao/accs/net/r;->K:Ljava/lang/String;

    iput-object v2, v0, Lcom/taobao/accs/ut/statistics/c;->f:Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/taobao/accs/net/r;->I:Lcom/taobao/accs/ut/statistics/c;

    iget v2, p0, Lcom/taobao/accs/net/r;->s:I

    iput v2, v0, Lcom/taobao/accs/ut/statistics/c;->a:I

    .line 300
    iget-object v2, p0, Lcom/taobao/accs/net/r;->I:Lcom/taobao/accs/ut/statistics/c;

    iget-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, v2, Lcom/taobao/accs/ut/statistics/c;->c:Z

    .line 301
    iget-object v0, p0, Lcom/taobao/accs/net/r;->I:Lcom/taobao/accs/ut/statistics/c;

    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->n()Z

    move-result v2

    iput-boolean v2, v0, Lcom/taobao/accs/ut/statistics/c;->j:Z

    .line 302
    iget-object v0, p0, Lcom/taobao/accs/net/r;->I:Lcom/taobao/accs/ut/statistics/c;

    iget-object v2, p0, Lcom/taobao/accs/net/r;->e:Lcom/taobao/accs/data/a;

    if-nez v2, :cond_2

    :goto_1
    iput v1, v0, Lcom/taobao/accs/ut/statistics/c;->e:I

    .line 303
    iget-object v0, p0, Lcom/taobao/accs/net/r;->I:Lcom/taobao/accs/ut/statistics/c;

    iget-object v1, p0, Lcom/taobao/accs/net/r;->x:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/accs/ut/statistics/c;->g:Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/taobao/accs/net/r;->I:Lcom/taobao/accs/ut/statistics/c;

    return-object v0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->getRet()Z

    move-result v0

    goto :goto_0

    .line 302
    :cond_2
    iget-object v1, p0, Lcom/taobao/accs/net/r;->e:Lcom/taobao/accs/data/a;

    invoke-virtual {v1}, Lcom/taobao/accs/data/a;->d()I

    move-result v1

    goto :goto_1
.end method

.method protected d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SilenceConn_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/net/r;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 250
    invoke-super {p0}, Lcom/taobao/accs/net/b;->e()V

    .line 251
    iput-boolean v3, p0, Lcom/taobao/accs/net/r;->v:Z

    .line 252
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->l()V

    .line 253
    iget-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    const-string v1, "shut down"

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/taobao/accs/net/r;->t:Ljava/util/LinkedList;

    monitor-enter v1

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/net/r;->t:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "shut down"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    return-void

    .line 261
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getSSLMeta(Lorg/android/spdy/SpdySession;)[B
    .locals 4

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/taobao/accs/net/r;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/accs/net/r;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/accs/net/r;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/accs/utl/UtilityImpl;->SecurityGuardGetSslTicket2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected h()Z
    .locals 1

    .prologue
    .line 1219
    const/4 v0, 0x0

    return v0
.end method

.method public l()V
    .locals 3

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " force close!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/net/r;->z:Lorg/android/spdy/SpdySession;

    invoke-virtual {v0}, Lorg/android/spdy/SpdySession;->closeSession()I

    .line 285
    iget-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/taobao/accs/net/r;->c(I)V

    .line 289
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 4

    .prologue
    .line 655
    iget-object v0, p0, Lcom/taobao/accs/net/r;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getChannelHost()Ljava/lang/String;

    move-result-object v0

    .line 656
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getChannelHost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 657
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 912
    iget-boolean v0, p0, Lcom/taobao/accs/net/r;->v:Z

    return v0
.end method

.method public putSSLMeta(Lorg/android/spdy/SpdySession;[B)I
    .locals 4

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/taobao/accs/net/r;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/accs/net/r;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/accs/net/r;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, p2}, Lcom/taobao/accs/utl/UtilityImpl;->SecurityGuardPutSslTicket2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method public spdyCustomControlFrameFailCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;II)V
    .locals 0

    .prologue
    .line 1215
    invoke-virtual {p0, p3}, Lcom/taobao/accs/net/r;->b(I)V

    .line 1216
    return-void
.end method

.method public spdyCustomControlFrameRecvCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;IIII[B)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1026
    invoke-direct {p0}, Lcom/taobao/accs/net/r;->q()V

    .line 1028
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onFrame, type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " len:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1030
    const-string v0, ""

    .line 1032
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1033
    array-length v2, p7

    const/16 v3, 0x200

    if-ge v2, v3, :cond_1

    .line 1034
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, v0

    move v0, v1

    .line 1035
    :goto_0
    array-length v3, p7

    if-ge v0, v3, :cond_0

    .line 1036
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p7, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1035
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1038
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " log time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1043
    :cond_1
    const/16 v0, 0xc8

    if-ne p4, v0, :cond_4

    .line 1045
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1046
    iget-object v0, p0, Lcom/taobao/accs/net/r;->e:Lcom/taobao/accs/data/a;

    invoke-virtual {v0, p7}, Lcom/taobao/accs/data/a;->a([B)V

    .line 1047
    iget-object v0, p0, Lcom/taobao/accs/net/r;->e:Lcom/taobao/accs/data/a;

    invoke-virtual {v0}, Lcom/taobao/accs/data/a;->f()Lcom/taobao/accs/ut/statistics/d;

    move-result-object v4

    .line 1048
    if-eqz v4, :cond_2

    .line 1049
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/taobao/accs/ut/statistics/d;->c:Ljava/lang/String;

    .line 1050
    iget v0, p0, Lcom/taobao/accs/net/r;->c:I

    if-nez v0, :cond_3

    const-string v0, "service"

    :goto_1
    iput-object v0, v4, Lcom/taobao/accs/ut/statistics/d;->g:Ljava/lang/String;

    .line 1051
    invoke-virtual {v4}, Lcom/taobao/accs/ut/statistics/d;->commitUT()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "try handle msg"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1058
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->g()V

    .line 1062
    :goto_3
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "spdyCustomControlFrameRecvCallback"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1063
    return-void

    .line 1050
    :cond_3
    :try_start_1
    const-string v0, "inapp"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1053
    :catch_0
    move-exception v0

    .line 1054
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onDataReceive "

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1055
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v2

    const v3, 0x101d1

    const-string v4, "SERVICE_DATA_RECEIVE"

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1060
    :cond_4
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " drop frame"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " len:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public spdyDataChunkRecvCB(Lorg/android/spdy/SpdySession;ZJLorg/android/spdy/SpdyByteArray;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1203
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "spdyDataChunkRecvCB"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1205
    return-void
.end method

.method public spdyDataRecvCallback(Lorg/android/spdy/SpdySession;ZJILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 1138
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "spdyDataRecvCallback"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1139
    return-void
.end method

.method public spdyDataSendCallback(Lorg/android/spdy/SpdySession;ZJILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 1132
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "spdyDataSendCallback"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1133
    return-void
.end method

.method public spdyOnStreamResponse(Lorg/android/spdy/SpdySession;JLjava/util/Map;Ljava/lang/Object;)V
    .locals 10
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
    const-wide/16 v2, 0x0

    const/4 v9, 0x0

    .line 1084
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/net/r;->B:J

    .line 1085
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/net/r;->C:J

    .line 1087
    :try_start_0
    invoke-static {p4}, Lcom/taobao/accs/utl/UtilityImpl;->getHeader(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 1088
    const-string v0, ":status"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1089
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " spdyOnStreamResponse httpStatusCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1090
    const/16 v4, 0xc8

    if-ne v0, v4, :cond_3

    .line 1091
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/taobao/accs/net/r;->c(I)V

    .line 1092
    const-string v0, "x-at"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1093
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1094
    iput-object v0, p0, Lcom/taobao/accs/net/r;->k:Ljava/lang/String;

    .line 1098
    :cond_0
    iget-object v4, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget-wide v0, v0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->connection_stop_date:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget-wide v2, v2, Lcom/taobao/accs/ut/monitor/SessionMonitor;->connection_stop_date:J

    sub-long/2addr v0, v2

    :goto_0
    iput-wide v0, v4, Lcom/taobao/accs/ut/monitor/SessionMonitor;->auth_time:J

    .line 1099
    iget v0, p0, Lcom/taobao/accs/net/r;->c:I

    if-nez v0, :cond_2

    const-string v0, "service"

    move-object v2, v0

    .line 1100
    :goto_1
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CONNECTED 200 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/net/r;->x:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/accs/net/r;->K:Ljava/lang/String;

    const/16 v5, 0xdd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "0"

    aput-object v8, v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 1101
    const-string v0, "accs"

    const-string v1, "auth"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1111
    :goto_2
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "spdyOnStreamResponse"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1112
    return-void

    :cond_1
    move-wide v0, v2

    .line 1098
    goto :goto_0

    .line 1099
    :cond_2
    :try_start_1
    const-string v0, "inapp"

    move-object v2, v0

    goto :goto_1

    .line 1103
    :cond_3
    invoke-direct {p0, v0}, Lcom/taobao/accs/net/r;->d(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1106
    :catch_0
    move-exception v0

    .line 1107
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1108
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->l()V

    .line 1109
    iget-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    const-string v1, "exception"

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public spdyPingRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V
    .locals 4

    .prologue
    .line 1008
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spdyPingRecvCallback uniId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1009
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 1012
    :cond_1
    iget-object v0, p0, Lcom/taobao/accs/net/r;->e:Lcom/taobao/accs/data/a;

    invoke-virtual {v0}, Lcom/taobao/accs/data/a;->b()V

    .line 1013
    iget-object v0, p0, Lcom/taobao/accs/net/r;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/net/g;->a(Landroid/content/Context;)Lcom/taobao/accs/net/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/net/g;->e()V

    .line 1014
    iget-object v0, p0, Lcom/taobao/accs/net/r;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/net/g;->a(Landroid/content/Context;)Lcom/taobao/accs/net/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/net/g;->a()V

    .line 1015
    iget-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onPingCBReceive()V

    .line 1017
    iget-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget v0, v0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->ping_rec_times:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/taobao/accs/net/r;->d:Landroid/content/Context;

    const-string v1, "service_end"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/accs/utl/UtilityImpl;->setServiceTime(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public spdyRequestRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V
    .locals 3

    .prologue
    .line 1078
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "spdyRequestRecvCallback"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1079
    return-void
.end method

.method public spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;I)V
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    .line 967
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spdySessionCloseCallback, errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 969
    if-eqz p1, :cond_0

    .line 970
    :try_start_0
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->cleanUp()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 976
    :cond_0
    :goto_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/taobao/accs/net/r;->c(I)V

    .line 980
    iget-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onCloseConnect()V

    .line 981
    iget-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->getConCloseDate()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->getConStopDate()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 982
    iget-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->getConCloseDate()J

    iget-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->getConStopDate()J

    .line 985
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v1}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->getCloseReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tnet error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 986
    iget-object v1, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v1, v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 987
    if-eqz p3, :cond_2

    .line 988
    iget-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget v1, p3, Lorg/android/spdy/SuperviseConnectInfo;->keepalive_period_second:I

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->live_time:J

    .line 990
    :cond_2
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-interface {v0, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 992
    iget-object v0, p0, Lcom/taobao/accs/net/r;->e:Lcom/taobao/accs/data/a;

    invoke-virtual {v0}, Lcom/taobao/accs/data/a;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/data/Message;

    .line 993
    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 994
    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    const-string v3, "session close"

    invoke-virtual {v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setFailReason(Ljava/lang/String;)V

    .line 995
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v2

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    invoke-interface {v2, v0}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    goto :goto_1

    .line 972
    :catch_0
    move-exception v0

    .line 973
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "session cleanUp has exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 999
    :cond_4
    iget v0, p0, Lcom/taobao/accs/net/r;->c:I

    if-nez v0, :cond_5

    const-string v0, "service"

    move-object v2, v0

    .line 1000
    :goto_2
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "spdySessionCloseCallback, conKeepTime:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget-wide v4, v3, Lcom/taobao/accs/ut/monitor/SessionMonitor;->live_time:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " connectType:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1001
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DISCONNECT CLOSE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget-wide v4, v4, Lcom/taobao/accs/ut/monitor/SessionMonitor;->live_time:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v5, 0xdd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, p0, Lcom/taobao/accs/net/r;->x:Ljava/lang/String;

    aput-object v7, v6, v8

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/taobao/accs/net/r;->K:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 1002
    return-void

    .line 999
    :cond_5
    const-string v0, "inapp"

    move-object v2, v0

    goto :goto_2
.end method

.method public spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 944
    iget v0, p2, Lorg/android/spdy/SuperviseConnectInfo;->connectTime:I

    iput v0, p0, Lcom/taobao/accs/net/r;->F:I

    .line 945
    iget v4, p2, Lorg/android/spdy/SuperviseConnectInfo;->handshakeTime:I

    .line 947
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spdySessionConnectCB sessionConnectInterval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/taobao/accs/net/r;->F:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sslTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reuse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lorg/android/spdy/SuperviseConnectInfo;->sessionTicketReused:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 948
    invoke-direct {p0}, Lcom/taobao/accs/net/r;->p()V

    .line 952
    iget-object v0, p0, Lcom/taobao/accs/net/r;->u:Lcom/taobao/accs/net/r$a;

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/taobao/accs/net/r;->u:Lcom/taobao/accs/net/r$a;

    iget v0, v0, Lcom/taobao/accs/net/r$a;->a:I

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0, v9}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setRet(Z)V

    .line 956
    iget-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onConnectStop()V

    .line 957
    iget-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget v1, p0, Lcom/taobao/accs/net/r;->F:I

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->tcp_time:J

    .line 958
    iget-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    int-to-long v2, v4

    iput-wide v2, v0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->ssl_time:J

    .line 959
    iget v0, p0, Lcom/taobao/accs/net/r;->c:I

    if-nez v0, :cond_1

    const-string v0, "service"

    move-object v2, v0

    .line 960
    :goto_0
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CONNECTED "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lorg/android/spdy/SuperviseConnectInfo;->sessionTicketReused:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/taobao/accs/net/r;->F:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xdd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    iget v7, p2, Lorg/android/spdy/SuperviseConnectInfo;->sessionTicketReused:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/taobao/accs/net/r;->x:Ljava/lang/String;

    aput-object v7, v6, v9

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/taobao/accs/net/r;->K:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 961
    const-string v0, "accs"

    const-string v1, "connect"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    return-void

    .line 959
    :cond_1
    const-string v0, "inapp"

    move-object v2, v0

    goto :goto_0
.end method

.method public spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 919
    if-eqz p1, :cond_0

    .line 920
    :try_start_0
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->cleanUp()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/taobao/accs/net/r;->u:Lcom/taobao/accs/net/r$a;

    if-eqz v0, :cond_2

    .line 927
    iget-object v0, p0, Lcom/taobao/accs/net/r;->u:Lcom/taobao/accs/net/r$a;

    iget v0, v0, Lcom/taobao/accs/net/r$a;->a:I

    move v7, v0

    .line 929
    :goto_1
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/net/r;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spdySessionFailedError, retryTimes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errorId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 930
    iput-boolean v8, p0, Lcom/taobao/accs/net/r;->J:Z

    .line 931
    iput-boolean v10, p0, Lcom/taobao/accs/net/r;->L:Z

    .line 932
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/taobao/accs/net/r;->c(I)V

    .line 933
    iget-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0, p2}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setFailReason(I)V

    .line 934
    iget-object v0, p0, Lcom/taobao/accs/net/r;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onConnectStop()V

    .line 935
    iget v0, p0, Lcom/taobao/accs/net/r;->c:I

    if-nez v0, :cond_1

    const-string v0, "service"

    move-object v2, v0

    .line 936
    :goto_2
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DISCONNECT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xdd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    iget-object v9, p0, Lcom/taobao/accs/net/r;->x:Ljava/lang/String;

    aput-object v9, v6, v8

    iget-object v8, p0, Lcom/taobao/accs/net/r;->K:Ljava/lang/String;

    aput-object v8, v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 937
    const-string v0, "accs"

    const-string v1, "connect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retrytimes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    return-void

    .line 922
    :catch_0
    move-exception v0

    .line 923
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "session cleanUp has exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 935
    :cond_1
    const-string v0, "inapp"

    move-object v2, v0

    goto/16 :goto_2

    :cond_2
    move v7, v8

    goto/16 :goto_1
.end method

.method public spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;JILjava/lang/Object;Lorg/android/spdy/SuperviseData;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1068
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "spdyStreamCloseCallback"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1069
    if-eqz p4, :cond_0

    .line 1070
    invoke-virtual {p0}, Lcom/taobao/accs/net/r;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "spdyStreamCloseCallback"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "statusCode"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1071
    invoke-direct {p0, p4}, Lcom/taobao/accs/net/r;->d(I)V

    .line 1073
    :cond_0
    return-void
.end method
