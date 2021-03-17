.class Lcom/umeng/commonsdk/statistics/proto/c$c;
.super Lcom/umeng/commonsdk/proguard/av;
.source "IdTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/commonsdk/proguard/av",
        "<",
        "Lcom/umeng/commonsdk/statistics/proto/c;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/av;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/c$1;)V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/c$c;-><init>()V

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
    .line 532
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/c$c;->a(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/statistics/proto/c;)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/statistics/proto/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .prologue
    .line 537
    check-cast p1, Lcom/umeng/commonsdk/proguard/aq;

    .line 539
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/aq;->a(I)V

    .line 540
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

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

    .line 541
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/umeng/commonsdk/proguard/aq;->a(Ljava/lang/String;)V

    .line 542
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/proto/b;->write(Lcom/umeng/commonsdk/proguard/ak;)V

    goto :goto_0

    .line 545
    :cond_0
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 546
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 547
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 549
    :cond_1
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 550
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 552
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/umeng/commonsdk/proguard/aq;->a(Ljava/util/BitSet;I)V

    .line 553
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 555
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/aq;->a(I)V

    .line 556
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/statistics/proto/a;

    .line 557
    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/proto/a;->write(Lcom/umeng/commonsdk/proguard/ak;)V

    goto :goto_1

    .line 561
    :cond_3
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 562
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/aq;->a(Ljava/lang/String;)V

    .line 564
    :cond_4
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
    .line 532
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/c$c;->b(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/statistics/proto/c;)V

    return-void
.end method

.method public b(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/statistics/proto/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .prologue
    const/16 v7, 0xc

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 569
    check-cast p1, Lcom/umeng/commonsdk/proguard/aq;

    .line 571
    new-instance v2, Lcom/umeng/commonsdk/proguard/ah;

    const/16 v0, 0xb

    .line 573
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/aq;->w()I

    move-result v3

    invoke-direct {v2, v0, v7, v3}, Lcom/umeng/commonsdk/proguard/ah;-><init>(BBI)V

    .line 574
    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lcom/umeng/commonsdk/proguard/ah;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    move v0, v1

    .line 575
    :goto_0
    iget v3, v2, Lcom/umeng/commonsdk/proguard/ah;->c:I

    if-ge v0, v3, :cond_0

    .line 578
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/aq;->z()Ljava/lang/String;

    move-result-object v3

    .line 579
    new-instance v4, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-direct {v4}, Lcom/umeng/commonsdk/statistics/proto/b;-><init>()V

    .line 580
    invoke-virtual {v4, p1}, Lcom/umeng/commonsdk/statistics/proto/b;->read(Lcom/umeng/commonsdk/proguard/ak;)V

    .line 581
    iget-object v5, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 584
    :cond_0
    invoke-virtual {p2, v6}, Lcom/umeng/commonsdk/statistics/proto/c;->a(Z)V

    .line 585
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/aq;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 586
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 588
    new-instance v2, Lcom/umeng/commonsdk/proguard/ag;

    .line 589
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/aq;->w()I

    move-result v3

    invoke-direct {v2, v7, v3}, Lcom/umeng/commonsdk/proguard/ag;-><init>(BI)V

    .line 590
    new-instance v3, Ljava/util/ArrayList;

    iget v4, v2, Lcom/umeng/commonsdk/proguard/ag;->b:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    .line 591
    :goto_1
    iget v3, v2, Lcom/umeng/commonsdk/proguard/ag;->b:I

    if-ge v1, v3, :cond_1

    .line 593
    new-instance v3, Lcom/umeng/commonsdk/statistics/proto/a;

    invoke-direct {v3}, Lcom/umeng/commonsdk/statistics/proto/a;-><init>()V

    .line 594
    invoke-virtual {v3, p1}, Lcom/umeng/commonsdk/statistics/proto/a;->read(Lcom/umeng/commonsdk/proguard/ak;)V

    .line 595
    iget-object v4, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 598
    :cond_1
    invoke-virtual {p2, v6}, Lcom/umeng/commonsdk/statistics/proto/c;->b(Z)V

    .line 600
    :cond_2
    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 601
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/aq;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    .line 602
    invoke-virtual {p2, v6}, Lcom/umeng/commonsdk/statistics/proto/c;->c(Z)V

    .line 604
    :cond_3
    return-void
.end method
