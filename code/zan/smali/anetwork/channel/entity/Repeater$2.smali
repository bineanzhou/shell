.class Lanetwork/channel/entity/Repeater$2;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanet/channel/bytes/ByteArray;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lanetwork/channel/aidl/ParcelableNetworkListener;

.field final synthetic e:Lanetwork/channel/entity/Repeater;


# direct methods
.method constructor <init>(Lanetwork/channel/entity/Repeater;Lanet/channel/bytes/ByteArray;IILanetwork/channel/aidl/ParcelableNetworkListener;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lanetwork/channel/entity/Repeater$2;->e:Lanetwork/channel/entity/Repeater;

    iput-object p2, p0, Lanetwork/channel/entity/Repeater$2;->a:Lanet/channel/bytes/ByteArray;

    iput p3, p0, Lanetwork/channel/entity/Repeater$2;->b:I

    iput p4, p0, Lanetwork/channel/entity/Repeater$2;->c:I

    iput-object p5, p0, Lanetwork/channel/entity/Repeater$2;->d:Lanetwork/channel/aidl/ParcelableNetworkListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lanetwork/channel/entity/Repeater$2;->e:Lanetwork/channel/entity/Repeater;

    invoke-static {v0}, Lanetwork/channel/entity/Repeater;->a(Lanetwork/channel/entity/Repeater;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    new-instance v0, Lanetwork/channel/aidl/DefaultProgressEvent;

    invoke-direct {v0}, Lanetwork/channel/aidl/DefaultProgressEvent;-><init>()V

    .line 69
    iget-object v1, p0, Lanetwork/channel/entity/Repeater$2;->a:Lanet/channel/bytes/ByteArray;

    invoke-virtual {v1}, Lanet/channel/bytes/ByteArray;->getDataLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/DefaultProgressEvent;->a(I)V

    .line 70
    iget v1, p0, Lanetwork/channel/entity/Repeater$2;->b:I

    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/DefaultProgressEvent;->b(I)V

    .line 71
    const-string v1, ""

    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/DefaultProgressEvent;->a(Ljava/lang/String;)V

    .line 72
    iget v1, p0, Lanetwork/channel/entity/Repeater$2;->c:I

    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/DefaultProgressEvent;->c(I)V

    .line 73
    iget-object v1, p0, Lanetwork/channel/entity/Repeater$2;->a:Lanet/channel/bytes/ByteArray;

    invoke-virtual {v1}, Lanet/channel/bytes/ByteArray;->getBuffer()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/DefaultProgressEvent;->a([B)V

    .line 75
    :try_start_0
    iget-object v1, p0, Lanetwork/channel/entity/Repeater$2;->d:Lanetwork/channel/aidl/ParcelableNetworkListener;

    invoke-interface {v1, v0}, Lanetwork/channel/aidl/ParcelableNetworkListener;->a(Lanetwork/channel/aidl/DefaultProgressEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 81
    :cond_1
    :try_start_1
    iget-object v0, p0, Lanetwork/channel/entity/Repeater$2;->e:Lanetwork/channel/entity/Repeater;

    invoke-static {v0}, Lanetwork/channel/entity/Repeater;->b(Lanetwork/channel/entity/Repeater;)Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    move-result-object v0

    if-nez v0, :cond_2

    .line 82
    iget-object v0, p0, Lanetwork/channel/entity/Repeater$2;->e:Lanetwork/channel/entity/Repeater;

    new-instance v1, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    invoke-direct {v1}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;-><init>()V

    invoke-static {v0, v1}, Lanetwork/channel/entity/Repeater;->a(Lanetwork/channel/entity/Repeater;Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;)Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    .line 83
    iget-object v0, p0, Lanetwork/channel/entity/Repeater$2;->e:Lanetwork/channel/entity/Repeater;

    invoke-static {v0}, Lanetwork/channel/entity/Repeater;->b(Lanetwork/channel/entity/Repeater;)Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/entity/Repeater$2;->e:Lanetwork/channel/entity/Repeater;

    invoke-static {v1}, Lanetwork/channel/entity/Repeater;->c(Lanetwork/channel/entity/Repeater;)Lanetwork/channel/entity/RequestConfig;

    move-result-object v1

    iget v2, p0, Lanetwork/channel/entity/Repeater$2;->b:I

    invoke-virtual {v0, v1, v2}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->a(Lanetwork/channel/entity/RequestConfig;I)V

    .line 84
    iget-object v0, p0, Lanetwork/channel/entity/Repeater$2;->e:Lanetwork/channel/entity/Repeater;

    invoke-static {v0}, Lanetwork/channel/entity/Repeater;->b(Lanetwork/channel/entity/Repeater;)Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/entity/Repeater$2;->a:Lanet/channel/bytes/ByteArray;

    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->a(Lanet/channel/bytes/ByteArray;)V

    .line 85
    iget-object v0, p0, Lanetwork/channel/entity/Repeater$2;->d:Lanetwork/channel/aidl/ParcelableNetworkListener;

    iget-object v1, p0, Lanetwork/channel/entity/Repeater$2;->e:Lanetwork/channel/entity/Repeater;

    invoke-static {v1}, Lanetwork/channel/entity/Repeater;->b(Lanetwork/channel/entity/Repeater;)Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Lanetwork/channel/aidl/ParcelableNetworkListener;->a(Lanetwork/channel/aidl/ParcelableInputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 90
    :catch_1
    move-exception v0

    iget-object v0, p0, Lanetwork/channel/entity/Repeater$2;->e:Lanetwork/channel/entity/Repeater;

    invoke-static {v0}, Lanetwork/channel/entity/Repeater;->b(Lanetwork/channel/entity/Repeater;)Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    :try_start_2
    iget-object v0, p0, Lanetwork/channel/entity/Repeater$2;->e:Lanetwork/channel/entity/Repeater;

    invoke-static {v0}, Lanetwork/channel/entity/Repeater;->b(Lanetwork/channel/entity/Repeater;)Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    move-result-object v0

    invoke-virtual {v0}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->b()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    .line 87
    :cond_2
    :try_start_3
    iget-object v0, p0, Lanetwork/channel/entity/Repeater$2;->e:Lanetwork/channel/entity/Repeater;

    invoke-static {v0}, Lanetwork/channel/entity/Repeater;->b(Lanetwork/channel/entity/Repeater;)Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/entity/Repeater$2;->a:Lanet/channel/bytes/ByteArray;

    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->a(Lanet/channel/bytes/ByteArray;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
