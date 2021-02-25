.class public Lanetwork/channel/http/HttpNetworkDelegate;
.super Lanetwork/channel/unified/UnifiedNetworkDelegate;
.source "Taobao"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lanetwork/channel/unified/UnifiedNetworkDelegate;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lanetwork/channel/http/HttpNetworkDelegate;->f:I

    .line 11
    return-void
.end method
