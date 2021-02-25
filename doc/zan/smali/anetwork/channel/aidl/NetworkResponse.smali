.class public Lanetwork/channel/aidl/NetworkResponse;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lanetwork/channel/Response;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lanetwork/channel/aidl/NetworkResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/String; = "anet.NetworkResponse"


# instance fields
.field a:I

.field b:[B

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Throwable;

.field private g:Lanetwork/channel/statist/StatisticData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lanetwork/channel/aidl/NetworkResponse$1;

    invoke-direct {v0}, Lanetwork/channel/aidl/NetworkResponse$1;-><init>()V

    sput-object v0, Lanetwork/channel/aidl/NetworkResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, v0, v0}, Lanetwork/channel/aidl/NetworkResponse;-><init>(I[BLjava/util/Map;)V

    .line 86
    return-void
.end method

.method public constructor <init>(I[BLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lanetwork/channel/aidl/NetworkResponse;->a:I

    .line 89
    invoke-static {p1}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->d:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lanetwork/channel/aidl/NetworkResponse;->b:[B

    .line 91
    iput-object p3, p0, Lanetwork/channel/aidl/NetworkResponse;->e:Ljava/util/Map;

    .line 92
    return-void
.end method

.method public static a(Landroid/os/Parcel;)Lanetwork/channel/aidl/NetworkResponse;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 132
    new-instance v1, Lanetwork/channel/aidl/NetworkResponse;

    invoke-direct {v1}, Lanetwork/channel/aidl/NetworkResponse;-><init>()V

    .line 134
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lanetwork/channel/aidl/NetworkResponse;->a:I

    .line 135
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lanetwork/channel/aidl/NetworkResponse;->d:Ljava/lang/String;

    .line 136
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 137
    if-lez v0, :cond_0

    .line 138
    new-array v0, v0, [B

    iput-object v0, v1, Lanetwork/channel/aidl/NetworkResponse;->b:[B

    .line 139
    iget-object v0, v1, Lanetwork/channel/aidl/NetworkResponse;->b:[B

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 141
    :cond_0
    const-class v0, Lanetwork/channel/aidl/NetworkResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, v1, Lanetwork/channel/aidl/NetworkResponse;->e:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 143
    :try_start_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lanetwork/channel/statist/StatisticData;

    iput-object v0, v1, Lanetwork/channel/aidl/NetworkResponse;->g:Lanetwork/channel/statist/StatisticData;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    :goto_0
    return-object v1

    .line 145
    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "anet.NetworkResponse"

    const-string v2, "[readFromParcel] source.readSerializable() error"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 148
    :catch_1
    move-exception v0

    .line 149
    const-string v2, "anet.NetworkResponse"

    const-string v3, "[readFromParcel]"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v6, v0, v4}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lanetwork/channel/aidl/NetworkResponse;->a:I

    return v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 42
    iput p1, p0, Lanetwork/channel/aidl/NetworkResponse;->a:I

    .line 43
    invoke-static {p1}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->d:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public a(Lanetwork/channel/statist/StatisticData;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lanetwork/channel/aidl/NetworkResponse;->g:Lanetwork/channel/statist/StatisticData;

    .line 169
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lanetwork/channel/aidl/NetworkResponse;->d:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lanetwork/channel/aidl/NetworkResponse;->f:Ljava/lang/Throwable;

    .line 105
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    iput-object p1, p0, Lanetwork/channel/aidl/NetworkResponse;->e:Ljava/util/Map;

    .line 55
    return-void
.end method

.method public a([B)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lanetwork/channel/aidl/NetworkResponse;->b:[B

    .line 52
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()[B
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->b:[B

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->e:Ljava/util/Map;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->f:Ljava/lang/Throwable;

    return-object v0
.end method

.method public f()Lanetwork/channel/statist/StatisticData;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->g:Lanetwork/channel/statist/StatisticData;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "NetworkResponse ["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    const-string v0, "statusCode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lanetwork/channel/aidl/NetworkResponse;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string v0, ", desc="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lanetwork/channel/aidl/NetworkResponse;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v0, ", connHeadFields="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lanetwork/channel/aidl/NetworkResponse;->e:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    const-string v0, ", bytedata="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->b:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lanetwork/channel/aidl/NetworkResponse;->b:[B

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v0, ", error="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lanetwork/channel/aidl/NetworkResponse;->f:Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    const-string v0, ", statisticData="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lanetwork/channel/aidl/NetworkResponse;->g:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 76
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lanetwork/channel/aidl/NetworkResponse;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    .line 117
    iget-object v1, p0, Lanetwork/channel/aidl/NetworkResponse;->b:[B

    if-eqz v1, :cond_0

    .line 118
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->b:[B

    array-length v0, v0

    .line 120
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    if-lez v0, :cond_1

    .line 122
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->b:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 124
    :cond_1
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->e:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 125
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->g:Lanetwork/channel/statist/StatisticData;

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->g:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 130
    :cond_2
    return-void
.end method
