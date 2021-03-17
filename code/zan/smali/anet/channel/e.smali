.class Lanet/channel/e;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanet/channel/SessionCenter$a;


# direct methods
.method constructor <init>(Lanet/channel/SessionCenter$a;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lanet/channel/e;->a:Lanet/channel/SessionCenter$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 537
    :try_start_0
    sget-wide v0, Lanet/channel/util/AppLifecycle;->lastEnterBackgroundTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lanet/channel/util/AppLifecycle;->lastEnterBackgroundTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 539
    iget-object v0, p0, Lanet/channel/e;->a:Lanet/channel/SessionCenter$a;

    iget-object v0, v0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->accsSessionManager:Lanet/channel/AccsSessionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lanet/channel/AccsSessionManager;->forceCloseSession(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    :goto_0
    iget-object v0, p0, Lanet/channel/e;->a:Lanet/channel/SessionCenter$a;

    iput-boolean v4, v0, Lanet/channel/SessionCenter$a;->a:Z

    .line 548
    :goto_1
    return-void

    .line 541
    :cond_0
    :try_start_1
    iget-object v0, p0, Lanet/channel/e;->a:Lanet/channel/SessionCenter$a;

    iget-object v0, v0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->accsSessionManager:Lanet/channel/AccsSessionManager;

    invoke-virtual {v0}, Lanet/channel/AccsSessionManager;->checkAndStartSession()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 543
    :catch_0
    move-exception v0

    .line 544
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 546
    iget-object v0, p0, Lanet/channel/e;->a:Lanet/channel/SessionCenter$a;

    iput-boolean v4, v0, Lanet/channel/SessionCenter$a;->a:Z

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lanet/channel/e;->a:Lanet/channel/SessionCenter$a;

    iput-boolean v4, v1, Lanet/channel/SessionCenter$a;->a:Z

    throw v0
.end method
