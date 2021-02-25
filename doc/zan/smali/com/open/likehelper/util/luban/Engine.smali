.class public Lcom/open/likehelper/util/luban/Engine;
.super Ljava/lang/Object;
.source "Engine.java"


# instance fields
.field private a:Landroid/media/ExifInterface;

.field private b:Ljava/lang/String;

.field private c:Ljava/io/File;

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/open/likehelper/util/luban/Checker;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/open/likehelper/util/luban/Engine;->a:Landroid/media/ExifInterface;

    .line 28
    :cond_0
    iput-object p2, p0, Lcom/open/likehelper/util/luban/Engine;->c:Ljava/io/File;

    .line 29
    iput-object p1, p0, Lcom/open/likehelper/util/luban/Engine;->b:Ljava/lang/String;

    .line 31
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 32
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 33
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 35
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 36
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/open/likehelper/util/luban/Engine;->d:I

    .line 37
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lcom/open/likehelper/util/luban/Engine;->e:I

    .line 38
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lcom/open/likehelper/util/luban/Engine;->a:Landroid/media/ExifInterface;

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-object p1

    .line 68
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 70
    iget-object v0, p0, Lcom/open/likehelper/util/luban/Engine;->a:Landroid/media/ExifInterface;

    const-string v2, "Orientation"

    invoke-virtual {v0, v2, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 71
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 83
    :goto_1
    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 73
    :pswitch_1
    const/16 v0, 0x5a

    .line 74
    goto :goto_1

    .line 76
    :pswitch_2
    const/16 v0, 0xb4

    .line 77
    goto :goto_1

    .line 79
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 71
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

.method private b()I
    .locals 10

    .prologue
    const/16 v9, 0x137e

    const/16 v8, 0x680

    const-wide/high16 v6, 0x3fe2000000000000L    # 0.5625

    const/4 v1, 0x1

    .line 41
    iget v0, p0, Lcom/open/likehelper/util/luban/Engine;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/open/likehelper/util/luban/Engine;->d:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lcom/open/likehelper/util/luban/Engine;->d:I

    .line 42
    iget v0, p0, Lcom/open/likehelper/util/luban/Engine;->e:I

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/open/likehelper/util/luban/Engine;->e:I

    add-int/lit8 v0, v0, 0x1

    :goto_1
    iput v0, p0, Lcom/open/likehelper/util/luban/Engine;->e:I

    .line 44
    iget v0, p0, Lcom/open/likehelper/util/luban/Engine;->d:I

    iget v2, p0, Lcom/open/likehelper/util/luban/Engine;->e:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 45
    iget v2, p0, Lcom/open/likehelper/util/luban/Engine;->d:I

    iget v3, p0, Lcom/open/likehelper/util/luban/Engine;->e:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 47
    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 48
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_7

    float-to-double v4, v2

    cmpl-double v3, v4, v6

    if-lez v3, :cond_7

    .line 49
    if-ge v0, v8, :cond_3

    .line 61
    :cond_0
    :goto_2
    return v1

    .line 41
    :cond_1
    iget v0, p0, Lcom/open/likehelper/util/luban/Engine;->d:I

    goto :goto_0

    .line 42
    :cond_2
    iget v0, p0, Lcom/open/likehelper/util/luban/Engine;->e:I

    goto :goto_1

    .line 51
    :cond_3
    if-lt v0, v8, :cond_4

    if-ge v0, v9, :cond_4

    .line 52
    const/4 v1, 0x2

    goto :goto_2

    .line 53
    :cond_4
    if-le v0, v9, :cond_5

    const/16 v2, 0x2800

    if-ge v0, v2, :cond_5

    .line 54
    const/4 v1, 0x4

    goto :goto_2

    .line 56
    :cond_5
    div-int/lit16 v2, v0, 0x500

    if-nez v2, :cond_6

    move v0, v1

    :goto_3
    move v1, v0

    goto :goto_2

    :cond_6
    div-int/lit16 v0, v0, 0x500

    goto :goto_3

    .line 58
    :cond_7
    float-to-double v4, v2

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_8

    float-to-double v4, v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v3, v4, v6

    if-lez v3, :cond_8

    .line 59
    div-int/lit16 v2, v0, 0x500

    if-eqz v2, :cond_0

    div-int/lit16 v1, v0, 0x500

    goto :goto_2

    .line 61
    :cond_8
    int-to-double v0, v0

    const-wide/high16 v4, 0x4094000000000000L    # 1280.0

    float-to-double v2, v2

    div-double v2, v4, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    goto :goto_2
.end method


# virtual methods
.method a()Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 90
    invoke-direct {p0}, Lcom/open/likehelper/util/luban/Engine;->b()I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 92
    iget-object v1, p0, Lcom/open/likehelper/util/luban/Engine;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 93
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 95
    invoke-direct {p0, v0}, Lcom/open/likehelper/util/luban/Engine;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x3c

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 97
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 99
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/open/likehelper/util/luban/Engine;->c:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 100
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 101
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 102
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 103
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 105
    iget-object v0, p0, Lcom/open/likehelper/util/luban/Engine;->c:Ljava/io/File;

    return-object v0
.end method
