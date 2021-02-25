.class public Lanet/channel/flow/c;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static volatile a:Lanet/channel/flow/INetworkAnalysis;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lanet/channel/flow/a;

    invoke-direct {v0}, Lanet/channel/flow/a;-><init>()V

    sput-object v0, Lanet/channel/flow/c;->a:Lanet/channel/flow/INetworkAnalysis;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lanet/channel/flow/INetworkAnalysis;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lanet/channel/flow/c;->a:Lanet/channel/flow/INetworkAnalysis;

    return-object v0
.end method
