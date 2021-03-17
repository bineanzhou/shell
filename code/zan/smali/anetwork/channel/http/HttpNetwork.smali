.class public Lanetwork/channel/http/HttpNetwork;
.super Lanetwork/channel/aidl/adapter/NetworkProxy;
.source "Taobao"


# static fields
.field protected static final d:Ljava/lang/String; = "anet.HttpNetwork"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lanetwork/channel/aidl/adapter/NetworkProxy;-><init>(Landroid/content/Context;I)V

    .line 11
    return-void
.end method
