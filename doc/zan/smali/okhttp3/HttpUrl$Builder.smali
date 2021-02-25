.class public final Lokhttp3/HttpUrl$Builder;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/HttpUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/HttpUrl$Builder$ParseResult;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:I

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 937
    const-string v0, ""

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    .line 938
    const-string v0, ""

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 940
    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/HttpUrl$Builder;->e:I

    .line 941
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    .line 946
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 947
    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0x3a

    const/4 v1, 0x0

    .line 1669
    const/4 v0, -0x1

    move v2, v1

    move v3, v0

    move v0, v1

    .line 1671
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_2

    move v5, v0

    .line 1673
    :goto_1
    if-ge v5, v7, :cond_0

    aget-byte v4, p0, v5

    if-nez v4, :cond_0

    add-int/lit8 v4, v5, 0x1

    aget-byte v4, p0, v4

    if-nez v4, :cond_0

    .line 1674
    add-int/lit8 v4, v5, 0x2

    move v5, v4

    goto :goto_1

    .line 1676
    :cond_0
    sub-int v4, v5, v0

    .line 1677
    if-le v4, v2, :cond_1

    move v2, v4

    move v3, v0

    .line 1671
    :cond_1
    add-int/lit8 v0, v5, 0x2

    goto :goto_0

    .line 1684
    :cond_2
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 1685
    :cond_3
    :goto_2
    array-length v4, p0

    if-ge v1, v4, :cond_6

    .line 1686
    if-ne v1, v3, :cond_4

    .line 1687
    invoke-virtual {v0, v6}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 1688
    add-int/2addr v1, v2

    .line 1689
    if-ne v1, v7, :cond_3

    invoke-virtual {v0, v6}, Lokio/Buffer;->b(I)Lokio/Buffer;

    goto :goto_2

    .line 1691
    :cond_4
    if-lez v1, :cond_5

    invoke-virtual {v0, v6}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 1692
    :cond_5
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 1693
    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->l(J)Lokio/Buffer;

    .line 1694
    add-int/lit8 v1, v1, 0x2

    .line 1695
    goto :goto_2

    .line 1697
    :cond_6
    invoke-virtual {v0}, Lokio/Buffer;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1046
    move v2, v6

    .line 1048
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "/\\"

    invoke-static {p1, v2, v0, v1}, Lokhttp3/internal/Util;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    .line 1049
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_1

    const/4 v4, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 1050
    invoke-direct/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->a(Ljava/lang/String;IIZZ)V

    .line 1051
    add-int/lit8 v2, v3, 0x1

    .line 1052
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v2, v0, :cond_0

    .line 1053
    return-object p0

    :cond_1
    move v4, v6

    .line 1049
    goto :goto_0
.end method

