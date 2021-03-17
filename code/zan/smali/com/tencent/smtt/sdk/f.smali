.class final Lcom/tencent/smtt/sdk/f;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/tencent/smtt/sdk/ai;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;Landroid/content/Context;Lcom/tencent/smtt/sdk/ai;)V
    .locals 0

    iput-object p2, p0, Lcom/tencent/smtt/sdk/f;->a:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

    iput-object p3, p0, Lcom/tencent/smtt/sdk/f;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/tencent/smtt/sdk/f;->c:Lcom/tencent/smtt/sdk/ai;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/f;->a:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/f;->a:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;->onViewInitFinished(Z)V

    :cond_1
    invoke-static {}, Lcom/tencent/smtt/utils/TbsLog;->writeLogToDisk()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/tencent/smtt/sdk/bi;->b()Lcom/tencent/smtt/sdk/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bi;->d()Lcom/tencent/smtt/sdk/bj;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/smtt/sdk/f;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/bj;->a(Landroid/content/Context;)Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    :cond_2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/f;->a:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/f;->a:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;->onViewInitFinished(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/f;->c:Lcom/tencent/smtt/sdk/ai;

    const-string v1, "init_all"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;B)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/f;->c:Lcom/tencent/smtt/sdk/ai;

    const/4 v1, 0x7

    const-string v2, "tbs://preinit"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/ai;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/f;->a:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/f;->a:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

    invoke-interface {v0}, Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;->onCoreInitFinished()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
