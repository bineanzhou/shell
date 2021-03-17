.class Lanetwork/channel/entity/Repeater$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanetwork/channel/aidl/ParcelableNetworkListener;

.field final synthetic b:I

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lanetwork/channel/entity/Repeater;


# direct methods
.method constructor <init>(Lanetwork/channel/entity/Repeater;Lanetwork/channel/aidl/ParcelableNetworkListener;ILjava/util/Map;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lanetwork/channel/entity/Repeater$1;->d:Lanetwork/channel/entity/Repeater;

    iput-object p2, p0, Lanetwork/channel/entity/Repeater$1;->a:Lanetwork/channel/aidl/ParcelableNetworkListener;

    iput p3, p0, Lanetwork/channel/entity/Repeater$1;->b:I

    iput-object p4, p0, Lanetwork/channel/entity/Repeater$1;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 52
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/entity/Repeater$1;->a:Lanetwork/channel/aidl/ParcelableNetworkListener;

    iget v1, p0, Lanetwork/channel/entity/Repeater$1;->b:I

    new-instance v2, Lanetwork/channel/aidl/ParcelableHeader;

    iget v3, p0, Lanetwork/channel/entity/Repeater$1;->b:I

    iget-object v4, p0, Lanetwork/channel/entity/Repeater$1;->c:Ljava/util/Map;

    invoke-direct {v2, v3, v4}, Lanetwork/channel/aidl/ParcelableHeader;-><init>(ILjava/util/Map;)V

    invoke-interface {v0, v1, v2}, Lanetwork/channel/aidl/ParcelableNetworkListener;->a(ILanetwork/channel/aidl/ParcelableHeader;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
