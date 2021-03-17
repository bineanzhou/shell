.class public abstract Lanetwork/channel/aidl/RemoteNetwork$Stub;
.super Landroid/os/Binder;
.source "Taobao"

# interfaces
.implements Lanetwork/channel/aidl/RemoteNetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/aidl/RemoteNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanetwork/channel/aidl/RemoteNetwork$Stub$Proxy;
    }
.end annotation


# static fields
.field static final a:I = 0x1

.field static final b:I = 0x2

.field static final c:I = 0x3

.field private static final d:Ljava/lang/String; = "anetwork.channel.aidl.RemoteNetwork"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "anetwork.channel.aidl.RemoteNetwork"

    invoke-virtual {p0, p0, v0}, Lanetwork/channel/aidl/RemoteNetwork$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lanetwork/channel/aidl/RemoteNetwork;
    .locals 2

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v0, "anetwork.channel.aidl.RemoteNetwork"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    instance-of v1, v0, Lanetwork/channel/aidl/RemoteNetwork;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lanetwork/channel/aidl/RemoteNetwork;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lanetwork/channel/aidl/RemoteNetwork$Stub$Proxy;

    invoke-direct {v0, p0}, Lanetwork/channel/aidl/RemoteNetwork$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 44
    :sswitch_0
    const-string v0, "anetwork.channel.aidl.RemoteNetwork"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v2

    .line 45
    goto :goto_0

    .line 49
    :sswitch_1
    const-string v0, "anetwork.channel.aidl.RemoteNetwork"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lanetwork/channel/aidl/ParcelableRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/aidl/ParcelableRequest;

    .line 57
    :goto_1
    invoke-virtual {p0, v0}, Lanetwork/channel/aidl/RemoteNetwork$Stub;->a(Lanetwork/channel/aidl/ParcelableRequest;)Lanetwork/channel/aidl/NetworkResponse;

    move-result-object v0

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {v0, p3, v2}, Lanetwork/channel/aidl/NetworkResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v0, v2

    .line 66
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 55
    goto :goto_1

    .line 64
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 70
    :sswitch_2
    const-string v0, "anetwork.channel.aidl.RemoteNetwork"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    sget-object v0, Lanetwork/channel/aidl/ParcelableRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/aidl/ParcelableRequest;

    .line 79
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lanetwork/channel/aidl/ParcelableNetworkListener$Stub;->a(Landroid/os/IBinder;)Lanetwork/channel/aidl/ParcelableNetworkListener;

    move-result-object v3

    .line 80
    invoke-virtual {p0, v0, v3}, Lanetwork/channel/aidl/RemoteNetwork$Stub;->a(Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;)Lanetwork/channel/aidl/ParcelableFuture;

    move-result-object v0

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lanetwork/channel/aidl/ParcelableFuture;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    .line 83
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 76
    goto :goto_3

    .line 87
    :sswitch_3
    const-string v0, "anetwork.channel.aidl.RemoteNetwork"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 90
    sget-object v0, Lanetwork/channel/aidl/ParcelableRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/aidl/ParcelableRequest;

    .line 95
    :goto_4
    invoke-virtual {p0, v0}, Lanetwork/channel/aidl/RemoteNetwork$Stub;->b(Lanetwork/channel/aidl/ParcelableRequest;)Lanetwork/channel/aidl/Connection;

    move-result-object v0

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lanetwork/channel/aidl/Connection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    .line 98
    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    .line 93
    goto :goto_4

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
