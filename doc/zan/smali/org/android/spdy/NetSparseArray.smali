.class public Lorg/android/spdy/NetSparseArray;
.super Ljava/lang/Object;
.source "NetSparseArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/android/spdy/NetSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/android/spdy/NetSparseArray;-><init>(I)V

    .line 16
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean v1, p0, Lorg/android/spdy/NetSparseArray;->mGarbage:Z

    .line 21
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/android/spdy/NetSparseArray;->mKeys:[I

    .line 22
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/android/spdy/NetSparseArray;->mValues:[Ljava/lang/Object;

    .line 23
    iput v1, p0, Lorg/android/spdy/NetSparseArray;->mSize:I

    .line 24
    return-void
.end method

.method private static binarySearch([IIII)I
    .locals 4

    .prologue
    .line 286
    add-int v2, p1, p2

    add-int/lit8 v0, p1, -0x1

    move v1, v0

    move v0, v2

    .line 288
    :goto_0
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 289
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 291
    aget v3, p0, v2

    if-ge v3, p3, :cond_0

    move v1, v2

    .line 292
    goto :goto_0

    :cond_0
    move v0, v2

    .line 294
    goto :goto_0

    .line 297
    :cond_1
    add-int v1, p1, p2

    if-ne v0, v1, :cond_3

    .line 298
    add-int v0, p1, p2

    xor-int/lit8 v0, v0, -0x1

    .line 302
    :cond_2
    :goto_1
    return v0

    .line 299
    :cond_3
    aget v1, p0, v0

    if-eq v1, p3, :cond_2

    .line 302
    xor-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private gc()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 69
    iget v3, p0, Lorg/android/spdy/NetSparseArray;->mSize:I

    .line 71
    iget-object v4, p0, Lorg/android/spdy/NetSparseArray;->mKeys:[I

    .line 72
    iget-object v5, p0, Lorg/android/spdy/NetSparseArray;->mValues:[Ljava/lang/Object;

    move v1, v2

    move v0, v2

    .line 74
    :goto_0
    if-ge v1, v3, :cond_2

    .line 75
    aget-object v6, v5, v1

    .line 77
    sget-object v7, Lorg/android/spdy/NetSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    .line 78
    if-eq v1, v0, :cond_0

    .line 79
    aget v7, v4, v1

    aput v7, v4, v0

    .line 80
    aput-object v6, v5, v0

    .line 81
    const/4 v6, 0x0

    aput-object v6, v5, v1

    .line 84
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 74
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_2
    iput-boolean v2, p0, Lorg/android/spdy/NetSparseArray;->mGarbage:Z

    .line 89
    iput v0, p0, Lorg/android/spdy/NetSparseArray;->mSize:I

    .line 90
    return-void
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 256
    iget v0, p0, Lorg/android/spdy/NetSparseArray;->mSize:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/android/spdy/NetSparseArray;->mKeys:[I

    iget v1, p0, Lorg/android/spdy/NetSparseArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-gt p1, v0, :cond_0

    .line 257
    invoke-virtual {p0, p1, p2}, Lorg/android/spdy/NetSparseArray;->put(ILjava/lang/Object;)V

    .line 283
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-boolean v0, p0, Lorg/android/spdy/NetSparseArray;->mGarbage:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/android/spdy/NetSparseArray;->mSize:I

    iget-object v1, p0, Lorg/android/spdy/NetSparseArray;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 262
    invoke-direct {p0}, Lorg/android/spdy/NetSparseArray;->gc()V

    .line 265
    :cond_1
    iget v0, p0, Lorg/android/spdy/NetSparseArray;->mSize:I

    .line 266
    iget-object v1, p0, Lorg/android/spdy/NetSparseArray;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 267
    add-int/lit8 v1, v0, 0x1

    .line 269
    new-array v2, v1, [I

    .line 270
    new-array v1, v1, [Ljava/lang/Object;

    .line 273
    iget-object v3, p0, Lorg/android/spdy/NetSparseArray;->mKeys:[I

    iget-object v4, p0, Lorg/android/spdy/NetSparseArray;->mKeys:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    iget-object v3, p0, Lorg/android/spdy/NetSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v4, p0, Lorg/android/spdy/NetSparseArray;->mValues:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    iput-object v2, p0, Lorg/android/spdy/NetSparseArray;->mKeys:[I

    .line 277
    iput-object v1, p0, Lorg/android/spdy/NetSparseArray;->mValues:[Ljava/lang/Object;

    .line 280
    :cond_2
    iget-object v1, p0, Lorg/android/spdy/NetSparseArray;->mKeys:[I

    aput p1, v1, v0

    .line 281
    iget-object v1, p0, Lorg/android/spdy/NetSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 282
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/android/spdy/NetSparseArray;->mSize:I

    goto :goto_0
.end method

.method public clear()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 240
    iget v2, p0, Lorg/android/spdy/NetSparseArray;->mSize:I

    .line 241
    iget-object v3, p0, Lorg/android/spdy/NetSparseArray;->mValues:[Ljava/lang/Object;

    move v0, v1

    .line 243
    :goto_0
    if-ge v0, v2, :cond_0

    .line 244
    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_0
    iput v1, p0, Lorg/android/spdy/NetSparseArray;->mSize:I

    .line 248
    iput-boolean v1, p0, Lorg/android/spdy/NetSparseArray;->mGarbage:Z

    .line 249
    return-void
.end method

.method public delete(I)V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lorg/android/spdy/NetSparseArray;->mKeys:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/android/spdy/NetSparseArray;->mSize:I

    invoke-static {v0, v1, v2, p1}, Lorg/android/spdy/NetSparseArray;->binarySearch([IIII)I

    move-result v0

    .line 47
    if-ltz v0, :cond_0

    .line 48
    iget-object v1, p0, Lorg/android/spdy/NetSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lorg/android/spdy/NetSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 49
    iget-object v1, p0, Lorg/android/spdy/NetSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Lorg/android/spdy/NetSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/spdy/NetSparseArray;->mGarbage:Z

    .line 53
    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/android/spdy/NetSparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lorg/android/spdy/NetSparseArray;->mKeys:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/android/spdy/NetSparseArray;->mSize:I

    invoke-static {v0, v1, v2, p1}, Lorg/android/spdy/NetSparseArray;->binarySearch([IIII)I

    move-result v0

    .line 36
    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/android/spdy/NetSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lorg/android/spdy/NetSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-object p2

    :cond_1
    iget-object v1, p0, Lorg/android/spdy/NetSparseArray;->mValues:[Ljava/lang/Object;

    aget-object p2, v1, v0

    goto :goto_0
.end method

.method public indexOfKey(I)I
    .locals 3

    .prologue
    .line 209
    iget-boolean v0, p0, Lorg/android/spdy/NetSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0}, Lorg/android/spdy/NetSparseArray;->gc()V

    .line 213
    :cond_0
    iget-object v0, p0, Lorg/android/spdy/NetSparseArray;->mKeys:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/android/spdy/NetSparseArray;->mSize:I

    invoke-static {v0, v1, v2, p1}, Lorg/android/spdy/NetSparseArray;->binarySearch([IIII)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 225
    iget-boolean v0, p0, Lorg/android/spdy/NetSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 226
    invoke-direct {p0}, Lorg/android/spdy/NetSparseArray;->gc()V

    .line 229
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/android/spdy/NetSparseArray;->mSize:I

    if-ge v0, v1, :cond_2

    .line 230
    iget-object v1, p0, Lorg/android/spdy/NetSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 233
    :goto_1
    return v0

    .line 229
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public keyAt(I)I
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lorg/android/spdy/NetSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lorg/android/spdy/NetSparseArray;->gc()V

    .line 173
    :cond_0
    iget-object v0, p0, Lorg/android/spdy/NetSparseArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 98
    iget-object v0, p0, Lorg/android/spdy/NetSparseArray;->mKeys:[I

    iget v1, p0, Lorg/android/spdy/NetSparseArray;->mSize:I

    invoke-static {v0, v5, v1, p1}, Lorg/android/spdy/NetSparseArray;->binarySearch([IIII)I

    move-result v0

    .line 100
    if-ltz v0, :cond_0

    .line 101
    iget-object v1, p0, Lorg/android/spdy/NetSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 142
    :goto_0
    return-void

    .line 103
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 105
    iget v1, p0, Lorg/android/spdy/NetSparseArray;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/android/spdy/NetSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lorg/android/spdy/NetSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 106
    iget-object v1, p0, Lorg/android/spdy/NetSparseArray;->mKeys:[I

    aput p1, v1, v0

    .line 107
    iget-object v1, p0, Lorg/android/spdy/NetSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    goto :goto_0

    .line 111
    :cond_1
    iget-boolean v1, p0, Lorg/android/spdy/NetSparseArray;->mGarbage:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/android/spdy/NetSparseArray;->mSize:I

    iget-object v2, p0, Lorg/android/spdy/NetSparseArray;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 112
    invoke-direct {p0}, Lorg/android/spdy/NetSparseArray;->gc()V

    .line 115
    iget-object v0, p0, Lorg/android/spdy/NetSparseArray;->mKeys:[I

    iget v1, p0, Lorg/android/spdy/NetSparseArray;->mSize:I

    invoke-static {v0, v5, v1, p1}, Lorg/android/spdy/NetSparseArray;->binarySearch([IIII)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 118
    :cond_2
    iget v1, p0, Lorg/android/spdy/NetSparseArray;->mSize:I

    iget-object v2, p0, Lorg/android/spdy/NetSparseArray;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 119
    iget v1, p0, Lorg/android/spdy/NetSparseArray;->mSize:I

    add-int/lit8 v1, v1, 0x14

    .line 121
    new-array v2, v1, [I

    .line 122
    new-array v1, v1, [Ljava/lang/Object;

    .line 125
    iget-object v3, p0, Lorg/android/spdy/NetSparseArray;->mKeys:[I

    iget-object v4, p0, Lorg/android/spdy/NetSparseArray;->mKeys:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget-object v3, p0, Lorg/android/spdy/NetSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v4, p0, Lorg/android/spdy/NetSparseArray;->mValues:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iput-object v2, p0, Lorg/android/spdy/NetSparseArray;->mKeys:[I

    .line 129
    iput-object v1, p0, Lorg/android/spdy/NetSparseArray;->mValues:[Ljava/lang/Object;

    .line 132
    :cond_3
    iget v1, p0, Lorg/android/spdy/NetSparseArray;->mSize:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 134
    iget-object v1, p0, Lorg/android/spdy/NetSparseArray;->mKeys:[I

    iget-object v2, p0, Lorg/android/spdy/NetSparseArray;->mKeys:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lorg/android/spdy/NetSparseArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    iget-object v1, p0, Lorg/android/spdy/NetSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/android/spdy/NetSparseArray;->mValues:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lorg/android/spdy/NetSparseArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    :cond_4
    iget-object v1, p0, Lorg/android/spdy/NetSparseArray;->mKeys:[I

    aput p1, v1, v0

    .line 139
    iget-object v1, p0, Lorg/android/spdy/NetSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 140
    iget v0, p0, Lorg/android/spdy/NetSparseArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/android/spdy/NetSparseArray;->mSize:I

    goto :goto_0
.end method

.method public remove(I)V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lorg/android/spdy/NetSparseArray;->delete(I)V

    .line 58
    return-void
.end method

.method public removeAt(I)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lorg/android/spdy/NetSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Lorg/android/spdy/NetSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lorg/android/spdy/NetSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v1, Lorg/android/spdy/NetSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/spdy/NetSparseArray;->mGarbage:Z

    .line 66
    :cond_0
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 196
    iget-boolean v0, p0, Lorg/android/spdy/NetSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 197
    invoke-direct {p0}, Lorg/android/spdy/NetSparseArray;->gc()V

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/android/spdy/NetSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 201
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lorg/android/spdy/NetSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0}, Lorg/android/spdy/NetSparseArray;->gc()V

    .line 160
    :cond_0
    iget v0, p0, Lorg/android/spdy/NetSparseArray;->mSize:I

    return v0
.end method

.method public toArray([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 147
    iget-object v1, p0, Lorg/android/spdy/NetSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    aput-object v1, p1, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 183
    iget-boolean v0, p0, Lorg/android/spdy/NetSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Lorg/android/spdy/NetSparseArray;->gc()V

    .line 187
    :cond_0
    iget-object v0, p0, Lorg/android/spdy/NetSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
