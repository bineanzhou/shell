.class public Lanetwork/channel/anet/ANetworkDelegate;
.super Lanetwork/channel/aidl/RemoteNetwork$Stub;
.source "Taobao"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lanetwork/channel/aidl/RemoteNetwork$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lanetwork/channel/aidl/ParcelableRequest;)Lanetwork/channel/aidl/NetworkResponse;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;)Lanetwork/channel/aidl/ParcelableFuture;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lanetwork/channel/aidl/ParcelableRequest;)Lanetwork/channel/aidl/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method
