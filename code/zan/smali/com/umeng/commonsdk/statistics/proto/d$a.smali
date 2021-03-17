.class Lcom/umeng/commonsdk/statistics/proto/d$a;
.super Lcom/umeng/commonsdk/proguard/au;
.source "Imprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/commonsdk/proguard/au",
        "<",
        "Lcom/umeng/commonsdk/statistics/proto/d;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/au;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/d$1;)V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/d$a;-><init>()V

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
    .line 387
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/d$a;->b(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/statistics/proto/d;)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/statistics/proto/d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 392
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->j()Lcom/umeng/commonsdk/proguard/ap;

    .line 394
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->l()Lcom/umeng/commonsdk/proguard/af;

    move-result-object v0

    .line 395
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    if-nez v1, :cond_0

    .line 440
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->k()V

    .line 444
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/d;->h()Z

    move-result v0

    if-nez v0, :cond_5

    .line 445
    new-instance v0, Lcom/umeng/commonsdk/proguard/al;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'version\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 446
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/al;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_0
    iget-short v1, v0, Lcom/umeng/commonsdk/proguard/af;->c:S

    packed-switch v1, :pswitch_data_0

    .line 436
    iget-byte v0, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/an;->a(Lcom/umeng/commonsdk/proguard/ak;B)V

    .line 438
    :goto_1
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->m()V

    goto :goto_0

    .line 400
    :pswitch_0
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 402
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->n()Lcom/umeng/commonsdk/proguard/ah;

    move-result-object v1

    .line 403
    new-instance v0, Ljava/util/HashMap;

    iget v2, v1, Lcom/umeng/commonsdk/proguard/ah;->c:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    .line 404
    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lcom/umeng/commonsdk/proguard/ah;->c:I

    if-ge v0, v2, :cond_1

    .line 407
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->z()Ljava/lang/String;

    move-result-object v2

    .line 408
    new-instance v3, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-direct {v3}, Lcom/umeng/commonsdk/statistics/proto/e;-><init>()V

    .line 409
    invoke-virtual {v3, p1}, Lcom/umeng/commonsdk/statistics/proto/e;->read(Lcom/umeng/commonsdk/proguard/ak;)V

    .line 410
    iget-object v4, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 412
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->o()V

    .line 414
    invoke-virtual {p2, v5}, Lcom/umeng/commonsdk/statistics/proto/d;->a(Z)V

    goto :goto_1

    .line 416
    :cond_2
    iget-byte v0, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/an;->a(Lcom/umeng/commonsdk/proguard/ak;B)V

    goto :goto_1

    .line 420
    :pswitch_1
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 421
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    .line 422
    invoke-virtual {p2, v5}, Lcom/umeng/commonsdk/statistics/proto/d;->b(Z)V

    goto :goto_1

    .line 424
    :cond_3
    iget-byte v0, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/an;->a(Lcom/umeng/commonsdk/proguard/ak;B)V

    goto :goto_1

    .line 428
    :pswitch_2
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_4

    .line 429
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    .line 430
    invoke-virtual {p2, v5}, Lcom/umeng/commonsdk/statistics/proto/d;->c(Z)V

    goto :goto_1

    .line 432
    :cond_4
    iget-byte v0, v0, Lcom/umeng/commonsdk/proguard/af;->b:B

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/an;->a(Lcom/umeng/commonsdk/proguard/ak;B)V

    goto :goto_1

    .line 448
    :cond_5
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/d;->l()V

    .line 449
    return-void

    .line 398
    nop

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
    .line 387
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/d$a;->a(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/statistics/proto/d;)V

    return-void
.end method

.method public b(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/statistics/proto/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .prologue
    .line 453
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/d;->l()V

    .line 455
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/d;->m()Lcom/umeng/commonsdk/proguard/ap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/ap;)V

    .line 456
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 457
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/d;->n()Lcom/umeng/commonsdk/proguard/af;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/af;)V

    .line 459
    new-instance v0, Lcom/umeng/commonsdk/proguard/ah;

    const/16 v1, 0xb

    const/16 v2, 0xc

    iget-object v3, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    .line 460
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/commonsdk/proguard/ah;-><init>(BBI)V

    .line 459
    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/ah;)V

    .line 461
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

    .line 462
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/umeng/commonsdk/proguard/ak;->a(Ljava/lang/String;)V

    .line 463
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/proto/e;->write(Lcom/umeng/commonsdk/proguard/ak;)V

    goto :goto_0

    .line 465
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->e()V

    .line 467
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->c()V

    .line 469
    :cond_1
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/d;->o()Lcom/umeng/commonsdk/proguard/af;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/af;)V

    .line 470
    iget v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(I)V

    .line 471
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->c()V

    .line 472
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 473
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/d;->p()Lcom/umeng/commonsdk/proguard/af;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/af;)V

    .line 474
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->c()V

    .line 477
    :cond_2
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->d()V

    .line 478
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->b()V

    .line 479
    return-void
.end method
