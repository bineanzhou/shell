.class Lcom/umeng/commonsdk/statistics/proto/d$c;
.super Lcom/umeng/commonsdk/proguard/av;
.source "Imprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/commonsdk/proguard/av",
        "<",
        "Lcom/umeng/commonsdk/statistics/proto/d;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/av;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/d$1;)V
    .locals 0

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/d$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/proguard/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .prologue
    .line 490
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/d$c;->a(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/statistics/proto/d;)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/statistics/proto/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .prologue
    .line 495
    check-cast p1, Lcom/umeng/commonsdk/proguard/aq;

    .line 497
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/aq;->a(I)V

    .line 498
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 499
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/umeng/commonsdk/proguard/aq;->a(Ljava/lang/String;)V

    .line 500
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/proto/e;->write(Lcom/umeng/commonsdk/proguard/ak;)V

    goto :goto_0

    .line 503
    :cond_0
    iget v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/aq;->a(I)V

    .line 504
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/aq;->a(Ljava/lang/String;)V

    .line 505
    return-void
.end method

.method public bridge synthetic b(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/proguard/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .prologue
    .line 490
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/d$c;->b(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/statistics/proto/d;)V

    return-void
.end method

.method public b(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/statistics/proto/d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 510
    check-cast p1, Lcom/umeng/commonsdk/proguard/aq;

    .line 512
    new-instance v1, Lcom/umeng/commonsdk/proguard/ah;

    const/16 v0, 0xb

    const/16 v2, 0xc

    .line 514
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/aq;->w()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/umeng/commonsdk/proguard/ah;-><init>(BBI)V

    .line 515
    new-instance v0, Ljava/util/HashMap;

    iget v2, v1, Lcom/umeng/commonsdk/proguard/ah;->c:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    .line 516
    const/4 v0, 0x0

    :goto_0
    iget v2, v1, Lcom/umeng/commonsdk/proguard/ah;->c:I

    if-ge v0, v2, :cond_0

    .line 519
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/aq;->z()Ljava/lang/String;

    move-result-object v2

    .line 520
    new-instance v3, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-direct {v3}, Lcom/umeng/commonsdk/statistics/proto/e;-><init>()V

    .line 521
    invoke-virtual {v3, p1}, Lcom/umeng/commonsdk/statistics/proto/e;->read(Lcom/umeng/commonsdk/proguard/ak;)V

    .line 522
    iget-object v4, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 525
    :cond_0
    invoke-virtual {p2, v5}, Lcom/umeng/commonsdk/statistics/proto/d;->a(Z)V

    .line 526
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/aq;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    .line 527
    invoke-virtual {p2, v5}, Lcom/umeng/commonsdk/statistics/proto/d;->b(Z)V

    .line 528
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/aq;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    .line 529
    invoke-virtual {p2, v5}, Lcom/umeng/commonsdk/statistics/proto/d;->c(Z)V

    .line 530
    return-void
.end method
