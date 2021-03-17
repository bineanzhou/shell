.class public Lcom/umeng/socialize/media/UMImage;
.super Lcom/umeng/socialize/media/BaseMediaObject;
.source "UMImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/media/UMImage$IImageConvertor;,
        Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;,
        Lcom/umeng/socialize/media/UMImage$ResConvertor;,
        Lcom/umeng/socialize/media/UMImage$BinaryConvertor;,
        Lcom/umeng/socialize/media/UMImage$UrlConvertor;,
        Lcom/umeng/socialize/media/UMImage$FileConvertor;,
        Lcom/umeng/socialize/media/UMImage$BitmapConvertor;,
        Lcom/umeng/socialize/media/UMImage$CompressStyle;
    }
.end annotation


# static fields
.field public static BINARY_IMAGE:I

.field public static BITMAP_IMAGE:I

.field public static FILE_IMAGE:I

.field public static MAX_HEIGHT:I

.field public static MAX_WIDTH:I

.field public static RES_IMAGE:I

.field public static URL_IMAGE:I


# instance fields
.field public compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field public compressStyle:Lcom/umeng/socialize/media/UMImage$CompressStyle;

.field private f:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

.field private g:Lcom/umeng/socialize/media/UMImage;

.field private h:Lcom/umeng/social/tool/UMImageMark;

.field private i:I

