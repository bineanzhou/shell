.class Lanet/channel/SessionRequest$a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/SessionRequest$IConnCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/SessionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lanet/channel/SessionRequest;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lanet/channel/entity/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lanet/channel/entity/a;


# direct methods
.method constructor <init>(Lanet/channel/SessionRequest;Landroid/content/Context;Ljava/util/List;Lanet/channel/entity/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lanet/channel/entity/a;",
            ">;",
            "Lanet/channel/entity/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 169
    iput-object p1, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanet/channel/SessionRequest$a;->a:Z

    .line 170
    iput-object p2, p0, Lanet/channel/SessionRequest$a;->c:Landroid/content/Context;

    .line 171
    iput-object p3, p0, Lanet/channel/SessionRequest$a;->d:Ljava/util/List;

    .line 172
    iput-object p4, p0, Lanet/channel/SessionRequest$a;->e:Lanet/channel/entity/a;

    .line 173
    return-void
.end method

.method static synthetic a(Lanet/channel/SessionRequest$a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lanet/channel/SessionRequest$a;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onDisConnect(Lanet/channel/Session;JLanet/channel/entity/EventType;)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 278
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v0

    .line 279
    const-string v1, "awcn.SessionRequest"

    const-string v2, "Connect Disconnect"

    iget-object v3, p0, Lanet/channel/SessionRequest$a;->e:Lanet/channel/entity/a;

    invoke-virtual {v3}, Lanet/channel/entity/a;->h()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "session"

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    const-string v5, "host"

    aput-object v5, v4, v9

    const/4 v5, 0x3

    iget-object v6, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    invoke-virtual {v6}, Lanet/channel/SessionRequest;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "appIsBg"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "isHandleFinish"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-boolean v6, p0, Lanet/channel/SessionRequest$a;->a:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    iget-object v1, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    iget-object v1, v1, Lanet/channel/SessionRequest;->c:Lanet/channel/f;

    iget-object v2, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    invoke-virtual {v1, v2, p1}, Lanet/channel/f;->b(Lanet/channel/SessionRequest;Lanet/channel/Session;)V

    .line 282
    iget-boolean v1, p0, Lanet/channel/SessionRequest$a;->a:Z

    if-eqz v1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iput-boolean v8, p0, Lanet/channel/SessionRequest$a;->a:Z

    .line 287
    iget-boolean v1, p1, Lanet/channel/Session;->autoReCreate:Z

    if-eqz v1, :cond_0

    .line 290
    if-eqz v0, :cond_2

    .line 291
    const-string v0, "awcn.SessionRequest"

    const-string v1, "[onDisConnect]app background, don\'t Recreate"

    iget-object v2, p0, Lanet/channel/SessionRequest$a;->e:Lanet/channel/entity/a;

    invoke-virtual {v2}, Lanet/channel/entity/a;->h()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "session"

    aput-object v4, v3, v7

    aput-object p1, v3, v8

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 294
    :cond_2
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->g()Z

    move-result v0

    if-nez v0, :cond_3

    .line 295
    const-string v0, "awcn.SessionRequest"

    const-string v1, "[onDisConnect]no network, don\'t Recreate"

    iget-object v2, p0, Lanet/channel/SessionRequest$a;->e:Lanet/channel/entity/a;

    invoke-virtual {v2}, Lanet/channel/entity/a;->h()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "session"

    aput-object v4, v3, v7

    aput-object p1, v3, v8

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 299
    :cond_3
    :try_start_0
    const-string v0, "awcn.SessionRequest"

    const-string v1, "session disconnected, try to recreate session"

    iget-object v2, p0, Lanet/channel/SessionRequest$a;->e:Lanet/channel/entity/a;

    invoke-virtual {v2}, Lanet/channel/entity/a;->h()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    new-instance v0, Lanet/channel/i;

    invoke-direct {v0, p0, p1}, Lanet/channel/i;-><init>(Lanet/channel/SessionRequest$a;Lanet/channel/Session;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v1}, Lanet/channel/a/c;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onFailed(Lanet/channel/Session;JLanet/channel/entity/EventType;I)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 179
    invoke-static {v7}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "awcn.SessionRequest"

    const-string v1, "Connect failed"

    iget-object v2, p0, Lanet/channel/SessionRequest$a;->e:Lanet/channel/entity/a;

    invoke-virtual {v2}, Lanet/channel/entity/a;->h()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "session"

    aput-object v4, v3, v6

    aput-object p1, v3, v7

    const-string v4, "host"

    aput-object v4, v3, v8

    const/4 v4, 0x3

    iget-object v5, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    invoke-virtual {v5}, Lanet/channel/SessionRequest;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "isHandleFinish"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-boolean v5, p0, Lanet/channel/SessionRequest$a;->a:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    iget-boolean v0, v0, Lanet/channel/SessionRequest;->f:Z

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    iput-boolean v6, v0, Lanet/channel/SessionRequest;->f:Z

    .line 238
    :cond_1
    :goto_0
    return-void

    .line 188
    :cond_2
    iget-boolean v0, p0, Lanet/channel/SessionRequest$a;->a:Z

    if-nez v0, :cond_1

    .line 191
    iput-boolean v7, p0, Lanet/channel/SessionRequest$a;->a:Z

    .line 193
    iget-object v0, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    iget-object v0, v0, Lanet/channel/SessionRequest;->c:Lanet/channel/f;

    iget-object v1, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    invoke-virtual {v0, v1, p1}, Lanet/channel/f;->b(Lanet/channel/SessionRequest;Lanet/channel/Session;)V

    .line 195
    iget-boolean v0, p1, Lanet/channel/Session;->tryNextWhenFail:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lanet/channel/SessionRequest$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 196
    :cond_3
    iget-object v0, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    invoke-virtual {v0}, Lanet/channel/SessionRequest;->c()V

    .line 198
    sget-object v0, Lanet/channel/entity/EventType;->CONNECT_FAIL:Lanet/channel/entity/EventType;

    invoke-virtual {v0, p4}, Lanet/channel/entity/EventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, -0xa35

    if-eq p5, v0, :cond_1

    const/16 v0, -0xa29

    if-eq p5, v0, :cond_1

    .line 201
    new-instance v0, Lanet/channel/statist/AlarmObject;

    invoke-direct {v0}, Lanet/channel/statist/AlarmObject;-><init>()V

    .line 202
    const-string v1, "networkPrefer"

    iput-object v1, v0, Lanet/channel/statist/AlarmObject;->module:Ljava/lang/String;

    .line 203
    const-string v1, "policy"

    iput-object v1, v0, Lanet/channel/statist/AlarmObject;->modulePoint:Ljava/lang/String;

    .line 204
    iget-object v1, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    iget-object v1, v1, Lanet/channel/SessionRequest;->a:Ljava/lang/String;

    iput-object v1, v0, Lanet/channel/statist/AlarmObject;->arg:Ljava/lang/String;

    .line 205
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/statist/AlarmObject;->errorCode:Ljava/lang/String;

    .line 206
    iput-boolean v6, v0, Lanet/channel/statist/AlarmObject;->isSuccess:Z

    .line 207
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v1

    invoke-interface {v1, v0}, Lanet/channel/appmonitor/IAppMonitor;->commitAlarm(Lanet/channel/statist/AlarmObject;)V

    .line 211
    iget-object v0, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    iget-object v0, v0, Lanet/channel/SessionRequest;->g:Lanet/channel/statist/SessionConnStat;

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/statist/SessionConnStat;->errorCode:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    iget-object v0, v0, Lanet/channel/SessionRequest;->g:Lanet/channel/statist/SessionConnStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    iget-object v1, v1, Lanet/channel/SessionRequest;->g:Lanet/channel/statist/SessionConnStat;

    iget-wide v4, v1, Lanet/channel/statist/SessionConnStat;->startTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lanet/channel/statist/SessionConnStat;->costTime:J

    .line 213
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    iget-object v1, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    iget-object v1, v1, Lanet/channel/SessionRequest;->g:Lanet/channel/statist/SessionConnStat;

    invoke-interface {v0, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    goto :goto_0

    .line 218
    :cond_4
    invoke-static {v7}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 219
    const-string v0, "awcn.SessionRequest"

    const-string v1, "use next connInfo to create session"

    iget-object v2, p0, Lanet/channel/SessionRequest$a;->e:Lanet/channel/entity/a;

    invoke-virtual {v2}, Lanet/channel/entity/a;->h()Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "host"

    aput-object v4, v3, v6

    iget-object v4, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    invoke-virtual {v4}, Lanet/channel/SessionRequest;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    :cond_5
    iget-object v0, p0, Lanet/channel/SessionRequest$a;->e:Lanet/channel/entity/a;

    iget v0, v0, Lanet/channel/entity/a;->b:I

    iget-object v1, p0, Lanet/channel/SessionRequest$a;->e:Lanet/channel/entity/a;

    iget v1, v1, Lanet/channel/entity/a;->c:I

    if-ne v0, v1, :cond_8

    const/16 v0, -0x7d3

    if-eq p5, v0, :cond_6

    const/16 v0, -0x96a

    if-ne p5, v0, :cond_8

    .line 228
    :cond_6
    iget-object v0, p0, Lanet/channel/SessionRequest$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 229
    :cond_7
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 230
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/entity/a;

    .line 231
    invoke-virtual {p1}, Lanet/channel/Session;->getIp()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lanet/channel/entity/a;->a:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 232
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 236
    :cond_8
    iget-object v0, p0, Lanet/channel/SessionRequest$a;->d:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/entity/a;

    .line 237
    iget-object v1, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    iget-object v2, p0, Lanet/channel/SessionRequest$a;->c:Landroid/content/Context;

    new-instance v3, Lanet/channel/SessionRequest$a;

    iget-object v4, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    iget-object v5, p0, Lanet/channel/SessionRequest$a;->c:Landroid/content/Context;

    iget-object v6, p0, Lanet/channel/SessionRequest$a;->d:Ljava/util/List;

    invoke-direct {v3, v4, v5, v6, v0}, Lanet/channel/SessionRequest$a;-><init>(Lanet/channel/SessionRequest;Landroid/content/Context;Ljava/util/List;Lanet/channel/entity/a;)V

    invoke-virtual {v0}, Lanet/channel/entity/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v0, v3, v4}, Lanet/channel/SessionRequest;->a(Lanet/channel/SessionRequest;Landroid/content/Context;Lanet/channel/entity/a;Lanet/channel/SessionRequest$IConnCb;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onSuccess(Lanet/channel/Session;J)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 242
    const-string v0, "awcn.SessionRequest"

    const-string v1, "Connect Success"

    iget-object v2, p0, Lanet/channel/SessionRequest$a;->e:Lanet/channel/entity/a;

    invoke-virtual {v2}, Lanet/channel/entity/a;->h()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "session"

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    const/4 v4, 0x2

    const-string v5, "host"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    invoke-virtual {v5}, Lanet/channel/SessionRequest;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    :try_start_0
    iget-object v0, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    iget-boolean v0, v0, Lanet/channel/SessionRequest;->f:Z

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lanet/channel/SessionRequest;->f:Z

    .line 246
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lanet/channel/Session;->close(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    iget-object v0, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    invoke-virtual {v0}, Lanet/channel/SessionRequest;->c()V

    .line 274
    :goto_0
    return-void

    .line 250
    :cond_0
    :try_start_1
    iget-object v0, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    iget-object v0, v0, Lanet/channel/SessionRequest;->c:Lanet/channel/f;

    iget-object v1, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    invoke-virtual {v0, v1, p1}, Lanet/channel/f;->a(Lanet/channel/SessionRequest;Lanet/channel/Session;)V

    .line 253
    new-instance v0, Lanet/channel/statist/AlarmObject;

    invoke-direct {v0}, Lanet/channel/statist/AlarmObject;-><init>()V

    .line 254
    const-string v1, "networkPrefer"

    iput-object v1, v0, Lanet/channel/statist/AlarmObject;->module:Ljava/lang/String;

    .line 255
    const-string v1, "policy"

    iput-object v1, v0, Lanet/channel/statist/AlarmObject;->modulePoint:Ljava/lang/String;

    .line 256
    iget-object v1, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    iget-object v1, v1, Lanet/channel/SessionRequest;->a:Ljava/lang/String;

    iput-object v1, v0, Lanet/channel/statist/AlarmObject;->arg:Ljava/lang/String;

    .line 257
    const/4 v1, 0x1

    iput-boolean v1, v0, Lanet/channel/statist/AlarmObject;->isSuccess:Z

    .line 258
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v1

    invoke-interface {v1, v0}, Lanet/channel/appmonitor/IAppMonitor;->commitAlarm(Lanet/channel/statist/AlarmObject;)V

    .line 261
    iget-object v0, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    iget-object v0, v0, Lanet/channel/SessionRequest;->g:Lanet/channel/statist/SessionConnStat;

    const/4 v1, 0x1

    iput v1, v0, Lanet/channel/statist/SessionConnStat;->ret:I

    .line 262
    iget-object v0, p0, Lanet/channel/SessionRequest$a;->e:Lanet/channel/entity/a;

    iget-object v0, v0, Lanet/channel/entity/a;->a:Lanet/channel/strategy/IConnStrategy;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    iget-object v0, v0, Lanet/channel/SessionRequest;->g:Lanet/channel/statist/SessionConnStat;

    iget-object v1, p0, Lanet/channel/SessionRequest$a;->e:Lanet/channel/entity/a;

    iget-object v1, v1, Lanet/channel/entity/a;->a:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v1}, Lanet/channel/strategy/IConnStrategy;->getIpType()I

    move-result v1

    iput v1, v0, Lanet/channel/statist/SessionConnStat;->succIpType:I

    .line 265
    :cond_1
    iget-object v0, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    iget-object v0, v0, Lanet/channel/SessionRequest;->g:Lanet/channel/statist/SessionConnStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    iget-object v1, v1, Lanet/channel/SessionRequest;->g:Lanet/channel/statist/SessionConnStat;

    iget-wide v4, v1, Lanet/channel/statist/SessionConnStat;->startTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lanet/channel/statist/SessionConnStat;->costTime:J

    .line 266
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    iget-object v1, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    iget-object v1, v1, Lanet/channel/SessionRequest;->g:Lanet/channel/statist/SessionConnStat;

    invoke-interface {v0, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    iget-object v0, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    invoke-virtual {v0}, Lanet/channel/SessionRequest;->c()V

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    :try_start_2
    const-string v1, "awcn.SessionRequest"

    const-string v2, "[onSuccess]:"

    iget-object v3, p0, Lanet/channel/SessionRequest$a;->e:Lanet/channel/entity/a;

    invoke-virtual {v3}, Lanet/channel/entity/a;->h()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    iget-object v0, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    invoke-virtual {v0}, Lanet/channel/SessionRequest;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    invoke-virtual {v1}, Lanet/channel/SessionRequest;->c()V

    throw v0
.end method
