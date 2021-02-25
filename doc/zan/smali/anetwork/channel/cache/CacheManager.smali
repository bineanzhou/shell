.class public Lanetwork/channel/cache/CacheManager;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanetwork/channel/cache/CacheManager$CacheItem;
    }
.end annotation


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lanetwork/channel/cache/CacheManager$CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static final c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private static final d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lanetwork/channel/cache/CacheManager;->a:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lanetwork/channel/cache/CacheManager;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 37
    sget-object v0, Lanetwork/channel/cache/CacheManager;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    sput-object v0, Lanetwork/channel/cache/CacheManager;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 38
    sget-object v0, Lanetwork/channel/cache/CacheManager;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    sput-object v0, Lanetwork/channel/cache/CacheManager;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 41
    new-instance v0, Lanetwork/channel/cache/CacheManager$1;

    invoke-direct {v0}, Lanetwork/channel/cache/CacheManager$1;-><init>()V

    invoke-static {v0}, Lanet/channel/a/c;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)Lanetwork/channel/cache/Cache;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lanetwork/channel/cache/Cache;"
        }
    .end annotation

    .prologue
    .line 95
    :try_start_0
    sget-object v0, Lanetwork/channel/cache/CacheManager;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 96
    sget-object v0, Lanetwork/channel/cache/CacheManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/cache/CacheManager$CacheItem;

    .line 97
    iget-object v2, v0, Lanetwork/channel/cache/CacheManager$CacheItem;->b:Lanetwork/channel/cache/CachePrediction;

    .line 98
    invoke-interface {v2, p0, p1}, Lanetwork/channel/cache/CachePrediction;->a(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    iget-object v0, v0, Lanetwork/channel/cache/CacheManager$CacheItem;->a:Lanetwork/channel/cache/Cache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    sget-object v1, Lanetwork/channel/cache/CacheManager;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_0
    return-object v0

    .line 102
    :cond_1
    const/4 v0, 0x0

    .line 104
    sget-object v1, Lanetwork/channel/cache/CacheManager;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lanetwork/channel/cache/CacheManager;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public static a()V
    .locals 4

    .prologue
    .line 109
    const-string v0, "anet.CacheManager"

    const-string v1, "clearAllCache"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    sget-object v0, Lanetwork/channel/cache/CacheManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/cache/CacheManager$CacheItem;

    .line 112
    :try_start_0
    iget-object v0, v0, Lanetwork/channel/cache/CacheManager$CacheItem;->a:Lanetwork/channel/cache/Cache;

    invoke-interface {v0}, Lanetwork/channel/cache/Cache;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method public static a(Lanetwork/channel/cache/Cache;)V
    .locals 2

    .prologue
    .line 80
    :try_start_0
    sget-object v0, Lanetwork/channel/cache/CacheManager;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 81
    sget-object v0, Lanetwork/channel/cache/CacheManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 82
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/cache/CacheManager$CacheItem;

    iget-object v0, v0, Lanetwork/channel/cache/CacheManager$CacheItem;->a:Lanetwork/channel/cache/Cache;

    if-ne v0, p0, :cond_0

    .line 84
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_1
    sget-object v0, Lanetwork/channel/cache/CacheManager;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 91
    return-void

    .line 89
    :catchall_0
    move-exception v0

    sget-object v1, Lanetwork/channel/cache/CacheManager;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public static a(Lanetwork/channel/cache/Cache;Lanetwork/channel/cache/CachePrediction;I)V
    .locals 2

    .prologue
    .line 62
    if-nez p0, :cond_0

    .line 63
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cache is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :catchall_0
    move-exception v0

    sget-object v1, Lanetwork/channel/cache/CacheManager;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    .line 66
    :cond_0
    if-nez p1, :cond_1

    .line 67
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "prediction is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    sget-object v0, Lanetwork/channel/cache/CacheManager;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 71
    sget-object v0, Lanetwork/channel/cache/CacheManager;->a:Ljava/util/List;

    new-instance v1, Lanetwork/channel/cache/CacheManager$CacheItem;

    invoke-direct {v1, p0, p1, p2}, Lanetwork/channel/cache/CacheManager$CacheItem;-><init>(Lanetwork/channel/cache/Cache;Lanetwork/channel/cache/CachePrediction;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lanetwork/channel/cache/CacheManager;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    sget-object v0, Lanetwork/channel/cache/CacheManager;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 76
    return-void
.end method
