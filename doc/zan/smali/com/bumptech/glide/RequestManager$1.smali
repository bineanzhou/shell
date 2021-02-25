.class Lcom/bumptech/glide/RequestManager$1;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/RequestManager;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/manager/Lifecycle;

.field final synthetic b:Lcom/bumptech/glide/RequestManager;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/manager/Lifecycle;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/bumptech/glide/RequestManager$1;->b:Lcom/bumptech/glide/RequestManager;

    iput-object p2, p0, Lcom/bumptech/glide/RequestManager$1;->a:Lcom/bumptech/glide/manager/Lifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager$1;->a:Lcom/bumptech/glide/manager/Lifecycle;

    iget-object v1, p0, Lcom/bumptech/glide/RequestManager$1;->b:Lcom/bumptech/glide/RequestManager;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/Lifecycle;->a(Lcom/bumptech/glide/manager/LifecycleListener;)V

    .line 76
    return-void
.end method
