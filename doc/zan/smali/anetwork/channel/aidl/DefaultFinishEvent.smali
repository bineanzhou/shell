.class public Lanetwork/channel/aidl/DefaultFinishEvent;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lanetwork/channel/NetworkEvent$FinishEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lanetwork/channel/aidl/DefaultFinishEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/lang/String; = "anet.DefaultFinishEvent"


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field c:Ljava/lang/String;

.field d:Lanetwork/channel/statist/StatisticData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lanetwork/channel/aidl/DefaultFinishEvent$1;

    invoke-direct {v0}, Lanetwork/channel/aidl/DefaultFinishEvent$1;-><init>()V

    sput-object v0, Lanetwork/channel/aidl/DefaultFinishEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0, v0}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(ILjava/lang/String;Lanetwork/channel/statist/StatisticData;)V

    .line 49
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lanetwork/channel/statist/StatisticData;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->b:I

    .line 52
    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->c:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->d:Lanetwork/channel/statist/StatisticData;

    .line 54
    return-void

    .line 52
    :cond_0
    invoke-static {p1}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method static a(Landroid/os/Parcel;)Lanetwork/channel/aidl/DefaultFinishEvent;
    .locals 2

    .prologue
    .line 82
    new-instance v1, Lanetwork/channel/aidl/DefaultFinishEvent;

    invoke-direct {v1}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>()V

    .line 84
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lanetwork/channel/aidl/DefaultFinishEvent;->b:I

    .line 85
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lanetwork/channel/aidl/DefaultFinishEvent;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :try_start_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lanetwork/channel/statist/StatisticData;

    iput-object v0, v1, Lanetwork/channel/aidl/DefaultFinishEvent;->d:Lanetwork/channel/statist/StatisticData;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->b:I

    .line 37
    return-void
.end method

.method public a(Lanetwork/channel/statist/StatisticData;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->d:Lanetwork/channel/statist/StatisticData;

    .line 43
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->a:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->c:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lanetwork/channel/statist/StatisticData;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->d:Lanetwork/channel/statist/StatisticData;

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DefaultFinishEvent ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    const-string v1, "code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, ", statisticData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->d:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->d:Lanetwork/channel/statist/StatisticData;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->d:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 80
    :cond_0
    return-void
.end method
