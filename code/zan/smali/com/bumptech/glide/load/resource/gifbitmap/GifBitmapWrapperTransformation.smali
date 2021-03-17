.class public Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;
.super Ljava/lang/Object;
.source "GifBitmapWrapperTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Transformation",
        "<",
        "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/Transformation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;->a:Lcom/bumptech/glide/load/Transformation;

    .line 26
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;->b:Lcom/bumptech/glide/load/Transformation;

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;

    invoke-direct {v0, p2, p1}, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;-><init>(Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    invoke-direct {p0, p2, v0}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;-><init>(Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/Transformation;)V

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->b()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v1

    .line 32
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->c()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 33
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;->a:Lcom/bumptech/glide/load/Transformation;

    if-eqz v2, :cond_1

    .line 34
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;->a:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v0, v1, p2, p3}, Lcom/bumptech/glide/load/Transformation;->a(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    new-instance v1, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->c()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;-><init>(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/engine/Resource;)V

    .line 37
    new-instance p1, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;

    invoke-direct {p1, v1}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;-><init>(Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;)V

    .line 46
    :cond_0
    :goto_0
    return-object p1

    .line 39
    :cond_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;->b:Lcom/bumptech/glide/load/Transformation;

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;->b:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v1, v0, p2, p3}, Lcom/bumptech/glide/load/Transformation;->a(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    new-instance v2, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->b()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;-><init>(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/engine/Resource;)V

    .line 43
    new-instance p1, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;

    invoke-direct {p1, v2}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;-><init>(Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;)V

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;->a:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v0}, Lcom/bumptech/glide/load/Transformation;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
