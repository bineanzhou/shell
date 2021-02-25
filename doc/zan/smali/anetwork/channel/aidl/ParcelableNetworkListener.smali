.class public interface abstract Lanetwork/channel/aidl/ParcelableNetworkListener;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanetwork/channel/aidl/ParcelableNetworkListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract a()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(Lanetwork/channel/aidl/DefaultFinishEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(Lanetwork/channel/aidl/DefaultProgressEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(Lanetwork/channel/aidl/ParcelableInputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(ILanetwork/channel/aidl/ParcelableHeader;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
