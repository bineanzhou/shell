.class Lcom/taobao/accs/internal/e;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/taobao/accs/internal/b;


# direct methods
.method constructor <init>(Lcom/taobao/accs/internal/b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/taobao/accs/internal/e;->b:Lcom/taobao/accs/internal/b;

    iput-object p2, p0, Lcom/taobao/accs/internal/e;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 551
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/internal/e;->b:Lcom/taobao/accs/internal/b;

    invoke-static {v0}, Lcom/taobao/accs/internal/b;->c(Lcom/taobao/accs/internal/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/accs/a/a;->b:Z

    .line 553
    const-string v0, "ElectionServiceImpl"

    const-string v1, "wait app election time out"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 555
    iget-object v1, p0, Lcom/taobao/accs/internal/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.taobao.accs.ChannelService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    iget-object v1, p0, Lcom/taobao/accs/internal/e;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 558
    :catch_0
    move-exception v0

    .line 559
    const-string v1, "ElectionServiceImpl"

    const-string v2, "mSelectAppTimeOutTask"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
