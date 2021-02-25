.class public Lanet/channel/strategy/StrategyTemplate;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/StrategyTemplate$a;
    }
.end annotation


# instance fields
.field templateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/ConnProtocol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyTemplate;->templateMap:Ljava/util/Map;

    .line 18
    return-void
.end method

.method public static getInstance()Lanet/channel/strategy/StrategyTemplate;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lanet/channel/strategy/StrategyTemplate$a;->a:Lanet/channel/strategy/StrategyTemplate;

    return-object v0
.end method


# virtual methods
.method public getConnProtocol(Ljava/lang/String;)Lanet/channel/strategy/ConnProtocol;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lanet/channel/strategy/StrategyTemplate;->templateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/ConnProtocol;

    return-object v0
.end method

.method public registerConnProtocol(Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;)V
    .locals 1

    .prologue
    .line 23
    if-eqz p2, :cond_0

    .line 24
    iget-object v0, p0, Lanet/channel/strategy/StrategyTemplate;->templateMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_0
    return-void
.end method
