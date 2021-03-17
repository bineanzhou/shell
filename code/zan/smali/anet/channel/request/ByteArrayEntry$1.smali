.class final Lanet/channel/request/ByteArrayEntry$1;
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
        "Lanet/channel/request/ByteArrayEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lanet/channel/request/ByteArrayEntry;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lanet/channel/request/ByteArrayEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanet/channel/request/ByteArrayEntry;-><init>(Lanet/channel/request/ByteArrayEntry$1;)V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v1, v1, [B

    invoke-static {v0, v1}, Lanet/channel/request/ByteArrayEntry;->access$102(Lanet/channel/request/ByteArrayEntry;[B)[B

    .line 65
    invoke-static {v0}, Lanet/channel/request/ByteArrayEntry;->access$100(Lanet/channel/request/ByteArrayEntry;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lanet/channel/request/ByteArrayEntry;->access$202(Lanet/channel/request/ByteArrayEntry;I)I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lanet/channel/request/ByteArrayEntry;->access$302(Lanet/channel/request/ByteArrayEntry;I)I

    .line 68
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lanet/channel/request/ByteArrayEntry$1;->createFromParcel(Landroid/os/Parcel;)Lanet/channel/request/ByteArrayEntry;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lanet/channel/request/ByteArrayEntry;
    .locals 1

    .prologue
    .line 73
    new-array v0, p1, [Lanet/channel/request/ByteArrayEntry;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lanet/channel/request/ByteArrayEntry$1;->newArray(I)[Lanet/channel/request/ByteArrayEntry;

    move-result-object v0

    return-object v0
.end method
