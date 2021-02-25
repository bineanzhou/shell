.class final Lanetwork/channel/aidl/adapter/RemoteGetterHelper$2;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 144
    invoke-static {}, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {v3}, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->a(Z)Z

    .line 146
    const-string v0, "anet.RemoteGetter"

    const-string v1, "binding service timeout. reset status!"

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    :cond_0
    return-void
.end method
