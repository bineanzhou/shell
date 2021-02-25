.class public final Lokhttp3/internal/framed/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field static final a:I = 0x10000

.field static final b:I = 0x1

.field static final c:I = 0x1

.field static final d:I = 0x2

.field static final e:I = 0x1

.field static final f:I = 0x1

.field static final g:I = 0x2

.field static final h:I = 0x2

.field static final i:I = 0x3

.field static final j:I = 0x4

.field static final k:I = 0x5

.field static final l:I = 0x5

.field static final m:I = 0x6

.field static final n:I = 0x6

.field static final o:I = 0x7

.field static final p:I = 0x8

.field static final q:I = 0xa

.field static final r:I = 0xa

.field static final s:I = 0x1


# instance fields
.field private t:I

.field private u:I

.field private v:I

.field private final w:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lokhttp3/internal/framed/Settings;->w:[I

    return-void
.end method


# virtual methods
.method a(III)Lokhttp3/internal/framed/Settings;
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->w:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 108
    :goto_0
    return-object p0

    .line 94
    :cond_0
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 95
    iget v1, p0, Lokhttp3/internal/framed/Settings;->t:I

    or-int/2addr v1, v0

    iput v1, p0, Lokhttp3/internal/framed/Settings;->t:I

    .line 96
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    .line 97
    iget v1, p0, Lokhttp3/internal/framed/Settings;->u:I

    or-int/2addr v1, v0

    iput v1, p0, Lokhttp3/internal/framed/Settings;->u:I

    .line 101
    :goto_1
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2

    .line 102
    iget v1, p0, Lokhttp3/internal/framed/Settings;->v:I

    or-int/2addr v0, v1

    iput v0, p0, Lokhttp3/internal/framed/Settings;->v:I

    .line 107
    :goto_2
    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->w:[I

    aput p3, v0, p1

    goto :goto_0

    .line 99
    :cond_1
    iget v1, p0, Lokhttp3/internal/framed/Settings;->u:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lokhttp3/internal/framed/Settings;->u:I

    goto :goto_1

    .line 104
    :cond_2
    iget v1, p0, Lokhttp3/internal/framed/Settings;->v:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lokhttp3/internal/framed/Settings;->v:I

    goto :goto_2
.end method

.method a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    iput v1, p0, Lokhttp3/internal/framed/Settings;->v:I

    iput v1, p0, Lokhttp3/internal/framed/Settings;->u:I

    iput v1, p0, Lokhttp3/internal/framed/Settings;->t:I

    .line 86
    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->w:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 87
    return-void
.end method

.method a(Lokhttp3/internal/framed/Settings;)V
    .locals 3

    .prologue
    .line 234
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 235
    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/Settings;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/Settings;->c(I)I

    move-result v1

    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/Settings;->b(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/internal/framed/Settings;->a(III)Lokhttp3/internal/framed/Settings;

    goto :goto_1

    .line 238
    :cond_1
    return-void
.end method

.method a(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 113
    shl-int v1, v0, p1

    .line 114
    iget v2, p0, Lokhttp3/internal/framed/Settings;->t:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 156
    const/4 v2, 0x4

    .line 157
    iget v3, p0, Lokhttp3/internal/framed/Settings;->t:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lokhttp3/internal/framed/Settings;->w:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    :goto_0
    if-ne v2, v0, :cond_2

    :goto_1
    return v0

    :cond_0
    if-eqz p1, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method b()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lokhttp3/internal/framed/Settings;->t:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method b(I)I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->w:[I

    aget v0, v0, p1

    return v0
.end method

.method c()I
    .locals 2

    .prologue
    .line 143
    const/4 v0, 0x2

    .line 144
    iget v1, p0, Lokhttp3/internal/framed/Settings;->t:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->w:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method c(I)I
    .locals 2

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, p1}, Lokhttp3/internal/framed/Settings;->o(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    .line 126
    :cond_0
    invoke-virtual {p0, p1}, Lokhttp3/internal/framed/Settings;->n(I)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    .line 127
    :cond_1
    return v0
.end method

.method d(I)I
    .locals 2

    .prologue
    .line 137
    const/4 v0, 0x2

    .line 138
    iget v1, p0, Lokhttp3/internal/framed/Settings;->t:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->w:[I

    const/4 v1, 0x1

    aget p1, v0, v1

    :cond_0
    return p1
.end method

.method d()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 209
    const/16 v1, 0x400

    .line 210
    iget v2, p0, Lokhttp3/internal/framed/Settings;->t:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lokhttp3/internal/framed/Settings;->w:[I

    const/16 v2, 0xa

    aget v1, v1, v2

    .line 211
    :goto_0
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    move v1, v0

    .line 210
    goto :goto_0
.end method

.method e(I)I
    .locals 2

    .prologue
    .line 149
    const/4 v0, 0x4

    .line 150
    iget v1, p0, Lokhttp3/internal/framed/Settings;->t:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->w:[I

    const/4 v1, 0x2

    aget p1, v0, v1

    :cond_0
    return p1
.end method

.method f(I)I
    .locals 2

    .prologue
    .line 162
    const/16 v0, 0x8

    .line 163
    iget v1, p0, Lokhttp3/internal/framed/Settings;->t:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->w:[I

    const/4 v1, 0x3

    aget p1, v0, v1

    :cond_0
    return p1
.end method

.method g(I)I
    .locals 2

    .prologue
    .line 168
    const/16 v0, 0x10

    .line 169
    iget v1, p0, Lokhttp3/internal/framed/Settings;->t:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->w:[I

    const/4 v1, 0x4

    aget p1, v0, v1

    :cond_0
    return p1
.end method

.method h(I)I
    .locals 2

    .prologue
    .line 174
    const/16 v0, 0x20

    .line 175
    iget v1, p0, Lokhttp3/internal/framed/Settings;->t:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->w:[I

    const/4 v1, 0x5

    aget p1, v0, v1

    :cond_0
    return p1
.end method

.method i(I)I
    .locals 2

    .prologue
    .line 180
    const/16 v0, 0x20

    .line 181
    iget v1, p0, Lokhttp3/internal/framed/Settings;->t:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->w:[I

    const/4 v1, 0x5

    aget p1, v0, v1

    :cond_0
    return p1
.end method

.method j(I)I
    .locals 2

    .prologue
    .line 186
    const/16 v0, 0x40

    .line 187
    iget v1, p0, Lokhttp3/internal/framed/Settings;->t:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->w:[I

    const/4 v1, 0x6

    aget p1, v0, v1

    :cond_0
    return p1
.end method

.method k(I)I
    .locals 2

    .prologue
    .line 192
    const/16 v0, 0x40

    .line 193
    iget v1, p0, Lokhttp3/internal/framed/Settings;->t:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->w:[I

    const/4 v1, 0x6

    aget p1, v0, v1

    :cond_0
    return p1
.end method

.method l(I)I
    .locals 2

    .prologue
    .line 197
    const/16 v0, 0x80

    .line 198
    iget v1, p0, Lokhttp3/internal/framed/Settings;->t:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->w:[I

    const/4 v1, 0x7

    aget p1, v0, v1

    :cond_0
    return p1
.end method

.method m(I)I
    .locals 2

    .prologue
    .line 203
    const/16 v0, 0x100

    .line 204
    iget v1, p0, Lokhttp3/internal/framed/Settings;->t:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->w:[I

    const/16 v1, 0x8

    aget p1, v0, v1

    :cond_0
    return p1
.end method

.method n(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 219
    shl-int v1, v0, p1

    .line 220
    iget v2, p0, Lokhttp3/internal/framed/Settings;->u:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method o(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 225
    shl-int v1, v0, p1

    .line 226
    iget v2, p0, Lokhttp3/internal/framed/Settings;->v:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