.method private a(Ljava/lang/String;II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1401
    if-ne p2, p3, :cond_1

    .line 1424
    :cond_0
    return-void

    .line 1405
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1406
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_4

    .line 1408
    :cond_2
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1409
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1410
    add-int/lit8 p2, p2, 0x1

    :goto_0
    move v2, p2

    .line 1417
    :goto_1
    if-ge v2, p3, :cond_0

    .line 1418
    const-string v0, "/\\"

    invoke-static {p1, v2, p3, v0}, Lokhttp3/internal/Util;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    .line 1419
    if-ge v3, p3, :cond_5

    move v4, v5

    :goto_2
    move-object v0, p0

    move-object v1, p1

    .line 1420
    invoke-direct/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->a(Ljava/lang/String;IIZZ)V

    .line 1422
    if-eqz v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    move v2, v3

    .line 1423
    goto :goto_1

    .line 1413
    :cond_4
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1419
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private a(Ljava/lang/String;IIZZ)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1429
    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v7, 0x1

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p5

    move v6, v5

    invoke-static/range {v0 .. v7}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    .line 1431
    invoke-direct {p0, v1}, Lokhttp3/HttpUrl$Builder;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1446
    :cond_0
    :goto_0
    return-void

    .line 1434
    :cond_1
    invoke-direct {p0, v1}, Lokhttp3/HttpUrl$Builder;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1435
    invoke-direct {p0}, Lokhttp3/HttpUrl$Builder;->d()V

    goto :goto_0

    .line 1438
    :cond_2
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1439
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1443
    :goto_1
    if-eqz p4, :cond_0

    .line 1444
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1441
    :cond_3
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;II[BI)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1635
    move v0, p1

    move v4, p4

    .line 1637
    :goto_0
    if-ge v0, p2, :cond_8

    .line 1638
    array-length v2, p3

    if-ne v4, v2, :cond_0

    move v0, v1

    .line 1664
    :goto_1
    return v0

    .line 1641
    :cond_0
    if-eq v4, p4, :cond_2

    .line 1642
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_1

    .line 1643
    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    move v2, v1

    move v3, v0

    .line 1649
    :goto_2
    if-ge v3, p2, :cond_3

    .line 1650
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1651
    const/16 v6, 0x30

    if-lt v5, v6, :cond_3

    const/16 v6, 0x39

    if-le v5, v6, :cond_4

    .line 1656
    :cond_3
    sub-int v0, v3, v0

    .line 1657
    if-nez v0, :cond_7

    move v0, v1

    goto :goto_1

    .line 1652
    :cond_4
    if-nez v2, :cond_5

    if-eq v0, v3, :cond_5

    move v0, v1

    goto :goto_1

    .line 1653
    :cond_5
    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x30

    .line 1654
    const/16 v5, 0xff

    if-le v2, v5, :cond_6

    move v0, v1

    goto :goto_1

    .line 1649
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1660
    :cond_7
    add-int/lit8 v0, v4, 0x1

    int-to-byte v2, v2

    aput-byte v2, p3, v4

    move v4, v0

    move v0, v3

    .line 1661
    goto :goto_0

    .line 1663
    :cond_8
    add-int/lit8 v0, p4, 0x4

    if-eq v4, v0, :cond_9

    move v0, v1

    goto :goto_1

    .line 1664
    :cond_9
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;II)I
    .locals 8

    .prologue
    const/16 v7, 0x7a

    const/16 v6, 0x61

    const/16 v5, 0x5a

    const/16 v4, 0x41

    const/4 v0, -0x1

    .line 1485
    sub-int v1, p2, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 1507
    :cond_0
    :goto_0
    return v0

    .line 1487
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1488
    if-lt v1, v6, :cond_2

    if-le v1, v7, :cond_3

    :cond_2
    if-lt v1, v4, :cond_0

    if-gt v1, v5, :cond_0

    .line 1490
    :cond_3
    add-int/lit8 v1, p1, 0x1

    :goto_1
    if-ge v1, p2, :cond_0

    .line 1491
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1493
    if-lt v2, v6, :cond_4

    if-le v2, v7, :cond_7

    :cond_4
    if-lt v2, v4, :cond_5

    if-le v2, v5, :cond_7

    :cond_5
    const/16 v3, 0x30

    if-lt v2, v3, :cond_6

    const/16 v3, 0x39

    if-le v2, v3, :cond_7

    :cond_6
    const/16 v3, 0x2b

    if-eq v2, v3, :cond_7

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_7

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_8

    .line 1490
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1500
    :cond_8
    const/16 v3, 0x3a

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 1501
    goto :goto_0
.end method

.method private static c(Ljava/lang/String;II)I
    .locals 3

    .prologue
    .line 1512
    const/4 v0, 0x0

    .line 1513
    :goto_0
    if-ge p1, p2, :cond_1

    .line 1514
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1515
    const/16 v2, 0x5c

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1

    .line 1516
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1517
    add-int/lit8 p1, p1, 0x1

    .line 1521
    goto :goto_0

    .line 1522
    :cond_1
    return v0
.end method

