.class Lcom/taobao/accs/internal/i;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/internal/ServiceImpl$2;


# direct methods
.method constructor <init>(Lcom/taobao/accs/internal/ServiceImpl$2;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/taobao/accs/internal/i;->a:Lcom/taobao/accs/internal/ServiceImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/internal/i;->a:Lcom/taobao/accs/internal/ServiceImpl$2;

    iget-object v0, v0, Lcom/taobao/accs/internal/ServiceImpl$2;->this$0:Lcom/taobao/accs/internal/ServiceImpl;

    invoke-static {v0}, Lcom/taobao/accs/internal/ServiceImpl;->a(Lcom/taobao/accs/internal/ServiceImpl;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/accs/internal/i;->a:Lcom/taobao/accs/internal/ServiceImpl$2;

    iget-object v0, v0, Lcom/taobao/accs/internal/ServiceImpl$2;->this$0:Lcom/taobao/accs/internal/ServiceImpl;

    invoke-static {v0}, Lcom/taobao/accs/internal/ServiceImpl;->a(Lcom/taobao/accs/internal/ServiceImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->getServiceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 443
    const-string v1, "org.agoo.android.intent.action.PING_V4"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    iget-object v1, p0, Lcom/taobao/accs/internal/i;->a:Lcom/taobao/accs/internal/ServiceImpl$2;

    iget-object v1, v1, Lcom/taobao/accs/internal/ServiceImpl$2;->this$0:Lcom/taobao/accs/internal/ServiceImpl;

    invoke-static {v1}, Lcom/taobao/accs/internal/ServiceImpl;->a(Lcom/taobao/accs/internal/ServiceImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.taobao.accs.ChannelService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    iget-object v1, p0, Lcom/taobao/accs/internal/i;->a:Lcom/taobao/accs/internal/ServiceImpl$2;

    iget-object v1, v1, Lcom/taobao/accs/internal/ServiceImpl$2;->this$0:Lcom/taobao/accs/internal/ServiceImpl;

    invoke-static {v1}, Lcom/taobao/accs/internal/ServiceImpl;->a(Lcom/taobao/accs/internal/ServiceImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 447
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d1

    const-string v2, "probeServiceEnabled"

    iget-object v3, p0, Lcom/taobao/accs/internal/i;->a:Lcom/taobao/accs/internal/ServiceImpl$2;

    iget-object v3, v3, Lcom/taobao/accs/internal/ServiceImpl$2;->this$0:Lcom/taobao/accs/internal/ServiceImpl;

    invoke-static {v3}, Lcom/taobao/accs/internal/ServiceImpl;->a(Lcom/taobao/accs/internal/ServiceImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;)V

    .line 448
    const-string v0, "ServiceImpl"

    const-string v1, "ReceiverImpl probeTaoBao........mContext.startService(intent) [probe][successfully]"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    :goto_0
    const-string v0, "ServiceImpl"

    const-string v1, "ReceiverImpl probeTaoBao........messageServiceBinder [probe][end]"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    :goto_1
    return-void

    .line 451
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    const-string v1, "ServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReceiverImpl probeTaoBao error........e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
