.class Lanetwork/channel/aidl/IRemoteNetworkGetter$Stub$Proxy;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanetwork/channel/aidl/IRemoteNetworkGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/aidl/IRemoteNetworkGetter$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lanetwork/channel/aidl/IRemoteNetworkGetter$Stub$Proxy;->a:Landroid/os/IBinder;

    .line 64
    return-void
.end method


# virtual methods
.method public a(I)Lanetwork/channel/aidl/RemoteNetwork;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 76
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 79
    :try_start_0
    const-string v0, "anetwork.channel.aidl.IRemoteNetworkGetter"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object v0, p0, Lanetwork/channel/aidl/IRemoteNetworkGetter$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 82
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 83
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lanetwork/channel/aidl/RemoteNetwork$Stub;->a(Landroid/os/IBinder;)Lanetwork/channel/aidl/RemoteNetwork;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 86
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 87
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 89
    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 87
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "anetwork.channel.aidl.IRemoteNetworkGetter"

    return-object v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lanetwork/channel/aidl/IRemoteNetworkGetter$Stub$Proxy;->a:Landroid/os/IBinder;

    return-object v0
.end method
