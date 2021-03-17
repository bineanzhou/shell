.class Lcom/taobao/accs/net/m;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:[B

.field final synthetic c:Lanet/channel/session/TnetSpdySession;

.field final synthetic d:Lcom/taobao/accs/net/k;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/k;I[BLanet/channel/session/TnetSpdySession;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/taobao/accs/net/m;->d:Lcom/taobao/accs/net/k;

    iput p2, p0, Lcom/taobao/accs/net/m;->a:I

    iput-object p3, p0, Lcom/taobao/accs/net/m;->b:[B

    iput-object p4, p0, Lcom/taobao/accs/net/m;->c:Lanet/channel/session/TnetSpdySession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 280
    iget v0, p0, Lcom/taobao/accs/net/m;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 282
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 283
    iget-object v2, p0, Lcom/taobao/accs/net/m;->d:Lcom/taobao/accs/net/k;

    iget-object v2, v2, Lcom/taobao/accs/net/k;->e:Lcom/taobao/accs/data/a;

    iget-object v3, p0, Lcom/taobao/accs/net/m;->b:[B

    iget-object v4, p0, Lcom/taobao/accs/net/m;->c:Lanet/channel/session/TnetSpdySession;

    invoke-virtual {v4}, Lanet/channel/session/TnetSpdySession;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/taobao/accs/data/a;->a([BLjava/lang/String;)V

    .line 284
    iget-object v2, p0, Lcom/taobao/accs/net/m;->d:Lcom/taobao/accs/net/k;

    iget-object v2, v2, Lcom/taobao/accs/net/k;->e:Lcom/taobao/accs/data/a;

    invoke-virtual {v2}, Lcom/taobao/accs/data/a;->f()Lcom/taobao/accs/ut/statistics/d;

    move-result-object v2

    .line 285
    if-eqz v2, :cond_0

    .line 286
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/taobao/accs/ut/statistics/d;->c:Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/taobao/accs/net/m;->d:Lcom/taobao/accs/net/k;

    iget v0, v0, Lcom/taobao/accs/net/k;->c:I

    if-nez v0, :cond_1

    const-string v0, "service"

    :goto_0
    iput-object v0, v2, Lcom/taobao/accs/ut/statistics/d;->g:Ljava/lang/String;

    .line 288
    invoke-virtual {v2}, Lcom/taobao/accs/ut/statistics/d;->commitUT()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/taobao/accs/net/m;->d:Lcom/taobao/accs/net/k;

    invoke-virtual {v0}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "try handle msg"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    :goto_2
    return-void

    .line 287
    :cond_1
    :try_start_1
    const-string v0, "inapp"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    iget-object v1, p0, Lcom/taobao/accs/net/m;->d:Lcom/taobao/accs/net/k;

    invoke-virtual {v1}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onDataReceive "

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 293
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 294
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v1

    const v2, 0x101d1

    const-string v3, "DATA_RECEIVE"

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/taobao/accs/net/m;->d:Lcom/taobao/accs/net/k;

    invoke-virtual {v0}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop frame len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/m;->b:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " frameType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/taobao/accs/net/m;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method
