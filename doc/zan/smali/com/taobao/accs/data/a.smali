.class public Lcom/taobao/accs/data/a;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;>;"
        }
    .end annotation
.end field

.field public b:I

.field protected c:Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

.field public d:Lcom/taobao/accs/flowcontrol/FlowControl;

.field public e:Lcom/taobao/accs/antibrush/AntiBrush;

.field public f:Ljava/lang/String;

.field private g:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/data/Message;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Landroid/content/Context;

.field private j:Lcom/taobao/accs/ut/statistics/d;

.field private k:Lcom/taobao/accs/data/Message;

.field private l:Lcom/taobao/accs/net/b;

.field private m:Ljava/lang/String;

.field private n:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/taobao/accs/net/b;)V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/data/a;->g:Ljava/util/concurrent/ConcurrentMap;

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/data/a;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/accs/data/a;->h:Z

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/accs/data/a;->f:Ljava/lang/String;

    .line 87
    const-string v0, "MsgRecv_"

    iput-object v0, p0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/taobao/accs/data/MessageHandler$1;

    invoke-direct {v0, p0}, Lcom/taobao/accs/data/MessageHandler$1;-><init>(Lcom/taobao/accs/data/a;)V

    iput-object v0, p0, Lcom/taobao/accs/data/a;->n:Ljava/util/LinkedHashMap;

    .line 932
    new-instance v0, Lcom/taobao/accs/data/c;

    invoke-direct {v0, p0}, Lcom/taobao/accs/data/c;-><init>(Lcom/taobao/accs/data/a;)V

    iput-object v0, p0, Lcom/taobao/accs/data/a;->o:Ljava/lang/Runnable;

    .line 98
    iput-object p1, p0, Lcom/taobao/accs/data/a;->i:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/taobao/accs/data/a;->l:Lcom/taobao/accs/net/b;

    .line 100
    new-instance v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    iget-object v1, p0, Lcom/taobao/accs/data/a;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/accs/data/a;->c:Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    .line 101
    new-instance v0, Lcom/taobao/accs/flowcontrol/FlowControl;

    iget-object v1, p0, Lcom/taobao/accs/data/a;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/taobao/accs/flowcontrol/FlowControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/accs/data/a;->d:Lcom/taobao/accs/flowcontrol/FlowControl;

    .line 102
    new-instance v0, Lcom/taobao/accs/antibrush/AntiBrush;

    iget-object v1, p0, Lcom/taobao/accs/data/a;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/taobao/accs/antibrush/AntiBrush;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/accs/data/a;->e:Lcom/taobao/accs/antibrush/AntiBrush;

    .line 103
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    .line 104
    invoke-direct {p0}, Lcom/taobao/accs/data/a;->h()V

    .line 105
    invoke-virtual {p0}, Lcom/taobao/accs/data/a;->g()V

    .line 107
    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/taobao/accs/utl/h;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/accs/utl/h;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 472
    if-nez p1, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-object v0

    .line 477
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/taobao/accs/utl/h;->b()I

    move-result v4

    .line 478
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 479
    iget-object v1, p0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extHeaderLen:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v3, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move v1, v2

    .line 483
    :goto_1
    if-ge v1, v4, :cond_0

    .line 484
    invoke-virtual {p1}, Lcom/taobao/accs/utl/h;->b()I

    move-result v3

    .line 485
    add-int/lit8 v1, v1, 0x2

    .line 486
    const v5, 0xfc00

    and-int/2addr v5, v3

    shr-int/lit8 v5, v5, 0xa

    .line 487
    and-int/lit16 v3, v3, 0x3ff

    .line 488
    invoke-virtual {p1, v3}, Lcom/taobao/accs/utl/h;->a(I)Ljava/lang/String;

    move-result-object v6

    .line 489
    add-int/2addr v3, v1

    .line 490
    if-nez v0, :cond_4

    .line 491
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :goto_2
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 497
    iget-object v0, p0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    const-string v7, ""

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "extHeaderType"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v9

    const/4 v5, 0x2

    const-string v9, "value"

    aput-object v9, v8, v5

    const/4 v5, 0x3

    aput-object v6, v8, v5

    invoke-static {v0, v7, v8}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    move-object v0, v1

    move v1, v3

    .line 499
    goto :goto_1

    .line 500
    :catch_0
    move-exception v1

    .line 501
    :goto_3
    iget-object v3, p0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    const-string v4, "parseExtHeader"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 500
    :catch_1
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto :goto_3

    :cond_4
    move-object v1, v0

    goto :goto_2
.end method

