.class public Lanetwork/channel/aidl/DefaultProgressEvent;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lanetwork/channel/NetworkEvent$ProgressEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lanetwork/channel/aidl/DefaultProgressEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/lang/String; = "anet.DefaultProgressEvent"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Ljava/lang/String;

.field e:Ljava/lang/Object;

.field f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lanetwork/channel/aidl/DefaultProgressEvent$1;

    invoke-direct {v0}, Lanetwork/channel/aidl/DefaultProgressEvent$1;-><init>()V

    sput-object v0, Lanetwork/channel/aidl/DefaultProgressEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Parcel;)Lanetwork/channel/aidl/DefaultProgressEvent;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lanetwork/channel/aidl/DefaultProgressEvent;

    invoke-direct {v0}, Lanetwork/channel/aidl/DefaultProgressEvent;-><init>()V

    .line 91
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lanetwork/channel/aidl/DefaultProgressEvent;->a:I

    .line 92
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lanetwork/channel/aidl/DefaultProgressEvent;->b:I

    .line 93
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lanetwork/channel/aidl/DefaultProgressEvent;->c:I

    .line 94
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanetwork/channel/aidl/DefaultProgressEvent;->d:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 96
    if-lez v1, :cond_0

    .line 97
    new-array v1, v1, [B

    .line 98
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 99
    iput-object v1, v0, Lanetwork/channel/aidl/DefaultProgressEvent;->f:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->b:I

    .line 37
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->e:Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->d:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public a([B)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->f:[B

    .line 60
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->c:I

    .line 45
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->a:I

    .line 66
    return-void
.end method

.method public d()[B
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->f:[B

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->a:I

    return v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultProgressEvent [index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->f:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->f:[B

    array-length v0, v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->f:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 87
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
