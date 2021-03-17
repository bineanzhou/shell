.class final Lanet/channel/a/e;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/monitor/INetworkQualityChangeListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkQualityChanged(Lanet/channel/monitor/NetworkSpeed;)V
    .locals 8

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 55
    const-string v2, "awcn.ThreadPoolExecutorFactory"

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Network"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const-string v6, "Speed"

    aput-object v6, v5, v1

    invoke-static {}, Lanet/channel/monitor/b;->a()Lanet/channel/monitor/b;

    move-result-object v6

    invoke-virtual {v6}, Lanet/channel/monitor/b;->c()D

    move-result-wide v6

    double-to-int v6, v6

    mul-int/lit16 v6, v6, 0x400

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-static {}, Lanet/channel/a/d;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    sget-object v3, Lanet/channel/monitor/NetworkSpeed;->Slow:Lanet/channel/monitor/NetworkSpeed;

    if-ne p1, v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 58
    return-void

    :cond_0
    move v0, v1

    .line 57
    goto :goto_0
.end method
