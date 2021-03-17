.class public Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;
.super Ljava/lang/Object;
.source "GifResourceEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceEncoder",
        "<",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

.field private static final b:Ljava/lang/String; = "GifEncoder"


# instance fields
.field private final c:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

.field private final d:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final e:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->a:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->a:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;)V

    .line 34
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 39
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 40
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->e:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    .line 41
    return-void
.end method

.method private a([B)Lcom/bumptech/glide/gifdecoder/GifDecoder;
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->e:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;->a()Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->a([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    .line 103
    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->b()Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->e:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;->a(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)Lcom/bumptech/glide/gifdecoder/GifDecoder;

    move-result-object v1

    .line 106
    invoke-virtual {v1, v0, p1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->a(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V

    .line 107
    invoke-virtual {v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->e()V

    .line 109
    return-object v1
.end method

.method private a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/gif/GifDrawable;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->e:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-virtual {v0, p1, v1}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 116
    invoke-virtual {p3}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p3}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-interface {p2, v0, v1, v2}, Lcom/bumptech/glide/load/Transformation;->a(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Resource;->d()V

    .line 121
    :cond_0
    return-object v1
.end method

.method private a([BLjava/io/OutputStream;)Z
    .locals 3

    .prologue
    .line 88
    const/4 v0, 0x1

    .line 90
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-string v1, "GifEncoder"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    const-string v1, "GifEncoder"

    const-string v2, "Failed to write data to output stream in GifResourceEncoder"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string v0, ""

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->a()J

    move-result-wide v4

    .line 47
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 48
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->d()Lcom/bumptech/glide/load/Transformation;

    move-result-object v6

    .line 49
    instance-of v1, v6, Lcom/bumptech/glide/load/resource/UnitTransformation;

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e()[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->a([BLjava/io/OutputStream;)Z

    move-result v3

    .line 84
    :cond_0
    :goto_0
    return v3

    .line 53
    :cond_1
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->a([B)Lcom/bumptech/glide/gifdecoder/GifDecoder;

    move-result-object v7

    .line 55
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->e:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;->b()Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;

    move-result-object v8

    .line 56
    invoke-virtual {v8, p2}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->a(Ljava/io/OutputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v3

    .line 60
    :goto_1
    invoke-virtual {v7}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->g()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 61
    invoke-virtual {v7}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->k()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 62
    invoke-direct {p0, v1, v6, v0}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/gif/GifDrawable;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v9

    .line 64
    :try_start_0
    invoke-interface {v9}, Lcom/bumptech/glide/load/engine/Resource;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v8, v1}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->a(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 73
    invoke-interface {v9}, Lcom/bumptech/glide/load/engine/Resource;->d()V

    goto :goto_0

    .line 67
    :cond_2
    :try_start_1
    invoke-virtual {v7}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->h()I

    move-result v1

    .line 68
    invoke-virtual {v7, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->a(I)I

    move-result v1

    .line 69
    invoke-virtual {v8, v1}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->a(I)V

    .line 71
    invoke-virtual {v7}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    invoke-interface {v9}, Lcom/bumptech/glide/load/engine/Resource;->d()V

    .line 60
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 73
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Lcom/bumptech/glide/load/engine/Resource;->d()V

    throw v0

    .line 77
    :cond_3
    invoke-virtual {v8}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->a()Z

    move-result v3

    .line 79
    const-string v1, "GifEncoder"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const-string v1, "GifEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encoded gif with "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->g()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " frames and "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4, v5}, Lcom/bumptech/glide/util/LogTime;->a(J)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 1

    .prologue
    .line 25
    check-cast p1, Lcom/bumptech/glide/load/engine/Resource;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->a(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method
