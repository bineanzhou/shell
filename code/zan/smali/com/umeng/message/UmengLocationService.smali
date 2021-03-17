.class public Lcom/umeng/message/UmengLocationService;
.super Landroid/app/Service;
.source "UmengLocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/UmengLocationService$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/netlocation/AMapNetworkLocationClient;

.field private b:Lcom/umeng/message/UmengLocationService$a;

.field private c:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a()[B
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/umeng/message/UmengLocationService;->a:Lcom/amap/api/netlocation/AMapNetworkLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/netlocation/AMapNetworkLocationClient;->getNetworkLocationParameter()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/amap/api/netlocation/AMapNetworkLocationClient;

    invoke-virtual {p0}, Lcom/umeng/message/UmengLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/netlocation/AMapNetworkLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/message/UmengLocationService;->a:Lcom/amap/api/netlocation/AMapNetworkLocationClient;

    .line 47
    new-instance v0, Lcom/umeng/message/UmengLocationService$a;

    invoke-direct {v0, p0}, Lcom/umeng/message/UmengLocationService$a;-><init>(Landroid/app/Service;)V

    iput-object v0, p0, Lcom/umeng/message/UmengLocationService;->b:Lcom/umeng/message/UmengLocationService$a;

    .line 48
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/umeng/message/UmengLocationService;->c:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/umeng/message/UmengLocationService;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/UmengLocationService;->a:Lcom/amap/api/netlocation/AMapNetworkLocationClient;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/umeng/message/UmengLocationService;->a:Lcom/amap/api/netlocation/AMapNetworkLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/netlocation/AMapNetworkLocationClient;->destroy()V

    .line 86
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 87
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0}, Lcom/umeng/message/UmengLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->isOnline(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 75
    :goto_0
    return v0

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/umeng/message/UmengLocationService;->c:Ljava/util/Timer;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    const-string v1, "stopTimer"

    const/4 v2, 0x0

    .line 56
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/umeng/message/UmengLocationService;->c:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/umeng/message/UmengLocationService;->c:Ljava/util/Timer;

    if-eqz v1, :cond_2

    .line 61
    iget-object v1, p0, Lcom/umeng/message/UmengLocationService;->c:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 63
    :cond_2
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/umeng/message/UmengLocationService;->c:Ljava/util/Timer;

    goto :goto_0
.end method
