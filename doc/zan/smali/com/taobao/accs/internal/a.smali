.class Lcom/taobao/accs/internal/a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/job/JobParameters;

.field final synthetic b:Lcom/taobao/accs/internal/AccsJobService;


# direct methods
.method constructor <init>(Lcom/taobao/accs/internal/AccsJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/taobao/accs/internal/a;->b:Lcom/taobao/accs/internal/AccsJobService;

    iput-object p2, p0, Lcom/taobao/accs/internal/a;->a:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/internal/a;->b:Lcom/taobao/accs/internal/AccsJobService;

    invoke-virtual {v0}, Lcom/taobao/accs/internal/AccsJobService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 30
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 31
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string v2, "com.taobao.accs.intent.action.COMMAND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string v2, "command"

    const/16 v3, 0xc9

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    const-string v2, "com.taobao.accs.ChannelService"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    iget-object v0, p0, Lcom/taobao/accs/internal/a;->b:Lcom/taobao/accs/internal/AccsJobService;

    invoke-virtual {v0, v1}, Lcom/taobao/accs/internal/AccsJobService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 36
    iget-object v0, p0, Lcom/taobao/accs/internal/a;->b:Lcom/taobao/accs/internal/AccsJobService;

    iget-object v1, p0, Lcom/taobao/accs/internal/a;->a:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/internal/AccsJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    const-string v1, "AccsJobService"

    const-string v2, "onStartJob"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
