.class Lanet/channel/strategy/d;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lanet/channel/strategy/StrategyInfoHolder;


# direct methods
.method constructor <init>(Lanet/channel/strategy/StrategyInfoHolder;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lanet/channel/strategy/d;->b:Lanet/channel/strategy/StrategyInfoHolder;

    iput-object p2, p0, Lanet/channel/strategy/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 102
    :try_start_0
    invoke-static {}, Lanet/channel/strategy/l;->b()[Ljava/io/File;

    move-result-object v2

    .line 103
    if-nez v2, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v1, v0

    .line 106
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    .line 107
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 108
    iget-object v4, p0, Lanet/channel/strategy/d;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lanet/channel/strategy/StrategyInfoHolder;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lanet/channel/strategy/StrategyInfoHolder;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 111
    iget-object v4, p0, Lanet/channel/strategy/d;->b:Lanet/channel/strategy/StrategyInfoHolder;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lanet/channel/strategy/StrategyInfoHolder;->a(Lanet/channel/strategy/StrategyInfoHolder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    add-int/lit8 v0, v0, 0x1

    .line 106
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 115
    :catch_0
    move-exception v0

    goto :goto_0
.end method
