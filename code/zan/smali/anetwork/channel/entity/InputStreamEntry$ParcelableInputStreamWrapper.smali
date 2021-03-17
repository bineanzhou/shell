.class Lanetwork/channel/entity/InputStreamEntry$ParcelableInputStreamWrapper;
.super Lanetwork/channel/aidl/ParcelableInputStream$Stub;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/entity/InputStreamEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParcelableInputStreamWrapper"
.end annotation


# instance fields
.field private h:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lanetwork/channel/aidl/ParcelableInputStream$Stub;-><init>()V

    .line 80
    iput-object p1, p0, Lanetwork/channel/entity/InputStreamEntry$ParcelableInputStreamWrapper;->h:Ljava/io/InputStream;

    .line 81
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/entity/InputStreamEntry$ParcelableInputStreamWrapper;->h:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 88
    :catch_0
    move-exception v0

    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "IO Exception"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 122
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/entity/InputStreamEntry$ParcelableInputStreamWrapper;->h:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 124
    :catch_0
    move-exception v0

    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "IO Exception"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 113
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/entity/InputStreamEntry$ParcelableInputStreamWrapper;->h:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 115
    :catch_0
    move-exception v0

    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "IO Exception"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(I)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 131
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/entity/InputStreamEntry$ParcelableInputStreamWrapper;->h:Ljava/io/InputStream;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 133
    :catch_0
    move-exception v0

    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "IO Exception"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 95
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/entity/InputStreamEntry$ParcelableInputStreamWrapper;->h:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    return-void

    .line 97
    :catch_0
    move-exception v0

    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "IO Exception"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/entity/InputStreamEntry$ParcelableInputStreamWrapper;->h:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 106
    :catch_0
    move-exception v0

    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "IO Exception"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method
