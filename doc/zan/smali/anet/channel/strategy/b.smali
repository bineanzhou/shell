.class Lanet/channel/strategy/b;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lanet/channel/strategy/a;


# direct methods
.method constructor <init>(Lanet/channel/strategy/a;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lanet/channel/strategy/b;->c:Lanet/channel/strategy/a;

    iput-object p2, p0, Lanet/channel/strategy/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lanet/channel/strategy/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v3, 0x1bb

    const/16 v1, 0x50

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 95
    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/b;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lanet/channel/strategy/utils/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 98
    invoke-static {}, Lanet/channel/strategy/StrategyTemplate;->getInstance()Lanet/channel/strategy/StrategyTemplate;

    move-result-object v2

    iget-object v6, p0, Lanet/channel/strategy/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lanet/channel/strategy/StrategyTemplate;->getConnProtocol(Ljava/lang/String;)Lanet/channel/strategy/ConnProtocol;

    move-result-object v2

    .line 99
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 100
    if-eqz v2, :cond_4

    .line 101
    iget-object v6, v2, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    const-string v8, "https"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v2, Lanet/channel/strategy/ConnProtocol;->publicKey:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v4, v5

    .line 102
    :cond_1
    if-nez v4, :cond_3

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0xafc8

    invoke-static/range {v0 .. v6}, Lanet/channel/strategy/IPConnStrategy;->a(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)Lanet/channel/strategy/IPConnStrategy;

    move-result-object v1

    .line 103
    const/4 v2, 0x2

    iput v2, v1, Lanet/channel/strategy/IPConnStrategy;->a:I

    .line 104
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v1, p0, Lanet/channel/strategy/b;->c:Lanet/channel/strategy/a;

    iget-object v1, v1, Lanet/channel/strategy/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lanet/channel/strategy/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :goto_1
    const/4 v1, 0x1

    invoke-static {v1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    const-string v1, "awcn.LocalDnsStrategyTable"

    const-string v2, "resolve ip by local dns"

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "host"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lanet/channel/strategy/b;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "ip"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 129
    :cond_2
    :goto_2
    iget-object v0, p0, Lanet/channel/strategy/b;->c:Lanet/channel/strategy/a;

    iget-object v1, v0, Lanet/channel/strategy/a;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 130
    :try_start_1
    iget-object v0, p0, Lanet/channel/strategy/b;->c:Lanet/channel/strategy/a;

    iget-object v0, v0, Lanet/channel/strategy/a;->b:Ljava/util/HashMap;

    iget-object v2, p0, Lanet/channel/strategy/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 132
    iget-object v1, p0, Lanet/channel/strategy/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_2
    iget-object v0, p0, Lanet/channel/strategy/b;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 134
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 136
    :goto_3
    return-void

    :cond_3
    move v1, v3

    .line 102
    goto :goto_0

    .line 107
    :cond_4
    const/16 v1, 0x50

    :try_start_3
    sget-object v2, Lanet/channel/strategy/ConnProtocol;->HTTP:Lanet/channel/strategy/ConnProtocol;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lanet/channel/strategy/IPConnStrategy;->a(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)Lanet/channel/strategy/IPConnStrategy;

    move-result-object v8

    .line 108
    const/4 v1, 0x2

    iput v1, v8, Lanet/channel/strategy/IPConnStrategy;->a:I

    .line 110
    const/16 v1, 0x1bb

    sget-object v2, Lanet/channel/strategy/ConnProtocol;->HTTPS:Lanet/channel/strategy/ConnProtocol;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lanet/channel/strategy/IPConnStrategy;->a(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)Lanet/channel/strategy/IPConnStrategy;

    move-result-object v1

    .line 111
    const/4 v2, 0x2

    iput v2, v1, Lanet/channel/strategy/IPConnStrategy;->a:I

    .line 113
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v1, p0, Lanet/channel/strategy/b;->c:Lanet/channel/strategy/a;

    iget-object v1, v1, Lanet/channel/strategy/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lanet/channel/strategy/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 125
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_4
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    const-string v0, "awcn.LocalDnsStrategyTable"

    const-string v1, "resolve ip by local dns failed"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "host"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lanet/channel/strategy/b;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 129
    :cond_5
    iget-object v0, p0, Lanet/channel/strategy/b;->c:Lanet/channel/strategy/a;

    iget-object v1, v0, Lanet/channel/strategy/a;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 130
    :try_start_5
    iget-object v0, p0, Lanet/channel/strategy/b;->c:Lanet/channel/strategy/a;

    iget-object v0, v0, Lanet/channel/strategy/a;->b:Ljava/util/HashMap;

    iget-object v2, p0, Lanet/channel/strategy/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 132
    iget-object v1, p0, Lanet/channel/strategy/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_6
    iget-object v0, p0, Lanet/channel/strategy/b;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 134
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 122
    :cond_6
    :try_start_7
    iget-object v0, p0, Lanet/channel/strategy/b;->c:Lanet/channel/strategy/a;

    iget-object v0, v0, Lanet/channel/strategy/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lanet/channel/strategy/b;->a:Ljava/lang/String;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_2

    .line 129
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lanet/channel/strategy/b;->c:Lanet/channel/strategy/a;

    iget-object v1, v1, Lanet/channel/strategy/a;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 130
    :try_start_8
    iget-object v2, p0, Lanet/channel/strategy/b;->c:Lanet/channel/strategy/a;

    iget-object v2, v2, Lanet/channel/strategy/a;->b:Ljava/util/HashMap;

    iget-object v3, p0, Lanet/channel/strategy/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 132
    iget-object v1, p0, Lanet/channel/strategy/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_9
    iget-object v2, p0, Lanet/channel/strategy/b;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 134
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw v0

    .line 131
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    .line 134
    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    .line 131
    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_5
    move-exception v0

    monitor-exit v1

    throw v0

    .line 134
    :catchall_6
    move-exception v0

    monitor-exit v1

    throw v0
.end method
