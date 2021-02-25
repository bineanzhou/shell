.class Lcom/taobao/accs/net/l;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/data/Message;

.field final synthetic b:Lcom/taobao/accs/net/k;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/k;Lcom/taobao/accs/data/Message;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/k;

    iput-object p2, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/16 v10, -0xb

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 94
    iget-object v0, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    if-eqz v0, :cond_5

    .line 95
    iget-object v0, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onTakeFromQueue()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->a()I

    move-result v8

    .line 101
    :try_start_0
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/k;

    invoke-virtual {v0}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try send:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Lcom/taobao/accs/data/Message$b;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dataId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-object v2, v2, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "appkey"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/k;

    iget-object v4, v4, Lcom/taobao/accs/net/k;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    :cond_1
    if-ne v8, v6, :cond_10

    .line 105
    iget-object v0, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    if-nez v0, :cond_6

    .line 106
    iget-object v0, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/k;

    iget-object v0, v0, Lcom/taobao/accs/net/k;->e:Lcom/taobao/accs/data/a;

    iget-object v1, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    const/4 v2, -0x5

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v6

    .line 161
    :goto_0
    if-nez v0, :cond_4

    .line 162
    if-ne v8, v6, :cond_11

    .line 164
    iget-object v1, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v1}, Lcom/taobao/accs/data/Message;->g()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/k;

    iget-object v2, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    const/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/net/k;->a(Lcom/taobao/accs/data/Message;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 165
    :cond_2
    iget-object v1, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/k;

    iget-object v1, v1, Lcom/taobao/accs/net/k;->e:Lcom/taobao/accs/data/a;

    iget-object v2, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v1, v2, v10}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;I)V

    .line 167
    :cond_3
    iget-object v1, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget v1, v1, Lcom/taobao/accs/data/Message;->P:I

    if-ne v1, v6, :cond_4

    iget-object v1, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 168
    const-string v1, "accs"

    const-string v2, "resend"

    const-string v3, "total_accs"

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 176
    :cond_4
    :goto_1
    const-string v1, "accs"

    iget-object v2, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-object v2, v2, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 177
    iget-object v1, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/k;

    invoke-virtual {v1}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSucc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " dataId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    :cond_5
    :goto_2
    return-void

    .line 108
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/k;

    iget-object v0, v0, Lcom/taobao/accs/net/k;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/SessionCenter;->getInstance(Ljava/lang/String;)Lanet/channel/SessionCenter;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/k;

    iget-object v2, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-object v2, v2, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/taobao/accs/net/k;->a(Lanet/channel/SessionCenter;Ljava/lang/String;Z)V

    .line 110
    iget-object v1, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-object v1, v1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    const-wide/32 v4, 0xea60

    invoke-virtual {v0, v1, v2, v4, v5}, Lanet/channel/SessionCenter;->get(Ljava/lang/String;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;

    move-result-object v1

    .line 111
    if-eqz v1, :cond_f

    .line 112
    iget-object v0, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-object v2, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/k;

    iget-object v2, v2, Lcom/taobao/accs/net/k;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/k;

    iget v3, v3, Lcom/taobao/accs/net/k;->c:I

    invoke-virtual {v0, v2, v3}, Lcom/taobao/accs/data/Message;->a(Landroid/content/Context;I)[B

    move-result-object v4

    .line 114
    const-string v0, "accs"

    iget-object v2, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-object v2, v2, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 115
    iget-object v0, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/k;

    invoke-virtual {v0}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "send data "

    const/16 v0, 0xa

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v9, "len"

    aput-object v9, v5, v0

    const/4 v9, 0x1

    if-nez v4, :cond_8

    move v0, v7

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v9

    const/4 v0, 0x2

    const-string v9, "dataId"

    aput-object v9, v5, v0

    const/4 v0, 0x3

    iget-object v9, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v9}, Lcom/taobao/accs/data/Message;->b()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v0

    const/4 v0, 0x4

    const-string v9, "command"

    aput-object v9, v5, v0

    const/4 v0, 0x5

    iget-object v9, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-object v9, v9, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    aput-object v9, v5, v0

    const/4 v0, 0x6

    const-string v9, "host"

    aput-object v9, v5, v0

    const/4 v0, 0x7

    iget-object v9, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-object v9, v9, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    aput-object v9, v5, v0

    const/16 v0, 0x8

    const-string v9, "utdid"

    aput-object v9, v5, v0

    const/16 v0, 0x9

    iget-object v9, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/k;

    iget-object v9, v9, Lcom/taobao/accs/net/k;->j:Ljava/lang/String;

    aput-object v9, v5, v0

    invoke-static {v2, v3, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/taobao/accs/data/Message;->a(J)V

    .line 133
    array-length v0, v4

    const/16 v2, 0x4000

    if-le v0, v2, :cond_b

    iget-object v0, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x66

    if-eq v0, v2, :cond_b

    .line 134
    iget-object v0, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/k;

    iget-object v0, v0, Lcom/taobao/accs/net/k;->e:Lcom/taobao/accs/data/a;

    iget-object v1, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    const/4 v2, -0x4

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;I)V

    :goto_5
    move v0, v6

    .line 147
    goto/16 :goto_0

    .line 115
    :cond_8
    array-length v0, v4

    goto :goto_3

    .line 122
    :cond_9
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 123
    iget-object v0, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/k;

    invoke-virtual {v0}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "send data "

    const/16 v0, 0xa

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v9, "len"

    aput-object v9, v5, v0

    const/4 v9, 0x1

    if-nez v4, :cond_a

    move v0, v7

    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v9

    const/4 v0, 0x2

    const-string v9, "dataId"

    aput-object v9, v5, v0

    const/4 v0, 0x3

    iget-object v9, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v9}, Lcom/taobao/accs/data/Message;->b()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v0

    const/4 v0, 0x4

    const-string v9, "command"

    aput-object v9, v5, v0

    const/4 v0, 0x5

    iget-object v9, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-object v9, v9, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    aput-object v9, v5, v0

    const/4 v0, 0x6

    const-string v9, "host"

    aput-object v9, v5, v0

    const/4 v0, 0x7

    iget-object v9, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-object v9, v9, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    aput-object v9, v5, v0

    const/16 v0, 0x8

    const-string v9, "utdid"

    aput-object v9, v5, v0

    const/16 v0, 0x9

    iget-object v9, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/k;

    iget-object v9, v9, Lcom/taobao/accs/net/k;->j:Ljava/lang/String;

    aput-object v9, v5, v0

    invoke-static {v2, v3, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    .line 155
    :catch_0
    move-exception v0

    .line 157
    :try_start_2
    const-string v1, "accs"

    const-string v2, "send_fail"

    iget-object v3, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-object v3, v3, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/k;

    iget v8, v8, Lcom/taobao/accs/net/k;->c:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/k;

    invoke-virtual {v1}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sendMessage"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    const-string v0, "accs"

    iget-object v1, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-object v1, v1, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 177
    iget-object v0, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/k;

    invoke-virtual {v0}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSucc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dataId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 123
    :cond_a
    :try_start_3
    array-length v0, v4

    goto/16 :goto_6

    .line 136
    :cond_b
    iget-object v0, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/k;

    iget-object v0, v0, Lcom/taobao/accs/net/k;->e:Lcom/taobao/accs/data/a;

    iget-object v2, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0, v2}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;)V

    .line 137
    iget-object v0, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-boolean v0, v0, Lcom/taobao/accs/data/Message;->c:Z

    if-eqz v0, :cond_c

    .line 138
    iget-object v0, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/k;

    iget-object v0, v0, Lcom/taobao/accs/net/k;->l:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_c
    iget-object v0, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->d()I

    move-result v0

    const/16 v2, 0xc8

    invoke-virtual {v1, v0, v4, v2}, Lanet/channel/Session;->sendCustomFrame(I[BI)V

    .line 141
    iget-object v0, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 142
    iget-object v0, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onSendData()V

    .line 144
    :cond_d
    iget-object v0, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/k;

    iget-object v1, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v1}, Lcom/taobao/accs/data/Message;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget v2, v2, Lcom/taobao/accs/data/Message;->Q:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/accs/net/k;->a(Ljava/lang/String;J)V

    .line 145
    iget-object v0, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/k;

    iget-object v9, v0, Lcom/taobao/accs/net/k;->e:Lcom/taobao/accs/data/a;

    new-instance v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    iget-object v1, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-object v1, v1, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v2

    iget-object v3, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-object v3, v3, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    array-length v4, v4

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;-><init>(Ljava/lang/String;ZLjava/lang/String;J)V

    invoke-virtual {v9, v0}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5

    .line 161
    :catchall_0
    move-exception v0

    .line 176
    const-string v1, "accs"

    iget-object v2, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-object v2, v2, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 177
    iget-object v1, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/k;

    invoke-virtual {v1}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSucc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dataId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v3}, Lcom/taobao/accs/data/Message;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    :cond_e
    :goto_7
    throw v0

    :cond_f
    move v0, v7

    .line 148
    goto/16 :goto_0

    .line 153
    :cond_10
    :try_start_4
    iget-object v0, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/k;

    invoke-virtual {v0}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip msg type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Lcom/taobao/accs/data/Message$b;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v6

    goto/16 :goto_0

    .line 171
    :cond_11
    iget-object v1, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/k;

    iget-object v1, v1, Lcom/taobao/accs/net/k;->e:Lcom/taobao/accs/data/a;

    iget-object v2, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v1, v2, v10}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;I)V

    goto/16 :goto_1

    .line 178
    :cond_12
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 179
    iget-object v1, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/k;

    invoke-virtual {v1}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSucc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " dataId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 178
    :cond_13
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 179
    iget-object v0, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/k;

    invoke-virtual {v0}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSucc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dataId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 178
    :cond_14
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 179
    iget-object v1, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/k;

    invoke-virtual {v1}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSucc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dataId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v3}, Lcom/taobao/accs/data/Message;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7
.end method
