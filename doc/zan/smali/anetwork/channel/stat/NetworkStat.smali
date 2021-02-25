.class public Lanetwork/channel/stat/NetworkStat;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lanetwork/channel/stat/INetworkStat;
    .locals 1

    .prologue
    .line 9
    invoke-static {}, Lanetwork/channel/stat/NetworkStatCache;->a()Lanetwork/channel/stat/NetworkStatCache;

    move-result-object v0

    return-object v0
.end method
