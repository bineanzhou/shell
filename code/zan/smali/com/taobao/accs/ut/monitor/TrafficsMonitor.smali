.class public Lcom/taobao/accs/ut/monitor/TrafficsMonitor;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;,
        Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    .line 33
    new-instance v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$1;

    invoke-direct {v0, p0}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$1;-><init>(Lcom/taobao/accs/ut/monitor/TrafficsMonitor;)V

    iput-object v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->b:Ljava/util/Map;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->c:I

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->e:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->d:Landroid/content/Context;

    .line 56
    return-void
.end method

.method private b()V
    .locals 14

    .prologue
    const/4 v0, 0x0

    .line 102
    iget-object v11, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    monitor-enter v11

    .line 103
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/taobao/accs/utl/UtilityImpl;->formatDay(J)Ljava/lang/String;

    move-result-object v10

    .line 106
    iget-object v1, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->e:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 107
    iget-object v8, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->e:Ljava/lang/String;

    .line 108
    const/4 v0, 0x1

    move v9, v0

    .line 111
    :goto_0
    iget-object v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 113
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    .line 114
    if-eqz v0, :cond_1

    .line 115
    iget-object v1, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/c/a;->a(Landroid/content/Context;)Lcom/taobao/accs/c/a;

    move-result-object v1

    iget-object v2, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->e:Ljava/lang/String;

    iget-object v3, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->b:Ljava/util/Map;

    iget-object v5, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->c:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-boolean v5, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->d:Z

    iget-wide v6, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->f:J

    invoke-virtual/range {v1 .. v8}, Lcom/taobao/accs/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;)V

    goto :goto_1

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 121
    :cond_2
    :try_start_1
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    const-string v0, "TrafficsMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savetoDay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " saveTraffics"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    :cond_3
    if-eqz v9, :cond_5

    .line 127
    iget-object v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 128
    invoke-direct {p0}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->c()V

    .line 135
    :cond_4
    :goto_2
    iput-object v10, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->e:Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->c:I

    .line 139
    monitor-exit v11

    .line 141
    return-void

    .line 130
    :cond_5
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 131
    const-string v0, "TrafficsMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no need commit lastsaveDay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currday:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_6
    move v9, v0

    move-object v8, v10

    goto/16 :goto_0
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 163
    iget-object v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/c/a;->a(Landroid/content/Context;)Lcom/taobao/accs/c/a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/taobao/accs/c/a;->a(Z)Ljava/util/List;

    move-result-object v0

    .line 165
    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 170
    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    .line 171
    if-eqz v0, :cond_1

    .line 173
    new-instance v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;

    invoke-direct {v2}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;-><init>()V

    .line 174
    iget-object v3, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->b:Ljava/lang/String;

    iput-object v3, v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;->bizId:Ljava/lang/String;

    .line 175
    iget-object v3, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->a:Ljava/lang/String;

    iput-object v3, v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;->date:Ljava/lang/String;

    .line 176
    iget-object v3, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->e:Ljava/lang/String;

    iput-object v3, v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;->host:Ljava/lang/String;

    .line 177
    iget-boolean v3, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->d:Z

    iput-boolean v3, v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;->isBackground:Z

    .line 178
    iget-wide v4, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->f:J

    iput-wide v4, v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;->size:J

    .line 180
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    invoke-interface {v0, v2}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    const-string v1, ""

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 183
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/c/a;->a(Landroid/content/Context;)Lcom/taobao/accs/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/c/a;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :try_start_1
    iget-object v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 147
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :try_start_2
    iget-object v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/c/a;->a(Landroid/content/Context;)Lcom/taobao/accs/c/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/accs/c/a;->a(Z)Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 150
    if-nez v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 147
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    const-string v1, "TrafficsMonitor"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 153
    :cond_1
    :try_start_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    .line 154
    invoke-virtual {p0, v0}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method public a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 60
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->f:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 61
    iget-object v0, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "accsSelf"

    :goto_0
    iput-object v0, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->c:Ljava/lang/String;

    .line 62
    iget-object v5, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    monitor-enter v5

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->b:Ljava/util/Map;

    iget-object v1, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    :goto_1
    return-void

    .line 61
    :cond_1
    iget-object v0, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->c:Ljava/lang/String;

    goto :goto_0

    .line 67
    :cond_2
    :try_start_1
    iput-object v0, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->b:Ljava/lang/String;

    .line 68
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    const-string v1, "TrafficsMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addTrafficInfo count:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->c:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :cond_3
    iget-object v1, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 72
    if-eqz v1, :cond_6

    .line 73
    const/4 v4, 0x1

    .line 74
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    .line 75
    iget-boolean v7, v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->d:Z

    iget-boolean v8, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->d:Z

    if-ne v7, v8, :cond_4

    iget-object v7, v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->e:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->e:Ljava/lang/String;

    iget-object v8, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->e:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 78
    iget-wide v6, v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->f:J

    iget-wide v8, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->f:J

    add-long/2addr v6, v8

    iput-wide v6, v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->f:J

    move v2, v3

    .line 83
    :goto_2
    if-eqz v2, :cond_5

    .line 84
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->c:I

    .line 92
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    iget v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->c:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->b()V

    goto/16 :goto_1

    .line 87
    :cond_6
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_7
    move v2, v4

    goto :goto_2
.end method
