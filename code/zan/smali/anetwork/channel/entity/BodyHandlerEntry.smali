.class public Lanetwork/channel/entity/BodyHandlerEntry;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/request/BodyEntry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lanetwork/channel/entity/BodyHandlerEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lanetwork/channel/aidl/ParcelableBodyHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lanetwork/channel/entity/BodyHandlerEntry$1;

    invoke-direct {v0}, Lanetwork/channel/entity/BodyHandlerEntry$1;-><init>()V

    sput-object v0, Lanetwork/channel/entity/BodyHandlerEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lanetwork/channel/entity/BodyHandlerEntry;->a:Lanetwork/channel/aidl/ParcelableBodyHandler;

    .line 28
    return-void
.end method

.method public constructor <init>(Lanetwork/channel/IBodyHandler;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lanetwork/channel/entity/BodyHandlerEntry;->a:Lanetwork/channel/aidl/ParcelableBodyHandler;

    .line 25
    new-instance v0, Lanetwork/channel/aidl/adapter/ParcelableBodyHandlerWrapper;

    invoke-direct {v0, p1}, Lanetwork/channel/aidl/adapter/ParcelableBodyHandlerWrapper;-><init>(Lanetwork/channel/IBodyHandler;)V

    iput-object v0, p0, Lanetwork/channel/entity/BodyHandlerEntry;->a:Lanetwork/channel/aidl/ParcelableBodyHandler;

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Lanetwork/channel/entity/BodyHandlerEntry$1;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lanetwork/channel/entity/BodyHandlerEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 37
    .line 39
    :try_start_0
    sget-object v1, Lanet/channel/bytes/a$a;->a:Lanet/channel/bytes/a;

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Lanet/channel/bytes/a;->a(I)Lanet/channel/bytes/ByteArray;

    move-result-object v1

    .line 40
    :goto_0
    iget-object v2, p0, Lanetwork/channel/entity/BodyHandlerEntry;->a:Lanetwork/channel/aidl/ParcelableBodyHandler;

    invoke-interface {v2}, Lanetwork/channel/aidl/ParcelableBodyHandler;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    iget-object v2, p0, Lanetwork/channel/entity/BodyHandlerEntry;->a:Lanetwork/channel/aidl/ParcelableBodyHandler;

    invoke-virtual {v1}, Lanet/channel/bytes/ByteArray;->getBuffer()[B

    move-result-object v3

    invoke-interface {v2, v3}, Lanetwork/channel/aidl/ParcelableBodyHandler;->a([B)I

    move-result v2

    .line 42
    invoke-virtual {v1}, Lanet/channel/bytes/ByteArray;->getBuffer()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 43
    add-int/2addr v0, v2

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v1}, Lanet/channel/bytes/ByteArray;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return v0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    new-instance v1, Ljava/io/IOException;

    const-string v2, "RemoteException"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lanetwork/channel/entity/BodyHandlerEntry;->a:Lanetwork/channel/aidl/ParcelableBodyHandler;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 60
    return-void
.end method
