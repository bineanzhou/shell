.class public Lcom/taobao/accs/ChannelService;
.super Lcom/taobao/accs/base/BaseService;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/ChannelService$KernelService;
    }
.end annotation


# static fields
.field public static final DEFAULT_FORGROUND_V:I = 0x18

.field static final NOTIFY_ID:I = 0x249b

.field public static SDK_VERSION_CODE:I = 0x0

.field public static final SUPPORT_FOREGROUND_VERSION_KEY:Ljava/lang/String; = "support_foreground_v"

.field static final TAG:Ljava/lang/String; = "ChannelService"

.field private static mInstance:Lcom/taobao/accs/ChannelService;


# instance fields
.field private mFristStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0xdd

    sput v0, Lcom/taobao/accs/ChannelService;->SDK_VERSION_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/taobao/accs/base/BaseService;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/accs/ChannelService;->mFristStarted:Z

    .line 105
    return-void
.end method

.method public static getInstance()Lcom/taobao/accs/ChannelService;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/taobao/accs/ChannelService;->mInstance:Lcom/taobao/accs/ChannelService;

    return-object v0
.end method

.method static getSupportForegroundVer(Landroid/content/Context;)I
    .locals 7

    .prologue
    const/16 v0, 0x18

    const/4 v6, 0x0

    .line 92
    .line 94
    :try_start_0
    const-string v1, "ACCS_SDK"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 95
    const-string v2, "support_foreground_v"

    const/16 v3, 0x18

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 99
    :goto_0
    return v0

    .line 96
    :catch_0
    move-exception v1

    .line 97
    const-string v2, "ChannelService"

    const-string v3, "getSupportForegroundVer fail:"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "key"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    const-string v6, "support_foreground_v"

    aput-object v6, v4, v5

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static startKernel(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 67
    :try_start_0
    invoke-static {p0}, Lcom/taobao/accs/ChannelService;->getSupportForegroundVer(Landroid/content/Context;)I

    move-result v0

    .line 68
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v0, :cond_0

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/taobao/accs/ChannelService$KernelService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    const-string v1, "ChannelService"

    const-string v2, "startKernel"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static stopKernel(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 80
    :try_start_0
    invoke-static {p0}, Lcom/taobao/accs/ChannelService;->getSupportForegroundVer(Landroid/content/Context;)I

    move-result v0

    .line 81
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v0, :cond_0

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/taobao/accs/ChannelService$KernelService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    const-string v1, "ChannelService"

    const-string v2, "stopKernel"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 30
    invoke-super {p0}, Lcom/taobao/accs/base/BaseService;->onCreate()V

    .line 31
    sput-object p0, Lcom/taobao/accs/ChannelService;->mInstance:Lcom/taobao/accs/ChannelService;

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 34
    const/16 v0, 0x249b

    :try_start_0
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/taobao/accs/ChannelService;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    const-string v1, "ChannelService"

    const-string v2, "ChannelService onCreate"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 56
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/taobao/accs/ChannelService;->stopForeground(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/accs/ChannelService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/accs/ChannelService;->stopKernel(Landroid/content/Context;)V

    .line 62
    invoke-super {p0}, Lcom/taobao/accs/base/BaseService;->onDestroy()V

    .line 63
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-string v1, "ChannelService"

    const-string v2, "ChannelService onDestroy"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/taobao/accs/ChannelService;->mFristStarted:Z

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/accs/ChannelService;->mFristStarted:Z

    .line 46
    invoke-virtual {p0}, Lcom/taobao/accs/ChannelService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/accs/ChannelService;->startKernel(Landroid/content/Context;)V

    .line 48
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/accs/base/BaseService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
