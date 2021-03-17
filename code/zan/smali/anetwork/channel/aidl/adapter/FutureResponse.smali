.class public Lanetwork/channel/aidl/adapter/FutureResponse;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<",
        "Lanetwork/channel/Response;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "anet.FutureResponse"

.field private static final c:I = 0x4e20


# instance fields
.field private b:Lanetwork/channel/aidl/ParcelableFuture;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lanetwork/channel/aidl/ParcelableFuture;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->b:Lanetwork/channel/aidl/ParcelableFuture;

    .line 26
    return-void
.end method


# virtual methods
.method public a()Lanetwork/channel/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 68
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->b:Lanetwork/channel/aidl/ParcelableFuture;

    if-eqz v1, :cond_0

    .line 70
    :try_start_0
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->b:Lanetwork/channel/aidl/ParcelableFuture;

    const-wide/16 v2, 0x4e20

    invoke-interface {v1, v2, v3}, Lanetwork/channel/aidl/ParcelableFuture;->a(J)Lanetwork/channel/aidl/NetworkResponse;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 75
    :cond_0
    :goto_0
    return-object v0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    const-string v2, "anet.FutureResponse"

    const-string v3, "[get]"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v1, v4}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lanetwork/channel/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 80
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->b:Lanetwork/channel/aidl/ParcelableFuture;

    if-eqz v1, :cond_0

    .line 82
    :try_start_0
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->b:Lanetwork/channel/aidl/ParcelableFuture;

    invoke-interface {v1, p1, p2}, Lanetwork/channel/aidl/ParcelableFuture;->a(J)Lanetwork/channel/aidl/NetworkResponse;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 87
    :cond_0
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    const-string v2, "anet.FutureResponse"

    const-string v3, "[get(long timeout, TimeUnit unit)]"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v1, v4}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lanetwork/channel/aidl/ParcelableFuture;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->b:Lanetwork/channel/aidl/ParcelableFuture;

    .line 92
    return-void
.end method

.method public cancel(Z)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 33
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->b:Lanetwork/channel/aidl/ParcelableFuture;

    if-nez v1, :cond_0

    .line 41
    :goto_0
    return v0

    .line 37
    :cond_0
    :try_start_0
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->b:Lanetwork/channel/aidl/ParcelableFuture;

    invoke-interface {v1, p1}, Lanetwork/channel/aidl/ParcelableFuture;->a(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v1

    .line 39
    const-string v2, "anet.FutureResponse"

    const-string v3, "[cancel]"

    const/4 v4, 0x0

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v1, v5}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0}, Lanetwork/channel/aidl/adapter/FutureResponse;->a()Lanetwork/channel/Response;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lanetwork/channel/aidl/adapter/FutureResponse;->a(JLjava/util/concurrent/TimeUnit;)Lanetwork/channel/Response;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 47
    :try_start_0
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->b:Lanetwork/channel/aidl/ParcelableFuture;

    invoke-interface {v1}, Lanetwork/channel/aidl/ParcelableFuture;->a()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 51
    :goto_0
    return v0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    const-string v2, "anet.FutureResponse"

    const-string v3, "[isCancelled]"

    const/4 v4, 0x0

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v1, v5}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isDone()Z
    .locals 5

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->b:Lanetwork/channel/aidl/ParcelableFuture;

    invoke-interface {v0}, Lanetwork/channel/aidl/ParcelableFuture;->b()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 63
    :goto_0
    return v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    const-string v1, "anet.FutureResponse"

    const-string v2, "[isDone]"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 63
    const/4 v0, 0x1

    goto :goto_0
.end method
