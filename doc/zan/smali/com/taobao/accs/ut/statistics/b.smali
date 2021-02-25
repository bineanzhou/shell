.class public Lcom/taobao/accs/ut/statistics/b;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lcom/taobao/accs/ut/statistics/UTInterface;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "BindUser"

    iput-object v0, p0, Lcom/taobao/accs/ut/statistics/b;->f:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/accs/ut/statistics/b;->g:Z

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    const v8, 0x101d1

    .line 63
    iget-boolean v0, p0, Lcom/taobao/accs/ut/statistics/b;->g:Z

    if-eqz v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/accs/ut/statistics/b;->g:Z

    .line 68
    const/4 v4, 0x0

    .line 70
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 73
    :try_start_0
    iget-object v3, p0, Lcom/taobao/accs/ut/statistics/b;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    const/16 v0, 0xdd

    :try_start_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    .line 75
    :try_start_2
    const-string v0, "device_id"

    iget-object v1, p0, Lcom/taobao/accs/ut/statistics/b;->a:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v0, "bind_date"

    iget-object v1, p0, Lcom/taobao/accs/ut/statistics/b;->b:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "ret"

    iget-boolean v0, p0, Lcom/taobao/accs/ut/statistics/b;->c:Z

    if-eqz v0, :cond_2

    const-string v0, "y"

    :goto_1
    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v0, "fail_reasons"

    iget-object v1, p0, Lcom/taobao/accs/ut/statistics/b;->d:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v0, "user_id"

    iget-object v1, p0, Lcom/taobao/accs/ut/statistics/b;->e:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    const-string v0, "accs.BindUserStatistic"

    const v1, 0x101d1

    invoke-static {v1, v3, v4, v5, v6}, Lcom/taobao/accs/utl/UTMini;->getCommitInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_1
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d1

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    :goto_2
    const-string v1, "accs.BindUserStatistic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v3, v7, v5, v6}, Lcom/taobao/accs/utl/UTMini;->getCommitInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 77
    :cond_2
    :try_start_3
    const-string v0, "n"
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 86
    :catch_1
    move-exception v0

    move-object v5, v7

    move-object v3, v7

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v5, v7

    goto :goto_2
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 33
    sparse-switch p1, :sswitch_data_0

    .line 52
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/accs/ut/statistics/b;->a(Ljava/lang/String;)V

    .line 55
    :goto_0
    :sswitch_0
    return-void

    .line 37
    :sswitch_1
    const-string v0, "network fail"

    invoke-virtual {p0, v0}, Lcom/taobao/accs/ut/statistics/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :sswitch_2
    const-string v0, "msg too large"

    invoke-virtual {p0, v0}, Lcom/taobao/accs/ut/statistics/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :sswitch_3
    const-string v0, "app not bind"

    invoke-virtual {p0, v0}, Lcom/taobao/accs/ut/statistics/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :sswitch_4
    const-string v0, "param error"

    invoke-virtual {p0, v0}, Lcom/taobao/accs/ut/statistics/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_5
    const-string v0, "service not available"

    invoke-virtual {p0, v0}, Lcom/taobao/accs/ut/statistics/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 33
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_2
        -0x3 -> :sswitch_5
        -0x2 -> :sswitch_4
        -0x1 -> :sswitch_1
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/taobao/accs/ut/statistics/b;->d:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public commitUT()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "BindUser"

    invoke-direct {p0, v0}, Lcom/taobao/accs/ut/statistics/b;->b(Ljava/lang/String;)V

    .line 60
    return-void
.end method
