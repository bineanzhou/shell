.class public Lanetwork/channel/entity/InputStreamEntry;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/request/BodyEntry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanetwork/channel/entity/InputStreamEntry$ParcelableInputStreamWrapper;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lanetwork/channel/entity/InputStreamEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lanetwork/channel/aidl/ParcelableInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lanetwork/channel/entity/InputStreamEntry$1;

    invoke-direct {v0}, Lanetwork/channel/entity/InputStreamEntry$1;-><init>()V

    sput-object v0, Lanetwork/channel/entity/InputStreamEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lanetwork/channel/entity/InputStreamEntry;->a:Lanetwork/channel/aidl/ParcelableInputStream;

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lanetwork/channel/entity/InputStreamEntry$1;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lanetwork/channel/entity/InputStreamEntry;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lanetwork/channel/entity/InputStreamEntry;->a:Lanetwork/channel/aidl/ParcelableInputStream;

    .line 24
    new-instance v0, Lanetwork/channel/entity/InputStreamEntry$ParcelableInputStreamWrapper;

    invoke-direct {v0, p1}, Lanetwork/channel/entity/InputStreamEntry$ParcelableInputStreamWrapper;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lanetwork/channel/entity/InputStreamEntry;->a:Lanetwork/channel/aidl/ParcelableInputStream;

    .line 25
    return-void
.end method

.method static synthetic a(Lanetwork/channel/entity/InputStreamEntry;Lanetwork/channel/aidl/ParcelableInputStream;)Lanetwork/channel/aidl/ParcelableInputStream;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lanetwork/channel/entity/InputStreamEntry;->a:Lanetwork/channel/aidl/ParcelableInputStream;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 38
    :try_start_0
    sget-object v1, Lanet/channel/bytes/a$a;->a:Lanet/channel/bytes/a;

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Lanet/channel/bytes/a;->a(I)Lanet/channel/bytes/ByteArray;

    move-result-object v1

    .line 40
    :goto_0
    iget-object v2, p0, Lanetwork/channel/entity/InputStreamEntry;->a:Lanetwork/channel/aidl/ParcelableInputStream;

    invoke-virtual {v1}, Lanet/channel/bytes/ByteArray;->getBuffer()[B

    move-result-object v3

    invoke-interface {v2, v3}, Lanetwork/channel/aidl/ParcelableInputStream;->a([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 41
    invoke-virtual {v1, p1}, Lanet/channel/bytes/ByteArray;->writeTo(Ljava/io/OutputStream;)V

    .line 42
    add-int/2addr v0, v2

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v1}, Lanet/channel/bytes/ByteArray;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return v0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    new-instance v1, Ljava/io/IOException;

    const-string v2, "RemoteException"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lanetwork/channel/entity/InputStreamEntry;->a:Lanetwork/channel/aidl/ParcelableInputStream;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 59
    return-void
.end method
