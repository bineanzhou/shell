.class Lanet/channel/strategy/i;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/strategy/StrategyList$Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lanet/channel/strategy/StrategyList$Predicate",
        "<",
        "Lanet/channel/strategy/IPConnStrategy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanet/channel/strategy/k$a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lanet/channel/strategy/ConnProtocol;

.field final synthetic d:Lanet/channel/strategy/StrategyList;


# direct methods
.method constructor <init>(Lanet/channel/strategy/StrategyList;Lanet/channel/strategy/k$a;Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lanet/channel/strategy/i;->d:Lanet/channel/strategy/StrategyList;

    iput-object p2, p0, Lanet/channel/strategy/i;->a:Lanet/channel/strategy/k$a;

    iput-object p3, p0, Lanet/channel/strategy/i;->b:Ljava/lang/String;

    iput-object p4, p0, Lanet/channel/strategy/i;->c:Lanet/channel/strategy/ConnProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lanet/channel/strategy/IPConnStrategy;)Z
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p1}, Lanet/channel/strategy/IPConnStrategy;->getPort()I

    move-result v0

    iget-object v1, p0, Lanet/channel/strategy/i;->a:Lanet/channel/strategy/k$a;

    iget v1, v1, Lanet/channel/strategy/k$a;->a:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lanet/channel/strategy/IPConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lanet/channel/strategy/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lanet/channel/strategy/IPConnStrategy;->protocol:Lanet/channel/strategy/ConnProtocol;

    iget-object v1, p0, Lanet/channel/strategy/i;->c:Lanet/channel/strategy/ConnProtocol;

    invoke-virtual {v0, v1}, Lanet/channel/strategy/ConnProtocol;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 121
    check-cast p1, Lanet/channel/strategy/IPConnStrategy;

    invoke-virtual {p0, p1}, Lanet/channel/strategy/i;->a(Lanet/channel/strategy/IPConnStrategy;)Z

    move-result v0

    return v0
.end method