.field public isLoadImgByCompress:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x300

    sput v0, Lcom/umeng/socialize/media/UMImage;->MAX_WIDTH:I

    .line 55
    const/16 v0, 0x400

    sput v0, Lcom/umeng/socialize/media/UMImage;->MAX_HEIGHT:I

    .line 60
    const/4 v0, 0x1

    sput v0, Lcom/umeng/socialize/media/UMImage;->FILE_IMAGE:I

    .line 61
    const/4 v0, 0x2

    sput v0, Lcom/umeng/socialize/media/UMImage;->URL_IMAGE:I

    .line 62
    const/4 v0, 0x3

    sput v0, Lcom/umeng/socialize/media/UMImage;->RES_IMAGE:I

    .line 63
    const/4 v0, 0x4

    sput v0, Lcom/umeng/socialize/media/UMImage;->BITMAP_IMAGE:I

    .line 64
    const/4 v0, 0x5

    sput v0, Lcom/umeng/socialize/media/UMImage;->BINARY_IMAGE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/umeng/socialize/media/BaseMediaObject;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->f:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/media/UMImage;->isLoadImgByCompress:Z

    .line 47
    sget-object v0, Lcom/umeng/socialize/media/UMImage$CompressStyle;->SCALE:Lcom/umeng/socialize/media/UMImage$CompressStyle;

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->compressStyle:Lcom/umeng/socialize/media/UMImage$CompressStyle;

    .line 48
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/socialize/media/UMImage;->i:I

    .line 94
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/umeng/socialize/media/UMImage;->a(Landroid/content/Context;Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/umeng/social/tool/UMImageMark;)V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/umeng/socialize/media/BaseMediaObject;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->f:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/media/UMImage;->isLoadImgByCompress:Z

    .line 47
    sget-object v0, Lcom/umeng/socialize/media/UMImage$CompressStyle;->SCALE:Lcom/umeng/socialize/media/UMImage$CompressStyle;

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->compressStyle:Lcom/umeng/socialize/media/UMImage$CompressStyle;

    .line 48
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/socialize/media/UMImage;->i:I

    .line 122
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/umeng/socialize/media/UMImage;->a(Landroid/content/Context;Ljava/lang/Object;Lcom/umeng/social/tool/UMImageMark;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/umeng/socialize/media/BaseMediaObject;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->f:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/media/UMImage;->isLoadImgByCompress:Z

    .line 47
    sget-object v0, Lcom/umeng/socialize/media/UMImage$CompressStyle;->SCALE:Lcom/umeng/socialize/media/UMImage$CompressStyle;

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->compressStyle:Lcom/umeng/socialize/media/UMImage$CompressStyle;

    .line 48
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/socialize/media/UMImage;->i:I

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/media/UMImage;->a(Landroid/content/Context;Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/umeng/social/tool/UMImageMark;)V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/umeng/socialize/media/BaseMediaObject;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->f:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/media/UMImage;->isLoadImgByCompress:Z

    .line 47
    sget-object v0, Lcom/umeng/socialize/media/UMImage$CompressStyle;->SCALE:Lcom/umeng/socialize/media/UMImage$CompressStyle;

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->compressStyle:Lcom/umeng/socialize/media/UMImage$CompressStyle;

    .line 48
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/socialize/media/UMImage;->i:I

    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/media/UMImage;->a(Landroid/content/Context;Ljava/lang/Object;Lcom/umeng/social/tool/UMImageMark;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/umeng/socialize/media/BaseMediaObject;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->f:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/media/UMImage;->isLoadImgByCompress:Z

    .line 47
    sget-object v0, Lcom/umeng/socialize/media/UMImage$CompressStyle;->SCALE:Lcom/umeng/socialize/media/UMImage$CompressStyle;

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->compressStyle:Lcom/umeng/socialize/media/UMImage$CompressStyle;

    .line 48
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/socialize/media/UMImage;->i:I

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/media/UMImage;->a(Landroid/content/Context;Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0, p2}, Lcom/umeng/socialize/media/BaseMediaObject;-><init>(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->f:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/media/UMImage;->isLoadImgByCompress:Z

    .line 47
    sget-object v0, Lcom/umeng/socialize/media/UMImage$CompressStyle;->SCALE:Lcom/umeng/socialize/media/UMImage$CompressStyle;

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->compressStyle:Lcom/umeng/socialize/media/UMImage$CompressStyle;

    .line 48
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/socialize/media/UMImage;->i:I

    .line 84
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lcom/umeng/socialize/media/UMImage;->a(Landroid/content/Context;Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[B)V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/umeng/socialize/media/BaseMediaObject;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->f:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/media/UMImage;->isLoadImgByCompress:Z

    .line 47
    sget-object v0, Lcom/umeng/socialize/media/UMImage$CompressStyle;->SCALE:Lcom/umeng/socialize/media/UMImage$CompressStyle;

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->compressStyle:Lcom/umeng/socialize/media/UMImage$CompressStyle;

    .line 48
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/socialize/media/UMImage;->i:I

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/media/UMImage;->a(Landroid/content/Context;Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[BLcom/umeng/social/tool/UMImageMark;)V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/umeng/socialize/media/BaseMediaObject;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->f:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/media/UMImage;->isLoadImgByCompress:Z

    .line 47
    sget-object v0, Lcom/umeng/socialize/media/UMImage$CompressStyle;->SCALE:Lcom/umeng/socialize/media/UMImage$CompressStyle;

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->compressStyle:Lcom/umeng/socialize/media/UMImage$CompressStyle;

    .line 48
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/socialize/media/UMImage;->i:I

    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/media/UMImage;->a(Landroid/content/Context;Ljava/lang/Object;Lcom/umeng/social/tool/UMImageMark;)V

    .line 127
    return-void
.end method

.method private a(FFFF)F
    .locals 3

    .prologue
    .line 614
    cmpg-float v0, p1, p4

    if-gtz v0, :cond_1

    cmpg-float v0, p2, p4

    if-gtz v0, :cond_1

    .line 615
    const/high16 v0, -0x40800000    # -1.0f

    .line 619
    :cond_0
    :goto_0
    return v0

    .line 617
    :cond_1
    div-float v0, p1, p3

    .line 618
    div-float v1, p2, p4

    .line 619
    cmpl-float v2, v0, v1

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 531
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/umeng/socialize/media/UMImage;->h:Lcom/umeng/social/tool/UMImageMark;

    if-nez v1, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-object v0

    .line 536
    :cond_1
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 537
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 539
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 540
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 541
    invoke-direct {p0, v2}, Lcom/umeng/socialize/media/UMImage;->a(Ljava/io/Closeable;)V

    .line 543
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v4

    sget v5, Lcom/umeng/socialize/media/UMImage;->MAX_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/umeng/socialize/media/UMImage;->MAX_HEIGHT:I

    int-to-float v6, v6

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/umeng/socialize/media/UMImage;->a(FFFF)F

    move-result v3

    float-to-int v3, v3

    .line 544
    if-lez v3, :cond_2

    .line 545
    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 547
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 549
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 550
    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 551
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/umeng/socialize/media/UMImage;->a(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 555
    invoke-direct {p0, v2}, Lcom/umeng/socialize/media/UMImage;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 552
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 553
    :goto_1
    :try_start_2
    invoke-static {v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 555
    invoke-direct {p0, v2}, Lcom/umeng/socialize/media/UMImage;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    invoke-direct {p0, v2}, Lcom/umeng/socialize/media/UMImage;->a(Ljava/io/Closeable;)V

    .line 556
    throw v0

    .line 555
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 552
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 594
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 595
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 597
    int-to-float v0, v3

    int-to-float v2, v4

    sget v5, Lcom/umeng/socialize/media/UMImage;->MAX_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/umeng/socialize/media/UMImage;->MAX_HEIGHT:I

    int-to-float v6, v6

    invoke-direct {p0, v0, v2, v5, v6}, Lcom/umeng/socialize/media/UMImage;->a(FFFF)F

    move-result v0

    .line 598
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 610
    :goto_0
    return-object p1

    .line 601
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    div-float v0, v2, v0

    .line 603
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 605
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v0, p1

    move v2, v1

    move v6, v1

    .line 607
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 609
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/UMImage;->b(Landroid/graphics/Bitmap;)V

    move-object p1, v0

    .line 610
    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 513
    iget-object v1, p0, Lcom/umeng/socialize/media/UMImage;->h:Lcom/umeng/social/tool/UMImageMark;

    if-nez v1, :cond_0

    .line 527
    :goto_0
    return-object p1

    .line 516
    :cond_0
    if-nez p1, :cond_1

    move-object p1, v0

    .line 517
    goto :goto_0

    .line 520
    :cond_1
    if-eqz p2, :cond_2

    .line 521
    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/UMImage;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 523
    :cond_2
    iget-object v1, p0, Lcom/umeng/socialize/media/UMImage;->h:Lcom/umeng/social/tool/UMImageMark;

    invoke-virtual {v1, p1}, Lcom/umeng/social/tool/UMImageMark;->compound(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 524
    :catch_0
    move-exception v1

    .line 525
    invoke-static {v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    move-object p1, v0

    .line 527
    goto :goto_0
.end method

.method private a([B)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 571
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/umeng/socialize/media/UMImage;->h:Lcom/umeng/social/tool/UMImageMark;

    if-nez v1, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-object v0

    .line 575
    :cond_1
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 576
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 577
    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {p1, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 579
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    sget v4, Lcom/umeng/socialize/media/UMImage;->MAX_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/umeng/socialize/media/UMImage;->MAX_HEIGHT:I

    int-to-float v5, v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/umeng/socialize/media/UMImage;->a(FFFF)F

    move-result v2

    float-to-int v2, v2

    .line 580
    if-lez v2, :cond_2

    .line 581
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 583
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 585
    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {p1, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 586
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/umeng/socialize/media/UMImage;->a(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 587
    :catch_0
    move-exception v1

    .line 588
    invoke-static {v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/umeng/socialize/media/UMImage;->a(Landroid/content/Context;Ljava/lang/Object;Lcom/umeng/social/tool/UMImageMark;)V

    .line 131
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/Object;Lcom/umeng/social/tool/UMImageMark;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 134
    if-eqz p3, :cond_0

    .line 135
    iput-boolean v2, p0, Lcom/umeng/socialize/media/UMImage;->j:Z

    .line 136
    iput-object p3, p0, Lcom/umeng/socialize/media/UMImage;->h:Lcom/umeng/social/tool/UMImageMark;

    .line 137
    iget-object v1, p0, Lcom/umeng/socialize/media/UMImage;->h:Lcom/umeng/social/tool/UMImageMark;

    invoke-virtual {v1, p1}, Lcom/umeng/social/tool/UMImageMark;->setContext(Landroid/content/Context;)V

    .line 139
    :cond_0
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/socialize/utils/ContextUtil;->setContext(Landroid/content/Context;)V

    .line 142
    :cond_1
    instance-of v1, p2, Ljava/io/File;

    if-eqz v1, :cond_2

    .line 143
    sget v0, Lcom/umeng/socialize/media/UMImage;->FILE_IMAGE:I

    iput v0, p0, Lcom/umeng/socialize/media/UMImage;->i:I

    .line 144
    new-instance v0, Lcom/umeng/socialize/media/UMImage$FileConvertor;

    check-cast p2, Ljava/io/File;

    invoke-direct {v0, p0, p2}, Lcom/umeng/socialize/media/UMImage$FileConvertor;-><init>(Lcom/umeng/socialize/media/UMImage;Ljava/io/File;)V

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->f:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    .line 188
    :goto_0
    return-void

    .line 145
    :cond_2
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 146
    sget v0, Lcom/umeng/socialize/media/UMImage;->URL_IMAGE:I

    iput v0, p0, Lcom/umeng/socialize/media/UMImage;->i:I

    .line 147
    new-instance v0, Lcom/umeng/socialize/media/UMImage$UrlConvertor;

    check-cast p2, Ljava/lang/String;

    invoke-direct {v0, p0, p2}, Lcom/umeng/socialize/media/UMImage$UrlConvertor;-><init>(Lcom/umeng/socialize/media/UMImage;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->f:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    goto :goto_0

    .line 148
    :cond_3
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 149
    sget v1, Lcom/umeng/socialize/media/UMImage;->RES_IMAGE:I

    iput v1, p0, Lcom/umeng/socialize/media/UMImage;->i:I

    .line 151
    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMImage;->isHasWaterMark()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, p2

    .line 152
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/umeng/socialize/media/UMImage;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 154
    :cond_4
    if-eqz v0, :cond_5

    .line 155
    new-instance v1, Lcom/umeng/socialize/media/UMImage$BitmapConvertor;

    invoke-direct {v1, p0, v0}, Lcom/umeng/socialize/media/UMImage$BitmapConvertor;-><init>(Lcom/umeng/socialize/media/UMImage;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/umeng/socialize/media/UMImage;->f:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    goto :goto_0

    .line 157
    :cond_5
    new-instance v0, Lcom/umeng/socialize/media/UMImage$ResConvertor;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/umeng/socialize/media/UMImage$ResConvertor;-><init>(Lcom/umeng/socialize/media/UMImage;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->f:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    goto :goto_0

    .line 159
    :cond_6
    instance-of v1, p2, [B

    if-eqz v1, :cond_9

    .line 160
    sget v1, Lcom/umeng/socialize/media/UMImage;->BINARY_IMAGE:I

    iput v1, p0, Lcom/umeng/socialize/media/UMImage;->i:I

    .line 162
    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMImage;->isHasWaterMark()Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v0, p2

    .line 163
    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {p0, v0}, Lcom/umeng/socialize/media/UMImage;->a([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 165
    :cond_7
    if-eqz v0, :cond_8

    .line 166
    new-instance v1, Lcom/umeng/socialize/media/UMImage$BitmapConvertor;

    invoke-direct {v1, p0, v0}, Lcom/umeng/socialize/media/UMImage$BitmapConvertor;-><init>(Lcom/umeng/socialize/media/UMImage;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/umeng/socialize/media/UMImage;->f:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    goto :goto_0

    .line 168
    :cond_8
    new-instance v0, Lcom/umeng/socialize/media/UMImage$BinaryConvertor;

    check-cast p2, [B

    check-cast p2, [B

    invoke-direct {v0, p0, p2}, Lcom/umeng/socialize/media/UMImage$BinaryConvertor;-><init>(Lcom/umeng/socialize/media/UMImage;[B)V

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->f:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    goto :goto_0

    .line 170
    :cond_9
    instance-of v1, p2, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_b

    .line 171
    sget v1, Lcom/umeng/socialize/media/UMImage;->BITMAP_IMAGE:I

    iput v1, p0, Lcom/umeng/socialize/media/UMImage;->i:I

    .line 173
    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMImage;->isHasWaterMark()Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v0, p2

    .line 174
    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v2}, Lcom/umeng/socialize/media/UMImage;->a(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 176
    :cond_a
    if-nez v0, :cond_d

    .line 177
    check-cast p2, Landroid/graphics/Bitmap;

    .line 179
    :goto_1
    new-instance v0, Lcom/umeng/socialize/media/UMImage$BitmapConvertor;

    invoke-direct {v0, p0, p2}, Lcom/umeng/socialize/media/UMImage$BitmapConvertor;-><init>(Lcom/umeng/socialize/media/UMImage;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->f:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    goto/16 :goto_0

    .line 181
    :cond_b
    if-eqz p2, :cond_c

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/umeng/socialize/utils/UmengText$IMAGE;->UNKNOW_UMIMAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 184
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/umeng/socialize/utils/UmengText$IMAGE;->UNKNOW_UMIMAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    move-object p2, v0

    goto :goto_1
.end method

.method private a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 562
    if-eqz p1, :cond_0

    .line 563
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 565
    :catch_0
    move-exception v0

    .line 566
    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 624
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 627
    :catch_0
    move-exception v0

    .line 628
    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinImage()[B
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->f:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->f:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;->asBinary()[B

    move-result-object v0

    goto :goto_0
.end method

.method public asBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->f:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->f:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public asFileImage()Ljava/io/File;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->f:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->f:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;->asFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public asUrlImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->f:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->f:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;->asUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getImageStyle()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/umeng/socialize/media/UMImage;->i:I

    return v0
.end method

.method public getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lcom/umeng/socialize/media/UMediaObject$MediaType;->IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    return-object v0
.end method

.method public getThumbImage()Lcom/umeng/socialize/media/UMImage;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->g:Lcom/umeng/socialize/media/UMImage;

    return-object v0
.end method

.method public isHasWaterMark()Z
    .locals 1

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/umeng/socialize/media/UMImage;->j:Z

    return v0
.end method

.method public setThumb(Lcom/umeng/socialize/media/UMImage;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/umeng/socialize/media/UMImage;->g:Lcom/umeng/socialize/media/UMImage;

    .line 203
    return-void
.end method

.method public toByte()[B
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMImage;->asBinImage()[B

    move-result-object v0

    return-object v0
.end method

.method public final toUrlExtraParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 221
    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMImage;->isUrlMedia()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    sget-object v1, Lcom/umeng/socialize/net/utils/SocializeProtocolConstants;->PROTOCOL_KEY_FURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/socialize/media/UMImage;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v1, Lcom/umeng/socialize/net/utils/SocializeProtocolConstants;->PROTOCOL_KEY_FTYPE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMImage;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_0
    return-object v0
.end method
