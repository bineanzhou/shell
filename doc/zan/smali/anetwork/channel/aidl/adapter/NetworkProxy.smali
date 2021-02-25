.class public Lanetwork/channel/aidl/adapter/NetworkProxy;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanetwork/channel/Network;


# static fields
.field protected static a:Ljava/lang/String; = null

.field protected static final b:I = 0x0

.field protected static final c:I = 0x1


# instance fields
.field private d:Lanetwork/channel/aidl/RemoteNetwork;

.field private e:I

.field private f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "anet.NetworkProxy"

    sput-object v0, Lanetwork/channel/aidl/adapter/NetworkProxy;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->d:Lanetwork/channel/aidl/RemoteNetwork;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->e:I

    .line 32
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->f:Landroid/content/Context;

    .line 33
    iput p2, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->e:I

    .line 34
    return-void
.end method

.method private a(Lanetwork/channel/aidl/RemoteNetwork;Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;)Lanetwork/channel/aidl/ParcelableFuture;
    .locals 3

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 135
    :goto_0
    return-object v0

    .line 124
    :cond_0
    invoke-virtual {p2}, Lanetwork/channel/aidl/ParcelableRequest;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 125
    const/16 v0, -0x66

    invoke-direct {p0, p3, v0}, Lanetwork/channel/aidl/adapter/NetworkProxy;->a(Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;I)Lanetwork/channel/aidl/ParcelableFuture;

    move-result-object v0

    goto :goto_0

    .line 128
    :cond_1
    :try_start_0
    invoke-interface {p1, p2, p3}, Lanetwork/channel/aidl/RemoteNetwork;->a(Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;)Lanetwork/channel/aidl/ParcelableFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v1

    .line 130
    const/16 v0, -0x67

    invoke-direct {p0, p3, v0}, Lanetwork/channel/aidl/adapter/NetworkProxy;->a(Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;I)Lanetwork/channel/aidl/ParcelableFuture;

    move-result-object v0

    .line 131
    const-string v2, "[redirectAsyncCall]call asyncSend exception."

    .line 132
    invoke-direct {p0, v1, v2}, Lanetwork/channel/aidl/adapter/NetworkProxy;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;I)Lanetwork/channel/aidl/ParcelableFuture;
    .locals 5

    .prologue
    .line 139
    if-eqz p1, :cond_0

    .line 141
    :try_start_0
    new-instance v0, Lanetwork/channel/aidl/DefaultFinishEvent;

    invoke-direct {v0, p2}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(I)V

    invoke-virtual {p1, v0}, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->a(Lanetwork/channel/aidl/DefaultFinishEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    new-instance v0, Lanetwork/channel/aidl/adapter/ErrorParcelableFuture;

    invoke-direct {v0, p2}, Lanetwork/channel/aidl/adapter/ErrorParcelableFuture;-><init>(I)V

    return-object v0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    sget-object v1, Lanetwork/channel/aidl/adapter/NetworkProxy;->a:Ljava/lang/String;

    const-string v2, "[handleErrorCallBack]call listenerWrapper.onFinished exception."

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private declared-synchronized a(I)Lanetwork/channel/aidl/RemoteNetwork;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 103
    monitor-enter p0

    const/4 v1, 0x2

    :try_start_0
    invoke-static {v1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    sget-object v1, Lanetwork/channel/aidl/adapter/NetworkProxy;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[tryGetRemoteNetworkInstance] type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    :cond_0
    invoke-static {}, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->a()Lanetwork/channel/aidl/IRemoteNetworkGetter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 108
    if-eqz v1, :cond_1

    .line 110
    :try_start_1
    invoke-interface {v1, p1}, Lanetwork/channel/aidl/IRemoteNetworkGetter;->a(I)Lanetwork/channel/aidl/RemoteNetwork;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 115
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    :try_start_2
    const-string v2, "[tryGetRemoteNetworkInstance]get RemoteNetwork Delegate failed."

    invoke-direct {p0, v1, v2}, Lanetwork/channel/aidl/adapter/NetworkProxy;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 150
    sget-object v0, Lanetwork/channel/aidl/adapter/NetworkProxy;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, p2, p1, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 151
    new-instance v0, Lanet/channel/statist/ExceptionStatistic;

    const/16 v1, -0x67

    const-string v2, "rt"

    invoke-direct {v0, v1, v3, v2}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/statist/ExceptionStatistic;->exceptionStack:Ljava/lang/String;

    .line 153
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v1

    invoke-interface {v1, v0}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 154
    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->d:Lanetwork/channel/aidl/RemoteNetwork;

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->f:Landroid/content/Context;

    invoke-static {v0, p1}, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->a(Landroid/content/Context;Z)V

    .line 78
    iget v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->e:I

    invoke-direct {p0, v0}, Lanetwork/channel/aidl/adapter/NetworkProxy;->a(I)Lanetwork/channel/aidl/RemoteNetwork;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->d:Lanetwork/channel/aidl/RemoteNetwork;

    .line 80
    :cond_2
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->d:Lanetwork/channel/aidl/RemoteNetwork;

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x2

    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    sget-object v0, Lanetwork/channel/aidl/adapter/NetworkProxy;->a:Ljava/lang/String;

    const-string v1, "[getLocalNetworkInstance]"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_3
    new-instance v0, Lanetwork/channel/http/HttpNetworkDelegate;

    iget-object v1, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lanetwork/channel/http/HttpNetworkDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->d:Lanetwork/channel/aidl/RemoteNetwork;

    goto :goto_0
.end method


# virtual methods
.method public a(Lanetwork/channel/Request;Ljava/lang/Object;)Lanetwork/channel/Response;
    .locals 2

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lanetwork/channel/aidl/adapter/NetworkProxy;->a(Z)V

    .line 60
    new-instance v0, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-direct {v0, p1}, Lanetwork/channel/aidl/ParcelableRequest;-><init>(Lanetwork/channel/Request;)V

    .line 61
    invoke-virtual {v0}, Lanetwork/channel/aidl/ParcelableRequest;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 62
    new-instance v0, Lanetwork/channel/aidl/NetworkResponse;

    const/16 v1, -0x66

    invoke-direct {v0, v1}, Lanetwork/channel/aidl/NetworkResponse;-><init>(I)V

    .line 68
    :goto_0
    return-object v0

    .line 65
    :cond_0
    :try_start_0
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->d:Lanetwork/channel/aidl/RemoteNetwork;

    invoke-interface {v1, v0}, Lanetwork/channel/aidl/RemoteNetwork;->a(Lanetwork/channel/aidl/ParcelableRequest;)Lanetwork/channel/aidl/NetworkResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-string v1, "[syncSend]call syncSend method failed."

    invoke-direct {p0, v0, v1}, Lanetwork/channel/aidl/adapter/NetworkProxy;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lanetwork/channel/aidl/NetworkResponse;

    const/16 v1, -0x67

    invoke-direct {v0, v1}, Lanetwork/channel/aidl/NetworkResponse;-><init>(I)V

    goto :goto_0
.end method

.method public a(Lanetwork/channel/Request;Ljava/lang/Object;Landroid/os/Handler;Lanetwork/channel/NetworkListener;)Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanetwork/channel/Request;",
            "Ljava/lang/Object;",
            "Landroid/os/Handler;",
            "Lanetwork/channel/NetworkListener;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lanetwork/channel/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lanetwork/channel/aidl/adapter/NetworkProxy;->a(Z)V

    .line 91
    new-instance v1, Lanetwork/channel/aidl/adapter/FutureResponse;

    invoke-direct {v1}, Lanetwork/channel/aidl/adapter/FutureResponse;-><init>()V

    .line 92
    new-instance v2, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-direct {v2, p1}, Lanetwork/channel/aidl/ParcelableRequest;-><init>(Lanetwork/channel/Request;)V

    .line 93
    const/4 v0, 0x0

    .line 94
    if-nez p4, :cond_0

    if-eqz p3, :cond_1

    .line 95
    :cond_0
    new-instance v0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;

    invoke-direct {v0, p4, p3, p2}, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;-><init>(Lanetwork/channel/NetworkListener;Landroid/os/Handler;Ljava/lang/Object;)V

    .line 97
    :cond_1
    iget-object v3, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->d:Lanetwork/channel/aidl/RemoteNetwork;

    invoke-direct {p0, v3, v2, v0}, Lanetwork/channel/aidl/adapter/NetworkProxy;->a(Lanetwork/channel/aidl/RemoteNetwork;Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;)Lanetwork/channel/aidl/ParcelableFuture;

    move-result-object v0

    .line 98
    invoke-virtual {v1, v0}, Lanetwork/channel/aidl/adapter/FutureResponse;->a(Lanetwork/channel/aidl/ParcelableFuture;)V

    .line 99
    return-object v1

    .line 90
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lanetwork/channel/Request;Ljava/lang/Object;)Lanetwork/channel/aidl/Connection;
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lanetwork/channel/aidl/adapter/NetworkProxy;->a(Z)V

    .line 45
    new-instance v0, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-direct {v0, p1}, Lanetwork/channel/aidl/ParcelableRequest;-><init>(Lanetwork/channel/Request;)V

    .line 46
    invoke-virtual {v0}, Lanetwork/channel/aidl/ParcelableRequest;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 47
    new-instance v0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;

    const/16 v1, -0x66

    invoke-direct {v0, v1}, Lanetwork/channel/aidl/adapter/ConnectionDelegate;-><init>(I)V

    .line 53
    :goto_0
    return-object v0

    .line 50
    :cond_0
    :try_start_0
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->d:Lanetwork/channel/aidl/RemoteNetwork;

    invoke-interface {v1, v0}, Lanetwork/channel/aidl/RemoteNetwork;->b(Lanetwork/channel/aidl/ParcelableRequest;)Lanetwork/channel/aidl/Connection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string v1, "[getConnection]call getConnection method failed."

    invoke-direct {p0, v0, v1}, Lanetwork/channel/aidl/adapter/NetworkProxy;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;

    const/16 v1, -0x67

    invoke-direct {v0, v1}, Lanetwork/channel/aidl/adapter/ConnectionDelegate;-><init>(I)V

    goto :goto_0
.end method
