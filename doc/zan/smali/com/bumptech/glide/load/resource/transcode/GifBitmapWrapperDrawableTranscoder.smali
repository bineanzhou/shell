.class public Lcom/bumptech/glide/load/resource/transcode/GifBitmapWrapperDrawableTranscoder;
.super Ljava/lang/Object;
.source "GifBitmapWrapperDrawableTranscoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
        "<",
        "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/transcode/GifBitmapWrapperDrawableTranscoder;->a:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    .line 27
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->b()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/transcode/GifBitmapWrapperDrawableTranscoder;->a:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->a(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    .line 33
    :cond_0
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->c()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "GifBitmapWrapperDrawableTranscoder.com.bumptech.glide.load.resource.transcode"

    return-object v0
.end method