.method private a(I[BLjava/lang/String;I)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    new-instance v5, Lcom/taobao/accs/utl/h;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Lcom/taobao/accs/utl/h;-><init>([B)V

    .line 163
    invoke-virtual {v5}, Lcom/taobao/accs/utl/h;->b()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v16, v0

    .line 164
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "flag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v16

    long-to-int v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    :cond_0
    invoke-virtual {v5}, Lcom/taobao/accs/utl/h;->a()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/taobao/accs/utl/h;->a(I)Ljava/lang/String;

    move-result-object v19

    .line 169
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "target:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :cond_1
    invoke-virtual {v5}, Lcom/taobao/accs/utl/h;->a()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/taobao/accs/utl/h;->a(I)Ljava/lang/String;

    move-result-object v20

    .line 174
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "source:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    :cond_2
    :try_start_0
    invoke-virtual {v5}, Lcom/taobao/accs/utl/h;->a()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/taobao/accs/utl/h;->a(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 187
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dataId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 193
    const/4 v8, 0x0

    .line 194
    const/4 v9, 0x0

    .line 195
    invoke-virtual {v5}, Lcom/taobao/accs/utl/h;->available()I

    move-result v4

    if-lez v4, :cond_5

    .line 196
    const/4 v4, 0x2

    move/from16 v0, p4

    if-ne v0, v4, :cond_4

    .line 197
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/utl/h;)Ljava/util/Map;

    move-result-object v9

    .line 200
    :cond_4
    if-nez p1, :cond_c

    .line 201
    invoke-virtual {v5}, Lcom/taobao/accs/utl/h;->c()[B

    move-result-object v8

    .line 233
    :cond_5
    :goto_0
    invoke-virtual {v5}, Lcom/taobao/accs/utl/h;->close()V

    .line 235
    if-nez v8, :cond_12

    .line 236
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    const-string v5, "oriData is null"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    :cond_6
    :goto_1
    const/16 v4, 0xf

    shr-long v4, v16, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v4}, Lcom/taobao/accs/data/Message$b;->a(I)I

    move-result v23

    .line 246
    const/16 v4, 0xd

    shr-long v4, v16, v4

    const-wide/16 v6, 0x3

    and-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v4}, Lcom/taobao/accs/data/Message$ReqType;->valueOf(I)Lcom/taobao/accs/data/Message$ReqType;

    move-result-object v7

    .line 248
    const/16 v4, 0xc

    shr-long v4, v16, v4

    const-wide/16 v10, 0x1

    and-long/2addr v4, v10

    long-to-int v10, v4

    .line 250
    const/16 v4, 0xb

    shr-long v4, v16, v4

    const-wide/16 v12, 0x1

    and-long/2addr v4, v12

    long-to-int v4, v4

    invoke-static {v4}, Lcom/taobao/accs/data/Message$a;->a(I)I

    move-result v24

    .line 252
    const/4 v4, 0x6

    shr-long v4, v16, v4

    const-wide/16 v12, 0x1

    and-long/2addr v4, v12

    long-to-int v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_13

    const/4 v4, 0x1

    move/from16 v18, v4

    .line 254
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/taobao/accs/data/a;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dataId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v21, v6, v11

    const/4 v11, 0x1

    const-string v12, "type"

    aput-object v12, v6, v11

    const/4 v11, 0x2

    invoke-static/range {v23 .. v23}, Lcom/taobao/accs/data/Message$b;->b(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v11

    const/4 v11, 0x3

    const-string v12, "reqType"

    aput-object v12, v6, v11

    const/4 v11, 0x4

    invoke-virtual {v7}, Lcom/taobao/accs/data/Message$ReqType;->name()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v11

    const/4 v11, 0x5

    const-string v12, "resType"

    aput-object v12, v6, v11

    const/4 v11, 0x6

    invoke-static/range {v24 .. v24}, Lcom/taobao/accs/data/Message$a;->b(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v11

    const/4 v11, 0x7

    const-string v12, "target"

    aput-object v12, v6, v11

    const/16 v11, 0x8

    aput-object v19, v6, v11

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    const/4 v4, 0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_a

    sget-object v4, Lcom/taobao/accs/data/Message$ReqType;->ACK:Lcom/taobao/accs/data/Message$ReqType;

    if-eq v7, v4, :cond_7

    sget-object v4, Lcom/taobao/accs/data/Message$ReqType;->RES:Lcom/taobao/accs/data/Message$ReqType;

    if-ne v7, v4, :cond_a

    .line 261
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/a;->g:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/accs/data/Message;

    .line 262
    if-eqz v5, :cond_15

    .line 263
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    const-string v6, "reqMessage not null"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4, v6, v11}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 264
    const/16 v6, 0xc8

    .line 265
    const/4 v4, 0x1

    if-ne v10, v4, :cond_8

    .line 267
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 268
    const-string v6, "code"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result v6

    .line 274
    :cond_8
    :goto_3
    :try_start_3
    invoke-virtual {v5}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 275
    invoke-virtual {v5}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onRecAck()V

    .line 278
    :cond_9
    sget-object v4, Lcom/taobao/accs/data/Message$ReqType;->RES:Lcom/taobao/accs/data/Message$ReqType;

    if-ne v7, v4, :cond_14

    move-object/from16 v4, p0

    .line 279
    invoke-virtual/range {v4 .. v9}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;ILcom/taobao/accs/data/Message$ReqType;[BLjava/util/Map;)V

    .line 283
    :goto_4
    new-instance v10, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    iget-object v11, v5, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v12

    move-object/from16 v0, p2

    array-length v4, v0

    int-to-long v14, v4

    move-object/from16 v13, p3

    invoke-direct/range {v10 .. v15}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;-><init>(Ljava/lang/String;ZLjava/lang/String;J)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V

    .line 289
    :cond_a
    :goto_5
    if-nez v23, :cond_17

    sget-object v4, Lcom/taobao/accs/data/Message$ReqType;->RES:Lcom/taobao/accs/data/Message$ReqType;

    if-ne v7, v4, :cond_17

    .line 290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/a;->g:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/accs/data/Message;

    .line 291
    if-eqz v4, :cond_16

    .line 292
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v4, v8, v1, v2}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;[B[BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 409
    :cond_b
    :goto_6
    return-void

    .line 181
    :catch_0
    move-exception v4

    .line 182
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dataId read error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    invoke-virtual {v5}, Lcom/taobao/accs/utl/h;->close()V

    .line 184
    const-string v5, "accs"

    const-string v6, "send_fail"

    const-string v7, ""

    const-string v8, "1"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v10, v0, Lcom/taobao/accs/data/a;->b:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "data id read error"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v7, v8, v4}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 202
    :cond_c
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_5

    .line 203
    new-instance v6, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v6, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 204
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 207
    const/16 v4, 0x2000

    :try_start_4
    new-array v4, v4, [B

    .line 210
    :goto_7
    invoke-virtual {v6, v4}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_e

    .line 211
    const/4 v11, 0x0

    invoke-virtual {v7, v4, v11, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    .line 216
    :catch_1
    move-exception v4

    .line 217
    :try_start_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "uncompress data error "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    const-string v10, "accs"

    const-string v11, "send_fail"

    const-string v12, ""

    const-string v13, "1"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/taobao/accs/data/a;->b:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " uncompress data error "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v11, v12, v13, v4}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 221
    if-eqz v6, :cond_d

    .line 222
    :try_start_6
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 225
    :cond_d
    if-eqz v7, :cond_5

    .line 226
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 230
    :catch_2
    move-exception v4

    goto/16 :goto_0

    .line 214
    :cond_e
    :try_start_7
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v8

    .line 221
    if-eqz v6, :cond_f

    .line 222
    :try_start_8
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 225
    :cond_f
    if-eqz v7, :cond_5

    .line 226
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 230
    :catch_3
    move-exception v4

    goto/16 :goto_0

    .line 220
    :catchall_0
    move-exception v4

    .line 221
    if-eqz v6, :cond_10

    .line 222
    :try_start_9
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 225
    :cond_10
    if-eqz v7, :cond_11

    .line 226
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 229
    :cond_11
    :goto_8
    throw v4

    .line 238
    :cond_12
    :try_start_a
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oriData:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_1

    .line 404
    :catch_4
    move-exception v4

    .line 405
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    const-string v5, "accs"

    const-string v6, "send_fail"

    const-string v7, ""

    const-string v8, "1"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v10, v0, Lcom/taobao/accs/data/a;->b:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v6, v7, v8, v9}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 252
    :cond_13
    const/4 v4, 0x0

    move/from16 v18, v4

    goto/16 :goto_2

    .line 270
    :catch_5
    move-exception v4

    const/4 v6, -0x3

    goto/16 :goto_3

    .line 281
    :cond_14
    :try_start_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v9}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;ILjava/util/Map;)V

    goto/16 :goto_4

    .line 285
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/taobao/accs/data/a;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " data ack/res reqMessage is null,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 295
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/taobao/accs/data/a;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " contorl ACK reqMessage is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 297
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Message not handled, body:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    :cond_17
    const/4 v4, 0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_b

    sget-object v4, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    if-ne v7, v4, :cond_b

    .line 304
    if-eqz v19, :cond_b

    .line 307
    const-string v4, "\\|"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 308
    if-eqz v6, :cond_b

    array-length v4, v6

    const/4 v5, 0x2

    if-lt v4, v5, :cond_b

    .line 311
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    const-string v5, "onPush"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/a;->j:Lcom/taobao/accs/ut/statistics/d;

    if-eqz v4, :cond_18

    .line 313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/a;->j:Lcom/taobao/accs/ut/statistics/d;

    invoke-virtual {v4}, Lcom/taobao/accs/ut/statistics/d;->commitUT()V

    .line 315
    :cond_18
    new-instance v4, Lcom/taobao/accs/ut/statistics/d;

    invoke-direct {v4}, Lcom/taobao/accs/ut/statistics/d;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/taobao/accs/data/a;->j:Lcom/taobao/accs/ut/statistics/d;

    .line 316
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/a;->j:Lcom/taobao/accs/ut/statistics/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/taobao/accs/ut/statistics/d;->c:Ljava/lang/String;

    .line 318
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/a;->i:Landroid/content/Context;

    const/4 v5, 0x1

    aget-object v5, v6, v5

    invoke-static {v4, v5}, Lcom/taobao/accs/utl/UtilityImpl;->packageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 319
    array-length v4, v6

    const/4 v5, 0x3

    if-lt v4, v5, :cond_19

    const/4 v4, 0x2

    aget-object v4, v6, v4

    move-object v5, v4

    .line 320
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/a;->j:Lcom/taobao/accs/ut/statistics/d;

    iput-object v5, v4, Lcom/taobao/accs/ut/statistics/d;->e:Ljava/lang/String;

    .line 321
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/taobao/accs/data/a;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/taobao/accs/data/a;->b:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msg duplicate"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/a;->j:Lcom/taobao/accs/ut/statistics/d;

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/taobao/accs/ut/statistics/d;->h:Z

    .line 380
    :goto_a
    const/4 v4, 0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_b

    .line 381
    const-string v4, "accs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 382
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/taobao/accs/data/a;->b:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " try to send ack dataId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    :goto_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/accs/data/a;->l:Lcom/taobao/accs/net/b;

    const/4 v14, 0x0

    move-wide/from16 v0, v16

    long-to-int v4, v0

    int-to-short v15, v4

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    move-object/from16 v16, p3

    move-object/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZSLjava/lang/String;Ljava/util/Map;)Lcom/taobao/accs/data/Message;

    move-result-object v4

    .line 388
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/taobao/accs/data/a;->l:Lcom/taobao/accs/net/b;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V

    .line 389
    iget-object v4, v4, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/taobao/accs/data/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    if-eqz v18, :cond_b

    .line 391
    const-string v4, "accs"

    const-string v5, "ack"

    const-string v6, ""

    const-wide/16 v8, 0x0

    invoke-static {v4, v5, v6, v8, v9}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto/16 :goto_6

    .line 319
    :cond_19
    const/4 v4, 0x0

    move-object v5, v4

    goto/16 :goto_9

    .line 325
    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/taobao/accs/data/a;->d(Ljava/lang/String;)V

    .line 327
    const-string v4, "accs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v10, v0, Lcom/taobao/accs/data/a;->b:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " try deliver msg to "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "dataId"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v21, v10, v11

    invoke-static {v4, v7, v10}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    :goto_c
    new-instance v7, Landroid/content/Intent;

    const-string v4, "com.taobao.accs.intent.action.RECEIVE"

    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    const/4 v4, 0x1

    aget-object v4, v6, v4

    invoke-virtual {v7, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    const-string v4, "command"

    const/16 v10, 0x65

    invoke-virtual {v7, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    array-length v4, v6

    const/4 v10, 0x3

    if-lt v4, v10, :cond_1b

    .line 337
    const-string v4, "serviceId"

    const/4 v10, 0x2

    aget-object v10, v6, v10

    invoke-virtual {v7, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    :cond_1b
    const-string v4, ""

    .line 340
    array-length v10, v6

    const/4 v11, 0x4

    if-lt v10, v11, :cond_1c

    .line 341
    const/4 v4, 0x3

    aget-object v4, v6, v4

    .line 342
    const-string v6, "userInfo"

    invoke-virtual {v7, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    :cond_1c
    const-string v6, "data"

    invoke-virtual {v7, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 345
    const-string v6, "dataId"

    move-object/from16 v0, v21

    invoke-virtual {v7, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string v6, "packageName"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/accs/data/a;->i:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v6, "host"

    move-object/from16 v0, p3

    invoke-virtual {v7, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const-string v6, "conn_type"

    move-object/from16 v0, p0

    iget v10, v0, Lcom/taobao/accs/data/a;->b:I

    invoke-virtual {v7, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 354
    const-string v6, "bizAck"

    move/from16 v0, v18

    invoke-virtual {v7, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 356
    const-string v6, "appKey"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/accs/data/a;->l:Lcom/taobao/accs/net/b;

    invoke-virtual {v10}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-string v6, "configTag"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/accs/data/a;->l:Lcom/taobao/accs/net/b;

    iget-object v10, v10, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    invoke-virtual {v7, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7}, Lcom/taobao/accs/data/a;->a(Ljava/util/Map;Landroid/content/Intent;)V

    .line 363
    if-eqz v18, :cond_1d

    .line 364
    move-wide/from16 v0, v16

    long-to-int v6, v0

    int-to-short v6, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-direct {v0, v7, v1, v2, v6}, Lcom/taobao/accs/data/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;S)V

    .line 367
    :cond_1d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/taobao/accs/data/a;->i:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/taobao/accs/data/d;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 371
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v10

    const v11, 0x101d1

    const-string v12, "MsgToBussPush"

    const-string v13, "commandId=101"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "serviceId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dataId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v6, 0xdd

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual/range {v10 .. v15}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 372
    const-string v6, "accs"

    const-string v7, "to_buss"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "1commandId=101serviceId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v12, 0x0

    invoke-static {v6, v7, v10, v12, v13}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 373
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/taobao/accs/data/a;->j:Lcom/taobao/accs/ut/statistics/d;

    move-object/from16 v0, v21

    iput-object v0, v6, Lcom/taobao/accs/ut/statistics/d;->b:Ljava/lang/String;

    .line 374
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/taobao/accs/data/a;->j:Lcom/taobao/accs/ut/statistics/d;

    iput-object v4, v6, Lcom/taobao/accs/ut/statistics/d;->i:Ljava/lang/String;

    .line 375
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/taobao/accs/data/a;->j:Lcom/taobao/accs/ut/statistics/d;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v8, :cond_1f

    const/4 v4, 0x0

    :goto_d
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/taobao/accs/ut/statistics/d;->f:Ljava/lang/String;

    .line 376
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/a;->j:Lcom/taobao/accs/ut/statistics/d;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/taobao/accs/data/a;->i:Landroid/content/Context;

    invoke-static {v6}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/taobao/accs/ut/statistics/d;->a:Ljava/lang/String;

    .line 377
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/a;->j:Lcom/taobao/accs/ut/statistics/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/taobao/accs/ut/statistics/d;->d:Ljava/lang/String;

    .line 378
    new-instance v10, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v12

    move-object/from16 v0, p2

    array-length v4, v0

    int-to-long v14, v4

    move-object v11, v5

    move-object/from16 v13, p3

    invoke-direct/range {v10 .. v15}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;-><init>(Ljava/lang/String;ZLjava/lang/String;J)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V

    goto/16 :goto_a

    .line 330
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v10, v0, Lcom/taobao/accs/data/a;->b:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " try deliver msg to "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v7, v10}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 375
    :cond_1f
    array-length v4, v8

    goto :goto_d

    .line 384
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/taobao/accs/data/a;->b:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " try to send ack dataId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 395
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " not exist, unbind it"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/a;->l:Lcom/taobao/accs/net/b;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/accs/data/a;->l:Lcom/taobao/accs/net/b;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-static {v5, v6}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_6

    :catch_6
    move-exception v5

    goto/16 :goto_8
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;S)V
    .locals 1

    .prologue
    .line 835
    if-eqz p1, :cond_2

    .line 836
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 837
    const-string v0, "source"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 840
    const-string v0, "target"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    :cond_1
    const-string v0, "flags"

    invoke-virtual {p1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    .line 845
    :cond_2
    return-void
.end method

.method private a(Lcom/taobao/accs/data/Message;[B[BLjava/lang/String;)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 413
    const/4 v2, -0x8

    .line 415
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 416
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 417
    iget-object v4, p0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parse Json:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    :cond_0
    const-string v4, "code"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 420
    const/16 v4, 0xc8

    if-ne v2, v4, :cond_3

    .line 421
    iget-object v4, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, v3

    .line 467
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;ILcom/taobao/accs/data/Message$ReqType;[BLjava/util/Map;)V

    .line 468
    new-instance v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    iget-object v1, p1, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v2

    array-length v3, p3

    int-to-long v4, v3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;-><init>(Ljava/lang/String;ZLjava/lang/String;J)V

    invoke-virtual {p0, v0}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V

    .line 470
    return-void

    .line 423
    :pswitch_0
    :try_start_1
    const-string v4, "data"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 426
    const-string v4, "accsToken"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/taobao/accs/utl/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/taobao/accs/data/a;->f:Ljava/lang/String;

    .line 428
    const-string v4, "ACCS_SDK"

    iget-object v5, p0, Lcom/taobao/accs/data/a;->i:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/taobao/accs/utl/UtilityImpl;->saveUtdid(Ljava/lang/String;Landroid/content/Context;)V

    .line 431
    if-eqz v0, :cond_1

    .line 432
    const-string v4, "packageNames"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 433
    if-eqz v4, :cond_1

    move v0, v1

    .line 434
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 435
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 436
    iget-object v6, p0, Lcom/taobao/accs/data/a;->i:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/taobao/accs/utl/UtilityImpl;->packageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 437
    iget-object v5, p0, Lcom/taobao/accs/data/a;->l:Lcom/taobao/accs/net/b;

    invoke-virtual {v5}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/b;

    move-result-object v5

    iget-object v6, p1, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/taobao/accs/client/b;->a(Ljava/lang/String;)V

    .line 434
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 439
    :cond_2
    iget-object v6, p0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    const-string v7, "unbind app"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "pkg"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    iget-object v6, p0, Lcom/taobao/accs/data/a;->l:Lcom/taobao/accs/net/b;

    iget-object v7, p0, Lcom/taobao/accs/data/a;->l:Lcom/taobao/accs/net/b;

    invoke-static {v7, v5}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 463
    :catch_0
    move-exception v0

    .line 464
    iget-object v4, p0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    const-string v5, "handleControlMessage"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 465
    const-string v1, "accs"

    const-string v4, "send_fail"

    const-string v5, "handleControlMessage"

    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/taobao/accs/data/a;->b:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v5, v6, v0}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 447
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/taobao/accs/data/a;->l:Lcom/taobao/accs/net/b;

    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/b;

    move-result-object v0

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/taobao/accs/client/b;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 450
    :pswitch_2
    iget-object v0, p0, Lcom/taobao/accs/data/a;->l:Lcom/taobao/accs/net/b;

    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/b;

    move-result-object v0

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    iget-object v5, p1, Lcom/taobao/accs/data/Message;->E:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/taobao/accs/client/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 453
    :pswitch_3
    iget-object v0, p0, Lcom/taobao/accs/data/a;->l:Lcom/taobao/accs/net/b;

    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/b;

    move-result-object v0

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/taobao/accs/client/b;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 460
    :cond_3
    iget-object v0, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    const/16 v0, 0x12c

    if-ne v2, v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/taobao/accs/data/a;->l:Lcom/taobao/accs/net/b;

    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/b;

    move-result-object v0

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/taobao/accs/client/b;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 899
    new-instance v0, Lcom/taobao/accs/ut/statistics/e;

    invoke-direct {v0}, Lcom/taobao/accs/ut/statistics/e;-><init>()V

    .line 900
    iget-object v1, p0, Lcom/taobao/accs/data/a;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/ut/statistics/e;->a:Ljava/lang/String;

    .line 901
    iput-object p1, v0, Lcom/taobao/accs/ut/statistics/e;->c:Ljava/lang/String;

    .line 902
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/ut/statistics/e;->d:Ljava/lang/String;

    .line 903
    const-string v1, ""

    iput-object v1, v0, Lcom/taobao/accs/ut/statistics/e;->f:Ljava/lang/String;

    .line 904
    iput-object p2, v0, Lcom/taobao/accs/ut/statistics/e;->e:Ljava/lang/String;

    .line 905
    const-string v1, ""

    iput-object v1, v0, Lcom/taobao/accs/ut/statistics/e;->b:Ljava/lang/String;

    .line 906
    invoke-virtual {v0}, Lcom/taobao/accs/ut/statistics/e;->commitUT()V

    .line 907
    return-void
.end method

.method private a(Ljava/util/Map;Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 829
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 830
    const-string v0, "ext_header"

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 832
    :cond_0
    return-void
.end method

.method private b(Lcom/taobao/accs/data/Message;I)V
    .locals 4

    .prologue
    .line 861
    if-nez p1, :cond_0

    .line 891
    :goto_0
    return-void

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/data/a;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 866
    const/4 v0, 0x1

    .line 867
    const/16 v3, 0xc8

    if-eq p2, v3, :cond_1

    .line 868
    const/4 v0, 0x0

    .line 870
    :cond_1
    iget-object v3, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 872
    :pswitch_1
    new-instance v3, Lcom/taobao/accs/ut/statistics/a;

    invoke-direct {v3}, Lcom/taobao/accs/ut/statistics/a;-><init>()V

    .line 873
    iput-object v1, v3, Lcom/taobao/accs/ut/statistics/a;->a:Ljava/lang/String;

    .line 874
    iput-object v2, v3, Lcom/taobao/accs/ut/statistics/a;->b:Ljava/lang/String;

    .line 875
    iput-boolean v0, v3, Lcom/taobao/accs/ut/statistics/a;->c:Z

    .line 876
    invoke-virtual {v3, p2}, Lcom/taobao/accs/ut/statistics/a;->a(I)V

    .line 877
    invoke-virtual {v3}, Lcom/taobao/accs/ut/statistics/a;->commitUT()V

    goto :goto_0

    .line 880
    :pswitch_2
    new-instance v3, Lcom/taobao/accs/ut/statistics/b;

    invoke-direct {v3}, Lcom/taobao/accs/ut/statistics/b;-><init>()V

    .line 881
    iput-object v1, v3, Lcom/taobao/accs/ut/statistics/b;->a:Ljava/lang/String;

    .line 882
    iput-object v2, v3, Lcom/taobao/accs/ut/statistics/b;->b:Ljava/lang/String;

    .line 883
    iput-boolean v0, v3, Lcom/taobao/accs/ut/statistics/b;->c:Z

    .line 884
    iget-object v0, p1, Lcom/taobao/accs/data/Message;->E:Ljava/lang/String;

    iput-object v0, v3, Lcom/taobao/accs/ut/statistics/b;->e:Ljava/lang/String;

    .line 885
    invoke-virtual {v3, p2}, Lcom/taobao/accs/ut/statistics/b;->a(I)V

    .line 886
    invoke-virtual {v3}, Lcom/taobao/accs/ut/statistics/b;->commitUT()V

    goto :goto_0

    .line 870
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private b(I)Z
    .locals 1

    .prologue
    .line 650
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/16 v0, -0x9

    if-eq p1, v0, :cond_0

    const/16 v0, -0xa

    if-eq p1, v0, :cond_0

    const/16 v0, -0xb

    if-ne p1, v0, :cond_1

    .line 654
    :cond_0
    const/4 v0, 0x1

    .line 656
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/taobao/accs/data/Message;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 814
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.taobao.accs.intent.action.RECEIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 815
    iget-object v1, p1, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 816
    const-string v1, "command"

    iget-object v2, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 817
    const-string v1, "serviceId"

    iget-object v2, p1, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 818
    const-string v1, "userInfo"

    iget-object v2, p1, Lcom/taobao/accs/data/Message;->E:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 819
    iget-object v1, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 820
    const-string v1, "dataId"

    iget-object v2, p1, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    :cond_0
    return-object v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 765
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 771
    :cond_0
    :goto_0
    return v0

    .line 768
    :cond_1
    iget-object v1, p0, Lcom/taobao/accs/data/a;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 769
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 775
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/accs/data/a;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    iget-object v0, p0, Lcom/taobao/accs/data/a;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    invoke-direct {p0}, Lcom/taobao/accs/data/a;->i()V

    goto :goto_0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 784
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/taobao/accs/data/a;->i:Landroid/content/Context;

    const-string v2, "accs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/data/a;->l:Lcom/taobao/accs/net/b;

    invoke-virtual {v3}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 785
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 786
    iget-object v0, p0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    const-string v1, "message file not exist"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 798
    :goto_0
    return-void

    .line 789
    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 791
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 792
    iget-object v2, p0, Lcom/taobao/accs/data/a;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 795
    :catch_0
    move-exception v0

    .line 796
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 794
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private i()V
    .locals 5

    .prologue
    .line 802
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/taobao/accs/data/a;->i:Landroid/content/Context;

    const-string v3, "accs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/accs/data/a;->l:Lcom/taobao/accs/net/b;

    invoke-virtual {v4}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 803
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 804
    iget-object v0, p0, Lcom/taobao/accs/data/a;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 805
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 808
    :catch_0
    move-exception v0

    .line 809
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 811
    :goto_1
    return-void

    .line 807
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/taobao/accs/data/a;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/data/Message;

    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 659
    iget-object v0, p0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    const-string v1, "onSendPing"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 660
    const-class v1, Lcom/taobao/accs/data/a;

    monitor-enter v1

    .line 661
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/taobao/accs/data/a;->h:Z

    .line 662
    monitor-exit v1

    .line 663
    return-void

    .line 662
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 691
    iput-boolean v1, p0, Lcom/taobao/accs/data/a;->h:Z

    .line 692
    iget-object v0, p0, Lcom/taobao/accs/data/a;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 693
    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    .line 694
    iget-object v2, p0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    const-string v3, "onNetworkFail"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 695
    array-length v3, v0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 696
    iget-object v4, p0, Lcom/taobao/accs/data/a;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/data/Message;

    .line 697
    if-eqz v1, :cond_0

    .line 698
    invoke-virtual {p0, v1, p1}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;I)V

    .line 695
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 702
    :cond_1
    return-void
.end method

.method public a(Lcom/taobao/accs/data/Message;)V
    .locals 8

    .prologue
    .line 677
    iget-object v0, p0, Lcom/taobao/accs/data/a;->k:Lcom/taobao/accs/data/Message;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/accs/data/a;->k:Lcom/taobao/accs/data/Message;

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    iget-object v1, p1, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/taobao/accs/data/a;->k:Lcom/taobao/accs/data/Message;

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    iget-object v1, p1, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 682
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d1

    const-string v2, "SEND_REPEAT"

    iget-object v3, p1, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 684
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-boolean v0, p1, Lcom/taobao/accs/data/Message;->c:Z

    if-eqz v0, :cond_2

    .line 688
    :cond_1
    :goto_0
    return-void

    .line 687
    :cond_2
    iget-object v0, p0, Lcom/taobao/accs/data/a;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Lcom/taobao/accs/data/Message;I)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 507
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;ILcom/taobao/accs/data/Message$ReqType;[BLjava/util/Map;)V

    .line 508
    return-void
.end method

.method public a(Lcom/taobao/accs/data/Message;ILcom/taobao/accs/data/Message$ReqType;[BLjava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/accs/data/Message;",
            "I",
            "Lcom/taobao/accs/data/Message$ReqType;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    const-string v1, "onError, skip ping/ack"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    :cond_1
    :goto_0
    return-void

    .line 521
    :cond_2
    iget-object v0, p1, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 522
    iget-object v0, p0, Lcom/taobao/accs/data/a;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p1, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    :cond_3
    iget-object v0, p0, Lcom/taobao/accs/data/a;->e:Lcom/taobao/accs/antibrush/AntiBrush;

    iget-object v1, p1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    invoke-virtual {v0, v1, p5}, Lcom/taobao/accs/antibrush/AntiBrush;->checkAntiBrush(Ljava/net/URL;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 527
    const p2, 0x11186

    .line 528
    const/4 p4, 0x0

    .line 529
    const/4 p5, 0x0

    .line 530
    const/4 p3, 0x0

    .line 533
    :cond_4
    iget-object v0, p0, Lcom/taobao/accs/data/a;->d:Lcom/taobao/accs/flowcontrol/FlowControl;

    iget-object v1, p1, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    invoke-virtual {v0, p5, v1}, Lcom/taobao/accs/flowcontrol/FlowControl;->a(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    .line 534
    if-eqz v0, :cond_16

    .line 535
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 536
    const v0, 0x11185

    .line 542
    :goto_1
    const/4 v4, 0x0

    .line 543
    const/4 p5, 0x0

    .line 544
    const/4 p3, 0x0

    move v3, v0

    .line 546
    :goto_2
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 547
    iget-object v0, p0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResult command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " erorcode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    :cond_5
    iget-object v0, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_1

    .line 554
    iget-object v0, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x69

    if-ne v0, v1, :cond_9

    .line 555
    iget-object v0, p0, Lcom/taobao/accs/data/a;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v0

    const-string v1, "accs_election"

    invoke-virtual {v0, v1}, Lcom/taobao/accs/client/GlobalClientInfo;->getListener(Ljava/lang/String;)Lcom/taobao/accs/base/AccsAbstractDataListener;

    move-result-object v0

    .line 556
    if-eqz v0, :cond_8

    .line 557
    const-string v1, "accs_election"

    iget-object v2, p1, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/base/AccsAbstractDataListener;->onResponse(Ljava/lang/String;Ljava/lang/String;I[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto/16 :goto_0

    .line 537
    :cond_6
    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 538
    const v0, 0x11187

    goto :goto_1

    .line 540
    :cond_7
    const v0, 0x11184

    goto :goto_1

    .line 559
    :cond_8
    iget-object v0, p0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    const-string v1, "onResult election listener null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 563
    :cond_9
    iget-boolean v0, p1, Lcom/taobao/accs/data/Message;->e:Z

    if-nez v0, :cond_10

    .line 564
    invoke-direct {p0, v3}, Lcom/taobao/accs/data/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_c

    iget v0, p1, Lcom/taobao/accs/data/Message;->P:I

    sget v1, Lcom/taobao/accs/data/Message;->a:I

    if-gt v0, v1, :cond_c

    .line 567
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/taobao/accs/data/Message;->R:J

    .line 568
    iget v0, p1, Lcom/taobao/accs/data/Message;->P:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/taobao/accs/data/Message;->P:I

    .line 569
    iget-object v0, p0, Lcom/taobao/accs/data/a;->l:Lcom/taobao/accs/net/b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V

    .line 615
    :cond_a
    :goto_3
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v1

    .line 616
    if-eqz v1, :cond_b

    .line 617
    invoke-virtual {v1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onToBizDate()V

    .line 618
    iget-object v0, p1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    .line 619
    :goto_4
    const/16 v2, 0xc8

    if-ne v3, v2, :cond_13

    .line 620
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setRet(Z)V

    .line 621
    iget v1, p1, Lcom/taobao/accs/data/Message;->P:I

    if-lez v1, :cond_12

    .line 622
    const-string v0, "accs"

    const-string v1, "resend"

    const-string v2, "succ"

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 623
    const-string v0, "accs"

    const-string v1, "resend"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "succ_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p1, Lcom/taobao/accs/data/Message;->P:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 641
    :goto_5
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v1

    invoke-interface {v0, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 646
    :cond_b
    invoke-direct {p0, p1, v3}, Lcom/taobao/accs/data/a;->b(Lcom/taobao/accs/data/Message;I)V

    goto/16 :goto_0

    .line 571
    :cond_c
    iget-object v0, p0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    const-string v1, "prepare send broadcast"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    invoke-direct {p0, p1}, Lcom/taobao/accs/data/a;->c(Lcom/taobao/accs/data/Message;)Landroid/content/Intent;

    move-result-object v0

    .line 573
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 574
    iget-short v1, p1, Lcom/taobao/accs/data/Message;->k:S

    shr-int/lit8 v1, v1, 0xd

    and-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/taobao/accs/data/Message$ReqType;->valueOf(I)Lcom/taobao/accs/data/Message$ReqType;

    move-result-object v1

    .line 576
    sget-object v2, Lcom/taobao/accs/data/Message$ReqType;->RES:Lcom/taobao/accs/data/Message$ReqType;

    if-eq p3, v2, :cond_d

    sget-object v2, Lcom/taobao/accs/data/Message$ReqType;->REQ:Lcom/taobao/accs/data/Message$ReqType;

    if-ne v1, v2, :cond_e

    .line 577
    :cond_d
    const-string v1, "send_type"

    const-string v2, "res"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    :cond_e
    const/16 v1, 0xc8

    if-ne v3, v1, :cond_f

    .line 580
    const-string v1, "data"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 582
    :cond_f
    const-string v1, "appKey"

    iget-object v2, p0, Lcom/taobao/accs/data/a;->l:Lcom/taobao/accs/net/b;

    iget-object v2, v2, Lcom/taobao/accs/net/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    const-string v1, "configTag"

    iget-object v2, p0, Lcom/taobao/accs/data/a;->l:Lcom/taobao/accs/net/b;

    iget-object v2, v2, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    invoke-direct {p0, p5, v0}, Lcom/taobao/accs/data/a;->a(Ljava/util/Map;Landroid/content/Intent;)V

    .line 586
    iget-object v1, p0, Lcom/taobao/accs/data/a;->i:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/taobao/accs/data/d;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 590
    iget-object v0, p1, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 591
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v4

    const v5, 0x101d1

    const-string v6, "MsgToBuss0"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "commandId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dataId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v0, 0xdd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 592
    const-string v0, "accs"

    const-string v1, "to_buss"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1commandId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "serviceId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto/16 :goto_3

    .line 596
    :cond_10
    iget-object v0, p0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/data/a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " message is cancel! command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 618
    :cond_11
    iget-object v0, p1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 625
    :cond_12
    const-string v1, "accs"

    const-string v2, "Request_Success_Rate"

    invoke-static {v1, v2, v0}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 628
    :cond_13
    iget v2, p1, Lcom/taobao/accs/data/Message;->P:I

    if-lez v2, :cond_15

    .line 629
    const-string v0, "accs"

    const-string v2, "resend"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail\uff3f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-static {v0, v2, v4, v6, v7}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 630
    const-string v0, "accs"

    const-string v2, "resend"

    const-string v4, "fail"

    const-wide/16 v6, 0x0

    invoke-static {v0, v2, v4, v6, v7}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 637
    :cond_14
    :goto_6
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setRet(Z)V

    .line 638
    invoke-virtual {v1, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setFailReason(I)V

    goto/16 :goto_5

    .line 632
    :cond_15
    const/16 v2, -0xd

    if-eq v3, v2, :cond_14

    .line 633
    const-string v2, "accs"

    const-string v4, "Request_Success_Rate"

    invoke-static {v3}, Lcom/taobao/accs/utl/UtilityImpl;->int2String(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/taobao/accs/data/a;->b:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/taobao/accs/data/Message;->Q:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v4, v0, v5, v6}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_16
    move-object v4, p4

    move v3, p2

    goto/16 :goto_2
.end method

.method public a(Lcom/taobao/accs/data/Message;ILjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/accs/data/Message;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 511
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;ILcom/taobao/accs/data/Message$ReqType;[BLjava/util/Map;)V

    .line 512
    return-void
.end method

.method public a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V
    .locals 4

    .prologue
    .line 919
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/taobao/accs/data/b;

    invoke-direct {v1, p0, p1}, Lcom/taobao/accs/data/b;-><init>(Lcom/taobao/accs/data/a;Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :goto_0
    return-void

    .line 927
    :catch_0
    move-exception v0

    .line 928
    iget-object v1, p0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    const-string v2, "addTrafficsInfo"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/taobao/accs/data/a;->a([BLjava/lang/String;)V

    .line 111
    return-void
.end method

.method public a([BLjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 114
    new-instance v1, Lcom/taobao/accs/utl/h;

    invoke-direct {v1, p1}, Lcom/taobao/accs/utl/h;-><init>([B)V

    .line 117
    :try_start_0
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->a()I

    move-result v2

    .line 118
    and-int/lit16 v3, v2, 0xf0

    shr-int/lit8 v3, v3, 0x4

    .line 119
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    iget-object v4, p0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "version:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :cond_0
    and-int/lit8 v2, v2, 0xf

    .line 124
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    iget-object v4, p0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "compress:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    :cond_1
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->a()I

    .line 129
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->b()I

    move-result v4

    .line 130
    sget-object v5, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v5}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 131
    iget-object v5, p0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "totalLen:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :cond_2
    :goto_0
    if-ge v0, v4, :cond_5

    .line 136
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->b()I

    move-result v5

    .line 137
    add-int/lit8 v0, v0, 0x2

    .line 138
    if-lez v5, :cond_4

    .line 139
    new-array v5, v5, [B

    .line 140
    invoke-virtual {v1, v5}, Lcom/taobao/accs/utl/h;->read([B)I

    .line 141
    sget-object v6, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v6}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 142
    iget-object v6, p0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buf len:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    :cond_3
    array-length v6, v5

    add-int/2addr v0, v6

    .line 146
    invoke-direct {p0, v2, v5, p2, v3}, Lcom/taobao/accs/data/a;->a(I[BLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    :try_start_1
    const-string v2, "accs"

    const-string v3, "send_fail"

    const-string v4, ""

    const-string v5, "1"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/taobao/accs/data/a;->b:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    const-string v3, ""

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->close()V

    .line 159
    :goto_1
    return-void

    .line 148
    :cond_4
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v2, "data format error"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->close()V

    throw v0

    :cond_5
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->close()V

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 2

    .prologue
    .line 757
    const/4 v0, 0x0

    .line 758
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 759
    iget-object v0, p0, Lcom/taobao/accs/data/a;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/data/Message;

    .line 761
    :cond_0
    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 666
    iget-object v0, p0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    const-string v1, "onRcvPing"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 667
    const-class v1, Lcom/taobao/accs/data/a;

    monitor-enter v1

    .line 668
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/taobao/accs/data/a;->h:Z

    .line 669
    monitor-exit v1

    .line 670
    return-void

    .line 669
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/taobao/accs/data/Message;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 705
    iget-object v0, p0, Lcom/taobao/accs/data/a;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/taobao/accs/data/a;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 707
    iget-object v0, p0, Lcom/taobao/accs/data/a;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 708
    iget-object v2, p0, Lcom/taobao/accs/data/a;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/data/Message;

    .line 709
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 712
    iget-object v2, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 736
    :cond_1
    :goto_1
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/taobao/accs/data/Message;->e:Z

    if-eqz v2, :cond_0

    .line 737
    iget-object v2, p0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    const-string v3, "cancelControlMessage"

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "command"

    aput-object v6, v4, v5

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    aput-object v0, v4, v7

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 715
    :pswitch_0
    iget-object v2, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v7, :cond_2

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v8, :cond_1

    .line 717
    :cond_2
    iput-boolean v7, v0, Lcom/taobao/accs/data/Message;->e:Z

    goto :goto_1

    .line 722
    :pswitch_1
    iget-object v2, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 724
    :cond_3
    iput-boolean v7, v0, Lcom/taobao/accs/data/Message;->e:Z

    goto :goto_1

    .line 729
    :pswitch_2
    iget-object v2, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 731
    :cond_4
    iput-boolean v7, v0, Lcom/taobao/accs/data/Message;->e:Z

    goto :goto_1

    .line 741
    :cond_5
    return-void

    .line 712
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

.method public c()Z
    .locals 1

    .prologue
    .line 673
    iget-boolean v0, p0, Lcom/taobao/accs/data/a;->h:Z

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/taobao/accs/data/a;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public e()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/taobao/accs/data/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 749
    iget-object v0, p0, Lcom/taobao/accs/data/a;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/taobao/accs/ut/statistics/d;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/taobao/accs/data/a;->j:Lcom/taobao/accs/ut/statistics/d;

    return-object v0
.end method

.method public g()V
    .locals 4

    .prologue
    .line 911
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/data/a;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    :goto_0
    return-void

    .line 912
    :catch_0
    move-exception v0

    .line 913
    iget-object v1, p0, Lcom/taobao/accs/data/a;->m:Ljava/lang/String;

    const-string v2, "restoreTraffics"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
