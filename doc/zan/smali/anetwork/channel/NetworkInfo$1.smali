.class final Lanetwork/channel/NetworkInfo$1;
.super Ljava/lang/Thread;
.source "Taobao"


# instance fields
.field final synthetic a:Lanetwork/channel/NetworkInfo;


# direct methods
.method constructor <init>(Lanetwork/channel/NetworkInfo;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lanetwork/channel/NetworkInfo$1;->a:Lanetwork/channel/NetworkInfo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 127
    iget-object v0, p0, Lanetwork/channel/NetworkInfo$1;->a:Lanetwork/channel/NetworkInfo;

    iget-object v2, p0, Lanetwork/channel/NetworkInfo$1;->a:Lanetwork/channel/NetworkInfo;

    invoke-static {v2}, Lanetwork/channel/NetworkInfo;->a(Lanetwork/channel/NetworkInfo;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lanetwork/channel/NetworkInfo;->a(Lanetwork/channel/NetworkInfo;Landroid/content/Context;)I

    move-result v2

    .line 128
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 129
    :goto_0
    if-nez v0, :cond_2

    .line 130
    iget-object v0, p0, Lanetwork/channel/NetworkInfo$1;->a:Lanetwork/channel/NetworkInfo;

    invoke-static {v0}, Lanetwork/channel/NetworkInfo;->b(Lanetwork/channel/NetworkInfo;)Lanetwork/channel/NetworkInfo$NetworkInfoListener;

    move-result-object v0

    const-string v1, "BACKGROUND ACTIVITY"

    invoke-static {v0, v1}, Lanetwork/channel/NetworkInfo;->a(Lanetwork/channel/NetworkInfo$NetworkInfoListener;Ljava/lang/String;)V

    .line 147
    :cond_0
    :goto_1
    return-void

    .line 128
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 132
    :cond_2
    const/4 v0, 0x2

    if-ne v2, v0, :cond_3

    .line 133
    iget-object v0, p0, Lanetwork/channel/NetworkInfo$1;->a:Lanetwork/channel/NetworkInfo;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0, v1}, Lanetwork/channel/NetworkInfo;->a(Lanetwork/channel/NetworkInfo;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 134
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 136
    iget-object v1, p0, Lanetwork/channel/NetworkInfo$1;->a:Lanetwork/channel/NetworkInfo;

    invoke-static {v1, v0}, Lanetwork/channel/NetworkInfo;->a(Lanetwork/channel/NetworkInfo;Ljava/util/concurrent/CountDownLatch;)V

    .line 138
    new-instance v1, Lanetwork/channel/NetworkInfo$WaitThread;

    iget-object v2, p0, Lanetwork/channel/NetworkInfo$1;->a:Lanetwork/channel/NetworkInfo;

    invoke-static {v2}, Lanetwork/channel/NetworkInfo;->b(Lanetwork/channel/NetworkInfo;)Lanetwork/channel/NetworkInfo$NetworkInfoListener;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lanetwork/channel/NetworkInfo$WaitThread;-><init>(Lanetwork/channel/NetworkInfo$NetworkInfoListener;Ljava/util/concurrent/CountDownLatch;)V

    .line 139
    invoke-virtual {v1}, Lanetwork/channel/NetworkInfo$WaitThread;->start()V

    goto :goto_1

    .line 141
    :cond_3
    if-ne v2, v1, :cond_4

    .line 142
    iget-object v0, p0, Lanetwork/channel/NetworkInfo$1;->a:Lanetwork/channel/NetworkInfo;

    invoke-static {v0}, Lanetwork/channel/NetworkInfo;->b(Lanetwork/channel/NetworkInfo;)Lanetwork/channel/NetworkInfo$NetworkInfoListener;

    move-result-object v0

    const-string v1, "NETWORK_UNAUTHROIZED"

    invoke-static {v0, v1}, Lanetwork/channel/NetworkInfo;->a(Lanetwork/channel/NetworkInfo$NetworkInfoListener;Ljava/lang/String;)V

    goto :goto_1

    .line 144
    :cond_4
    if-nez v2, :cond_0

    .line 145
    iget-object v0, p0, Lanetwork/channel/NetworkInfo$1;->a:Lanetwork/channel/NetworkInfo;

    invoke-static {v0}, Lanetwork/channel/NetworkInfo;->b(Lanetwork/channel/NetworkInfo;)Lanetwork/channel/NetworkInfo$NetworkInfoListener;

    move-result-object v0

    const-string v1, "NETWORK_UNCONNECTED"

    invoke-static {v0, v1}, Lanetwork/channel/NetworkInfo;->a(Lanetwork/channel/NetworkInfo$NetworkInfoListener;Ljava/lang/String;)V

    goto :goto_1
.end method
