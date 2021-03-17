.class Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:B

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;


# direct methods
.method constructor <init>(Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;BLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper$1;->c:Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;

    iput-byte p2, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper$1;->a:B

    iput-object p3, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper$1;->c:Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;

    iget-byte v1, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper$1;->a:B

    iget-object v2, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper$1;->b:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->a(Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;BLjava/lang/Object;)V

    .line 60
    return-void
.end method
