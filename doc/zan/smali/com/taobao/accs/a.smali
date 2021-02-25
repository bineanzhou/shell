.class Lcom/taobao/accs/a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/ChannelService$KernelService;


# direct methods
.method constructor <init>(Lcom/taobao/accs/ChannelService$KernelService;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/taobao/accs/a;->a:Lcom/taobao/accs/ChannelService$KernelService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 129
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/ChannelService;->getInstance()Lcom/taobao/accs/ChannelService;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/taobao/accs/a;->a:Lcom/taobao/accs/ChannelService$KernelService;

    invoke-static {v1}, Lcom/taobao/accs/ChannelService$KernelService;->a(Lcom/taobao/accs/ChannelService$KernelService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/a;->a:Lcom/taobao/accs/ChannelService$KernelService;

    invoke-virtual {v2}, Lcom/taobao/accs/ChannelService$KernelService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 132
    if-eqz v1, :cond_0

    .line 133
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/taobao/accs/a;->a:Lcom/taobao/accs/ChannelService$KernelService;

    invoke-static {v3}, Lcom/taobao/accs/ChannelService$KernelService;->a(Lcom/taobao/accs/ChannelService$KernelService;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 136
    const/16 v3, 0x249b

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/taobao/accs/ChannelService;->startForeground(ILandroid/app/Notification;)V

    .line 138
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/taobao/accs/a;->a:Lcom/taobao/accs/ChannelService$KernelService;

    invoke-static {v2}, Lcom/taobao/accs/ChannelService$KernelService;->a(Lcom/taobao/accs/ChannelService$KernelService;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 141
    invoke-static {}, Lcom/taobao/accs/ChannelService$KernelService;->a()Lcom/taobao/accs/ChannelService$KernelService;

    move-result-object v1

    const/16 v2, 0x249b

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/taobao/accs/ChannelService$KernelService;->startForeground(ILandroid/app/Notification;)V

    .line 142
    invoke-static {}, Lcom/taobao/accs/ChannelService$KernelService;->a()Lcom/taobao/accs/ChannelService$KernelService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ChannelService$KernelService;->stopForeground(Z)V

    .line 144
    :cond_0
    invoke-static {}, Lcom/taobao/accs/ChannelService$KernelService;->a()Lcom/taobao/accs/ChannelService$KernelService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/ChannelService$KernelService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    const-string v1, "ChannelService"

    const-string v2, " onStartCommand run"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
