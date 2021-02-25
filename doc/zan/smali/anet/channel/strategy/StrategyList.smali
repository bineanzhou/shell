.class Lanet/channel/strategy/StrategyList;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/StrategyList$Predicate;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lanet/channel/strategy/IPConnStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lanet/channel/strategy/ConnHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private transient d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lanet/channel/strategy/IPConnStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->b:Ljava/util/Map;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanet/channel/strategy/StrategyList;->c:Z

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->d:Ljava/util/Comparator;

    .line 30
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lanet/channel/strategy/IPConnStrategy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->b:Ljava/util/Map;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanet/channel/strategy/StrategyList;->c:Z

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->d:Ljava/util/Comparator;

    .line 33
    iput-object p1, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    .line 34
    return-void
.end method

.method private static a(Ljava/util/Collection;Lanet/channel/strategy/StrategyList$Predicate;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Lanet/channel/strategy/StrategyList$Predicate",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 201
    if-nez p0, :cond_0

    .line 211
    :goto_0
    return v1

    .line 204
    :cond_0
    const/4 v0, 0x0

    .line 205
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 206
    invoke-interface {p1, v3}, Lanet/channel/strategy/StrategyList$Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 211
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    move v0, v1

    :cond_2
    move v1, v0

    goto :goto_0

    .line 209
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 210
    goto :goto_1
.end method

.method private a()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->d:Ljava/util/Comparator;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lanet/channel/strategy/j;

    invoke-direct {v0, p0}, Lanet/channel/strategy/j;-><init>(Lanet/channel/strategy/StrategyList;)V

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->d:Ljava/util/Comparator;

    .line 195
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->d:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic a(Lanet/channel/strategy/StrategyList;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->b:Ljava/util/Map;

    return-object v0
.end method

.method private a(Ljava/lang/String;ILanet/channel/strategy/k$a;)V
    .locals 4

    .prologue
    .line 120
    invoke-static {p3}, Lanet/channel/strategy/ConnProtocol;->valueOf(Lanet/channel/strategy/k$a;)Lanet/channel/strategy/ConnProtocol;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    new-instance v2, Lanet/channel/strategy/i;

    invoke-direct {v2, p0, p3, p1, v0}, Lanet/channel/strategy/i;-><init>(Lanet/channel/strategy/StrategyList;Lanet/channel/strategy/k$a;Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;)V

    invoke-static {v1, v2}, Lanet/channel/strategy/StrategyList;->a(Ljava/util/Collection;Lanet/channel/strategy/StrategyList$Predicate;)I

    move-result v0

    .line 129
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 130
    iget-object v1, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/IPConnStrategy;

    .line 131
    iget v1, p3, Lanet/channel/strategy/k$a;->c:I

    iput v1, v0, Lanet/channel/strategy/IPConnStrategy;->cto:I

    .line 132
    iget v1, p3, Lanet/channel/strategy/k$a;->d:I

    iput v1, v0, Lanet/channel/strategy/IPConnStrategy;->rto:I

    .line 133
    iget v1, p3, Lanet/channel/strategy/k$a;->f:I

    iput v1, v0, Lanet/channel/strategy/IPConnStrategy;->heartbeat:I

    .line 134
    iput p2, v0, Lanet/channel/strategy/IPConnStrategy;->a:I

    .line 135
    const/4 v1, 0x0

    iput-boolean v1, v0, Lanet/channel/strategy/IPConnStrategy;->b:Z

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-static {p1, p3}, Lanet/channel/strategy/IPConnStrategy;->a(Ljava/lang/String;Lanet/channel/strategy/k$a;)Lanet/channel/strategy/IPConnStrategy;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_0

    .line 139
    iput p2, v0, Lanet/channel/strategy/IPConnStrategy;->a:I

    .line 140
    iget-object v1, p0, Lanet/channel/strategy/StrategyList;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 141
    iget-object v1, p0, Lanet/channel/strategy/StrategyList;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lanet/channel/strategy/ConnHistoryItem;

    invoke-direct {v3}, Lanet/channel/strategy/ConnHistoryItem;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_2
    iget-object v1, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public checkInit()V
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    .line 40
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->b:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->b:Ljava/util/Map;

    .line 45
    :cond_1
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 46
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/ConnHistoryItem;

    invoke-virtual {v0}, Lanet/channel/strategy/ConnHistoryItem;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 53
    :cond_3
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/IPConnStrategy;

    .line 54
    iget-object v2, p0, Lanet/channel/strategy/StrategyList;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 55
    iget-object v2, p0, Lanet/channel/strategy/StrategyList;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Lanet/channel/strategy/ConnHistoryItem;

    invoke-direct {v3}, Lanet/channel/strategy/ConnHistoryItem;-><init>()V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 60
    :cond_5
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    invoke-direct {p0}, Lanet/channel/strategy/StrategyList;->a()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 61
    return-void
.end method

.method public getStrategyList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 68
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 86
    :cond_0
    :goto_0
    return-object v2

    .line 73
    :cond_1
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v3

    .line 74
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/IPConnStrategy;

    .line 76
    iget-object v1, p0, Lanet/channel/strategy/StrategyList;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/ConnHistoryItem;

    .line 77
    invoke-virtual {v1}, Lanet/channel/strategy/ConnHistoryItem;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    const-string v1, "awcn.StrategyList"

    const-string v5, "strategy ban!"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "strategy"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v1, v5, v3, v6}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 80
    :cond_2
    if-nez v2, :cond_4

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    :goto_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    goto :goto_1

    .line 86
    :cond_3
    if-nez v2, :cond_0

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_4
    move-object v1, v2

    goto :goto_2
.end method

.method public notifyConnEvent(Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V
    .locals 2

    .prologue
    .line 162
    instance-of v0, p1, Lanet/channel/strategy/IPConnStrategy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 164
    check-cast p1, Lanet/channel/strategy/IPConnStrategy;

    .line 165
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/ConnHistoryItem;

    iget-boolean v1, p2, Lanet/channel/strategy/ConnEvent;->isSuccess:Z

    invoke-virtual {v0, v1}, Lanet/channel/strategy/ConnHistoryItem;->a(Z)V

    .line 166
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    iget-object v1, p0, Lanet/channel/strategy/StrategyList;->d:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 168
    :cond_0
    return-void
.end method

.method public shouldRefresh()Z
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/IPConnStrategy;

    .line 151
    iget-boolean v2, p0, Lanet/channel/strategy/StrategyList;->c:Z

    if-eqz v2, :cond_1

    iget v2, v0, Lanet/channel/strategy/IPConnStrategy;->a:I

    if-nez v2, :cond_0

    .line 154
    :cond_1
    iget-object v2, p0, Lanet/channel/strategy/StrategyList;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/ConnHistoryItem;

    invoke-virtual {v0}, Lanet/channel/strategy/ConnHistoryItem;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 158
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lanet/channel/strategy/k$b;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/IPConnStrategy;

    .line 91
    iput-boolean v5, v0, Lanet/channel/strategy/IPConnStrategy;->b:Z

    goto :goto_0

    :cond_0
    move v0, v1

    .line 94
    :goto_1
    iget-object v2, p1, Lanet/channel/strategy/k$b;->g:[Lanet/channel/strategy/k$a;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    move v2, v1

    .line 95
    :goto_2
    iget-object v3, p1, Lanet/channel/strategy/k$b;->e:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 96
    iget-object v3, p1, Lanet/channel/strategy/k$b;->e:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p1, Lanet/channel/strategy/k$b;->g:[Lanet/channel/strategy/k$a;

    aget-object v4, v4, v0

    invoke-direct {p0, v3, v5, v4}, Lanet/channel/strategy/StrategyList;->a(Ljava/lang/String;ILanet/channel/strategy/k$a;)V

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 98
    :cond_1
    iget-object v2, p1, Lanet/channel/strategy/k$b;->f:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 99
    iput-boolean v5, p0, Lanet/channel/strategy/StrategyList;->c:Z

    move v2, v1

    .line 100
    :goto_3
    iget-object v3, p1, Lanet/channel/strategy/k$b;->f:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 101
    iget-object v3, p1, Lanet/channel/strategy/k$b;->f:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p1, Lanet/channel/strategy/k$b;->g:[Lanet/channel/strategy/k$a;

    aget-object v4, v4, v0

    invoke-direct {p0, v3, v1, v4}, Lanet/channel/strategy/StrategyList;->a(Ljava/lang/String;ILanet/channel/strategy/k$a;)V

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 104
    :cond_2
    iput-boolean v1, p0, Lanet/channel/strategy/StrategyList;->c:Z

    .line 94
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 109
    :cond_4
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 110
    :cond_5
    :goto_4
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 111
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/IPConnStrategy;

    iget-boolean v0, v0, Lanet/channel/strategy/IPConnStrategy;->b:Z

    if-eqz v0, :cond_5

    .line 112
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_4

    .line 116
    :cond_6
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    invoke-direct {p0}, Lanet/channel/strategy/StrategyList;->a()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 117
    return-void
.end method
