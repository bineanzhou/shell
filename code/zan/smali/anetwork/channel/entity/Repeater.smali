.class public Lanetwork/channel/entity/Repeater;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanetwork/channel/interceptor/Callback;


# static fields
.field private static final a:Ljava/lang/String; = "anet.Repeater"


# instance fields
.field private b:Lanetwork/channel/aidl/ParcelableNetworkListener;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

.field private f:Z

.field private g:Lanetwork/channel/entity/RequestConfig;


# direct methods
.method public constructor <init>(Lanetwork/channel/aidl/ParcelableNetworkListener;Lanetwork/channel/entity/RequestConfig;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v1, p0, Lanetwork/channel/entity/Repeater;->e:Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanetwork/channel/entity/Repeater;->f:Z

    .line 28
    iput-object v1, p0, Lanetwork/channel/entity/Repeater;->g:Lanetwork/channel/entity/RequestConfig;

    .line 31
    iput-object p1, p0, Lanetwork/channel/entity/Repeater;->b:Lanetwork/channel/aidl/ParcelableNetworkListener;

    .line 32
    iput-object p2, p0, Lanetwork/channel/entity/Repeater;->g:Lanetwork/channel/entity/RequestConfig;

    .line 34
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lanetwork/channel/aidl/ParcelableNetworkListener;->a()B

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanetwork/channel/entity/Repeater;->f:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lanetwork/channel/entity/Repeater;J)J
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lanetwork/channel/entity/Repeater;->c:J

    return-wide p1
.end method

.method static synthetic a(Lanetwork/channel/entity/Repeater;Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;)Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lanetwork/channel/entity/Repeater;->e:Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    return-object p1
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lanetwork/channel/entity/Repeater;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lanetwork/channel/entity/Repeater;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 141
    :goto_0
    invoke-static {v0, p1}, Lanetwork/channel/entity/RepeatProcessor;->a(ILjava/lang/Runnable;)V

    .line 142
    return-void

    .line 140
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lanetwork/channel/entity/Repeater;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lanetwork/channel/entity/Repeater;->f:Z

    return v0
.end method

.method static synthetic b(Lanetwork/channel/entity/Repeater;)Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lanetwork/channel/entity/Repeater;->e:Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    return-object v0
.end method

.method static synthetic c(Lanetwork/channel/entity/Repeater;)Lanetwork/channel/entity/RequestConfig;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lanetwork/channel/entity/Repeater;->g:Lanetwork/channel/entity/RequestConfig;

    return-object v0
.end method

.method static synthetic d(Lanetwork/channel/entity/Repeater;)J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lanetwork/channel/entity/Repeater;->c:J

    return-wide v0
.end method

.method static synthetic e(Lanetwork/channel/entity/Repeater;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lanetwork/channel/entity/Repeater;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(IILanet/channel/bytes/ByteArray;)V
    .locals 6

    .prologue
    .line 63
    iget-object v0, p0, Lanetwork/channel/entity/Repeater;->b:Lanetwork/channel/aidl/ParcelableNetworkListener;

    if-eqz v0, :cond_0

    .line 64
    iget-object v5, p0, Lanetwork/channel/entity/Repeater;->b:Lanetwork/channel/aidl/ParcelableNetworkListener;

    .line 65
    new-instance v0, Lanetwork/channel/entity/Repeater$2;

    move-object v1, p0

    move-object v2, p3

    move v3, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lanetwork/channel/entity/Repeater$2;-><init>(Lanetwork/channel/entity/Repeater;Lanet/channel/bytes/ByteArray;IILanetwork/channel/aidl/ParcelableNetworkListener;)V

    .line 98
    invoke-direct {p0, v0}, Lanetwork/channel/entity/Repeater;->a(Ljava/lang/Runnable;)V

    .line 100
    :cond_0
    return-void
.end method

.method public a(ILjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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
    .line 43
    const/4 v0, 0x2

    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "anet.Repeater"

    const-string v1, "[onResponseCode]"

    iget-object v2, p0, Lanetwork/channel/entity/Repeater;->d:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :cond_0
    iget-object v0, p0, Lanetwork/channel/entity/Repeater;->b:Lanetwork/channel/aidl/ParcelableNetworkListener;

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lanetwork/channel/entity/Repeater;->b:Lanetwork/channel/aidl/ParcelableNetworkListener;

    .line 48
    new-instance v1, Lanetwork/channel/entity/Repeater$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lanetwork/channel/entity/Repeater$1;-><init>(Lanetwork/channel/entity/Repeater;Lanetwork/channel/aidl/ParcelableNetworkListener;ILjava/util/Map;)V

    .line 58
    invoke-direct {p0, v1}, Lanetwork/channel/entity/Repeater;->a(Ljava/lang/Runnable;)V

    .line 60
    :cond_1
    return-void
.end method

.method public a(Lanetwork/channel/aidl/DefaultFinishEvent;)V
    .locals 4

    .prologue
    .line 103
    const/4 v0, 0x2

    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "anet.Repeater"

    const-string v1, "[onFinish] "

    iget-object v2, p0, Lanetwork/channel/entity/Repeater;->d:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lanetwork/channel/entity/Repeater;->b:Lanetwork/channel/aidl/ParcelableNetworkListener;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lanetwork/channel/entity/Repeater;->b:Lanetwork/channel/aidl/ParcelableNetworkListener;

    .line 108
    new-instance v1, Lanetwork/channel/entity/Repeater$3;

    invoke-direct {v1, p0, p1, v0}, Lanetwork/channel/entity/Repeater$3;-><init>(Lanetwork/channel/entity/Repeater;Lanetwork/channel/aidl/DefaultFinishEvent;Lanetwork/channel/aidl/ParcelableNetworkListener;)V

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lanetwork/channel/entity/Repeater;->c:J

    .line 132
    invoke-direct {p0, v1}, Lanetwork/channel/entity/Repeater;->a(Ljava/lang/Runnable;)V

    .line 136
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lanetwork/channel/entity/Repeater;->b:Lanetwork/channel/aidl/ParcelableNetworkListener;

    .line 137
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lanetwork/channel/entity/Repeater;->d:Ljava/lang/String;

    .line 146
    return-void
.end method
