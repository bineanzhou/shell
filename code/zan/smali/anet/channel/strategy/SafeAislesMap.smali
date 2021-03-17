.class Lanet/channel/strategy/SafeAislesMap;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NO_RESULT:Ljava/lang/String; = "No_Result"


# instance fields
.field private a:Lanet/channel/strategy/utils/SerialLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lanet/channel/strategy/utils/SerialLruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient b:Lanet/channel/strategy/StrategyInfoHolder;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lanet/channel/strategy/SafeAislesMap;->a:Lanet/channel/strategy/utils/SerialLruCache;

    .line 22
    iput-object v0, p0, Lanet/channel/strategy/SafeAislesMap;->b:Lanet/channel/strategy/StrategyInfoHolder;

    .line 25
    invoke-virtual {p0}, Lanet/channel/strategy/SafeAislesMap;->a()V

    .line 26
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lanet/channel/strategy/utils/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 111
    :cond_1
    :goto_0
    return-object v0

    .line 94
    :cond_2
    iget-object v2, p0, Lanet/channel/strategy/SafeAislesMap;->a:Lanet/channel/strategy/utils/SerialLruCache;

    monitor-enter v2

    .line 95
    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/SafeAislesMap;->a:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/utils/SerialLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    if-nez v0, :cond_3

    .line 97
    iget-object v3, p0, Lanet/channel/strategy/SafeAislesMap;->a:Lanet/channel/strategy/utils/SerialLruCache;

    const-string v4, "No_Result"

    invoke-virtual {v3, p1, v4}, Lanet/channel/strategy/utils/SerialLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    if-nez v0, :cond_4

    .line 102
    iget-object v1, p0, Lanet/channel/strategy/SafeAislesMap;->b:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v1}, Lanet/channel/strategy/StrategyInfoHolder;->d()Lanet/channel/strategy/StrategyTable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lanet/channel/strategy/StrategyTable;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 103
    :cond_4
    const-string v2, "No_Result"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 104
    goto :goto_0
.end method

.method a()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lanet/channel/strategy/SafeAislesMap;->a:Lanet/channel/strategy/utils/SerialLruCache;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lanet/channel/strategy/utils/SerialLruCache;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lanet/channel/strategy/utils/SerialLruCache;-><init>(I)V

    iput-object v0, p0, Lanet/channel/strategy/SafeAislesMap;->a:Lanet/channel/strategy/utils/SerialLruCache;

    .line 36
    :cond_0
    return-void
.end method

.method a(Lanet/channel/strategy/StrategyInfoHolder;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lanet/channel/strategy/SafeAislesMap;->b:Lanet/channel/strategy/StrategyInfoHolder;

    .line 30
    return-void
.end method

.method a(Lanet/channel/strategy/k$c;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 39
    iget-object v0, p1, Lanet/channel/strategy/k$c;->c:[Lanet/channel/strategy/k$b;

    if-nez v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v4, p0, Lanet/channel/strategy/SafeAislesMap;->a:Lanet/channel/strategy/utils/SerialLruCache;

    monitor-enter v4

    move v1, v2

    move-object v0, v3

    .line 46
    :goto_1
    :try_start_0
    iget-object v5, p1, Lanet/channel/strategy/k$c;->c:[Lanet/channel/strategy/k$b;

    array-length v5, v5

    if-ge v1, v5, :cond_7

    .line 47
    iget-object v5, p1, Lanet/channel/strategy/k$c;->c:[Lanet/channel/strategy/k$b;

    aget-object v5, v5, v1

    .line 48
    iget-boolean v6, v5, Lanet/channel/strategy/k$b;->h:Z

    if-eqz v6, :cond_3

    .line 49
    iget-object v6, p0, Lanet/channel/strategy/SafeAislesMap;->a:Lanet/channel/strategy/utils/SerialLruCache;

    iget-object v5, v5, Lanet/channel/strategy/k$b;->a:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lanet/channel/strategy/utils/SerialLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 52
    :cond_3
    iget-boolean v6, v5, Lanet/channel/strategy/k$b;->j:Z

    if-nez v6, :cond_2

    .line 56
    iget-object v6, v5, Lanet/channel/strategy/k$b;->d:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 57
    if-nez v0, :cond_4

    .line 58
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 60
    :cond_4
    iget-object v6, v5, Lanet/channel/strategy/k$b;->a:Ljava/lang/String;

    iget-object v5, v5, Lanet/channel/strategy/k$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 64
    :cond_5
    :try_start_1
    const-string v6, "http"

    iget-object v7, v5, Lanet/channel/strategy/k$b;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "https"

    iget-object v7, v5, Lanet/channel/strategy/k$b;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 66
    iget-object v6, p0, Lanet/channel/strategy/SafeAislesMap;->a:Lanet/channel/strategy/utils/SerialLruCache;

    iget-object v5, v5, Lanet/channel/strategy/k$b;->a:Ljava/lang/String;

    const-string v7, "No_Result"

    invoke-virtual {v6, v5, v7}, Lanet/channel/strategy/utils/SerialLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 68
    :cond_6
    iget-object v6, p0, Lanet/channel/strategy/SafeAislesMap;->a:Lanet/channel/strategy/utils/SerialLruCache;

    iget-object v7, v5, Lanet/channel/strategy/k$b;->a:Ljava/lang/String;

    iget-object v5, v5, Lanet/channel/strategy/k$b;->c:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lanet/channel/strategy/utils/SerialLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 72
    :cond_7
    if-eqz v0, :cond_9

    .line 73
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    iget-object v6, p0, Lanet/channel/strategy/SafeAislesMap;->a:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-virtual {v6, v1}, Lanet/channel/strategy/utils/SerialLruCache;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 76
    iget-object v6, p0, Lanet/channel/strategy/SafeAislesMap;->a:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v7, p0, Lanet/channel/strategy/SafeAislesMap;->a:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-virtual {v7, v1}, Lanet/channel/strategy/utils/SerialLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lanet/channel/strategy/utils/SerialLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 78
    :cond_8
    iget-object v1, p0, Lanet/channel/strategy/SafeAislesMap;->a:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const-string v6, "No_Result"

    invoke-virtual {v1, v0, v6}, Lanet/channel/strategy/utils/SerialLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 82
    :cond_9
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    const/4 v0, 0x1

    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "awcn.SafeAislesMap"

    invoke-virtual {p0}, Lanet/channel/strategy/SafeAislesMap;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    iget-object v1, p0, Lanet/channel/strategy/SafeAislesMap;->a:Lanet/channel/strategy/utils/SerialLruCache;

    monitor-enter v1

    .line 117
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SafeAislesMap: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lanet/channel/strategy/SafeAislesMap;->a:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-virtual {v2}, Lanet/channel/strategy/utils/SerialLruCache;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
