.class Lanet/channel/h;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/entity/EventCb;


# instance fields
.field final synthetic a:Lanet/channel/Session;

.field final synthetic b:Lanet/channel/SessionRequest;


# direct methods
.method constructor <init>(Lanet/channel/SessionRequest;Lanet/channel/Session;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lanet/channel/h;->b:Lanet/channel/SessionRequest;

    iput-object p2, p0, Lanet/channel/h;->a:Lanet/channel/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lanet/channel/Session;Lanet/channel/entity/EventType;Lanet/channel/entity/d;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 433
    const-string v0, "awcn.SessionRequest"

    const-string v1, "Receive session event"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "type"

    aput-object v5, v3, v4

    aput-object p2, v3, v6

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    new-instance v0, Lanet/channel/strategy/ConnEvent;

    invoke-direct {v0}, Lanet/channel/strategy/ConnEvent;-><init>()V

    .line 436
    sget-object v1, Lanet/channel/entity/EventType;->AUTH_SUCC:Lanet/channel/entity/EventType;

    if-ne p2, v1, :cond_0

    .line 437
    iput-boolean v6, v0, Lanet/channel/strategy/ConnEvent;->isSuccess:Z

    .line 439
    :cond_0
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v1

    iget-object v2, p0, Lanet/channel/h;->a:Lanet/channel/Session;

    invoke-virtual {v2}, Lanet/channel/Session;->getRealHost()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lanet/channel/h;->a:Lanet/channel/Session;

    invoke-virtual {v3}, Lanet/channel/Session;->getConnStrategy()Lanet/channel/strategy/IConnStrategy;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lanet/channel/strategy/IStrategyInstance;->notifyConnEvent(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V

    .line 440
    return-void
.end method
