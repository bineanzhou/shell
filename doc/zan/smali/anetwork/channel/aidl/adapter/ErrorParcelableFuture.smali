.class public Lanetwork/channel/aidl/adapter/ErrorParcelableFuture;
.super Lanetwork/channel/aidl/ParcelableFuture$Stub;
.source "Taobao"


# instance fields
.field e:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lanetwork/channel/aidl/ParcelableFuture$Stub;-><init>()V

    .line 11
    iput p1, p0, Lanetwork/channel/aidl/adapter/ErrorParcelableFuture;->e:I

    .line 12
    return-void
.end method


# virtual methods
.method public a(J)Lanetwork/channel/aidl/NetworkResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lanetwork/channel/aidl/NetworkResponse;

    iget v1, p0, Lanetwork/channel/aidl/adapter/ErrorParcelableFuture;->e:I

    invoke-direct {v0, v1}, Lanetwork/channel/aidl/NetworkResponse;-><init>(I)V

    return-object v0
.end method

.method public a()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public a(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method
