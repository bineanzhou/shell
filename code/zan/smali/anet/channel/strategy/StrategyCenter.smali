.class public Lanet/channel/strategy/StrategyCenter;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static volatile instance:Lanet/channel/strategy/IStrategyInstance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lanet/channel/strategy/StrategyCenter;->instance:Lanet/channel/strategy/IStrategyInstance;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static getInstance()Lanet/channel/strategy/IStrategyInstance;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lanet/channel/strategy/StrategyCenter;->instance:Lanet/channel/strategy/IStrategyInstance;

    if-nez v0, :cond_1

    .line 15
    const-class v1, Lanet/channel/strategy/StrategyCenter;

    monitor-enter v1

    .line 16
    :try_start_0
    sget-object v0, Lanet/channel/strategy/StrategyCenter;->instance:Lanet/channel/strategy/IStrategyInstance;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lanet/channel/strategy/g;

    invoke-direct {v0}, Lanet/channel/strategy/g;-><init>()V

    sput-object v0, Lanet/channel/strategy/StrategyCenter;->instance:Lanet/channel/strategy/IStrategyInstance;

    .line 19
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_1
    sget-object v0, Lanet/channel/strategy/StrategyCenter;->instance:Lanet/channel/strategy/IStrategyInstance;

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setInstance(Lanet/channel/strategy/IStrategyInstance;)V
    .locals 0

    .prologue
    .line 25
    sput-object p0, Lanet/channel/strategy/StrategyCenter;->instance:Lanet/channel/strategy/IStrategyInstance;

    .line 26
    return-void
.end method
