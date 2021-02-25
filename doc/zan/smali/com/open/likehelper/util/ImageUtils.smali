.class public Lcom/open/likehelper/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 335
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 336
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    .line 341
    :goto_0
    return v0

    .line 338
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    .line 339
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    goto :goto_0

    .line 341
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    .prologue
    .line 150
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 151
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 152
    const/4 v0, 0x1

    .line 153
    :goto_0
    shr-int/lit8 v1, v1, 0x1

    if-lt v1, p1, :cond_0

    shr-int/lit8 v2, v2, 0x1

    if-lt v2, p2, :cond_0

    .line 154
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    return v0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 72
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 73
    const-string v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 76
    packed-switch v1, :pswitch_data_0

    .line 92
    :goto_0
    :pswitch_0
    return v0

    .line 78
    :pswitch_1
    const/16 v0, 0x5a

    .line 79
    goto :goto_0

    .line 81
    :pswitch_2
    const/16 v0, 0xb4

    .line 82
    goto :goto_0

    .line 84
    :pswitch_3
    const/16 v0, 0x10e

    .line 85
    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static a(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-static {p1}, Lcom/open/likehelper/util/ImageUtils;->b(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const/4 v0, 0x0

    .line 116
    :cond_0
    :goto_0
    return-object v0

    .line 108
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 109
    int-to-float v0, p0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    .line 111
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 215
    invoke-static {p0}, Lcom/open/likehelper/util/ImageUtils;->b(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    const/4 v0, 0x0

    .line 222
    :cond_0
    :goto_0
    return-object v0

    .line 218
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 219
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            a = 0x0L
            b = 0x64L
        .end annotation
    .end param

    .prologue
    .line 267
    invoke-static {p0}, Lcom/open/likehelper/util/ImageUtils;->b(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const/4 v0, 0x0

    .line 276
    :goto_0
    return-object v0

    .line 270
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 271
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 272
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 273
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 274
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 276
    :cond_1
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;JZ)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/16 v0, 0x64

    const/4 v3, 0x0

    .line 288
    invoke-static {p0}, Lcom/open/likehelper/util/ImageUtils;->b(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-gtz v1, :cond_1

    .line 289
    :cond_0
    const/4 v0, 0x0

    .line 330
    :goto_0
    return-object v0

    .line 291
    :cond_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 292
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, v0, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 294
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v6, p1

    if-gtz v1, :cond_3

    .line 295
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 326
    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 327
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 330
    :cond_2
    array-length v1, v0

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 297
    :cond_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 298
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 299
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v6, p1

    if-ltz v1, :cond_4

    .line 300
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_1

    :cond_4
    move v2, v3

    move v1, v3

    .line 306
    :goto_2
    if-ge v1, v0, :cond_5

    .line 307
    add-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    .line 308
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 309
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v5, v2, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 310
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    .line 311
    int-to-long v6, v5

    cmp-long v6, v6, p1

    if-nez v6, :cond_7

    .line 319
    :cond_5
    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_6

    .line 320
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 321
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v0, v1, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 323
    :cond_6
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_1

    .line 313
    :cond_7
    int-to-long v6, v5

    cmp-long v5, v6, p1

    if-lez v5, :cond_8

    .line 314
    add-int/lit8 v0, v2, -0x1

    goto :goto_2

    .line 316
    :cond_8
    add-int/lit8 v1, v2, 0x1

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 128
    invoke-static {p0}, Lcom/open/likehelper/util/FileUtils;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 136
    :goto_0
    return-object v0

    .line 131
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 132
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 133
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 134
    invoke-static {v0, p1, p2}, Lcom/open/likehelper/util/ImageUtils;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 135
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 136
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 167
    invoke-static {p0}, Lcom/open/likehelper/util/ImageUtils;->b(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const/4 v1, 0x0

    .line 173
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 177
    if-eqz v0, :cond_0

    .line 179
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 180
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    goto :goto_0

    .line 175
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 177
    :goto_1
    if-eqz v0, :cond_0

    .line 179
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 180
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 181
    :catch_2
    move-exception v0

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    .line 179
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 180
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 182
    :cond_2
    :goto_3
    throw v0

    .line 181
    :catch_3
    move-exception v1

    goto :goto_3

    .line 177
    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_2

    .line 175
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 235
    invoke-static {p0}, Lcom/open/likehelper/util/ImageUtils;->b(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/open/likehelper/util/FileUtils;->c(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    const/4 v3, 0x0

    .line 239
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    const/16 v1, 0x64

    :try_start_1
    invoke-virtual {p0, p2, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    .line 241
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 242
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 248
    :cond_2
    if-eqz v2, :cond_0

    .line 249
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v1

    .line 252
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 244
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 245
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 248
    if-eqz v2, :cond_0

    .line 249
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 251
    :catch_2
    move-exception v1

    .line 252
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v0

    move-object v2, v3

    .line 248
    :goto_2
    if-eqz v2, :cond_3

    .line 249
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 253
    :cond_3
    :goto_3
    throw v0

    .line 251
    :catch_3
    move-exception v1

    .line 252
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 247
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 244
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private static b(Landroid/graphics/Bitmap;)Z
    .locals 1

    .prologue
    .line 351
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)[I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 188
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 193
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 198
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 199
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 202
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v3, v1, v2

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v0, v1, v4

    return-object v1
.end method
