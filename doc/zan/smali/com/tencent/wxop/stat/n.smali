.class final Lcom/tencent/wxop/stat/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wxop/stat/n;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/wxop/stat/n;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    const-string v1, "The Context of StatService.onStop() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/wxop/stat/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->flushDataToDB(Landroid/content/Context;)V

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/tencent/wxop/stat/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/l;->z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    const-string v1, "onStop isBackgroundRunning flushDataToDB"

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/wxop/stat/n;->a:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/tencent/wxop/stat/StatServiceImpl;->commitEvents(Landroid/content/Context;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
