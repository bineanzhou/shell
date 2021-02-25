.class Lcom/taobao/accs/net/j;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/net/i;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/i;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/taobao/accs/net/j;->a:Lcom/taobao/accs/net/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    invoke-interface {v0}, Lanet/channel/strategy/IStrategyInstance;->saveData()V

    .line 38
    return-void
.end method
