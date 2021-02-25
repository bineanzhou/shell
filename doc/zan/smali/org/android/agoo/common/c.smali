.class public final Lorg/android/agoo/common/c;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(JLjava/lang/String;)I
    .locals 4

    .prologue
    .line 83
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 85
    const/4 v1, 0x0

    array-length v2, v0

    const v3, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Lorg/android/agoo/common/c;->a([BIII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v0, v0

    .line 86
    rem-long/2addr v0, p0

    long-to-int v0, v0

    .line 90
    :goto_0
    return v0

    .line 88
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    long-to-double v2, p0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0
.end method

.method public static final a([BIII)I
    .locals 9

    .prologue
    .line 33
    const v3, 0x5bd1e995

    .line 34
    const/16 v4, 0x18

    .line 36
    xor-int v1, p3, p2

    .line 38
    shr-int/lit8 v5, p2, 0x2

    .line 40
    const/4 v0, 0x0

    move v8, v0

    move v0, v1

    move v1, v8

    :goto_0
    if-ge v1, v5, :cond_0

    .line 41
    shl-int/lit8 v2, v1, 0x2

    .line 42
    add-int v6, p1, v2

    add-int/lit8 v6, v6, 0x3

    aget-byte v6, p0, v6

    .line 43
    shl-int/lit8 v6, v6, 0x8

    .line 44
    add-int v7, p1, v2

    add-int/lit8 v7, v7, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 45
    shl-int/lit8 v6, v6, 0x8

    .line 46
    add-int v7, p1, v2

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 47
    shl-int/lit8 v6, v6, 0x8

    .line 48
    add-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v6

    .line 49
    mul-int/2addr v2, v3

    .line 50
    ushr-int v6, v2, v4

    xor-int/2addr v2, v6

    .line 51
    mul-int/2addr v2, v3

    .line 52
    mul-int/2addr v0, v3

    .line 53
    xor-int/2addr v2, v0

    .line 40
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    .line 57
    :cond_0
    shl-int/lit8 v1, v5, 0x2

    .line 58
    sub-int v1, p2, v1

    .line 60
    if-eqz v1, :cond_4

    .line 61
    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 62
    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x3

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x10

    xor-int/2addr v0, v2

    .line 64
    :cond_1
    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 65
    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    xor-int/2addr v0, v2

    .line 67
    :cond_2
    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    .line 68
    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p0, v1

    xor-int/2addr v0, v1

    .line 71
    :cond_3
    mul-int/2addr v0, v3

    .line 74
    :cond_4
    ushr-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    .line 75
    mul-int/2addr v0, v3

    .line 76
    ushr-int/lit8 v1, v0, 0xf

    xor-int/2addr v0, v1

    .line 78
    return v0
.end method
