.class Lanet/channel/session/g;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/RequestCb;


# instance fields
.field final synthetic a:Lanet/channel/session/f;


# direct methods
.method constructor <init>(Lanet/channel/session/f;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lanet/channel/session/g;->a:Lanet/channel/session/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceive(Lanet/channel/bytes/ByteArray;Z)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lanet/channel/session/g;->a:Lanet/channel/session/f;

    iget-object v0, v0, Lanet/channel/session/f;->c:Lanet/channel/RequestCb;

    invoke-interface {v0, p1, p2}, Lanet/channel/RequestCb;->onDataReceive(Lanet/channel/bytes/ByteArray;Z)V

    .line 153
    return-void
.end method

.method public onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lanet/channel/session/g;->a:Lanet/channel/session/f;

    iget-object v0, v0, Lanet/channel/session/f;->c:Lanet/channel/RequestCb;

    invoke-interface {v0, p1, p2, p3}, Lanet/channel/RequestCb;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    .line 158
    return-void
.end method

.method public onResponseCode(ILjava/util/Map;)V
    .locals 6
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
    const/4 v5, 0x0

    .line 136
    if-gtz p1, :cond_0

    .line 137
    iget-object v0, p0, Lanet/channel/session/g;->a:Lanet/channel/session/f;

    iget-object v0, v0, Lanet/channel/session/f;->d:Lanet/channel/session/d;

    sget-object v1, Lanet/channel/entity/EventType;->DISCONNECTED:Lanet/channel/entity/EventType;

    new-instance v2, Lanet/channel/entity/d;

    sget-object v3, Lanet/channel/entity/EventType;->DISCONNECTED:Lanet/channel/entity/EventType;

    const-string v4, "Http connect fail"

    invoke-direct {v2, v3, v5, v4}, Lanet/channel/entity/d;-><init>(Lanet/channel/entity/EventType;ILjava/lang/String;)V

    invoke-static {v0, v1, v2}, Lanet/channel/session/d;->b(Lanet/channel/session/d;Lanet/channel/entity/EventType;Lanet/channel/entity/d;)V

    .line 141
    :cond_0
    :try_start_0
    const-string v0, "s-rt"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 142
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    iget-object v1, p0, Lanet/channel/session/g;->a:Lanet/channel/session/f;

    iget-object v1, v1, Lanet/channel/session/f;->b:Lanet/channel/statist/RequestStatistic;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lanet/channel/statist/RequestStatistic;->serverRT:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_1
    :goto_0
    iget-object v0, p0, Lanet/channel/session/g;->a:Lanet/channel/session/f;

    iget-object v0, v0, Lanet/channel/session/f;->c:Lanet/channel/RequestCb;

    invoke-interface {v0, p1, p2}, Lanet/channel/RequestCb;->onResponseCode(ILjava/util/Map;)V

    .line 148
    return-void

    .line 145
    :catch_0
    move-exception v0

    goto :goto_0
.end method
