.class Lcom/tencent/wxop/stat/e;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/tencent/wxop/stat/d;


# direct methods
.method constructor <init>(Lcom/tencent/wxop/stat/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wxop/stat/e;->a:Lcom/tencent/wxop/stat/d;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/wxop/stat/common/l;->b()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    const-string v1, "TimerTask run"

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/wxop/stat/e;->a:Lcom/tencent/wxop/stat/d;

    invoke-static {v0}, Lcom/tencent/wxop/stat/d;->a(Lcom/tencent/wxop/stat/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->e(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/tencent/wxop/stat/e;->cancel()Z

    iget-object v0, p0, Lcom/tencent/wxop/stat/e;->a:Lcom/tencent/wxop/stat/d;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/d;->a()V

    return-void
.end method
