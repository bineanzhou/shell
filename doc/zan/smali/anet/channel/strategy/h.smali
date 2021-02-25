.class Lanet/channel/strategy/h;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanet/channel/strategy/g;


# direct methods
.method constructor <init>(Lanet/channel/strategy/g;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lanet/channel/strategy/h;->a:Lanet/channel/strategy/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lanet/channel/strategy/h;->a:Lanet/channel/strategy/g;

    invoke-static {v0}, Lanet/channel/strategy/g;->a(Lanet/channel/strategy/g;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lanet/channel/strategy/h;->a:Lanet/channel/strategy/g;

    iget-object v0, v0, Lanet/channel/strategy/g;->a:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyInfoHolder;->c()V

    .line 275
    :cond_0
    return-void
.end method
