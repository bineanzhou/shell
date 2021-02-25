.class Lanet/channel/strategy/dispatch/HttpDispatcher$Singleton;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/dispatch/HttpDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field static instance:Lanet/channel/strategy/dispatch/HttpDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lanet/channel/strategy/dispatch/HttpDispatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanet/channel/strategy/dispatch/HttpDispatcher;-><init>(Lanet/channel/strategy/dispatch/HttpDispatcher$1;)V

    sput-object v0, Lanet/channel/strategy/dispatch/HttpDispatcher$Singleton;->instance:Lanet/channel/strategy/dispatch/HttpDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
