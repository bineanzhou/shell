.class public Lcom/umeng/socialize/b/a/a;
.super Ljava/lang/Object;
.source "ImageImpl.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 39
    invoke-static {}, Lcom/umeng/socialize/b/b/a;->a()V

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/umeng/socialize/media/UMImage;)I
    .locals 2

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMImage;->getImageStyle()I

    move-result v0

    sget v1, Lcom/umeng/socialize/media/UMImage;->FILE_IMAGE:I

    if-ne v0, v1, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/b/a/a;->a(Ljava/io/File;)I

    move-result v0

    .line 323
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMImage;->asBinImage()[B

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/b/a/a;->e([B)I

    move-result v0

    goto :goto_0
.end method

.method private static a(Ljava/io/File;)I
    .locals 2

    .prologue
    .line 437
    if-eqz p0, :cond_0

    .line 440
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 441
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 446
    :goto_0
    return v0

    .line 442
    :catch_0
    move-exception v0

    .line 443
    sget-object v1, Lcom/umeng/socialize/utils/UmengText$IMAGE;->GET_IMAGE_SCALE_ERROR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 446
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 250
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 251
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 252
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 253
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 254
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 255
    invoke-virtual {p0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 256
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 257
    return-object v0

    .line 252
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static a([B)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 186
    if-eqz p0, :cond_0

    .line 187
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([BLjava/io/File;)Ljava/io/File;
    .locals 3

    .prologue
    .line 213
    const/4 v2, 0x0

    .line 216
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 217
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 222
    if-eqz v1, :cond_0

    .line 224
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 230
    :cond_0
    :goto_0
    return-object p1

    .line 225
    :catch_0
    move-exception v0

    .line 226
    sget-object v1, Lcom/umeng/socialize/utils/UmengText$IMAGE;->CLOSE:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 219
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 220
    :goto_1
    :try_start_3
    sget-object v2, Lcom/umeng/socialize/utils/UmengText$IMAGE;->GET_FILE_FROM_BINARY:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 222
    if-eqz v1, :cond_0

    .line 224
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 225
    :catch_2
    move-exception v0

    .line 226
    sget-object v1, Lcom/umeng/socialize/utils/UmengText$IMAGE;->CLOSE:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v2, :cond_1

    .line 224
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 229
    :cond_1
    :goto_3
    throw v0

    .line 225
    :catch_3
    move-exception v1

    .line 226
    sget-object v2, Lcom/umeng/socialize/utils/UmengText$IMAGE;->CLOSE:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 222
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 219
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;IZLandroid/graphics/Bitmap$CompressFormat;)[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x64

    .line 270
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 271
    if-nez p2, :cond_1

    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 274
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 275
    invoke-virtual {v0, p1, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 279
    :goto_0
    invoke-static {v0}, Lcom/umeng/socialize/b/a/a;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 280
    invoke-virtual {v0, p3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 281
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 296
    :goto_1
    return-object v0

    .line 277
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 283
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 285
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 286
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 288
    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 289
    const/16 v3, 0x64

    invoke-virtual {v2, p3, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 292
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 293
    :catch_0
    move-exception v1

    .line 294
    sget-object v2, Lcom/umeng/socialize/utils/UmengText$IMAGE;->TOOBIG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B
    .locals 1

    .prologue
    .line 240
    invoke-static {p0, p1}, Lcom/umeng/socialize/b/a/a;->b(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/umeng/socialize/media/UMImage;I)[B
    .locals 9

    .prologue
    .line 121
    if-nez p0, :cond_1

    .line 122
    invoke-static {}, Lcom/umeng/socialize/utils/DefaultClass;->getBytes()[B

    move-result-object v0

    .line 166
    :cond_0
    :goto_0
    return-object v0

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMImage;->asBinImage()[B

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/umeng/socialize/b/a/a;->a(Lcom/umeng/socialize/media/UMImage;)I

    move-result v0

    if-ge v0, p1, :cond_3

    .line 125
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMImage;->asBinImage()[B

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->compressStyle:Lcom/umeng/socialize/media/UMImage$CompressStyle;

    sget-object v1, Lcom/umeng/socialize/media/UMImage$CompressStyle;->QUALITY:Lcom/umeng/socialize/media/UMImage$CompressStyle;

    if-eq v0, v1, :cond_7

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMImage;->asBinImage()[B

    move-result-object v1

    .line 131
    if-nez v1, :cond_4

    .line 132
    const/4 v0, 0x1

    new-array v0, v0, [B

    goto :goto_0

    .line 134
    :cond_4
    array-length v0, v1

    if-gtz v0, :cond_5

    .line 135
    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMImage;->asBinImage()[B

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_5
    const/4 v0, 0x0

    array-length v2, v1

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 139
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 140
    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 142
    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v3, v3

    if-le v3, p1, :cond_6

    .line 143
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    array-length v0, v0

    int-to-double v6, v0

    mul-double/2addr v4, v6

    int-to-double v6, p1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 144
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-double v6, v0

    div-double/2addr v6, v4

    double-to-int v0, v6

    .line 145
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v6, v3

    div-double v4, v6, v4

    double-to-int v3, v4

    .line 146
    const/4 v4, 0x1

    invoke-static {v1, v0, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 148
    iget-object v1, p0, Lcom/umeng/socialize/media/UMImage;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 149
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 150
    goto :goto_1

    .line 152
    :cond_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    array-length v1, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-le v1, p1, :cond_0

    .line 153
    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    .line 166
    invoke-static {}, Lcom/umeng/socialize/utils/DefaultClass;->getBytes()[B

    move-result-object v0

    goto/16 :goto_0

    .line 164
    :cond_7
    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMImage;->asBinImage()[B

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/media/UMImage;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v0, p1, v1}, Lcom/umeng/socialize/b/a/a;->a([BILandroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static a(Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)[B
    .locals 1

    .prologue
    .line 308
    invoke-static {p0, p1}, Lcom/umeng/socialize/b/a/a;->b(Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 176
    invoke-static {p0}, Lcom/umeng/socialize/net/utils/SocializeNetUtils;->getNetData(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([BILandroid/graphics/Bitmap$CompressFormat;)[B
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 390
    .line 391
    if-eqz p0, :cond_3

    array-length v0, p0

    if-lt v0, p1, :cond_3

    .line 392
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 393
    array-length v0, p0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    move v0, v2

    .line 399
    :goto_0
    if-nez v1, :cond_1

    const/16 v5, 0xa

    if-gt v0, v5, :cond_1

    .line 400
    const-wide v6, 0x3fe999999999999aL    # 0.8

    int-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 401
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    double-to-int v5, v6

    .line 402
    invoke-virtual {v4, p2, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 403
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    if-ge v5, p1, :cond_0

    move v1, v2

    .line 404
    goto :goto_0

    .line 406
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    :cond_1
    if-eqz v3, :cond_3

    .line 412
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 413
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 414
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 417
    :cond_2
    if-eqz p0, :cond_3

    array-length v0, p0

    if-gtz v0, :cond_3

    .line 418
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$IMAGE;->THUMB_ERROR:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 424
    :cond_3
    return-object p0
.end method

.method private static a([BLandroid/graphics/Bitmap$CompressFormat;)[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 359
    .line 363
    :try_start_0
    invoke-static {p0}, Lcom/umeng/socialize/b/a/a;->d([B)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 364
    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 366
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    if-eqz v1, :cond_0

    .line 368
    const/16 v3, 0x64

    :try_start_1
    invoke-virtual {v1, p1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 369
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 370
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 372
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 377
    if-eqz v2, :cond_1

    .line 379
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 385
    :cond_1
    :goto_0
    return-object v0

    .line 380
    :catch_0
    move-exception v1

    .line 381
    sget-object v2, Lcom/umeng/socialize/utils/UmengText$IMAGE;->CLOSE:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 373
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 374
    :goto_1
    :try_start_3
    sget-object v3, Lcom/umeng/socialize/utils/UmengText$IMAGE;->FILE_TO_BINARY_ERROR:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 377
    if-eqz v2, :cond_1

    .line 379
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 380
    :catch_2
    move-exception v1

    .line 381
    sget-object v2, Lcom/umeng/socialize/utils/UmengText$IMAGE;->CLOSE:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 377
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_2

    .line 379
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 384
    :cond_2
    :goto_3
    throw v0

    .line 380
    :catch_3
    move-exception v1

    .line 381
    sget-object v2, Lcom/umeng/socialize/utils/UmengText$IMAGE;->CLOSE:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 377
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 373
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public static b([B)Ljava/io/File;
    .locals 2

    .prologue
    .line 200
    :try_start_0
    invoke-static {}, Lcom/umeng/socialize/b/b/b;->a()Lcom/umeng/socialize/b/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/b/b/b;->b()Ljava/io/File;

    move-result-object v0

    .line 201
    invoke-static {p0, v0}, Lcom/umeng/socialize/b/a/a;->a([BLjava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    sget-object v1, Lcom/umeng/socialize/utils/UmengText$IMAGE;->BINARYTOFILE:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 51
    .line 52
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-object v0

    .line 56
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    div-int/lit16 v2, v0, 0x400

    .line 58
    const/16 v0, 0x64

    .line 59
    int-to-float v3, v2

    sget v4, Lcom/umeng/socialize/b/b/c;->g:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 60
    sget v3, Lcom/umeng/socialize/b/b/c;->g:F

    int-to-float v2, v2

    div-float v2, v3, v2

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 63
    :cond_2
    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 64
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 69
    if-eqz v1, :cond_0

    .line 71
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    sget-object v2, Lcom/umeng/socialize/utils/UmengText$IMAGE;->CLOSE:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 66
    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 67
    :goto_1
    :try_start_3
    sget-object v2, Lcom/umeng/socialize/utils/UmengText$IMAGE;->BITMAOTOBINARY:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    if-eqz v1, :cond_3

    .line 71
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 77
    :cond_3
    :goto_2
    invoke-static {}, Lcom/umeng/socialize/utils/DefaultClass;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 72
    :catch_2
    move-exception v0

    .line 73
    sget-object v1, Lcom/umeng/socialize/utils/UmengText$IMAGE;->CLOSE:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 69
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    if-eqz v1, :cond_4

    .line 71
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 76
    :cond_4
    :goto_4
    throw v0

    .line 72
    :catch_3
    move-exception v1

    .line 73
    sget-object v2, Lcom/umeng/socialize/utils/UmengText$IMAGE;->CLOSE:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 69
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 66
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method private static b(Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)[B
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 334
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 348
    :cond_1
    :goto_0
    return-object v0

    .line 338
    :cond_2
    invoke-static {}, Lcom/umeng/socialize/b/b/b;->a()Lcom/umeng/socialize/b/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/umeng/socialize/b/b/b;->a(Ljava/io/File;)[B

    move-result-object v0

    .line 340
    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->assertBinaryInvalid([B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 341
    invoke-static {v0}, Lcom/umeng/socialize/b/b/d;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 342
    sget-object v2, Lcom/umeng/socialize/b/b/d;->m:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 345
    invoke-static {v0, p1}, Lcom/umeng/socialize/b/a/a;->a([BLandroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 348
    goto :goto_0
.end method

.method public static c([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    invoke-static {p0}, Lcom/umeng/socialize/b/b/d;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d([B)Landroid/graphics/BitmapFactory$Options;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 87
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 89
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 90
    array-length v1, p0

    invoke-static {p0, v5, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 92
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    sget v2, Lcom/umeng/socialize/media/UMImage;->MAX_WIDTH:I

    div-int/2addr v1, v2

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 93
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget v3, Lcom/umeng/socialize/media/UMImage;->MAX_HEIGHT:I

    div-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 99
    if-le v2, v4, :cond_2

    if-le v1, v4, :cond_2

    .line 100
    if-le v2, v1, :cond_1

    .line 102
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 115
    :cond_0
    :goto_0
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 116
    return-object v0

    .line 105
    :cond_1
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 107
    :cond_2
    if-le v2, v6, :cond_3

    .line 109
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 110
    :cond_3
    if-le v1, v6, :cond_0

    .line 112
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0
.end method

.method private static e([B)I
    .locals 1

    .prologue
    .line 430
    if-eqz p0, :cond_0

    .line 431
    array-length v0, p0

    .line 433
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
