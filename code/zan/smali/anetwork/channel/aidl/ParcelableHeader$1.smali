.class final Lanetwork/channel/aidl/ParcelableHeader$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lanetwork/channel/aidl/ParcelableHeader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lanetwork/channel/aidl/ParcelableHeader;
    .locals 1

    .prologue
    .line 58
    invoke-static {p1}, Lanetwork/channel/aidl/ParcelableHeader;->a(Landroid/os/Parcel;)Lanetwork/channel/aidl/ParcelableHeader;

    move-result-object v0

    return-object v0
.end method

.method public a(I)[Lanetwork/channel/aidl/ParcelableHeader;
    .locals 1

    .prologue
    .line 62
    new-array v0, p1, [Lanetwork/channel/aidl/ParcelableHeader;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lanetwork/channel/aidl/ParcelableHeader$1;->a(Landroid/os/Parcel;)Lanetwork/channel/aidl/ParcelableHeader;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lanetwork/channel/aidl/ParcelableHeader$1;->a(I)[Lanetwork/channel/aidl/ParcelableHeader;

    move-result-object v0

    return-object v0
.end method
