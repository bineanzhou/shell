.class final Lanet/channel/heartbeat/b;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/heartbeat/IHeartbeatFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createHeartbeat(Lanet/channel/Session;)Lanet/channel/heartbeat/IHeartbeat;
    .locals 1

    .prologue
    .line 17
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lanet/channel/Session;->getConnStrategy()Lanet/channel/strategy/IConnStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lanet/channel/Session;->getConnStrategy()Lanet/channel/strategy/IConnStrategy;

    move-result-object v0

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getHeartbeat()I

    move-result v0

    if-gtz v0, :cond_1

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lanet/channel/heartbeat/a;

    invoke-direct {v0, p1}, Lanet/channel/heartbeat/a;-><init>(Lanet/channel/Session;)V

    goto :goto_0
.end method
