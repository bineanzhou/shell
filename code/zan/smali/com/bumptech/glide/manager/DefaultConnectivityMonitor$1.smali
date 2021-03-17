.class Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "DefaultConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->a:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 20
    iget-object v0, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->a:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-static {v0}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->a(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)Z

    move-result v0

    .line 21
    iget-object v1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->a:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    iget-object v2, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->a:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-static {v2, p1}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->a(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;Landroid/content/Context;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->a(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;Z)Z

    .line 22
    iget-object v1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->a:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-static {v1}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->a(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 23
    iget-object v0, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->a:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-static {v0}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->b(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->a:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-static {v1}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->a(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;->a(Z)V

    .line 25
    :cond_0
    return-void
.end method
