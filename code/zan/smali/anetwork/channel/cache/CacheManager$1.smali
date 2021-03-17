.class final Lanetwork/channel/cache/CacheManager$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 45
    :try_start_0
    new-instance v0, Lanetwork/channel/cache/AVFSCacheImpl;

    invoke-direct {v0}, Lanetwork/channel/cache/AVFSCacheImpl;-><init>()V

    .line 46
    invoke-virtual {v0}, Lanetwork/channel/cache/AVFSCacheImpl;->a()V

    .line 48
    new-instance v1, Lanetwork/channel/cache/CacheManager$1$1;

    invoke-direct {v1, p0}, Lanetwork/channel/cache/CacheManager$1$1;-><init>(Lanetwork/channel/cache/CacheManager$1;)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lanetwork/channel/cache/CacheManager;->a(Lanetwork/channel/cache/Cache;Lanetwork/channel/cache/CachePrediction;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    goto :goto_0
.end method
