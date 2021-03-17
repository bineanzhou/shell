.class public Lanetwork/channel/degrade/DegradableNetwork;
.super Lanetwork/channel/aidl/adapter/NetworkProxy;
.source "Taobao"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lanetwork/channel/aidl/adapter/NetworkProxy;-><init>(Landroid/content/Context;I)V

    .line 9
    return-void
.end method
