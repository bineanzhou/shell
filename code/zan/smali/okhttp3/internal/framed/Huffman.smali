.class Lokhttp3/internal/framed/Huffman;
.super Ljava/lang/Object;
.source "Huffman.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/framed/Huffman$Node;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[B

.field private static final c:Lokhttp3/internal/framed/Huffman;


# instance fields
.field private final d:Lokhttp3/internal/framed/Huffman$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 36
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lokhttp3/internal/framed/Huffman;->a:[I

    .line 64
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lokhttp3/internal/framed/Huffman;->b:[B

    .line 78
    new-instance v0, Lokhttp3/internal/framed/Huffman;

    invoke-direct {v0}, Lokhttp3/internal/framed/Huffman;-><init>()V

    sput-object v0, Lokhttp3/internal/framed/Huffman;->c:Lokhttp3/internal/framed/Huffman;

    return-void

    .line 36
    :array_0
    .array-data 4
        0x1ff8
        0x7fffd8
        0xfffffe2
        0xfffffe3
        0xfffffe4
        0xfffffe5
        0xfffffe6
        0xfffffe7
        0xfffffe8
        0xffffea
        0x3ffffffc    # 1.9999995f
        0xfffffe9
        0xfffffea
        0x3ffffffd    # 1.9999996f
        0xfffffeb
        0xfffffec
        0xfffffed
        0xfffffee
        0xfffffef
        0xffffff0
        0xffffff1
        0xffffff2
        0x3ffffffe    # 1.9999998f
        0xffffff3
        0xffffff4
        0xffffff5
        0xffffff6
        0xffffff7
        0xffffff8
        0xffffff9
        0xffffffa
        0xffffffb
        0x14
        0x3f8
        0x3f9
        0xffa
        0x1ff9
        0x15
        0xf8
        0x7fa
        0x3fa
        0x3fb
        0xf9
        0x7fb
        0xfa
        0x16
        0x17
        0x18
        0x0
        0x1
        0x2
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x5c
        0xfb
        0x7ffc
        0x20
        0xffb
        0x3fc
        0x1ffa
        0x21
        0x5d
        0x5e
        0x5f
        0x60
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0xfc
        0x73
        0xfd
        0x1ffb
        0x7fff0
        0x1ffc
        0x3ffc
        0x22
        0x7ffd
        0x3
        0x23
        0x4
        0x24
        0x5
        0x25
        0x26
        0x27
        0x6
        0x74
        0x75
        0x28
        0x29
        0x2a
        0x7
        0x2b
        0x76
        0x2c
        0x8
        0x9
        0x2d
        0x77
        0x78
        0x79
        0x7a
        0x7b
        0x7ffe
        0x7fc
        0x3ffd
        0x1ffd
        0xffffffc
        0xfffe6
        0x3fffd2
        0xfffe7
        0xfffe8
        0x3fffd3
        0x3fffd4
        0x3fffd5
        0x7fffd9
        0x3fffd6
        0x7fffda
        0x7fffdb
        0x7fffdc
        0x7fffdd
        0x7fffde
        0xffffeb
        0x7fffdf
        0xffffec
        0xffffed
        0x3fffd7
        0x7fffe0
        0xffffee
        0x7fffe1
        0x7fffe2
        0x7fffe3
        0x7fffe4
        0x1fffdc
        0x3fffd8
        0x7fffe5
        0x3fffd9
        0x7fffe6
        0x7fffe7
        0xffffef
        0x3fffda
        0x1fffdd
        0xfffe9
        0x3fffdb
        0x3fffdc
        0x7fffe8
        0x7fffe9
        0x1fffde
        0x7fffea
        0x3fffdd
        0x3fffde
        0xfffff0
        0x1fffdf
        0x3fffdf
        0x7fffeb
        0x7fffec
        0x1fffe0
        0x1fffe1
        0x3fffe0
        0x1fffe2
        0x7fffed
        0x3fffe1
        0x7fffee
        0x7fffef
        0xfffea
        0x3fffe2
        0x3fffe3
        0x3fffe4
        0x7ffff0
        0x3fffe5
        0x3fffe6
        0x7ffff1
        0x3ffffe0
        0x3ffffe1
        0xfffeb
        0x7fff1
        0x3fffe7
        0x7ffff2
        0x3fffe8
        0x1ffffec
        0x3ffffe2
        0x3ffffe3
        0x3ffffe4
        0x7ffffde
        0x7ffffdf
        0x3ffffe5
        0xfffff1
        0x1ffffed
        0x7fff2
        0x1fffe3
        0x3ffffe6
        0x7ffffe0
        0x7ffffe1
        0x3ffffe7
        0x7ffffe2
        0xfffff2
        0x1fffe4
        0x1fffe5
        0x3ffffe8
        0x3ffffe9
        0xffffffd
        0x7ffffe3
        0x7ffffe4
        0x7ffffe5
        0xfffec
        0xfffff3
        0xfffed
        0x1fffe6
        0x3fffe9
        0x1fffe7
        0x1fffe8
        0x7ffff3
        0x3fffea
        0x3fffeb
        0x1ffffee
        0x1ffffef
        0xfffff4
        0xfffff5
        0x3ffffea
        0x7ffff4
        0x3ffffeb
        0x7ffffe6
        0x3ffffec
        0x3ffffed
        0x7ffffe7
        0x7ffffe8
        0x7ffffe9
        0x7ffffea
        0x7ffffeb
        0xffffffe
        0x7ffffec
        0x7ffffed
        0x7ffffee
        0x7ffffef
        0x7fffff0
        0x3ffffee
    .end array-data

    .line 64
    :array_1
    .array-data 1
        0xdt
        0x17t
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x18t
        0x1et
        0x1ct
        0x1ct
        0x1et
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1et
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x6t
        0xat
        0xat
        0xct
        0xdt
        0x6t
        0x8t
        0xbt
        0xat
        0xat
        0x8t
        0xbt
        0x8t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x8t
        0xft
        0x6t
        0xct
        0xat
        0xdt
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x7t
        0x8t
        0xdt
        0x13t
        0xdt
        0xet
        0x6t
        0xft
        0x5t
        0x6t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x6t
        0x5t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x5t
        0x6t
        0x7t
        0x6t
        0x5t
        0x5t
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0xft
        0xbt
        0xet
        0xdt
        0x1ct
        0x14t
        0x16t
        0x14t
        0x14t
        0x16t
        0x16t
        0x16t
        0x17t
        0x16t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x18t
        0x17t
        0x18t
        0x18t
        0x16t
        0x17t
        0x18t
        0x17t
        0x17t
        0x17t
        0x17t
        0x15t
        0x16t
        0x17t
        0x16t
        0x17t
        0x17t
        0x18t
        0x16t
        0x15t
        0x14t
        0x16t
        0x16t
        0x17t
        0x17t
        0x15t
        0x17t
        0x16t
        0x16t
        0x18t
        0x15t
        0x16t
        0x17t
        0x17t
        0x15t
        0x15t
        0x16t
        0x15t
        0x17t
        0x16t
        0x17t
        0x17t
        0x14t
        0x16t
        0x16t
        0x16t
        0x17t
        0x16t
        0x16t
        0x17t
        0x1at
        0x1at
        0x14t
        0x13t
        0x16t
        0x17t
        0x16t
        0x19t
        0x1at
        0x1at
        0x1at
        0x1bt
        0x1bt
        0x1at
        0x18t
        0x19t
        0x13t
        0x15t
        0x1at
        0x1bt
        0x1bt
        0x1at
        0x1bt
        0x18t
        0x15t
        0x15t
        0x1at
        0x1at
        0x1ct
        0x1bt
        0x1bt
        0x1bt
        0x14t
        0x18t
        0x14t
        0x15t
        0x16t
        0x15t
        0x15t
        0x17t
        0x16t
        0x16t
        0x19t
        0x19t
        0x18t
        0x18t
        0x1at
        0x17t
        0x1at
        0x1bt
        0x1at
        0x1at
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1ct
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1at
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lokhttp3/internal/framed/Huffman$Node;

    invoke-direct {v0}, Lokhttp3/internal/framed/Huffman$Node;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/Huffman;->d:Lokhttp3/internal/framed/Huffman$Node;

    .line 87
    invoke-direct {p0}, Lokhttp3/internal/framed/Huffman;->b()V

    .line 88
    return-void
.end method

.method public static a()Lokhttp3/internal/framed/Huffman;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lokhttp3/internal/framed/Huffman;->c:Lokhttp3/internal/framed/Huffman;

    return-object v0
.end method

.method private a(IIB)V
    .locals 6

    .prologue
    .line 172
    new-instance v3, Lokhttp3/internal/framed/Huffman$Node;

    invoke-direct {v3, p1, p3}, Lokhttp3/internal/framed/Huffman$Node;-><init>(II)V

    .line 174
    iget-object v0, p0, Lokhttp3/internal/framed/Huffman;->d:Lokhttp3/internal/framed/Huffman$Node;

    move-object v2, v0

    .line 175
    :goto_0
    const/16 v0, 0x8

    if-le p3, v0, :cond_2

    .line 176
    add-int/lit8 v0, p3, -0x8

    int-to-byte p3, v0

    .line 177
    ushr-int v0, p2, p3

    and-int/lit16 v0, v0, 0xff

    .line 178
    invoke-static {v2}, Lokhttp3/internal/framed/Huffman$Node;->a(Lokhttp3/internal/framed/Huffman$Node;)[Lokhttp3/internal/framed/Huffman$Node;

    move-result-object v1

    if-nez v1, :cond_0

    .line 179
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid dictionary: prefix not unique"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    invoke-static {v2}, Lokhttp3/internal/framed/Huffman$Node;->a(Lokhttp3/internal/framed/Huffman$Node;)[Lokhttp3/internal/framed/Huffman$Node;

    move-result-object v1

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 182
    invoke-static {v2}, Lokhttp3/internal/framed/Huffman$Node;->a(Lokhttp3/internal/framed/Huffman$Node;)[Lokhttp3/internal/framed/Huffman$Node;

    move-result-object v1

    new-instance v4, Lokhttp3/internal/framed/Huffman$Node;

    invoke-direct {v4}, Lokhttp3/internal/framed/Huffman$Node;-><init>()V

    aput-object v4, v1, v0

    .line 184
    :cond_1
    invoke-static {v2}, Lokhttp3/internal/framed/Huffman$Node;->a(Lokhttp3/internal/framed/Huffman$Node;)[Lokhttp3/internal/framed/Huffman$Node;

    move-result-object v1

    aget-object v0, v1, v0

    move-object v2, v0

    .line 185
    goto :goto_0

    .line 187
    :cond_2
    rsub-int/lit8 v0, p3, 0x8

    .line 188
    shl-int v1, p2, v0

    and-int/lit16 v1, v1, 0xff

    .line 189
    const/4 v4, 0x1

    shl-int/2addr v4, v0

    move v0, v1

    .line 190
    :goto_1
    add-int v5, v1, v4

    if-ge v0, v5, :cond_3

    .line 191
    invoke-static {v2}, Lokhttp3/internal/framed/Huffman$Node;->a(Lokhttp3/internal/framed/Huffman$Node;)[Lokhttp3/internal/framed/Huffman$Node;

    move-result-object v5

    aput-object v3, v5, v0

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    :cond_3
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 166
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lokhttp3/internal/framed/Huffman;->b:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 167
    sget-object v1, Lokhttp3/internal/framed/Huffman;->a:[I

    aget v1, v1, v0

    sget-object v2, Lokhttp3/internal/framed/Huffman;->b:[B

    aget-byte v2, v2, v0

    invoke-direct {p0, v0, v1, v2}, Lokhttp3/internal/framed/Huffman;->a(IIB)V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    return-void
.end method


# virtual methods
.method a([B)I
    .locals 6

    .prologue
    .line 117
    const-wide/16 v2, 0x0

    .line 119
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 120
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    .line 121
    sget-object v4, Lokhttp3/internal/framed/Huffman;->b:[B

    aget-byte v1, v4, v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    const-wide/16 v0, 0x7

    add-long/2addr v0, v2

    const/4 v2, 0x3

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method a([BLjava/io/OutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 91
    const-wide/16 v2, 0x0

    move v1, v0

    .line 94
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 95
    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    .line 96
    sget-object v5, Lokhttp3/internal/framed/Huffman;->a:[I

    aget v5, v5, v4

    .line 97
    sget-object v6, Lokhttp3/internal/framed/Huffman;->b:[B

    aget-byte v4, v6, v4

    .line 99
    shl-long/2addr v2, v4

    .line 100
    int-to-long v6, v5

    or-long/2addr v2, v6

    .line 101
    add-int/2addr v1, v4

    .line 103
    :goto_1
    const/16 v4, 0x8

    if-lt v1, v4, :cond_0

    .line 104
    add-int/lit8 v1, v1, -0x8

    .line 105
    shr-long v4, v2, v1

    long-to-int v4, v4

    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 94
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_1
    if-lez v1, :cond_2

    .line 110
    rsub-int/lit8 v0, v1, 0x8

    shl-long/2addr v2, v0

    .line 111
    const/16 v0, 0xff

    ushr-int/2addr v0, v1

    int-to-long v0, v0

    or-long/2addr v0, v2

    .line 112
    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 114
    :cond_2
    return-void
.end method

.method b([B)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 128
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 129
    iget-object v1, p0, Lokhttp3/internal/framed/Huffman;->d:Lokhttp3/internal/framed/Huffman$Node;

    move v2, v0

    move-object v3, v1

    move v1, v0

    .line 132
    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_3

    .line 133
    aget-byte v5, p1, v0

    and-int/lit16 v5, v5, 0xff

    .line 134
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v5

    .line 135
    add-int/lit8 v1, v1, 0x8

    .line 136
    :goto_1
    const/16 v5, 0x8

    if-lt v1, v5, :cond_1

    .line 137
    add-int/lit8 v5, v1, -0x8

    ushr-int v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    .line 138
    invoke-static {v3}, Lokhttp3/internal/framed/Huffman$Node;->a(Lokhttp3/internal/framed/Huffman$Node;)[Lokhttp3/internal/framed/Huffman$Node;

    move-result-object v3

    aget-object v3, v3, v5

    .line 139
    invoke-static {v3}, Lokhttp3/internal/framed/Huffman$Node;->a(Lokhttp3/internal/framed/Huffman$Node;)[Lokhttp3/internal/framed/Huffman$Node;

    move-result-object v5

    if-nez v5, :cond_0

    .line 141
    invoke-static {v3}, Lokhttp3/internal/framed/Huffman$Node;->b(Lokhttp3/internal/framed/Huffman$Node;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 142
    invoke-static {v3}, Lokhttp3/internal/framed/Huffman$Node;->c(Lokhttp3/internal/framed/Huffman$Node;)I

    move-result v3

    sub-int/2addr v1, v3

    .line 143
    iget-object v3, p0, Lokhttp3/internal/framed/Huffman;->d:Lokhttp3/internal/framed/Huffman$Node;

    goto :goto_1

    .line 146
    :cond_0
    add-int/lit8 v1, v1, -0x8

    goto :goto_1

    .line 132
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_2
    invoke-static {v0}, Lokhttp3/internal/framed/Huffman$Node;->b(Lokhttp3/internal/framed/Huffman$Node;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 158
    invoke-static {v0}, Lokhttp3/internal/framed/Huffman$Node;->c(Lokhttp3/internal/framed/Huffman$Node;)I

    move-result v0

    sub-int/2addr v1, v0

    .line 159
    iget-object v3, p0, Lokhttp3/internal/framed/Huffman;->d:Lokhttp3/internal/framed/Huffman$Node;

    .line 151
    :cond_3
    if-lez v1, :cond_4

    .line 152
    rsub-int/lit8 v0, v1, 0x8

    shl-int v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    .line 153
    invoke-static {v3}, Lokhttp3/internal/framed/Huffman$Node;->a(Lokhttp3/internal/framed/Huffman$Node;)[Lokhttp3/internal/framed/Huffman$Node;

    move-result-object v3

    aget-object v0, v3, v0

    .line 154
    invoke-static {v0}, Lokhttp3/internal/framed/Huffman$Node;->a(Lokhttp3/internal/framed/Huffman$Node;)[Lokhttp3/internal/framed/Huffman$Node;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-static {v0}, Lokhttp3/internal/framed/Huffman$Node;->c(Lokhttp3/internal/framed/Huffman$Node;)I

    move-result v3

    if-le v3, v1, :cond_2

    .line 162
    :cond_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
