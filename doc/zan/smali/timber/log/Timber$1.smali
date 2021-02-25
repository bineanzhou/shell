.class final Ltimber/log/Timber$1;
.super Ltimber/log/Timber$Tree;
.source "Timber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltimber/log/Timber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Ltimber/log/Timber$Tree;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 367
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Missing override for log method."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public varargs a(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 346
    sget-object v1, Ltimber/log/Timber;->a:[Ltimber/log/Timber$Tree;

    .line 347
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 348
    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 360
    sget-object v1, Ltimber/log/Timber;->a:[Ltimber/log/Timber$Tree;

    .line 361
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 362
    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->a(ILjava/lang/Throwable;)V

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_0
    return-void
.end method

.method public varargs a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 353
    sget-object v1, Ltimber/log/Timber;->a:[Ltimber/log/Timber$Tree;

    .line 354
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 355
    invoke-virtual {v3, p1, p2, p3, p4}, Ltimber/log/Timber$Tree;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    :cond_0
    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 220
    sget-object v1, Ltimber/log/Timber;->a:[Ltimber/log/Timber$Tree;

    .line 221
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 222
    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 234
    sget-object v1, Ltimber/log/Timber;->a:[Ltimber/log/Timber$Tree;

    .line 235
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 236
    invoke-virtual {v3, p1}, Ltimber/log/Timber$Tree;->a(Ljava/lang/Throwable;)V

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_0
    return-void
.end method

.method public varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 227
    sget-object v1, Ltimber/log/Timber;->a:[Ltimber/log/Timber$Tree;

    .line 228
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 229
    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    return-void
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 241
    sget-object v1, Ltimber/log/Timber;->a:[Ltimber/log/Timber$Tree;

    .line 242
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 243
    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 255
    sget-object v1, Ltimber/log/Timber;->a:[Ltimber/log/Timber$Tree;

    .line 256
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 257
    invoke-virtual {v3, p1}, Ltimber/log/Timber$Tree;->b(Ljava/lang/Throwable;)V

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_0
    return-void
.end method

.method public varargs b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 248
    sget-object v1, Ltimber/log/Timber;->a:[Ltimber/log/Timber$Tree;

    .line 249
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 250
    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_0
    return-void
.end method

.method public varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 262
    sget-object v1, Ltimber/log/Timber;->a:[Ltimber/log/Timber$Tree;

    .line 263
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 264
    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 276
    sget-object v1, Ltimber/log/Timber;->a:[Ltimber/log/Timber$Tree;

    .line 277
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 278
    invoke-virtual {v3, p1}, Ltimber/log/Timber$Tree;->c(Ljava/lang/Throwable;)V

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    return-void
.end method

.method public varargs c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 269
    sget-object v1, Ltimber/log/Timber;->a:[Ltimber/log/Timber$Tree;

    .line 270
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 271
    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_0
    return-void
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 283
    sget-object v1, Ltimber/log/Timber;->a:[Ltimber/log/Timber$Tree;

    .line 284
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 285
    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 297
    sget-object v1, Ltimber/log/Timber;->a:[Ltimber/log/Timber$Tree;

    .line 298
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 299
    invoke-virtual {v3, p1}, Ltimber/log/Timber$Tree;->d(Ljava/lang/Throwable;)V

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_0
    return-void
.end method

.method public varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 290
    sget-object v1, Ltimber/log/Timber;->a:[Ltimber/log/Timber$Tree;

    .line 291
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 292
    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_0
    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 304
    sget-object v1, Ltimber/log/Timber;->a:[Ltimber/log/Timber$Tree;

    .line 305
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 306
    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 318
    sget-object v1, Ltimber/log/Timber;->a:[Ltimber/log/Timber$Tree;

    .line 319
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 320
    invoke-virtual {v3, p1}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    :cond_0
    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 311
    sget-object v1, Ltimber/log/Timber;->a:[Ltimber/log/Timber$Tree;

    .line 312
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 313
    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_0
    return-void
.end method

.method public varargs f(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 325
    sget-object v1, Ltimber/log/Timber;->a:[Ltimber/log/Timber$Tree;

    .line 326
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 327
    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_0
    return-void
.end method

.method public f(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 339
    sget-object v1, Ltimber/log/Timber;->a:[Ltimber/log/Timber$Tree;

    .line 340
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 341
    invoke-virtual {v3, p1}, Ltimber/log/Timber$Tree;->f(Ljava/lang/Throwable;)V

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    :cond_0
    return-void
.end method

.method public varargs f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 332
    sget-object v1, Ltimber/log/Timber;->a:[Ltimber/log/Timber$Tree;

    .line 333
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 334
    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    :cond_0
    return-void
.end method
