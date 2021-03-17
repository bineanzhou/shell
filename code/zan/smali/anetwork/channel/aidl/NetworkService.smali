.class public Lanetwork/channel/aidl/NetworkService;
.super Landroid/app/Service;
.source "Taobao"


# static fields
.field private static final b:Ljava/lang/String; = "anet.NetworkService"


# instance fields
.field a:Lanetwork/channel/aidl/IRemoteNetworkGetter$Stub;

.field private c:Landroid/content/Context;

.field private d:[Lanetwork/channel/aidl/RemoteNetwork$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lanetwork/channel/aidl/RemoteNetwork$Stub;

    iput-object v0, p0, Lanetwork/channel/aidl/NetworkService;->d:[Lanetwork/channel/aidl/RemoteNetwork$Stub;

    .line 30
    new-instance v0, Lanetwork/channel/aidl/NetworkService$1;

    invoke-direct {v0, p0}, Lanetwork/channel/aidl/NetworkService$1;-><init>(Lanetwork/channel/aidl/NetworkService;)V

    iput-object v0, p0, Lanetwork/channel/aidl/NetworkService;->a:Lanetwork/channel/aidl/IRemoteNetworkGetter$Stub;

    return-void
.end method

.method static synthetic a(Lanetwork/channel/aidl/NetworkService;)[Lanetwork/channel/aidl/RemoteNetwork$Stub;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkService;->d:[Lanetwork/channel/aidl/RemoteNetwork$Stub;

    return-object v0
.end method

.method static synthetic b(Lanetwork/channel/aidl/NetworkService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkService;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0}, Lanetwork/channel/aidl/NetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lanetwork/channel/aidl/NetworkService;->c:Landroid/content/Context;

    .line 21
    const/4 v1, 0x2

    invoke-static {v1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    const-string v1, "anet.NetworkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBind:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    :cond_0
    const-class v1, Lanetwork/channel/aidl/IRemoteNetworkGetter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkService;->a:Lanetwork/channel/aidl/IRemoteNetworkGetter$Stub;

    .line 27
    :cond_1
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x2

    return v0
.end method
