.class public Lcom/bumptech/glide/RequestManager;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/bumptech/glide/manager/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;,
        Lcom/bumptech/glide/RequestManager$OptionsApplier;,
        Lcom/bumptech/glide/RequestManager$GenericModelRequest;,
        Lcom/bumptech/glide/RequestManager$ImageModelRequest;,
        Lcom/bumptech/glide/RequestManager$VideoModelRequest;,
        Lcom/bumptech/glide/RequestManager$DefaultOptions;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/bumptech/glide/manager/Lifecycle;

.field private final c:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

.field private final d:Lcom/bumptech/glide/manager/RequestTracker;

.field private final e:Lcom/bumptech/glide/Glide;

.field private final f:Lcom/bumptech/glide/RequestManager$OptionsApplier;

.field private g:Lcom/bumptech/glide/RequestManager$DefaultOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;)V
    .locals 6

    .prologue
    .line 53
    new-instance v4, Lcom/bumptech/glide/manager/RequestTracker;

    invoke-direct {v4}, Lcom/bumptech/glide/manager/RequestTracker;-><init>()V

    new-instance v5, Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    invoke-direct {v5}, Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/RequestManager;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;)V

    .line 54
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;)V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/RequestManager;->a:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/bumptech/glide/RequestManager;->b:Lcom/bumptech/glide/manager/Lifecycle;

    .line 60
    iput-object p3, p0, Lcom/bumptech/glide/RequestManager;->c:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    .line 61
    iput-object p4, p0, Lcom/bumptech/glide/RequestManager;->d:Lcom/bumptech/glide/manager/RequestTracker;

    .line 62
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/RequestManager;->e:Lcom/bumptech/glide/Glide;

    .line 63
    new-instance v0, Lcom/bumptech/glide/RequestManager$OptionsApplier;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/RequestManager$OptionsApplier;-><init>(Lcom/bumptech/glide/RequestManager;)V

    iput-object v0, p0, Lcom/bumptech/glide/RequestManager;->f:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    .line 65
    new-instance v0, Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;

    invoke-direct {v0, p4}, Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;-><init>(Lcom/bumptech/glide/manager/RequestTracker;)V

    invoke-virtual {p5, p1, v0}, Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;->a(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)Lcom/bumptech/glide/manager/ConnectivityMonitor;

    move-result-object v0

    .line 71
    invoke-static {}, Lcom/bumptech/glide/util/Util;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/bumptech/glide/RequestManager$1;

    invoke-direct {v2, p0, p2}, Lcom/bumptech/glide/RequestManager$1;-><init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/manager/Lifecycle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    :goto_0
    invoke-interface {p2, v0}, Lcom/bumptech/glide/manager/Lifecycle;->a(Lcom/bumptech/glide/manager/LifecycleListener;)V

    .line 82
    return-void

    .line 79
    :cond_0
    invoke-interface {p2, p0}, Lcom/bumptech/glide/manager/Lifecycle;->a(Lcom/bumptech/glide/manager/LifecycleListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/bumptech/glide/RequestManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 625
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/bumptech/glide/Glide;->a(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v2

    .line 626
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/bumptech/glide/Glide;->b(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v3

    .line 628
    if-eqz p1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 629
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". You must provide a Model of a type for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " which there is a registered ModelLoader, if you are using a custom model, you must first call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Glide#register with a ModelLoaderFactory for your custom model class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_0
    iget-object v9, p0, Lcom/bumptech/glide/RequestManager;->f:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    new-instance v0, Lcom/bumptech/glide/DrawableTypeRequest;

    iget-object v4, p0, Lcom/bumptech/glide/RequestManager;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/bumptech/glide/RequestManager;->e:Lcom/bumptech/glide/Glide;

    iget-object v6, p0, Lcom/bumptech/glide/RequestManager;->d:Lcom/bumptech/glide/manager/RequestTracker;

    iget-object v7, p0, Lcom/bumptech/glide/RequestManager;->b:Lcom/bumptech/glide/manager/Lifecycle;

    iget-object v8, p0, Lcom/bumptech/glide/RequestManager;->f:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/DrawableTypeRequest;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V

    invoke-virtual {v9, v0}, Lcom/bumptech/glide/RequestManager$OptionsApplier;->a(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method static synthetic b(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/Glide;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->e:Lcom/bumptech/glide/Glide;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 43
    invoke-static {p0}, Lcom/bumptech/glide/RequestManager;->c(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/manager/RequestTracker;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->d:Lcom/bumptech/glide/manager/RequestTracker;

    return-object v0
.end method

.method private static c(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 641
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/manager/Lifecycle;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->b:Lcom/bumptech/glide/manager/Lifecycle;

    return-object v0
.end method

.method static synthetic e(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$OptionsApplier;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->f:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    return-object v0
.end method

.method static synthetic f(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$DefaultOptions;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->g:Lcom/bumptech/glide/RequestManager$DefaultOptions;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->k()Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;JI)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "JI)",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 368
    new-instance v0, Lcom/bumptech/glide/signature/MediaStoreSignature;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/bumptech/glide/signature/MediaStoreSignature;-><init>(Ljava/lang/String;JI)V

    .line 369
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->b(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public a(Ljava/io/File;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->m()Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 621
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestManager;->b(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->n()Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 598
    invoke-static {p1}, Lcom/bumptech/glide/RequestManager;->c(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/RequestManager;->b(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->j()Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public a(Ljava/net/URL;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->o()Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public a([B)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->p()Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public a([BLjava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<[B>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 549
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->a([B)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/signature/StringSignature;

    invoke-direct {v1, p2}, Lcom/bumptech/glide/signature/StringSignature;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;)Lcom/bumptech/glide/RequestManager$GenericModelRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bumptech/glide/RequestManager$GenericModelRequest",
            "<TA;TT;>;"
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Lcom/bumptech/glide/RequestManager$GenericModelRequest;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/RequestManager$GenericModelRequest;-><init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;)V

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader;)Lcom/bumptech/glide/RequestManager$ImageModelRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader;",
            ")",
            "Lcom/bumptech/glide/RequestManager$ImageModelRequest",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 260
    new-instance v0, Lcom/bumptech/glide/RequestManager$ImageModelRequest;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/RequestManager$ImageModelRequest;-><init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/load/model/ModelLoader;)V

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/model/stream/StreamModelLoader;)Lcom/bumptech/glide/RequestManager$ImageModelRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/model/stream/StreamModelLoader",
            "<TT;>;)",
            "Lcom/bumptech/glide/RequestManager$ImageModelRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Lcom/bumptech/glide/RequestManager$ImageModelRequest;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/RequestManager$ImageModelRequest;-><init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/load/model/ModelLoader;)V

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorModelLoader;)Lcom/bumptech/glide/RequestManager$VideoModelRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorModelLoader",
            "<TT;>;)",
            "Lcom/bumptech/glide/RequestManager$VideoModelRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 271
    new-instance v0, Lcom/bumptech/glide/RequestManager$VideoModelRequest;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/RequestManager$VideoModelRequest;-><init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/load/model/ModelLoader;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->e:Lcom/bumptech/glide/Glide;

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->k()V

    .line 96
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->e:Lcom/bumptech/glide/Glide;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Glide;->a(I)V

    .line 89
    return-void
.end method

.method public a(Lcom/bumptech/glide/RequestManager$DefaultOptions;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/bumptech/glide/RequestManager;->g:Lcom/bumptech/glide/RequestManager$DefaultOptions;

    .line 127
    return-void
.end method

.method public b(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->l()Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lcom/bumptech/glide/util/Util;->a()V

    .line 137
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->d:Lcom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestTracker;->a()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcom/bumptech/glide/util/Util;->a()V

    .line 148
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->d:Lcom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestTracker;->b()V

    .line 149
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 165
    invoke-static {}, Lcom/bumptech/glide/util/Util;->a()V

    .line 166
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->c()V

    .line 167
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->c:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    invoke-interface {v0}, Lcom/bumptech/glide/manager/RequestManagerTreeNode;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestManager;

    .line 168
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->c()V

    goto :goto_0

    .line 170
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lcom/bumptech/glide/util/Util;->a()V

    .line 180
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->d:Lcom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestTracker;->c()V

    .line 181
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 189
    invoke-static {}, Lcom/bumptech/glide/util/Util;->a()V

    .line 190
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->e()V

    .line 191
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->c:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    invoke-interface {v0}, Lcom/bumptech/glide/manager/RequestManagerTreeNode;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestManager;

    .line 192
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->e()V

    goto :goto_0

    .line 194
    :cond_0
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->e()V

    .line 204
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->c()V

    .line 213
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->d:Lcom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestTracker;->d()V

    .line 222
    return-void
.end method

.method public j()Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/RequestManager;->b(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    const-class v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/RequestManager;->b(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    const-class v0, Landroid/net/Uri;

    iget-object v1, p0, Lcom/bumptech/glide/RequestManager;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bumptech/glide/Glide;->a(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    .line 414
    new-instance v2, Lcom/bumptech/glide/load/model/stream/MediaStoreStreamLoader;

    iget-object v1, p0, Lcom/bumptech/glide/RequestManager;->a:Landroid/content/Context;

    invoke-direct {v2, v1, v0}, Lcom/bumptech/glide/load/model/stream/MediaStoreStreamLoader;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;)V

    .line 415
    const-class v0, Landroid/net/Uri;

    iget-object v1, p0, Lcom/bumptech/glide/RequestManager;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bumptech/glide/Glide;->b(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v3

    .line 418
    iget-object v9, p0, Lcom/bumptech/glide/RequestManager;->f:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    new-instance v0, Lcom/bumptech/glide/DrawableTypeRequest;

    const-class v1, Landroid/net/Uri;

    iget-object v4, p0, Lcom/bumptech/glide/RequestManager;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/bumptech/glide/RequestManager;->e:Lcom/bumptech/glide/Glide;

    iget-object v6, p0, Lcom/bumptech/glide/RequestManager;->d:Lcom/bumptech/glide/manager/RequestTracker;

    iget-object v7, p0, Lcom/bumptech/glide/RequestManager;->b:Lcom/bumptech/glide/manager/Lifecycle;

    iget-object v8, p0, Lcom/bumptech/glide/RequestManager;->f:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/DrawableTypeRequest;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V

    invoke-virtual {v9, v0}, Lcom/bumptech/glide/RequestManager$OptionsApplier;->a(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public m()Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    const-class v0, Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/RequestManager;->b(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/RequestManager;->b(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/RequestManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->a(Landroid/content/Context;)Lcom/bumptech/glide/load/Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public o()Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 527
    const-class v0, Ljava/net/URL;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/RequestManager;->b(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    return-object v0
.end method

.method public p()Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 576
    const-class v0, [B

    invoke-direct {p0, v0}, Lcom/bumptech/glide/RequestManager;->b(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/signature/StringSignature;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bumptech/glide/signature/StringSignature;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Z)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method
