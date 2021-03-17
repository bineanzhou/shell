.class Lanetwork/channel/unified/FutureResponse;
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


# instance fields
.field private a:Lanetwork/channel/unified/UnifiedRequestTask;

.field private b:Z


# direct methods
.method public constructor <init>(Lanetwork/channel/unified/UnifiedRequestTask;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lanetwork/channel/unified/FutureResponse;->a:Lanetwork/channel/unified/UnifiedRequestTask;

    .line 21
    return-void
.end method


# virtual methods
.method public a()Lanetwork/channel/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT SUPPORT!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lanetwork/channel/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT SUPPORT!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancel(Z)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 25
    iget-boolean v0, p0, Lanetwork/channel/unified/FutureResponse;->b:Z

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lanetwork/channel/unified/FutureResponse;->a:Lanetwork/channel/unified/UnifiedRequestTask;

    invoke-virtual {v0}, Lanetwork/channel/unified/UnifiedRequestTask;->b()V

    .line 27
    iput-boolean v1, p0, Lanetwork/channel/unified/FutureResponse;->b:Z

    .line 29
    :cond_0
    return v1
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
    .line 14
    invoke-virtual {p0}, Lanetwork/channel/unified/FutureResponse;->a()Lanetwork/channel/Response;

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
    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lanetwork/channel/unified/FutureResponse;->a(JLjava/util/concurrent/TimeUnit;)Lanetwork/channel/Response;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lanetwork/channel/unified/FutureResponse;->b:Z

    return v0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT SUPPORT!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
