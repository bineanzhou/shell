.class public Lanetwork/channel/aidl/ParcelableRequest;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lanetwork/channel/aidl/ParcelableRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/String; = "anet.ParcelableRequest"


# instance fields
.field public a:J

.field private c:Lanetwork/channel/Request;

.field private d:Lanet/channel/request/BodyEntry;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lanetwork/channel/Header;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lanetwork/channel/Param;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 204
    new-instance v0, Lanetwork/channel/aidl/ParcelableRequest$1;

    invoke-direct {v0}, Lanetwork/channel/aidl/ParcelableRequest$1;-><init>()V

    sput-object v0, Lanetwork/channel/aidl/ParcelableRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->i:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->k:Ljava/util/List;

    .line 67
    return-void
.end method

.method public constructor <init>(Lanetwork/channel/Request;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->i:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->k:Ljava/util/List;

    .line 42
    iput-object p1, p0, Lanetwork/channel/aidl/ParcelableRequest;->c:Lanetwork/channel/Request;

    .line 43
    if-eqz p1, :cond_1

    .line 44
    invoke-interface {p1}, Lanetwork/channel/Request;->a()Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 45
    invoke-interface {p1}, Lanetwork/channel/Request;->a()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->f:Ljava/lang/String;

    .line 50
    :cond_0
    :goto_0
    invoke-interface {p1}, Lanetwork/channel/Request;->f()I

    move-result v0

    iput v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->e:I

    .line 51
    invoke-interface {p1}, Lanetwork/channel/Request;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->g:Ljava/lang/String;

    .line 52
    invoke-interface {p1}, Lanetwork/channel/Request;->c()Z

    move-result v0

    iput-boolean v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->h:Z

    .line 53
    invoke-interface {p1}, Lanetwork/channel/Request;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->i:Ljava/util/List;

    .line 54
    invoke-interface {p1}, Lanetwork/channel/Request;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->j:Ljava/lang/String;

    .line 55
    invoke-interface {p1}, Lanetwork/channel/Request;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->k:Ljava/util/List;

    .line 56
    invoke-interface {p1}, Lanetwork/channel/Request;->j()Lanet/channel/request/BodyEntry;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->d:Lanet/channel/request/BodyEntry;

    .line 57
    invoke-interface {p1}, Lanetwork/channel/Request;->k()I

    move-result v0

    iput v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->l:I

    .line 58
    invoke-interface {p1}, Lanetwork/channel/Request;->l()I

    move-result v0

    iput v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->m:I

    .line 59
    invoke-interface {p1}, Lanetwork/channel/Request;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->n:Ljava/lang/String;

    .line 60
    invoke-interface {p1}, Lanetwork/channel/Request;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->o:Ljava/lang/String;

    .line 61
    invoke-interface {p1}, Lanetwork/channel/Request;->q()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->p:Ljava/util/Map;

    .line 63
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->a:J

    .line 64
    return-void

    .line 46
    :cond_2
    invoke-interface {p1}, Lanetwork/channel/Request;->b()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {p1}, Lanetwork/channel/Request;->b()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Landroid/os/Parcel;)Lanetwork/channel/aidl/ParcelableRequest;
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v2, 0x0

    .line 138
    new-instance v3, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-direct {v3}, Lanetwork/channel/aidl/ParcelableRequest;-><init>()V

    .line 141
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Lanetwork/channel/aidl/ParcelableRequest;->e:I

    .line 144
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lanetwork/channel/aidl/ParcelableRequest;->f:Ljava/lang/String;

    .line 146
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lanetwork/channel/aidl/ParcelableRequest;->g:Ljava/lang/String;

    .line 148
    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 149
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 150
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, v3, Lanetwork/channel/aidl/ParcelableRequest;->h:Z

    .line 152
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lanetwork/channel/aidl/ParcelableRequest;->j:Ljava/lang/String;

    .line 154
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 155
    const-class v0, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 156
    if-eqz v4, :cond_1

    move v1, v2

    .line 157
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 158
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    if-eqz v0, :cond_0

    .line 160
    const-string v5, "&"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 161
    if-eq v5, v9, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v5, v6, :cond_0

    .line 162
    new-instance v6, Lanetwork/channel/entity/BasicHeader;

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lanetwork/channel/entity/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, v3, Lanetwork/channel/aidl/ParcelableRequest;->i:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 169
    :cond_1
    const-class v0, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v4

    .line 170
    if-eqz v4, :cond_3

    move v1, v2

    .line 171
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 172
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    if-eqz v0, :cond_2

    .line 174
    const-string v5, "&"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 175
    if-eq v5, v9, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v5, v6, :cond_2

    .line 176
    iget-object v6, v3, Lanetwork/channel/aidl/ParcelableRequest;->k:Ljava/util/List;

    new-instance v7, Lanetwork/channel/entity/StringParam;

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v8, v0}, Lanetwork/channel/entity/StringParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 182
    :cond_3
    const-class v0, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lanet/channel/request/BodyEntry;

    iput-object v0, v3, Lanetwork/channel/aidl/ParcelableRequest;->d:Lanet/channel/request/BodyEntry;

    .line 184
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v3, Lanetwork/channel/aidl/ParcelableRequest;->a:J

    .line 186
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Lanetwork/channel/aidl/ParcelableRequest;->l:I

    .line 188
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Lanetwork/channel/aidl/ParcelableRequest;->m:I

    .line 190
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lanetwork/channel/aidl/ParcelableRequest;->n:Ljava/lang/String;

    .line 192
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lanetwork/channel/aidl/ParcelableRequest;->o:Ljava/lang/String;

    .line 194
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 195
    const-class v0, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, v3, Lanetwork/channel/aidl/ParcelableRequest;->p:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_4
    :goto_2
    return-object v3

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const-string v1, "anet.ParcelableRequest"

    const-string v4, "[readFromParcel]"

    const/4 v5, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v5, v0, v2}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->g:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->p:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 266
    const/4 v0, 0x0

    .line 268
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->j:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->h:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lanet/channel/request/BodyEntry;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->d:Lanet/channel/request/BodyEntry;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->e:I

    return v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lanetwork/channel/Param;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->k:Ljava/util/List;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lanetwork/channel/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->i:Ljava/util/List;

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->l:I

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->m:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->n:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->o:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 76
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->c:Lanetwork/channel/Request;

    if-nez v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->c:Lanetwork/channel/Request;

    invoke-interface {v0}, Lanetwork/channel/Request;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->c:Lanetwork/channel/Request;

    invoke-interface {v0}, Lanetwork/channel/Request;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v3, 0x0

    iget-object v4, p0, Lanetwork/channel/aidl/ParcelableRequest;->c:Lanetwork/channel/Request;

    invoke-interface {v4}, Lanetwork/channel/Request;->c()Z

    move-result v4

    aput-boolean v4, v0, v3

    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 90
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->c:Lanetwork/channel/Request;

    invoke-interface {v0}, Lanetwork/channel/Request;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 93
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->c:Lanetwork/channel/Request;

    invoke-interface {v0}, Lanetwork/channel/Request;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    move v3, v1

    .line 94
    :goto_1
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->c:Lanetwork/channel/Request;

    invoke-interface {v0}, Lanetwork/channel/Request;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 95
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->c:Lanetwork/channel/Request;

    invoke-interface {v0}, Lanetwork/channel/Request;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->c:Lanetwork/channel/Request;

    invoke-interface {v0}, Lanetwork/channel/Request;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/Header;

    invoke-interface {v0}, Lanetwork/channel/Header;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "&"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->c:Lanetwork/channel/Request;

    invoke-interface {v0}, Lanetwork/channel/Request;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/Header;

    invoke-interface {v0}, Lanetwork/channel/Header;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 100
    :cond_3
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 102
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->c:Lanetwork/channel/Request;

    invoke-interface {v0}, Lanetwork/channel/Request;->g()Ljava/util/List;

    move-result-object v4

    .line 103
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 104
    if-eqz v4, :cond_5

    move v3, v1

    .line 105
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 106
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/Param;

    .line 107
    if-eqz v0, :cond_4

    .line 108
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lanetwork/channel/Param;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Lanetwork/channel/Param;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 112
    :cond_5
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 114
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->d:Lanet/channel/request/BodyEntry;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 116
    iget-wide v4, p0, Lanetwork/channel/aidl/ParcelableRequest;->a:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 118
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->c:Lanetwork/channel/Request;

    invoke-interface {v0}, Lanetwork/channel/Request;->k()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->c:Lanetwork/channel/Request;

    invoke-interface {v0}, Lanetwork/channel/Request;->l()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->c:Lanetwork/channel/Request;

    invoke-interface {v0}, Lanetwork/channel/Request;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->c:Lanetwork/channel/Request;

    invoke-interface {v0}, Lanetwork/channel/Request;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->c:Lanetwork/channel/Request;

    invoke-interface {v0}, Lanetwork/channel/Request;->q()Ljava/util/Map;

    move-result-object v3

    .line 127
    if-nez v3, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    if-eqz v3, :cond_0

    .line 129
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const-string v2, "anet.ParcelableRequest"

    const-string v3, "[writeToParcel]"

    const/4 v4, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v0, v1}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 127
    goto :goto_3
.end method
