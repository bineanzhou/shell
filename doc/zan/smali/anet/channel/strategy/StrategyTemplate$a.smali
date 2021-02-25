.class Lanet/channel/strategy/StrategyTemplate$a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/StrategyTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Lanet/channel/strategy/StrategyTemplate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lanet/channel/strategy/StrategyTemplate;

    invoke-direct {v0}, Lanet/channel/strategy/StrategyTemplate;-><init>()V

    sput-object v0, Lanet/channel/strategy/StrategyTemplate$a;->a:Lanet/channel/strategy/StrategyTemplate;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
