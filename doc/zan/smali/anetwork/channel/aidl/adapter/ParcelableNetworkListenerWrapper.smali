.class public Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;
.super Lanetwork/channel/aidl/ParcelableNetworkListener$Stub;
.source "Taobao"


# static fields
.field private static final f:Ljava/lang/String; = "anet.ParcelableNetworkListenerWrapper"


# instance fields
.field private g:Lanetwork/channel/NetworkListener;

.field private h:Landroid/os/Handler;

.field private i:Ljava/lang/Object;

.field private j:B


# direct methods
.method public constructor <init>(Lanetwork/channel/NetworkListener;Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lanetwork/channel/aidl/ParcelableNetworkListener$Stub;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->j:B

    .line 33
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->g:Lanetwork/channel/NetworkListener;

    .line 34
    if-eqz p1, :cond_3

    .line 35
    const-class v0, Lanetwork/channel/NetworkCallBack$FinishListener;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->j:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->j:B

    .line 38
    :cond_0
    const-class v0, Lanetwork/channel/NetworkCallBack$ProgressListener;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->j:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->j:B

    .line 41
    :cond_1
    const-class v0, Lanetwork/channel/NetworkCallBack$ResponseCodeListener;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    iget-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->j:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->j:B

    .line 44
    :cond_2
    const-class v0, Lanetwork/channel/NetworkCallBack$InputStreamListener;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    iget-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->j:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->j:B

    .line 48
    :cond_3
    iput-object p2, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->h:Landroid/os/Handler;

    .line 49
    iput-object p3, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->i:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method private a(BLjava/lang/Object;)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->h:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 54
    invoke-direct {p0, p1, p2}, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->b(BLjava/lang/Object;)V

    .line 63
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->h:Landroid/os/Handler;

    new-instance v1, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper$1;

    invoke-direct {v1, p0, p1, p2}, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper$1;-><init>(Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;BLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->b(BLjava/lang/Object;)V

    return-void
.end method

.method private b(BLjava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 67
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 68
    :try_start_0
    check-cast p2, Lanetwork/channel/aidl/ParcelableHeader;

    .line 69
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->g:Lanetwork/channel/NetworkListener;

    check-cast v0, Lanetwork/channel/NetworkCallBack$ResponseCodeListener;

    invoke-virtual {p2}, Lanetwork/channel/aidl/ParcelableHeader;->b()I

    move-result v1

    invoke-virtual {p2}, Lanetwork/channel/aidl/ParcelableHeader;->a()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->i:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lanetwork/channel/NetworkCallBack$ResponseCodeListener;->a(ILjava/util/Map;Ljava/lang/Object;)Z

    .line 70
    const/4 v0, 0x1

    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "anet.ParcelableNetworkListenerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onResponseCode]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 74
    check-cast p2, Lanetwork/channel/aidl/DefaultProgressEvent;

    .line 75
    if-eqz p2, :cond_2

    .line 76
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->i:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lanetwork/channel/aidl/DefaultProgressEvent;->a(Ljava/lang/Object;)V

    .line 78
    :cond_2
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->g:Lanetwork/channel/NetworkListener;

    check-cast v0, Lanetwork/channel/NetworkCallBack$ProgressListener;

    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->i:Ljava/lang/Object;

    invoke-interface {v0, p2, v1}, Lanetwork/channel/NetworkCallBack$ProgressListener;->a(Lanetwork/channel/NetworkEvent$ProgressEvent;Ljava/lang/Object;)V

    .line 79
    const/4 v0, 0x1

    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "anet.ParcelableNetworkListenerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onDataReceived]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    const-string v0, "anet.ParcelableNetworkListenerWrapper"

    const-string v1, "dispatchCallback error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v5, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_3
    if-ne p1, v1, :cond_5

    .line 83
    :try_start_1
    check-cast p2, Lanetwork/channel/aidl/DefaultFinishEvent;

    .line 84
    if-eqz p2, :cond_4

    .line 85
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->i:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lanetwork/channel/aidl/DefaultFinishEvent;->a(Ljava/lang/Object;)V

    .line 87
    :cond_4
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->g:Lanetwork/channel/NetworkListener;

    check-cast v0, Lanetwork/channel/NetworkCallBack$FinishListener;

    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->i:Ljava/lang/Object;

    invoke-interface {v0, p2, v1}, Lanetwork/channel/NetworkCallBack$FinishListener;->a(Lanetwork/channel/NetworkEvent$FinishEvent;Ljava/lang/Object;)V

    .line 88
    const/4 v0, 0x1

    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "anet.ParcelableNetworkListenerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFinished]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    :cond_5
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 92
    check-cast p2, Lanetwork/channel/aidl/ParcelableInputStream;

    .line 93
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->g:Lanetwork/channel/NetworkListener;

    check-cast v0, Lanetwork/channel/NetworkCallBack$InputStreamListener;

    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->i:Ljava/lang/Object;

    invoke-interface {v0, p2, v1}, Lanetwork/channel/NetworkCallBack$InputStreamListener;->a(Lanetwork/channel/aidl/ParcelableInputStream;Ljava/lang/Object;)V

    .line 94
    const/4 v0, 0x1

    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "anet.ParcelableNetworkListenerWrapper"

    const-string v1, "[onInputStreamReceived]"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public a()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 139
    iget-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->j:B

    return v0
.end method

.method public a(Lanetwork/channel/aidl/DefaultFinishEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->j:B

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->a(BLjava/lang/Object;)V

    .line 116
    :cond_0
    iput-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->g:Lanetwork/channel/NetworkListener;

    .line 117
    iput-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->i:Ljava/lang/Object;

    .line 118
    iput-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->h:Landroid/os/Handler;

    .line 119
    return-void
.end method

.method public a(Lanetwork/channel/aidl/DefaultProgressEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    iget-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->j:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->a(BLjava/lang/Object;)V

    .line 108
    :cond_0
    return-void
.end method

.method public a(Lanetwork/channel/aidl/ParcelableInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 132
    iget-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->j:B

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 133
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->a(BLjava/lang/Object;)V

    .line 135
    :cond_0
    return-void
.end method

.method public a(ILanetwork/channel/aidl/ParcelableHeader;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 124
    iget-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->j:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->a(BLjava/lang/Object;)V

    .line 127
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()Lanetwork/channel/NetworkListener;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->g:Lanetwork/channel/NetworkListener;

    return-object v0
.end method
