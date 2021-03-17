.class public Lanetwork/channel/aidl/adapter/RemoteGetterHelper;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final a:Ljava/lang/String; = "anet.RemoteGetter"

.field private static volatile b:Lanetwork/channel/aidl/IRemoteNetworkGetter;

.field private static volatile c:Z

.field private static volatile d:Z

.field private static volatile e:Ljava/util/concurrent/CountDownLatch;

.field private static f:Landroid/os/Handler;

.field private static g:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-boolean v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->c:Z

    .line 24
    sput-boolean v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->d:Z

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->e:Ljava/util/concurrent/CountDownLatch;

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->f:Landroid/os/Handler;

    .line 28
    new-instance v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper$1;

    invoke-direct {v0}, Lanetwork/channel/aidl/adapter/RemoteGetterHelper$1;-><init>()V

    sput-object v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->g:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lanetwork/channel/aidl/IRemoteNetworkGetter;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->b:Lanetwork/channel/aidl/IRemoteNetworkGetter;

    return-object v0
.end method

.method static synthetic a(Lanetwork/channel/aidl/IRemoteNetworkGetter;)Lanetwork/channel/aidl/IRemoteNetworkGetter;
    .locals 0

    .prologue
    .line 20
    sput-object p0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->b:Lanetwork/channel/aidl/IRemoteNetworkGetter;

    return-object p0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    invoke-static {v8}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    const-string v2, "anet.RemoteGetter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[asyncBindService] mContext:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bBindFailed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->c:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bBinding:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->d:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v7, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    :cond_0
    if-nez p0, :cond_2

    .line 154
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    sget-boolean v2, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->c:Z

    if-nez v2, :cond_1

    .line 109
    sget-boolean v2, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->d:Z

    if-nez v2, :cond_1

    .line 112
    sput-boolean v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->d:Z

    .line 121
    const/4 v2, 0x3

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/content/ServiceConnection;

    aput-object v4, v2, v3

    .line 122
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lanetwork/channel/aidl/IRemoteNetworkGetter;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->g:Landroid/content/ServiceConnection;

    aput-object v5, v3, v4

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.taobao.android.service.Services"

    const-string v6, "bind"

    invoke-static {v5, v6, v2, v3}, Lanet/channel/util/Utils;->invokeStaticMethodThrowException(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v0

    :goto_1
    sput-boolean v2, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_3
    :goto_2
    sget-boolean v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->c:Z

    if-eqz v0, :cond_4

    .line 137
    sput-boolean v1, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->d:Z

    .line 138
    const-string v0, "anet.RemoteGetter"

    const-string v2, "[asyncBindService]ANet_Service start not success.ANet run with local mode!"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v7, v3}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :cond_4
    sget-object v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->f:Landroid/os/Handler;

    new-instance v2, Lanetwork/channel/aidl/adapter/RemoteGetterHelper$2;

    invoke-direct {v2}, Lanetwork/channel/aidl/adapter/RemoteGetterHelper$2;-><init>()V

    const-wide/16 v4, 0x3a98

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    invoke-static {v8}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    const-string v0, "anet.RemoteGetter"

    const-string v2, "[asyncBindService] end"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v7, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    move v2, v1

    .line 123
    goto :goto_1

    .line 124
    :catch_0
    move-exception v2

    .line 125
    const-string v3, "anet.RemoteGetter"

    const-string v4, "[asyncBindService]use taobao framwork start service error"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v7, v2, v5}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 126
    sput-boolean v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->c:Z

    .line 127
    instance-of v3, v2, Ljava/lang/ClassNotFoundException;

    if-nez v3, :cond_6

    instance-of v2, v2, Ljava/lang/NoSuchMethodException;

    if-eqz v2, :cond_3

    .line 128
    :cond_6
    const-string v2, "anet.RemoteGetter"

    const-string v3, "[asyncBindService]Cannot found Service Farmwork,User System intent start Anet service"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v7, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lanetwork/channel/aidl/NetworkService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    const-class v3, Lanetwork/channel/aidl/IRemoteNetworkGetter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    sget-object v3, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->g:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_7

    :goto_3
    sput-boolean v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->c:Z

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 65
    sget-object v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->b:Lanetwork/channel/aidl/IRemoteNetworkGetter;

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    sget-boolean v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->c:Z

    if-nez v0, :cond_0

    .line 69
    invoke-static {p0}, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->a(Landroid/content/Context;)V

    .line 70
    sget-boolean v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->c:Z

    if-nez v0, :cond_0

    .line 71
    if-eqz p1, :cond_0

    .line 73
    :try_start_0
    const-class v1, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :try_start_1
    sget-object v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->b:Lanetwork/channel/aidl/IRemoteNetworkGetter;

    if-eqz v0, :cond_2

    .line 75
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 88
    :catch_0
    move-exception v0

    const-string v0, "anet.RemoteGetter"

    const-string v1, "mServiceBindLock wait interrupt"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v5, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :cond_2
    :try_start_3
    sget-object v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->e:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_3

    .line 78
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->e:Ljava/util/concurrent/CountDownLatch;

    .line 80
    :cond_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    :try_start_4
    const-string v0, "anet.RemoteGetter"

    const-string v1, "[initRemoteGetterAndWait]begin to wait 10s"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    sget-object v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->e:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    const-string v0, "anet.RemoteGetter"

    const-string v1, "mServiceBindLock count down to 0"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    :cond_4
    const-string v0, "anet.RemoteGetter"

    const-string v1, "mServiceBindLock wait timeout"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 20
    sput-boolean p0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->d:Z

    return p0
.end method

.method static synthetic b()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->e:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic b(Z)Z
    .locals 0

    .prologue
    .line 20
    sput-boolean p0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->c:Z

    return p0
.end method

.method static synthetic c()Z
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->d:Z

    return v0
.end method
