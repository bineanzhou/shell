.class Lanet/channel/strategy/f;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lanet/channel/strategy/StrategyInfoHolder$LruStrategyMap;


# direct methods
.method constructor <init>(Lanet/channel/strategy/StrategyInfoHolder$LruStrategyMap;Ljava/util/Map$Entry;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lanet/channel/strategy/f;->b:Lanet/channel/strategy/StrategyInfoHolder$LruStrategyMap;

    iput-object p2, p0, Lanet/channel/strategy/f;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lanet/channel/strategy/f;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    iget-object v1, p0, Lanet/channel/strategy/f;->a:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/StrategyTable;

    iget-object v1, v1, Lanet/channel/strategy/StrategyTable;->a:Ljava/lang/String;

    invoke-static {v1}, Lanet/channel/strategy/StrategyInfoHolder;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lanet/channel/strategy/l;->a(Ljava/io/Serializable;Ljava/lang/String;)V

    .line 246
    return-void
.end method
