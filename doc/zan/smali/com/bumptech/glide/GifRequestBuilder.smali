.class public Lcom/bumptech/glide/GifRequestBuilder;
.super Lcom/bumptech/glide/GenericRequestBuilder;
.source "GifRequestBuilder.java"

# interfaces
.implements Lcom/bumptech/glide/BitmapOptions;
.implements Lcom/bumptech/glide/DrawableOptions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/GenericRequestBuilder",
        "<TModelType;",
        "Ljava/io/InputStream;",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;",
        "Lcom/bumptech/glide/BitmapOptions;",
        "Lcom/bumptech/glide/DrawableOptions;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TModelType;",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Ljava/lang/Class",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;***>;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/GenericRequestBuilder;-><init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V

    .line 42
    return-void
.end method

.method private d([Lcom/bumptech/glide/load/Transformation;)[Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)[",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;"
        }
    .end annotation

    .prologue
    .line 197
    array-length v0, p1

    new-array v1, v0, [Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;

    .line 198
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 199
    new-instance v2, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;

    aget-object v3, p1, v0

    iget-object v4, p0, Lcom/bumptech/glide/GifRequestBuilder;->c:Lcom/bumptech/glide/Glide;

    invoke-virtual {v4}, Lcom/bumptech/glide/Glide;->c()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;-><init>(Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    aput-object v2, v1, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    return-object v1
.end method


# virtual methods
.method public synthetic a()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/bumptech/glide/GifRequestBuilder;->e()Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->b(I)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/GifRequestBuilder;->b(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public a(F)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->d(F)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 87
    return-object p0
.end method

.method public a(II)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 261
    new-instance v0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    iget-object v1, p0, Lcom/bumptech/glide/GifRequestBuilder;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Landroid/content/Context;II)V

    invoke-super {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->a(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 263
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 318
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->f(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 319
    return-object p0
.end method

.method public a(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 291
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 292
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<***",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 50
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/GifRequestBuilder;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<*>;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 78
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 135
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Ljava/io/InputStream;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 394
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 395
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 409
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 410
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->f(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 106
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 126
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 376
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 377
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 224
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 225
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener",
            "<-TModelType;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 358
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 359
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 300
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 301
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 415
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 416
    return-object p0
.end method

.method public a(Z)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 367
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Z)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 368
    return-object p0
.end method

.method public varargs a([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->d([Lcom/bumptech/glide/load/Transformation;)[Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/GifRequestBuilder;->c([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs a([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->d([Lcom/bumptech/glide/load/Transformation;)[Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/GifRequestBuilder;->c([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/bumptech/glide/GifRequestBuilder;->d()Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(II)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/GifRequestBuilder;->d(II)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->a(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->a(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->a(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->a(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->a(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->a(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->a(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->a(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->a(Ljava/lang/Object;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Z)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->a(Z)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->c([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public b(F)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->c(F)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 96
    return-object p0
.end method

.method public b(I)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 242
    new-instance v0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(I)V

    invoke-super {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->a(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 243
    return-object p0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 324
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->e(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 325
    return-object p0
.end method

.method public b(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            "I)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 252
    new-instance v0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Landroid/view/animation/Animation;I)V

    invoke-super {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->a(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 253
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->e(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 116
    return-object p0
.end method

.method public synthetic c()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/bumptech/glide/GifRequestBuilder;->f()Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(F)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->b(F)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(II)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/GifRequestBuilder;->a(II)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 280
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->h(I)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 281
    return-object p0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 348
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->d(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 349
    return-object p0
.end method

.method public varargs c([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 216
    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/bumptech/glide/GifRequestBuilder;->i()Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(F)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->a(F)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->c(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/GifRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 149
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/GifRequestBuilder;->c:Lcom/bumptech/glide/Glide;

    invoke-virtual {v2}, Lcom/bumptech/glide/Glide;->e()Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/GifRequestBuilder;->a([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 309
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->g(I)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 310
    return-object p0
.end method

.method public d(II)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 385
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/GenericRequestBuilder;->b(II)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 386
    return-object p0
.end method

.method public synthetic e(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->j(I)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->b(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/bumptech/glide/GifRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/GifRequestBuilder;->c:Lcom/bumptech/glide/Glide;

    invoke-virtual {v2}, Lcom/bumptech/glide/Glide;->f()Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/GifRequestBuilder;->a([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->i(I)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->a(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/bumptech/glide/GifRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>()V

    invoke-super {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->a(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 234
    return-object p0
.end method

.method public synthetic g(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->d(I)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 271
    invoke-super {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->n()Lcom/bumptech/glide/GenericRequestBuilder;

    .line 272
    return-object p0
.end method

.method public synthetic h(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->c(I)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 403
    invoke-super {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->o()Lcom/bumptech/glide/GenericRequestBuilder;

    .line 404
    return-object p0
.end method

.method public i()Lcom/bumptech/glide/GifRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 421
    invoke-super {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->m()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/GifRequestBuilder;

    return-object v0
.end method

.method public i(I)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 330
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->f(I)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 331
    return-object p0
.end method

.method public j(I)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 339
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->e(I)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 340
    return-object p0
.end method

.method k()V
    .locals 0

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/bumptech/glide/GifRequestBuilder;->e()Lcom/bumptech/glide/GifRequestBuilder;

    .line 427
    return-void
.end method

.method l()V
    .locals 0

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/bumptech/glide/GifRequestBuilder;->d()Lcom/bumptech/glide/GifRequestBuilder;

    .line 432
    return-void
.end method

.method public synthetic m()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/bumptech/glide/GifRequestBuilder;->i()Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic n()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/bumptech/glide/GifRequestBuilder;->g()Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic o()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/bumptech/glide/GifRequestBuilder;->h()Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method
