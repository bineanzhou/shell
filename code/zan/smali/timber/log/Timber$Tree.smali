.class public abstract Ltimber/log/Timber$Tree;
.super Ljava/lang/Object;
.source "Timber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltimber/log/Timber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Tree"
.end annotation


# instance fields
.field final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Ltimber/log/Timber$Tree;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private varargs b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 510
    invoke-virtual {p0}, Ltimber/log/Timber$Tree;->a()Ljava/lang/String;

    move-result-object v1

    .line 512
    invoke-virtual {p0, v1, p1}, Ltimber/log/Timber$Tree;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 516
    const/4 p3, 0x0

    move-object v0, p3

    .line 518
    :goto_1
    if-nez v0, :cond_3

    .line 519
    if-eqz p2, :cond_0

    .line 522
    invoke-direct {p0, p2}, Ltimber/log/Timber$Tree;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 532
    :cond_2
    :goto_2
    invoke-virtual {p0, p1, v1, v0, p2}, Ltimber/log/Timber$Tree;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 524
    :cond_3
    if-eqz p4, :cond_4

    array-length v2, p4

    if-lez v2, :cond_4

    .line 525
    invoke-virtual {p0, v0, p4}, Ltimber/log/Timber$Tree;->g(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 527
    :cond_4
    if-eqz p2, :cond_2

    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Ltimber/log/Timber$Tree;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, p3

    goto :goto_1
.end method

.method private g(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 545
    new-instance v0, Ljava/io/StringWriter;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 546
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 547
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 548
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 549
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 381
    iget-object v0, p0, Ltimber/log/Timber$Tree;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 382
    if-eqz v0, :cond_0

    .line 383
    iget-object v1, p0, Ltimber/log/Timber$Tree;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 385
    :cond_0
    return-object v0
.end method

.method protected abstract a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public varargs a(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Ltimber/log/Timber$Tree;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    return-void
.end method

.method public a(ILjava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 490
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0, v1}, Ltimber/log/Timber$Tree;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    return-void
.end method

.method public varargs a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 485
    invoke-direct {p0, p1, p2, p3, p4}, Ltimber/log/Timber$Tree;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 486
    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 390
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Ltimber/log/Timber$Tree;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 400
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1, v2}, Ltimber/log/Timber$Tree;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    return-void
.end method

.method public varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Ltimber/log/Timber$Tree;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    return-void
.end method

.method protected a(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 499
    const/4 v0, 0x1

    return v0
.end method

.method protected a(Ljava/lang/String;I)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 505
    invoke-virtual {p0, p2}, Ltimber/log/Timber$Tree;->a(I)Z

    move-result v0

    return v0
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 405
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Ltimber/log/Timber$Tree;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 415
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1, v2}, Ltimber/log/Timber$Tree;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    return-void
.end method

.method public varargs b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2, p3}, Ltimber/log/Timber$Tree;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    return-void
.end method

.method public varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 420
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Ltimber/log/Timber$Tree;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 430
    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1, v2}, Ltimber/log/Timber$Tree;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    return-void
.end method

.method public varargs c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2, p3}, Ltimber/log/Timber$Tree;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    return-void
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 435
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Ltimber/log/Timber$Tree;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    return-void
.end method

.method public d(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 445
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1, v2}, Ltimber/log/Timber$Tree;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    return-void
.end method

.method public varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2, p3}, Ltimber/log/Timber$Tree;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 450
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Ltimber/log/Timber$Tree;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 460
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1, v2}, Ltimber/log/Timber$Tree;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Ltimber/log/Timber$Tree;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    return-void
.end method

.method public varargs f(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 465
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Ltimber/log/Timber$Tree;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    return-void
.end method

.method public f(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 475
    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1, v2}, Ltimber/log/Timber$Tree;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    return-void
.end method

.method public varargs f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1, p2, p3}, Ltimber/log/Timber$Tree;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    return-void
.end method

.method protected g(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 539
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
