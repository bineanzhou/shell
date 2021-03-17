.class public abstract Lanetwork/channel/aidl/ParcelableInputStream$Stub;
.super Landroid/os/Binder;
.source "Taobao"

# interfaces
.implements Lanetwork/channel/aidl/ParcelableInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/aidl/ParcelableInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanetwork/channel/aidl/ParcelableInputStream$Stub$Proxy;
    }
.end annotation


# static fields
.field static final a:I = 0x1

.field static final b:I = 0x2

.field static final c:I = 0x3

.field static final d:I = 0x4

.field static final e:I = 0x5

.field static final f:I = 0x6

.field static final g:I = 0x7

.field private static final h:Ljava/lang/String; = "anetwork.channel.aidl.ParcelableInputStream"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "anetwork.channel.aidl.ParcelableInputStream"

    invoke-virtual {p0, p0, v0}, Lanetwork/channel/aidl/ParcelableInputStream$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lanetwork/channel/aidl/ParcelableInputStream;
    .locals 2

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v0, "anetwork.channel.aidl.ParcelableInputStream"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lanetwork/channel/aidl/ParcelableInputStream;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lanetwork/channel/aidl/ParcelableInputStream;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lanetwork/channel/aidl/ParcelableInputStream$Stub$Proxy;

    invoke-direct {v0, p0}, Lanetwork/channel/aidl/ParcelableInputStream$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
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
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 44
    :sswitch_0
    const-string v0, "anetwork.channel.aidl.ParcelableInputStream"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 45
    goto :goto_0

    .line 49
    :sswitch_1
    const-string v0, "anetwork.channel.aidl.ParcelableInputStream"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lanetwork/channel/aidl/ParcelableInputStream$Stub;->a()I

    move-result v0

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    .line 53
    goto :goto_0

    .line 57
    :sswitch_2
    const-string v0, "anetwork.channel.aidl.ParcelableInputStream"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lanetwork/channel/aidl/ParcelableInputStream$Stub;->b()V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 60
    goto :goto_0

    .line 64
    :sswitch_3
    const-string v0, "anetwork.channel.aidl.ParcelableInputStream"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lanetwork/channel/aidl/ParcelableInputStream$Stub;->c()I

    move-result v0

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    .line 68
    goto :goto_0

    .line 72
    :sswitch_4
    const-string v2, "anetwork.channel.aidl.ParcelableInputStream"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 75
    if-gez v2, :cond_0

    .line 82
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 85
    invoke-virtual {p0, v0, v2, v3}, Lanetwork/channel/aidl/ParcelableInputStream$Stub;->a([BII)I

    move-result v2

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move v0, v1

    .line 89
    goto :goto_0

    .line 79
    :cond_0
    new-array v0, v2, [B

    goto :goto_1

    .line 93
    :sswitch_5
    const-string v2, "anetwork.channel.aidl.ParcelableInputStream"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 96
    if-gez v2, :cond_1

    .line 102
    :goto_2
    invoke-virtual {p0, v0}, Lanetwork/channel/aidl/ParcelableInputStream$Stub;->a([B)I

    move-result v2

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move v0, v1

    .line 106
    goto :goto_0

    .line 100
    :cond_1
    new-array v0, v2, [B

    goto :goto_2

    .line 110
    :sswitch_6
    const-string v0, "anetwork.channel.aidl.ParcelableInputStream"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    invoke-virtual {p0, v0}, Lanetwork/channel/aidl/ParcelableInputStream$Stub;->a(I)J

    move-result-wide v2

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    move v0, v1

    .line 116
    goto/16 :goto_0

    .line 120
    :sswitch_7
    const-string v0, "anetwork.channel.aidl.ParcelableInputStream"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lanetwork/channel/aidl/ParcelableInputStream$Stub;->d()I

    move-result v0

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    .line 124
    goto/16 :goto_0

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