.method private static d(Ljava/lang/String;II)I
    .locals 3

    .prologue
    .line 1527
    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_2

    .line 1528
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1527
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1530
    :cond_1
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_0

    .line 1531
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_2
    move v0, p2

    .line 1538
    :sswitch_1
    return v0

    .line 1528
    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method private d()V
    .locals 3

    .prologue
    .line 1470
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1473
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1474
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1478
    :goto_0
    return-void

    .line 1476
    :cond_0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1544
    invoke-static {p0, p1, p2, v2}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    .line 1547
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1549
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1550
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lokhttp3/HttpUrl$Builder;->f(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    .line 1552
    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1558
    :goto_1
    return-object v0

    .line 1551
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v2, v1}, Lokhttp3/HttpUrl$Builder;->f(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0

    .line 1553
    :cond_1
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1554
    array-length v1, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    invoke-static {v0}, Lokhttp3/HttpUrl$Builder;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1555
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1558
    :cond_3
    invoke-static {v0}, Lokhttp3/internal/Util;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static f(Ljava/lang/String;II)Ljava/net/InetAddress;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1563
    const/16 v0, 0x10

    new-array v8, v0, [B

    move v0, p1

    move v4, v7

    move v1, v7

    move v2, v5

    .line 1568
    :goto_0
    if-ge v0, p2, :cond_2

    .line 1569
    array-length v6, v8

    if-ne v2, v6, :cond_0

    move-object v0, v3

    .line 1626
    :goto_1
    return-object v0

    .line 1572
    :cond_0
    add-int/lit8 v6, v0, 0x2

    if-gt v6, p2, :cond_3

    const-string v6, "::"

    const/4 v9, 0x2

    invoke-virtual {p0, v0, v6, v5, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1574
    if-eq v1, v7, :cond_1

    move-object v0, v3

    goto :goto_1

    .line 1575
    :cond_1
    add-int/lit8 v0, v0, 0x2

    .line 1576
    add-int/lit8 v1, v2, 0x2

    .line 1578
    if-ne v0, p2, :cond_e

    move v2, v1

    .line 1619
    :cond_2
    :goto_2
    array-length v0, v8

    if-eq v2, v0, :cond_d

    .line 1620
    if-ne v1, v7, :cond_c

    move-object v0, v3

    goto :goto_1

    .line 1579
    :cond_3
    if-eqz v2, :cond_4

    .line 1581
    const-string v6, ":"

    invoke-virtual {p0, v0, v6, v5, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1582
    add-int/lit8 v0, v0, 0x1

    :cond_4
    :goto_3
    move v4, v5

    move v6, v0

    .line 1596
    :goto_4
    if-ge v6, p2, :cond_5

    .line 1597
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1598
    invoke-static {v9}, Lokhttp3/HttpUrl;->a(C)I

    move-result v9

    .line 1599
    if-ne v9, v7, :cond_a

    .line 1602
    :cond_5
    sub-int v9, v6, v0

    .line 1603
    if-eqz v9, :cond_6

    const/4 v10, 0x4

    if-le v9, v10, :cond_b

    :cond_6
    move-object v0, v3

    goto :goto_1

    .line 1583
    :cond_7
    const-string v6, "."

    invoke-virtual {p0, v0, v6, v5, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1585
    add-int/lit8 v0, v2, -0x2

    invoke-static {p0, v4, p2, v8, v0}, Lokhttp3/HttpUrl$Builder;->a(Ljava/lang/String;II[BI)Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, v3

    goto :goto_1

    .line 1586
    :cond_8
    add-int/lit8 v2, v2, 0x2

    .line 1587
    goto :goto_2

    :cond_9
    move-object v0, v3

    .line 1589
    goto :goto_1

    .line 1600
    :cond_a
    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v9

    .line 1596
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1606
    :cond_b
    add-int/lit8 v9, v2, 0x1

    ushr-int/lit8 v10, v4, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v2

    .line 1607
    add-int/lit8 v2, v9, 0x1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v8, v9

    move v4, v0

    move v0, v6

    .line 1608
    goto :goto_0

    .line 1621
    :cond_c
    array-length v0, v8

    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    sub-int v3, v2, v1

    invoke-static {v8, v1, v8, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1622
    array-length v0, v8

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    invoke-static {v8, v1, v0, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1626
    :cond_d
    :try_start_0
    invoke-static {v8}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_1

    .line 1627
    :catch_0
    move-exception v0

    .line 1628
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    move v2, v1

    goto :goto_3
.end method

.method private static g(Ljava/lang/String;II)I
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 1703
    :try_start_0
    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v7}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1704
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1705
    if-lez v0, :cond_0

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    .line 1708
    :goto_0
    return v0

    :cond_0
    move v0, v8

    .line 1706
    goto :goto_0

    .line 1707
    :catch_0
    move-exception v0

    move v0, v8

    .line 1708
    goto :goto_0
.end method

.method private r(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1167
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_0

    .line 1168
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1169
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1170
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1171
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1172
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    .line 1177
    :cond_0
    return-void

    .line 1167
    :cond_1
    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method private s(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1449
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private t(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1453
    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%2e."

    .line 1454
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".%2e"

    .line 1455
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%2e%2e"

    .line 1456
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1453
    :goto_0
    return v0

    .line 1456
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()I
    .locals 2

    .prologue
    .line 1007
    iget v0, p0, Lokhttp3/HttpUrl$Builder;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lokhttp3/HttpUrl$Builder;->e:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method a(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder$ParseResult;
    .locals 13

    .prologue
    .line 1278
    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p2, v0, v1}, Lokhttp3/internal/Util;->a(Ljava/lang/String;II)I

    move-result v2

    .line 1279
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2, v2, v0}, Lokhttp3/internal/Util;->b(Ljava/lang/String;II)I

    move-result v11

    .line 1282
    invoke-static {p2, v2, v11}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;II)I

    move-result v0

    .line 1283
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 1284
    const/4 v1, 0x1

    const-string v3, "https:"

    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1285
    const-string v0, "https"

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 1286
    const-string v0, "https:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    .line 1300
    :goto_0
    const/4 v1, 0x0

    .line 1301
    const/4 v0, 0x0

    .line 1302
    invoke-static {p2, v2, v11}, Lokhttp3/HttpUrl$Builder;->c(Ljava/lang/String;II)I

    move-result v3

    .line 1303
    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lokhttp3/HttpUrl;->a(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1313
    :cond_0
    add-int/2addr v2, v3

    move v8, v0

    move v9, v1

    move v1, v2

    .line 1316
    :goto_1
    const-string v0, "@/\\?#"

    invoke-static {p2, v1, v11, v0}, Lokhttp3/internal/Util;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v10

    .line 1317
    if-eq v10, v11, :cond_5

    .line 1318
    invoke-virtual {p2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1320
    :goto_2
    sparse-switch v0, :sswitch_data_0

    move v0, v8

    move v2, v1

    move v1, v9

    :goto_3
    move v8, v0

    move v9, v1

    move v1, v2

    .line 1363
    goto :goto_1

    .line 1287
    :cond_1
    const/4 v1, 0x1

    const-string v3, "http:"

    const/4 v4, 0x0

    const/4 v5, 0x5

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1288
    const-string v0, "http"

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 1289
    const-string v0, "http:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_0

    .line 1291
    :cond_2
    sget-object v0, Lokhttp3/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lokhttp3/HttpUrl$Builder$ParseResult;

    .line 1396
    :goto_4
    return-object v0

    .line 1293
    :cond_3
    if-eqz p1, :cond_4

    .line 1294
    invoke-static {p1}, Lokhttp3/HttpUrl;->a(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    goto :goto_0

    .line 1296
    :cond_4
    sget-object v0, Lokhttp3/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lokhttp3/HttpUrl$Builder$ParseResult;

    goto :goto_4

    .line 1318
    :cond_5
    const/4 v0, -0x1

    goto :goto_2

    .line 1323
    :sswitch_0
    if-nez v8, :cond_8

    .line 1324
    const/16 v0, 0x3a

    invoke-static {p2, v1, v10, v0}, Lokhttp3/internal/Util;->a(Ljava/lang/String;IIC)I

    move-result v2

    .line 1326
    const-string v3, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1328
    if-eqz v9, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%40"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    .line 1331
    if-eq v2, v10, :cond_7

    .line 1332
    const/4 v8, 0x1

    .line 1333
    add-int/lit8 v1, v2, 0x1

    const-string v3, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p2

    move v2, v10

    invoke-static/range {v0 .. v7}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 1336
    :cond_7
    const/4 v9, 0x1

    .line 1341
    :goto_5
    add-int/lit8 v2, v10, 0x1

    move v0, v8

    move v1, v9

    .line 1342
    goto :goto_3

    .line 1338
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%40"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v3, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p2

    move v2, v10

    invoke-static/range {v0 .. v7}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    goto :goto_5

    .line 1350
    :sswitch_1
    invoke-static {p2, v1, v10}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;II)I

    move-result v0

    .line 1351
    add-int/lit8 v2, v0, 0x1

    if-ge v2, v10, :cond_9

    .line 1352
    invoke-static {p2, v1, v0}, Lokhttp3/HttpUrl$Builder;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 1353
    add-int/lit8 v0, v0, 0x1

    invoke-static {p2, v0, v10}, Lokhttp3/HttpUrl$Builder;->g(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lokhttp3/HttpUrl$Builder;->e:I

    .line 1354
    iget v0, p0, Lokhttp3/HttpUrl$Builder;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    sget-object v0, Lokhttp3/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lokhttp3/HttpUrl$Builder$ParseResult;

    goto/16 :goto_4

    .line 1356
    :cond_9
    invoke-static {p2, v1, v0}, Lokhttp3/HttpUrl$Builder;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 1357
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lokhttp3/HttpUrl$Builder;->e:I

    .line 1359
    :cond_a
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    if-nez v0, :cond_b

    sget-object v0, Lokhttp3/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lokhttp3/HttpUrl$Builder$ParseResult;

    goto/16 :goto_4

    :cond_b
    move v2, v10

    .line 1378
    :cond_c
    :goto_6
    const-string v0, "?#"

    invoke-static {p2, v2, v11, v0}, Lokhttp3/internal/Util;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    .line 1379
    invoke-direct {p0, p2, v2, v0}, Lokhttp3/HttpUrl$Builder;->a(Ljava/lang/String;II)V

    .line 1383
    if-ge v0, v11, :cond_10

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_10

    .line 1384
    const/16 v1, 0x23

    invoke-static {p2, v0, v11, v1}, Lokhttp3/internal/Util;->a(Ljava/lang/String;IIC)I

    move-result v2

    .line 1385
    add-int/lit8 v1, v0, 0x1

    const-string v3, " \"\'<>#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/HttpUrl;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    .line 1391
    :goto_7
    if-ge v2, v11, :cond_d

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_d

    .line 1392
    add-int/lit8 v1, v2, 0x1

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    move v2, v11

    invoke-static/range {v0 .. v7}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    .line 1396
    :cond_d
    sget-object v0, Lokhttp3/HttpUrl$Builder$ParseResult;->SUCCESS:Lokhttp3/HttpUrl$Builder$ParseResult;

    goto/16 :goto_4

    .line 1366
    :cond_e
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    .line 1367
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 1368
    invoke-static {p1}, Lokhttp3/HttpUrl;->b(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 1369
    invoke-static {p1}, Lokhttp3/HttpUrl;->c(Lokhttp3/HttpUrl;)I

    move-result v0

    iput v0, p0, Lokhttp3/HttpUrl$Builder;->e:I

    .line 1370
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1371
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1372
    if-eq v2, v11, :cond_f

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_c

    .line 1373
    :cond_f
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/HttpUrl$Builder;->m(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto/16 :goto_6

    :cond_10
    move v2, v0

    goto :goto_7

    .line 1320
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x23 -> :sswitch_1
        0x2f -> :sswitch_1
        0x3f -> :sswitch_1
        0x40 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method public a(I)Lokhttp3/HttpUrl$Builder;
    .locals 3

    .prologue
    .line 1001
    if-lez p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1002
    :cond_1
    iput p1, p0, Lokhttp3/HttpUrl$Builder;->e:I

    .line 1003
    return-object p0
.end method

.method public a(ILjava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1057
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1059
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v7, 0x1

    move-object v0, p2

    move v4, v1

    move v5, v1

    move v6, v1

    .line 1058
    invoke-static/range {v0 .. v7}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1060
    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->s(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1061
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected path segment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1063
    :cond_2
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1064
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 3

    .prologue
    .line 950
    if-nez p1, :cond_0

    .line 951
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 952
    :cond_0
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 953
    const-string v0, "http"

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 959
    :goto_0
    return-object p0

    .line 954
    :cond_1
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 955
    const-string v0, "https"

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    goto :goto_0

    .line 957
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1115
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1116
    :cond_0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    .line 1117
    :cond_1
    iget-object v6, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    const-string v1, " \"\'<>#&="

    move-object v0, p1

    move v3, v2

    move v5, v4

    .line 1118
    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1117
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1119
    iget-object v6, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    if-eqz p2, :cond_2

    const-string v1, " \"\'<>#&="

    move-object v0, p2

    move v3, v2

    move v5, v4

    .line 1120
    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1119
    :goto_0
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1122
    return-object p0

    .line 1120
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Lokhttp3/HttpUrl$Builder;
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 1198
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v6, v4

    :goto_0
    if-ge v6, v7, :cond_0

    .line 1199
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1200
    iget-object v8, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    const-string v1, "[]"

    move v3, v2

    move v5, v2

    .line 1201
    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1200
    invoke-interface {v8, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1198
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 1203
    :cond_0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1204
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v0, v4

    :goto_1
    if-ge v0, v1, :cond_2

    .line 1205
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1206
    if-eqz v5, :cond_1

    .line 1207
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    const-string v6, "\\^`{|}"

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    .line 1208
    invoke-static/range {v5 .. v10}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v5

    .line 1207
    invoke-interface {v3, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1204
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1212
    :cond_2
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1213
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    const-string v1, " \"#<>\\^`{|}"

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    .line 1216
    :cond_3
    return-object p0
.end method

.method public b(I)Lokhttp3/HttpUrl$Builder;
    .locals 2

    .prologue
    .line 1081
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1082
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1085
    :cond_0
    return-object p0
.end method

.method public b(ILjava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1068
    if-nez p2, :cond_0

    .line 1069
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1072
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, " \"<>^`{}|/\\?#"

    move-object v0, p2

    move v5, v1

    move v6, v1

    move v7, v4

    .line 1071
    invoke-static/range {v0 .. v7}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1073
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1074
    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->s(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1075
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected path segment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1077
    :cond_2
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 963
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "username == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 964
    :cond_0
    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    move-object v0, p1

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    .line 965
    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1127
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1128
    :cond_0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    .line 1129
    :cond_1
    iget-object v6, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    const-string v1, " \"\'<>#&="

    move-object v0, p1

    move v4, v2

    move v5, v2

    .line 1130
    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1129
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1131
    iget-object v6, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    if-eqz p2, :cond_2

    const-string v1, " \"\'<>#&="

    move-object v0, p2

    move v4, v2

    move v5, v2

    .line 1132
    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1131
    :goto_0
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1134
    return-object p0

    .line 1132
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 969
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedUsername == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 970
    :cond_0
    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    move v4, v3

    move v5, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    .line 972
    return-object p0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 0

    .prologue
    .line 1138
    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl$Builder;->n(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1139
    invoke-virtual {p0, p1, p2}, Lokhttp3/HttpUrl$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1140
    return-object p0
.end method

.method public c()Lokhttp3/HttpUrl;
    .locals 2

    .prologue
    .line 1220
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1221
    :cond_0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1222
    :cond_1
    new-instance v0, Lokhttp3/HttpUrl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/HttpUrl;-><init>(Lokhttp3/HttpUrl$Builder;Lokhttp3/HttpUrl$1;)V

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 976
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "password == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 977
    :cond_0
    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    move-object v0, p1

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 978
    return-object p0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 0

    .prologue
    .line 1144
    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl$Builder;->o(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1145
    invoke-virtual {p0, p1, p2}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1146
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 982
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPassword == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 983
    :cond_0
    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    move v4, v3

    move v5, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 985
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 3

    .prologue
    .line 993
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 994
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lokhttp3/HttpUrl$Builder;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 995
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 996
    :cond_1
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 997
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1011
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1012
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->a(Ljava/lang/String;IIZZ)V

    .line 1013
    return-object p0
.end method

.method public h(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 2

    .prologue
    .line 1021
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pathSegments == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1022
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/HttpUrl$Builder;->a(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1026
    if-nez p1, :cond_0

    .line 1027
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1029
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->a(Ljava/lang/String;IIZZ)V

    .line 1030
    return-object p0
.end method

.method public j(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 2

    .prologue
    .line 1039
    if-nez p1, :cond_0

    .line 1040
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPathSegments == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1042
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lokhttp3/HttpUrl$Builder;->a(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 3

    .prologue
    .line 1089
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPath == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1090
    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1091
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected encodedPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1093
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lokhttp3/HttpUrl$Builder;->a(Ljava/lang/String;II)V

    .line 1094
    return-object p0
.end method

.method public l(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1098
    if-eqz p1, :cond_0

    const-string v1, " \"\'<>#"

    move-object v0, p1

    move v3, v2

    move v5, v4

    .line 1099
    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/HttpUrl;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    .line 1102
    return-object p0

    .line 1099
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1106
    if-eqz p1, :cond_0

    const-string v1, " \"\'<>#"

    const/4 v3, 0x0

    move-object v0, p1

    move v4, v2

    move v5, v2

    .line 1108
    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1107
    invoke-static {v0}, Lokhttp3/HttpUrl;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    .line 1110
    return-object p0

    .line 1107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1150
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1151
    :cond_0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1155
    :goto_0
    return-object p0

    .line 1152
    :cond_1
    const-string v1, " \"\'<>#&="

    move-object v0, p1

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1154
    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->r(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public o(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1159
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1160
    :cond_0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1163
    :goto_0
    return-object p0

    .line 1161
    :cond_1
    const-string v1, " \"\'<>#&="

    const/4 v3, 0x0

    move-object v0, p1

    move v4, v2

    move v5, v2

    .line 1162
    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1161
    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->r(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public p(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1180
    if-eqz p1, :cond_0

    const-string v1, ""

    move-object v0, p1

    move v3, v2

    move v4, v2

    move v5, v2

    .line 1181
    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    .line 1183
    return-object p0

    .line 1181
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1187
    if-eqz p1, :cond_0

    const-string v1, ""

    const/4 v2, 0x1

    move-object v0, p1

    move v4, v3

    move v5, v3

    .line 1188
    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    .line 1190
    return-object p0

    .line 1188
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x3a

    .line 1226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1227
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1231
    :cond_0
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1233
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1234
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    :cond_1
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1239
    :cond_2
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 1241
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1242
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1248
    :goto_0
    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->a()I

    move-result v1

    .line 1249
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    invoke-static {v2}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1250
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1254
    :cond_3
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lokhttp3/HttpUrl;->a(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1256
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 1257
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1258
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    invoke-static {v0, v1}, Lokhttp3/HttpUrl;->b(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1261
    :cond_4
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1262
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1263
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1245
    :cond_6
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
