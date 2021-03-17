.class Lcom/bumptech/glide/gifencoder/NeuQuant;
.super Ljava/lang/Object;
.source "NeuQuant.java"


# static fields
.field protected static final A:I = 0x12

.field protected static final B:I = 0x40000

.field protected static final a:I = 0x100

.field protected static final b:I = 0x1f3

.field protected static final c:I = 0x1eb

.field protected static final d:I = 0x1e7

.field protected static final e:I = 0x1f7

.field protected static final f:I = 0x5e5

.field protected static final g:I = 0xff

.field protected static final h:I = 0x4

.field protected static final i:I = 0x64

.field protected static final j:I = 0x10

.field protected static final k:I = 0x10000

.field protected static final l:I = 0xa

.field protected static final m:I = 0x400

.field protected static final n:I = 0xa

.field protected static final o:I = 0x40

.field protected static final p:I = 0x10000

.field protected static final q:I = 0x20

.field protected static final r:I = 0x6

.field protected static final s:I = 0x40

.field protected static final t:I = 0x800

.field protected static final u:I = 0x1e

.field protected static final v:I = 0xa

.field protected static final w:I = 0x400

.field protected static final y:I = 0x8

.field protected static final z:I = 0x100


# instance fields
.field protected C:[B

.field protected D:I

.field protected E:I

.field protected F:[[I

.field protected G:[I

.field protected H:[I

.field protected I:[I

.field protected J:[I

.field protected x:I


# direct methods
.method public constructor <init>([BII)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/16 v6, 0x100

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-array v0, v6, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->G:[I

    .line 127
    new-array v0, v6, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->H:[I

    .line 130
    new-array v0, v6, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->I:[I

    .line 132
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->J:[I

    .line 145
    iput-object p1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->C:[B

    .line 146
    iput p2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->D:I

    .line 147
    iput p3, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->E:I

    .line 149
    new-array v0, v6, [[I

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->F:[[I

    move v0, v1

    .line 150
    :goto_0
    if-ge v0, v6, :cond_0

    .line 151
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->F:[[I

    const/4 v3, 0x4

    new-array v3, v3, [I

    aput-object v3, v2, v0

    .line 152
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->F:[[I

    aget-object v2, v2, v0

    .line 153
    const/4 v3, 0x1

    const/4 v4, 0x2

    shl-int/lit8 v5, v0, 0xc

    div-int/lit16 v5, v5, 0x100

    aput v5, v2, v4

    aput v5, v2, v3

    aput v5, v2, v1

    .line 154
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->I:[I

    aput v6, v2, v0

    .line 155
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->H:[I

    aput v1, v2, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method


# virtual methods
.method public a(III)I
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v6, -0x1

    const/16 v5, 0x100

    .line 317
    const/16 v3, 0x3e8

    .line 319
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->G:[I

    aget v4, v0, p2

    .line 320
    add-int/lit8 v0, v4, -0x1

    move v1, v6

    move v2, v3

    move v7, v0

    move v3, v4

    .line 322
    :goto_0
    if-lt v3, v5, :cond_0

    if-ltz v7, :cond_9

    .line 323
    :cond_0
    if-ge v3, v5, :cond_c

    .line 324
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->F:[[I

    aget-object v8, v0, v3

    .line 325
    aget v0, v8, v10

    sub-int/2addr v0, p2

    .line 326
    if-lt v0, v2, :cond_1

    move v3, v2

    move v4, v5

    move v2, v1

    .line 348
    :goto_1
    if-ltz v7, :cond_a

    .line 349
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->F:[[I

    aget-object v8, v0, v7

    .line 350
    aget v0, v8, v10

    sub-int v0, p2, v0

    .line 351
    if-lt v0, v3, :cond_5

    move v1, v2

    move v7, v6

    move v2, v3

    move v3, v4

    .line 352
    goto :goto_0

    .line 329
    :cond_1
    add-int/lit8 v4, v3, 0x1

    .line 330
    if-gez v0, :cond_2

    .line 331
    neg-int v0, v0

    .line 332
    :cond_2
    aget v3, v8, v9

    sub-int/2addr v3, p1

    .line 333
    if-gez v3, :cond_3

    .line 334
    neg-int v3, v3

    .line 335
    :cond_3
    add-int/2addr v3, v0

    .line 336
    if-ge v3, v2, :cond_b

    .line 337
    aget v0, v8, v11

    sub-int/2addr v0, p3

    .line 338
    if-gez v0, :cond_4

    .line 339
    neg-int v0, v0

    .line 340
    :cond_4
    add-int/2addr v3, v0

    .line 341
    if-ge v3, v2, :cond_b

    .line 343
    const/4 v0, 0x3

    aget v0, v8, v0

    move v2, v0

    goto :goto_1

    .line 354
    :cond_5
    add-int/lit8 v7, v7, -0x1

    .line 355
    if-gez v0, :cond_6

    .line 356
    neg-int v0, v0

    .line 357
    :cond_6
    aget v1, v8, v9

    sub-int/2addr v1, p1

    .line 358
    if-gez v1, :cond_7

    .line 359
    neg-int v1, v1

    .line 360
    :cond_7
    add-int/2addr v1, v0

    .line 361
    if-ge v1, v3, :cond_a

    .line 362
    aget v0, v8, v11

    sub-int/2addr v0, p3

    .line 363
    if-gez v0, :cond_8

    .line 364
    neg-int v0, v0

    .line 365
    :cond_8
    add-int/2addr v0, v1

    .line 366
    if-ge v0, v3, :cond_a

    .line 368
    const/4 v1, 0x3

    aget v2, v8, v1

    move v1, v2

    move v3, v4

    move v2, v0

    goto :goto_0

    .line 374
    :cond_9
    return v1

    :cond_a
    move v1, v2

    move v2, v3

    move v3, v4

    goto :goto_0

    :cond_b
    move v3, v2

    move v2, v1

    goto :goto_1

    :cond_c
    move v4, v3

    move v3, v2

    move v2, v1

    goto :goto_1
.end method

.method protected a(IIIII)V
    .locals 11

    .prologue
    .line 411
    sub-int v0, p2, p1

    .line 412
    const/4 v1, -0x1

    if-ge v0, v1, :cond_5

    .line 413
    const/4 v0, -0x1

    move v5, v0

    .line 414
    :goto_0
    add-int v0, p2, p1

    .line 415
    const/16 v1, 0x100

    if-le v0, v1, :cond_0

    .line 416
    const/16 v0, 0x100

    .line 418
    :cond_0
    add-int/lit8 v3, p2, 0x1

    .line 419
    add-int/lit8 v2, p2, -0x1

    .line 420
    const/4 v1, 0x1

    move v4, v2

    move v2, v3

    .line 421
    :goto_1
    if-lt v2, v0, :cond_1

    if-le v4, v5, :cond_2

    .line 422
    :cond_1
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->J:[I

    add-int/lit8 v3, v1, 0x1

    aget v6, v6, v1

    .line 423
    if-ge v2, v0, :cond_4

    .line 424
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->F:[[I

    add-int/lit8 v1, v2, 0x1

    aget-object v2, v7, v2

    .line 426
    const/4 v7, 0x0

    :try_start_0
    aget v8, v2, v7

    const/4 v9, 0x0

    aget v9, v2, v9

    sub-int/2addr v9, p3

    mul-int/2addr v9, v6

    const/high16 v10, 0x40000

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v2, v7

    .line 427
    const/4 v7, 0x1

    aget v8, v2, v7

    const/4 v9, 0x1

    aget v9, v2, v9

    sub-int/2addr v9, p4

    mul-int/2addr v9, v6

    const/high16 v10, 0x40000

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v2, v7

    .line 428
    const/4 v7, 0x2

    aget v8, v2, v7

    const/4 v9, 0x2

    aget v9, v2, v9

    sub-int v9, v9, p5

    mul-int/2addr v9, v6

    const/high16 v10, 0x40000

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v2, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 432
    :goto_2
    if-le v4, v5, :cond_3

    .line 433
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->F:[[I

    add-int/lit8 v2, v4, -0x1

    aget-object v4, v7, v4

    .line 435
    const/4 v7, 0x0

    :try_start_1
    aget v8, v4, v7

    const/4 v9, 0x0

    aget v9, v4, v9

    sub-int/2addr v9, p3

    mul-int/2addr v9, v6

    const/high16 v10, 0x40000

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v4, v7

    .line 436
    const/4 v7, 0x1

    aget v8, v4, v7

    const/4 v9, 0x1

    aget v9, v4, v9

    sub-int/2addr v9, p4

    mul-int/2addr v9, v6

    const/high16 v10, 0x40000

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v4, v7

    .line 437
    const/4 v7, 0x2

    aget v8, v4, v7

    const/4 v9, 0x2

    aget v9, v4, v9

    sub-int v9, v9, p5

    mul-int/2addr v6, v9

    const/high16 v9, 0x40000

    div-int/2addr v6, v9

    sub-int v6, v8, v6

    aput v6, v4, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v2

    move v2, v1

    move v1, v3

    .line 439
    goto :goto_1

    .line 438
    :catch_0
    move-exception v4

    move v4, v2

    move v2, v1

    move v1, v3

    .line 439
    goto :goto_1

    .line 442
    :cond_2
    return-void

    .line 429
    :catch_1
    move-exception v2

    goto :goto_2

    :cond_3
    move v2, v1

    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    move v5, v0

    goto/16 :goto_0
.end method

.method public a()[B
    .locals 10

    .prologue
    const/16 v9, 0x100

    const/4 v1, 0x0

    .line 160
    const/16 v0, 0x300

    new-array v3, v0, [B

    .line 161
    new-array v4, v9, [I

    move v0, v1

    .line 162
    :goto_0
    if-ge v0, v9, :cond_0

    .line 163
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->F:[[I

    aget-object v2, v2, v0

    const/4 v5, 0x3

    aget v2, v2, v5

    aput v0, v4, v2

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v1

    .line 165
    :goto_1
    if-ge v0, v9, :cond_1

    .line 166
    aget v5, v4, v0

    .line 167
    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->F:[[I

    aget-object v7, v7, v5

    aget v7, v7, v1

    int-to-byte v7, v7

    aput-byte v7, v3, v2

    .line 168
    add-int/lit8 v7, v6, 0x1

    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->F:[[I

    aget-object v2, v2, v5

    const/4 v8, 0x1

    aget v2, v2, v8

    int-to-byte v2, v2

    aput-byte v2, v3, v6

    .line 169
    add-int/lit8 v2, v7, 0x1

    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->F:[[I

    aget-object v5, v6, v5

    const/4 v6, 0x2

    aget v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v7

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    :cond_1
    return-object v3
.end method

.method protected b(III)I
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 471
    const v5, 0x7fffffff

    .line 473
    const/4 v6, -0x1

    move v2, v5

    move v4, v6

    move v3, v7

    .line 476
    :goto_0
    const/16 v0, 0x100

    if-ge v3, v0, :cond_3

    .line 477
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->F:[[I

    aget-object v8, v0, v3

    .line 478
    aget v0, v8, v7

    sub-int/2addr v0, p1

    .line 479
    if-gez v0, :cond_0

    .line 480
    neg-int v0, v0

    .line 481
    :cond_0
    const/4 v1, 0x1

    aget v1, v8, v1

    sub-int/2addr v1, p2

    .line 482
    if-gez v1, :cond_1

    .line 483
    neg-int v1, v1

    .line 484
    :cond_1
    add-int/2addr v1, v0

    .line 485
    const/4 v0, 0x2

    aget v0, v8, v0

    sub-int/2addr v0, p3

    .line 486
    if-gez v0, :cond_2

    .line 487
    neg-int v0, v0

    .line 488
    :cond_2
    add-int/2addr v1, v0

    .line 489
    if-ge v1, v2, :cond_5

    move v0, v1

    move v2, v3

    .line 493
    :goto_1
    iget-object v4, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->H:[I

    aget v4, v4, v3

    shr-int/lit8 v4, v4, 0xc

    sub-int/2addr v1, v4

    .line 494
    if-ge v1, v5, :cond_4

    move v4, v3

    .line 498
    :goto_2
    iget-object v5, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->I:[I

    aget v5, v5, v3

    shr-int/lit8 v5, v5, 0xa

    .line 499
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->I:[I

    aget v8, v6, v3

    sub-int/2addr v8, v5

    aput v8, v6, v3

    .line 500
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->H:[I

    aget v8, v6, v3

    shl-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v8

    aput v5, v6, v3

    .line 476
    add-int/lit8 v3, v3, 0x1

    move v5, v1

    move v6, v4

    move v4, v2

    move v2, v0

    goto :goto_0

    .line 502
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->I:[I

    aget v1, v0, v4

    add-int/lit8 v1, v1, 0x40

    aput v1, v0, v4

    .line 503
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->H:[I

    aget v1, v0, v4

    const/high16 v2, 0x10000

    sub-int/2addr v1, v2

    aput v1, v0, v4

    .line 504
    return v6

    :cond_4
    move v1, v5

    move v4, v6

    goto :goto_2

    :cond_5
    move v0, v2

    move v2, v4

    goto :goto_1
.end method

.method public b()V
    .locals 14

    .prologue
    const/16 v13, 0x100

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 186
    move v4, v6

    move v5, v6

    move v3, v6

    .line 188
    :goto_0
    if-ge v3, v13, :cond_4

    .line 189
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->F:[[I

    aget-object v7, v0, v3

    .line 191
    aget v0, v7, v10

    .line 193
    add-int/lit8 v2, v3, 0x1

    move v1, v3

    :goto_1
    if-ge v2, v13, :cond_1

    .line 194
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->F:[[I

    aget-object v8, v8, v2

    .line 195
    aget v9, v8, v10

    if-ge v9, v0, :cond_0

    .line 197
    aget v0, v8, v10

    move v1, v2

    .line 193
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 200
    :cond_1
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->F:[[I

    aget-object v2, v2, v1

    .line 202
    if-eq v3, v1, :cond_2

    .line 203
    aget v1, v2, v6

    .line 204
    aget v8, v7, v6

    aput v8, v2, v6

    .line 205
    aput v1, v7, v6

    .line 206
    aget v1, v2, v10

    .line 207
    aget v8, v7, v10

    aput v8, v2, v10

    .line 208
    aput v1, v7, v10

    .line 209
    aget v1, v2, v11

    .line 210
    aget v8, v7, v11

    aput v8, v2, v11

    .line 211
    aput v1, v7, v11

    .line 212
    aget v1, v2, v12

    .line 213
    aget v8, v7, v12

    aput v8, v2, v12

    .line 214
    aput v1, v7, v12

    .line 217
    :cond_2
    if-eq v0, v5, :cond_6

    .line 218
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->G:[I

    add-int v2, v4, v3

    shr-int/lit8 v2, v2, 0x1

    aput v2, v1, v5

    .line 219
    add-int/lit8 v1, v5, 0x1

    :goto_2
    if-ge v1, v0, :cond_3

    .line 220
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->G:[I

    aput v3, v2, v1

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v0

    move v0, v3

    .line 188
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    move v5, v1

    goto :goto_0

    .line 225
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->G:[I

    add-int/lit16 v1, v4, 0xff

    shr-int/lit8 v1, v1, 0x1

    aput v1, v0, v5

    .line 226
    add-int/lit8 v0, v5, 0x1

    :goto_4
    if-ge v0, v13, :cond_5

    .line 227
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->G:[I

    const/16 v2, 0xff

    aput v2, v1, v0

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 228
    :cond_5
    return-void

    :cond_6
    move v0, v4

    move v1, v5

    goto :goto_3
.end method

.method protected b(IIIII)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 451
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->F:[[I

    aget-object v0, v0, p2

    .line 452
    aget v1, v0, v3

    aget v2, v0, v3

    sub-int/2addr v2, p3

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v3

    .line 453
    aget v1, v0, v4

    aget v2, v0, v4

    sub-int/2addr v2, p4

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v4

    .line 454
    aget v1, v0, v5

    aget v2, v0, v5

    sub-int/2addr v2, p5

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v5

    .line 455
    return-void
.end method

.method public c()V
    .locals 22

    .prologue
    .line 240
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->D:I

    const/16 v3, 0x5e5

    if-ge v2, v3, :cond_0

    .line 241
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->E:I

    .line 242
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->E:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x1e

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->x:I

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->C:[B

    move-object/from16 v19, v0

    .line 244
    const/4 v5, 0x0

    .line 245
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->D:I

    move/from16 v20, v0

    .line 246
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->D:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->E:I

    mul-int/lit8 v3, v3, 0x3

    div-int v21, v2, v3

    .line 247
    div-int/lit8 v15, v21, 0x64

    .line 248
    const/16 v4, 0x400

    .line 249
    const/16 v6, 0x800

    .line 251
    const/16 v2, 0x20

    .line 254
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 255
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->J:[I

    mul-int v8, v3, v3

    rsub-int v8, v8, 0x400

    mul-int/lit16 v8, v8, 0x100

    const/16 v9, 0x400

    div-int/2addr v8, v9

    mul-int/2addr v8, v4

    aput v8, v7, v3

    .line 254
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 259
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->D:I

    const/16 v7, 0x5e5

    if-ge v3, v7, :cond_4

    .line 260
    const/4 v3, 0x3

    move v14, v3

    .line 274
    :goto_1
    const/4 v3, 0x0

    move/from16 v16, v5

    move v9, v2

    move/from16 v17, v6

    move/from16 v18, v3

    move v3, v4

    .line 275
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 276
    add-int/lit8 v2, v16, 0x0

    aget-byte v2, v19, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v5, v2, 0x4

    .line 277
    add-int/lit8 v2, v16, 0x1

    aget-byte v2, v19, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v6, v2, 0x4

    .line 278
    add-int/lit8 v2, v16, 0x2

    aget-byte v2, v19, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v7, v2, 0x4

    .line 279
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/bumptech/glide/gifencoder/NeuQuant;->b(III)I

    move-result v4

    move-object/from16 v2, p0

    .line 281
    invoke-virtual/range {v2 .. v7}, Lcom/bumptech/glide/gifencoder/NeuQuant;->b(IIIII)V

    .line 282
    if-eqz v9, :cond_2

    move-object/from16 v8, p0

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    .line 283
    invoke-virtual/range {v8 .. v13}, Lcom/bumptech/glide/gifencoder/NeuQuant;->a(IIIII)V

    .line 285
    :cond_2
    add-int v2, v16, v14

    .line 286
    move/from16 v0, v20

    if-lt v2, v0, :cond_c

    .line 287
    move-object/from16 v0, p0

    iget v4, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->D:I

    sub-int/2addr v2, v4

    move v5, v2

    .line 289
    :goto_3
    add-int/lit8 v8, v18, 0x1

    .line 290
    if-nez v15, :cond_b

    .line 291
    const/4 v2, 0x1

    .line 292
    :goto_4
    rem-int v4, v8, v2

    if-nez v4, :cond_a

    .line 293
    move-object/from16 v0, p0

    iget v4, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->x:I

    div-int v4, v3, v4

    sub-int v6, v3, v4

    .line 294
    div-int/lit8 v3, v17, 0x1e

    sub-int v7, v17, v3

    .line 295
    shr-int/lit8 v3, v7, 0x6

    .line 296
    const/4 v4, 0x1

    if-gt v3, v4, :cond_3

    .line 297
    const/4 v3, 0x0

    .line 298
    :cond_3
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_9

    .line 299
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->J:[I

    mul-int v10, v3, v3

    mul-int v11, v4, v4

    sub-int/2addr v10, v11

    mul-int/lit16 v10, v10, 0x100

    mul-int v11, v3, v3

    div-int/2addr v10, v11

    mul-int/2addr v10, v6

    aput v10, v9, v4

    .line 298
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 261
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->D:I

    rem-int/lit16 v3, v3, 0x1f3

    if-eqz v3, :cond_5

    .line 262
    const/16 v3, 0x5d9

    move v14, v3

    goto/16 :goto_1

    .line 264
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->D:I

    rem-int/lit16 v3, v3, 0x1eb

    if-eqz v3, :cond_6

    .line 265
    const/16 v3, 0x5c1

    move v14, v3

    goto/16 :goto_1

    .line 267
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->D:I

    rem-int/lit16 v3, v3, 0x1e7

    if-eqz v3, :cond_7

    .line 268
    const/16 v3, 0x5b5

    move v14, v3

    goto/16 :goto_1

    .line 270
    :cond_7
    const/16 v3, 0x5e5

    move v14, v3

    goto/16 :goto_1

    .line 304
    :cond_8
    return-void

    :cond_9
    move/from16 v16, v5

    move v15, v2

    move v9, v3

    move/from16 v17, v7

    move/from16 v18, v8

    move v3, v6

    goto/16 :goto_2

    :cond_a
    move/from16 v16, v5

    move v15, v2

    move/from16 v18, v8

    goto/16 :goto_2

    :cond_b
    move v2, v15

    goto :goto_4

    :cond_c
    move v5, v2

    goto :goto_3
.end method

.method public d()[B
    .locals 1

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/bumptech/glide/gifencoder/NeuQuant;->c()V

    .line 379
    invoke-virtual {p0}, Lcom/bumptech/glide/gifencoder/NeuQuant;->e()V

    .line 380
    invoke-virtual {p0}, Lcom/bumptech/glide/gifencoder/NeuQuant;->b()V

    .line 381
    invoke-virtual {p0}, Lcom/bumptech/glide/gifencoder/NeuQuant;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 393
    move v0, v1

    :goto_0
    const/16 v2, 0x100

    if-ge v0, v2, :cond_0

    .line 394
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->F:[[I

    aget-object v2, v2, v0

    aget v3, v2, v1

    shr-int/lit8 v3, v3, 0x4

    aput v3, v2, v1

    .line 395
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->F:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aget v4, v2, v3

    shr-int/lit8 v4, v4, 0x4

    aput v4, v2, v3

    .line 396
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->F:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x2

    aget v4, v2, v3

    shr-int/lit8 v4, v4, 0x4

    aput v4, v2, v3

    .line 397
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->F:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x3

    aput v0, v2, v3

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_0
    return-void
.end method
