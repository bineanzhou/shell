.class Lanet/channel/strategy/StrategyTable$HotHostLruCache;
.super Lanet/channel/strategy/utils/SerialLruCache;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/StrategyTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HotHostLruCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanet/channel/strategy/utils/SerialLruCache",
        "<",
        "Ljava/lang/String;",
        "Lanet/channel/strategy/StrategyCollection;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lanet/channel/strategy/utils/SerialLruCache;-><init>(I)V

    .line 60
    return-void
.end method


# virtual methods
.method protected a(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/StrategyCollection;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 64
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/StrategyCollection;

    iget-boolean v0, v0, Lanet/channel/strategy/StrategyCollection;->f:Z

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 68
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/StrategyCollection;

    iget-boolean v0, v0, Lanet/channel/strategy/StrategyCollection;->f:Z

    if-nez v0, :cond_1

    .line 70
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 71
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
