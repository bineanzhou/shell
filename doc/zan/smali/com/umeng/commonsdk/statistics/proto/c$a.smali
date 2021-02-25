.class Lcom/umeng/commonsdk/statistics/proto/c$a;
.super Lcom/umeng/commonsdk/proguard/au;
.source "IdTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/commonsdk/proguard/au",
        "<",
        "Lcom/umeng/commonsdk/statistics/proto/c;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/au;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/c$1;)V
    .locals 0

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/proguard/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .prologue
    .line 410
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/c$a;->b(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/statistics/proto/c;)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/statistics/proto/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 415
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->j()Lcom/umeng/commonsdk/proguard/ap;

    .line 417
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->l()Lcom/umeng/commonsdk/proguard/af;

    move-result-object v0

    .line 418
    iget-byte v2, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    if-nez v2, :cond_0

    .line 473
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->k()V

    .line 477
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->n()V

    .line 478
    return-void

    .line 421
    :cond_0
    iget-short v2, v0, Lcom/umeng/commonsdk/proguard/af;->c:S

    packed-switch v2, :pswitch_data_0

    .line 469
    iget-byte v0, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/an;->a(Lcom/umeng/commonsdk/proguard/ak;B)V

    .line 471
    :goto_1
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->m()V

    goto :goto_0

    .line 423
    :pswitch_0
    iget-byte v2, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    .line 425
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->n()Lcom/umeng/commonsdk/proguard/ah;

    move-result-object v2

    .line 426
    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lcom/umeng/commonsdk/proguard/ah;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    move v0, v1

    .line 427
    :goto_2
    iget v3, v2, Lcom/umeng/commonsdk/proguard/ah;->c:I

    if-ge v0, v3, :cond_1

    .line 430
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->z()Ljava/lang/String;

    move-result-object v3

    .line 431
    new-instance v4, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-direct {v4}, Lcom/umeng/commonsdk/statistics/proto/b;-><init>()V

    .line 432
    invoke-virtual {v4, p1}, Lcom/umeng/commonsdk/statistics/proto/b;->read(Lcom/umeng/commonsdk/proguard/ak;)V

    .line 433
    iget-object v5, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 435
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->o()V

    .line 437
    invoke-virtual {p2, v6}, Lcom/umeng/commonsdk/statistics/proto/c;->a(Z)V

    goto :goto_1

    .line 439
    :cond_2
    iget-byte v0, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/an;->a(Lcom/umeng/commonsdk/proguard/ak;B)V

    goto :goto_1

    .line 443
    :pswitch_1
    iget-byte v2, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    const/16 v3, 0xf

    if-ne v2, v3, :cond_4

    .line 445
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->p()Lcom/umeng/commonsdk/proguard/ag;

    move-result-object v2

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lcom/umeng/commonsdk/proguard/ag;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    move v0, v1

    .line 447
    :goto_3
    iget v3, v2, Lcom/umeng/commonsdk/proguard/ag;->b:I

    if-ge v0, v3, :cond_3

    .line 449
    new-instance v3, Lcom/umeng/commonsdk/statistics/proto/a;

    invoke-direct {v3}, Lcom/umeng/commonsdk/statistics/proto/a;-><init>()V

    .line 450
    invoke-virtual {v3, p1}, Lcom/umeng/commonsdk/statistics/proto/a;->read(Lcom/umeng/commonsdk/proguard/ak;)V

    .line 451
    iget-object v4, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 453
    :cond_3
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->q()V

    .line 455
    invoke-virtual {p2, v6}, Lcom/umeng/commonsdk/statistics/proto/c;->b(Z)V

    goto :goto_1

    .line 457
    :cond_4
    iget-byte v0, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/an;->a(Lcom/umeng/commonsdk/proguard/ak;B)V

    goto :goto_1

    .line 461
    :pswitch_2
    iget-byte v2, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    const/16 v3, 0xb

    if-ne v2, v3, :cond_5

    .line 462
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    .line 463
    invoke-virtual {p2, v6}, Lcom/umeng/commonsdk/statistics/proto/c;->c(Z)V

    goto/16 :goto_1

    .line 465
    :cond_5
    iget-byte v0, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/an;->a(Lcom/umeng/commonsdk/proguard/ak;B)V

    goto/16 :goto_1

    .line 421
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public synthetic b(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/proguard/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .prologue
    .line 410
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/c$a;->a(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/statistics/proto/c;)V

    return-void
.end method

.method public b(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/statistics/proto/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .prologue
    const/16 v3, 0xc

    .line 482
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->n()V

    .line 484
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/c;->o()Lcom/umeng/commonsdk/proguard/ap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/ap;)V

    .line 485
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 486
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/c;->p()Lcom/umeng/commonsdk/proguard/af;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/af;)V

    .line 488
    new-instance v0, Lcom/umeng/commonsdk/proguard/ah;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    .line 489
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Lcom/umeng/commonsdk/proguard/ah;-><init>(BBI)V

    .line 488
    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/ah;)V

    .line 490
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

    .line 491
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/umeng/commonsdk/proguard/ak;->a(Ljava/lang/String;)V

    .line 492
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/proto/b;->write(Lcom/umeng/commonsdk/proguard/ak;)V

    goto :goto_0

    .line 494
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->e()V

    .line 496
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->c()V

    .line 498
    :cond_1
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 499
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 500
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/c;->q()Lcom/umeng/commonsdk/proguard/af;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/af;)V

    .line 502
    new-instance v0, Lcom/umeng/commonsdk/proguard/ag;

    iget-object v1, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    .line 503
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v3, v1}, Lcom/umeng/commonsdk/proguard/ag;-><init>(BI)V

    .line 502
    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/ag;)V

    .line 504
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/statistics/proto/a;

    .line 505
    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/proto/a;->write(Lcom/umeng/commonsdk/proguard/ak;)V

    goto :goto_1

    .line 507
    :cond_2
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->f()V

    .line 509
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->c()V

    .line 512
    :cond_3
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 513
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 514
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/c;->r()Lcom/umeng/commonsdk/proguard/af;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/af;)V

    .line 515
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->c()V

    .line 519
    :cond_4
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->d()V

    .line 520
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->b()V

    .line 521
    return-void
.end method
