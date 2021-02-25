.class Lanet/channel/strategy/g;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/strategy/IStrategyInstance;
.implements Lanet/channel/strategy/dispatch/HttpDispatcher$IDispatchEventListener;


# instance fields
.field protected a:Lanet/channel/strategy/StrategyInfoHolder;

.field private b:Z

.field private c:J

.field private d:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lanet/channel/strategy/IStrategyListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanet/channel/strategy/g;->b:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/StrategyInfoHolder;

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lanet/channel/strategy/g;->c:J

    .line 35
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/g;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method private a()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 237
    iget-object v2, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/StrategyInfoHolder;

    if-nez v2, :cond_0

    .line 238
    const-string v2, "StrategyCenter not initialized"

    const/4 v3, 0x0

    const-string v4, "isInitialized"

    new-array v5, v0, [Ljava/lang/Object;

    iget-boolean v6, p0, Lanet/channel/strategy/g;->b:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lanet/channel/strategy/g;)Z
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lanet/channel/strategy/g;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public forceRefreshStrategy(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 180
    invoke-direct {p0}, Lanet/channel/strategy/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    const-string v0, "awcn.StrategyCenter"

    const-string v1, "force refresh strategy"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "host"

    aput-object v5, v3, v4

    aput-object p1, v3, v6

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyInfoHolder;->d()Lanet/channel/strategy/StrategyTable;

    move-result-object v0

    invoke-virtual {v0, p1, v6}, Lanet/channel/strategy/StrategyTable;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public getCNameByHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lanet/channel/strategy/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyInfoHolder;->d()Lanet/channel/strategy/StrategyTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lanet/channel/strategy/StrategyTable;->getCnameByHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getClientIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0}, Lanet/channel/strategy/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const-string v0, ""

    .line 218
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyInfoHolder;->d()Lanet/channel/strategy/StrategyTable;

    move-result-object v0

    iget-object v0, v0, Lanet/channel/strategy/StrategyTable;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public getConnStrategyListByHost(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lanet/channel/strategy/g;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 176
    :cond_1
    :goto_0
    return-object v0

    .line 163
    :cond_2
    iget-object v0, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyInfoHolder;->d()Lanet/channel/strategy/StrategyTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lanet/channel/strategy/StrategyTable;->getCnameByHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object p1, v0

    .line 168
    :cond_3
    iget-object v0, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyInfoHolder;->d()Lanet/channel/strategy/StrategyTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lanet/channel/strategy/StrategyTable;->queryByHost(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 169
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 170
    iget-object v0, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/StrategyInfoHolder;

    iget-object v0, v0, Lanet/channel/strategy/StrategyInfoHolder;->f:Lanet/channel/strategy/a;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 173
    :cond_4
    invoke-static {v6}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    const-string v1, "getConnStrategyListByHost"

    const/4 v2, 0x0

    const-string v3, "host"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v5, "result"

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getFormalizeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v6, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 127
    invoke-static {p1}, Lanet/channel/util/c;->a(Ljava/lang/String;)Lanet/channel/util/c;

    move-result-object v0

    .line 128
    if-nez v0, :cond_1

    .line 129
    const-string v0, "awcn.StrategyCenter"

    const-string v2, "url is invalid."

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "URL"

    aput-object v4, v3, v9

    aput-object p1, v3, v8

    const-string v4, "stack"

    aput-object v4, v3, v10

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "getFormalizeUrl"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lanet/channel/util/Utils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v2, v1, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 147
    :cond_0
    :goto_0
    return-object v0

    .line 135
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lanet/channel/util/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lanet/channel/util/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lanet/channel/strategy/g;->getSchemeByHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-virtual {v0}, Lanet/channel/util/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    const-string v0, ":"

    const-string v3, "//"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lanet/channel/util/StringUtils;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 140
    :goto_1
    const/4 v2, 0x1

    :try_start_1
    invoke-static {v2}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    const-string v2, "awcn.StrategyCenter"

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "raw"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0x80

    invoke-static {p1, v7}, Lanet/channel/util/StringUtils;->simplifyString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "ret"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/16 v7, 0x80

    invoke-static {v0, v7}, Lanet/channel/util/StringUtils;->simplifyString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v2

    .line 145
    :goto_2
    const-string v3, "awcn.StrategyCenter"

    const-string v4, "getFormalizeUrl failed"

    new-array v5, v10, [Ljava/lang/Object;

    const-string v6, "raw"

    aput-object v6, v5, v9

    aput-object p1, v5, v8

    invoke-static {v3, v4, v1, v2, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 144
    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, p1

    goto :goto_2

    :cond_2
    move-object v0, p1

    goto :goto_1
.end method

.method public getFormalizeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lanet/channel/strategy/g;->getFormalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchemeByHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lanet/channel/strategy/g;->getSchemeByHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchemeByHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p2, v1

    .line 108
    :cond_0
    :goto_0
    return-object p2

    .line 91
    :cond_1
    invoke-direct {p0}, Lanet/channel/strategy/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/StrategyInfoHolder;

    iget-object v0, v0, Lanet/channel/strategy/StrategyInfoHolder;->e:Lanet/channel/strategy/SafeAislesMap;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/SafeAislesMap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, p2

    .line 100
    :cond_2
    if-nez v0, :cond_3

    .line 101
    sget-object v0, Lanet/channel/strategy/c$a;->a:Lanet/channel/strategy/c;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    if-nez v0, :cond_3

    .line 104
    const-string v0, "http"

    .line 107
    :cond_3
    const-string v2, "awcn.StrategyCenter"

    const-string v3, "getSchemeByHost"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "host"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    const-string v6, "scheme"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    invoke-static {v2, v3, v1, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p2, v0

    .line 108
    goto :goto_0
.end method

.method public getUnitPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    invoke-direct {p0}, Lanet/channel/strategy/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x0

    .line 204
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/StrategyInfoHolder;

    iget-object v0, v0, Lanet/channel/strategy/StrategyInfoHolder;->d:Lanet/channel/strategy/UnitMap;

    invoke-virtual {v0, p1, p2}, Lanet/channel/strategy/UnitMap;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized initialize(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lanet/channel/strategy/g;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 54
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 42
    :cond_1
    :try_start_1
    const-string v0, "awcn.StrategyCenter"

    const-string v1, "StrategyCenter initialize started."

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-static {p1}, Lanet/channel/strategy/dispatch/a;->a(Landroid/content/Context;)V

    .line 44
    invoke-static {p1}, Lanet/channel/strategy/l;->a(Landroid/content/Context;)V

    .line 45
    invoke-static {p1}, Lanet/channel/status/NetworkStatusHelper;->a(Landroid/content/Context;)V

    .line 46
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lanet/channel/strategy/dispatch/HttpDispatcher;->addListener(Lanet/channel/strategy/dispatch/HttpDispatcher$IDispatchEventListener;)V

    .line 48
    invoke-static {}, Lanet/channel/strategy/StrategyInfoHolder;->a()Lanet/channel/strategy/StrategyInfoHolder;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/StrategyInfoHolder;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanet/channel/strategy/g;->b:Z

    .line 50
    const-string v0, "awcn.StrategyCenter"

    const-string v1, "StrategyCenter initialize finished."

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    :try_start_2
    const-string v1, "awcn.StrategyCenter"

    const-string v2, "StrategyCenter initialize failed."

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyConnEvent(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V
    .locals 2

    .prologue
    .line 223
    invoke-direct {p0}, Lanet/channel/strategy/g;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    if-eqz p2, :cond_0

    instance-of v0, p2, Lanet/channel/strategy/IPConnStrategy;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 227
    check-cast v0, Lanet/channel/strategy/IPConnStrategy;

    .line 228
    iget v0, v0, Lanet/channel/strategy/IPConnStrategy;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 229
    iget-object v0, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/StrategyInfoHolder;

    iget-object v0, v0, Lanet/channel/strategy/StrategyInfoHolder;->f:Lanet/channel/strategy/a;

    invoke-virtual {v0, p1, p2, p3}, Lanet/channel/strategy/a;->a(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V

    goto :goto_0

    .line 231
    :cond_2
    iget-object v0, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyInfoHolder;->d()Lanet/channel/strategy/StrategyTable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lanet/channel/strategy/StrategyTable;->a(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V

    goto :goto_0
.end method

.method public onEvent(Lanet/channel/strategy/dispatch/DispatchEvent;)V
    .locals 4

    .prologue
    .line 246
    iget v0, p1, Lanet/channel/strategy/dispatch/DispatchEvent;->eventType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/StrategyInfoHolder;

    if-eqz v0, :cond_0

    .line 247
    const-string v0, "awcn.StrategyCenter"

    const-string v1, "receive DNS event"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    iget-object v0, p1, Lanet/channel/strategy/dispatch/DispatchEvent;->extraObject:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lanet/channel/strategy/k;->a(Lorg/json/JSONObject;)Lanet/channel/strategy/k$c;

    move-result-object v1

    .line 249
    if-nez v1, :cond_1

    .line 258
    :cond_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v0, v1}, Lanet/channel/strategy/StrategyInfoHolder;->a(Lanet/channel/strategy/k$c;)V

    .line 253
    invoke-virtual {p0}, Lanet/channel/strategy/g;->saveData()V

    .line 254
    iget-object v0, p0, Lanet/channel/strategy/g;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/IStrategyListener;

    .line 255
    invoke-interface {v0, v1}, Lanet/channel/strategy/IStrategyListener;->onStrategyUpdated(Lanet/channel/strategy/k$c;)V

    goto :goto_0
.end method

.method public registerListener(Lanet/channel/strategy/IStrategyListener;)V
    .locals 1

    .prologue
    .line 190
    if-eqz p1, :cond_0

    .line 191
    iget-object v0, p0, Lanet/channel/strategy/g;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_0
    return-void
.end method

.method public declared-synchronized saveData()V
    .locals 6

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    const-string v0, "awcn.StrategyCenter"

    const-string v1, "saveData"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 266
    iget-wide v2, p0, Lanet/channel/strategy/g;->c:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 267
    iput-wide v0, p0, Lanet/channel/strategy/g;->c:J

    .line 269
    new-instance v0, Lanet/channel/strategy/h;

    invoke-direct {v0, p0}, Lanet/channel/strategy/h;-><init>(Lanet/channel/strategy/g;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lanet/channel/strategy/utils/a;->a(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :cond_0
    monitor-exit p0

    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setUnitPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 208
    invoke-direct {p0}, Lanet/channel/strategy/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/StrategyInfoHolder;

    iget-object v0, v0, Lanet/channel/strategy/StrategyInfoHolder;->d:Lanet/channel/strategy/UnitMap;

    invoke-virtual {v0, p1, p2, p3}, Lanet/channel/strategy/UnitMap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized switchEnv()V
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/StrategyInfoHolder;

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyInfoHolder;->b()V

    .line 59
    invoke-static {}, Lanet/channel/strategy/StrategyInfoHolder;->a()Lanet/channel/strategy/StrategyInfoHolder;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/StrategyInfoHolder;

    .line 61
    :cond_0
    invoke-static {}, Lanet/channel/strategy/l;->a()V

    .line 62
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/strategy/dispatch/HttpDispatcher;->switchENV()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterListener(Lanet/channel/strategy/IStrategyListener;)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lanet/channel/strategy/g;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 198
    return-void
.end method
