.class public abstract Lanetwork/channel/aidl/ParcelableFuture$Stub;
.super Landroid/os/Binder;
.source "Taobao"

# interfaces
.implements Lanetwork/channel/aidl/ParcelableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/aidl/ParcelableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanetwork/channel/aidl/ParcelableFuture$Stub$Proxy;
    }
.end annotation


# static fields
.field static final a:I = 0x1

.field static final b:I = 0x2

.field static final c:I = 0x3

.field static final d:I = 0x4

.field private static final e:Ljava/lang/String; = "anetwork.channel.aidl.ParcelableFuture"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "anetwork.channel.aidl.ParcelableFuture"

    invoke-virtual {p0, p0, v0}, Lanetwork/channel/aidl/ParcelableFuture$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lanetwork/channel/aidl/ParcelableFuture;
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
    const-string v0, "anetwork.channel.aidl.ParcelableFuture"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    instance-of v1, v0, Lanetwork/channel/aidl/ParcelableFuture;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lanetwork/channel/aidl/ParcelableFuture;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lanetwork/channel/aidl/ParcelableFuture$Stub$Proxy;

    invoke-direct {v0, p0}, Lanetwork/channel/aidl/ParcelableFuture$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 44
    :sswitch_0
    const-string v0, "anetwork.channel.aidl.ParcelableFuture"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v0, "anetwork.channel.aidl.ParcelableFuture"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 52
    :goto_1
    invoke-virtual {p0, v0}, Lanetwork/channel/aidl/ParcelableFuture$Stub;->a(Z)Z

    move-result v0

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 51
    goto :goto_1

    .line 59
    :sswitch_2
    const-string v0, "anetwork.channel.aidl.ParcelableFuture"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lanetwork/channel/aidl/ParcelableFuture$Stub;->a()Z

    move-result v0

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v0, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 67
    :sswitch_3
    const-string v0, "anetwork.channel.aidl.ParcelableFuture"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lanetwork/channel/aidl/ParcelableFuture$Stub;->b()Z

    move-result v0

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v0, :cond_3

    move v2, v1

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 75
    :sswitch_4
    const-string v0, "anetwork.channel.aidl.ParcelableFuture"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 78
    invoke-virtual {p0, v4, v5}, Lanetwork/channel/aidl/ParcelableFuture$Stub;->a(J)Lanetwork/channel/aidl/NetworkResponse;

    move-result-object v0

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v0, :cond_4

    .line 81
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    invoke-virtual {v0, p3, v1}, Lanetwork/channel/aidl/NetworkResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 85
    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
