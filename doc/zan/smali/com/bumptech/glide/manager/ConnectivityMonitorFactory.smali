.class public Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;
.super Ljava/lang/Object;
.source "ConnectivityMonitorFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)Lcom/bumptech/glide/manager/ConnectivityMonitor;
    .locals 1

    .prologue
    .line 13
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 14
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    new-instance v0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V

    .line 18
    :goto_1
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 18
    :cond_1
    new-instance v0, Lcom/bumptech/glide/manager/NullConnectivityMonitor;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/NullConnectivityMonitor;-><init>()V

    goto :goto_1
.end method
