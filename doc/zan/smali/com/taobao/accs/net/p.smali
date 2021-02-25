.class Lcom/taobao/accs/net/p;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/RequestCb;


# instance fields
.field final synthetic a:Lanet/channel/Session;

.field final synthetic b:Lanet/channel/IAuth$AuthCallback;

.field final synthetic c:Lcom/taobao/accs/net/k$a;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/k$a;Lanet/channel/Session;Lanet/channel/IAuth$AuthCallback;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/taobao/accs/net/p;->c:Lcom/taobao/accs/net/k$a;

    iput-object p2, p0, Lcom/taobao/accs/net/p;->a:Lanet/channel/Session;

    iput-object p3, p0, Lcom/taobao/accs/net/p;->b:Lanet/channel/IAuth$AuthCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceive(Lanet/channel/bytes/ByteArray;Z)V
    .locals 0

    .prologue
    .line 498
    return-void
.end method

.method public onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    .locals 5

    .prologue
    .line 502
    if-eqz p1, :cond_0

    .line 503
    iget-object v0, p0, Lcom/taobao/accs/net/p;->c:Lcom/taobao/accs/net/k$a;

    invoke-static {v0}, Lcom/taobao/accs/net/k$a;->a(Lcom/taobao/accs/net/k$a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AUTH onFinish"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "statusCode"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "seq"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/taobao/accs/net/p;->a:Lanet/channel/Session;

    iget-object v4, v4, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    iget-object v0, p0, Lcom/taobao/accs/net/p;->b:Lanet/channel/IAuth$AuthCallback;

    const-string v1, "onFinish auth fail"

    invoke-interface {v0, p1, v1}, Lanet/channel/IAuth$AuthCallback;->onAuthFail(ILjava/lang/String;)V

    .line 506
    :cond_0
    return-void
.end method

.method public onResponseCode(ILjava/util/Map;)V
    .locals 5
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
    .line 481
    iget-object v0, p0, Lcom/taobao/accs/net/p;->c:Lcom/taobao/accs/net/k$a;

    invoke-static {v0}, Lcom/taobao/accs/net/k$a;->a(Lcom/taobao/accs/net/k$a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AUTH"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "httpStatusCode"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "seq"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/taobao/accs/net/p;->a:Lanet/channel/Session;

    iget-object v4, v4, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/taobao/accs/net/p;->b:Lanet/channel/IAuth$AuthCallback;

    invoke-interface {v0}, Lanet/channel/IAuth$AuthCallback;->onAuthSuccess()V

    .line 488
    :goto_0
    invoke-static {p2}, Lcom/taobao/accs/utl/UtilityImpl;->getHeader(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 489
    const-string v1, "x-at"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 490
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/taobao/accs/net/p;->c:Lcom/taobao/accs/net/k$a;

    invoke-static {v1}, Lcom/taobao/accs/net/k$a;->b(Lcom/taobao/accs/net/k$a;)Lcom/taobao/accs/net/b;

    move-result-object v1

    iput-object v0, v1, Lcom/taobao/accs/net/b;->k:Ljava/lang/String;

    .line 493
    :cond_0
    return-void

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/taobao/accs/net/p;->b:Lanet/channel/IAuth$AuthCallback;

    const-string v1, "auth fail"

    invoke-interface {v0, p1, v1}, Lanet/channel/IAuth$AuthCallback;->onAuthFail(ILjava/lang/String;)V

    goto :goto_0
.end method
