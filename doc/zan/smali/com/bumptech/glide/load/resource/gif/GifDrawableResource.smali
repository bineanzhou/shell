.class public Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;
.super Lcom/bumptech/glide/load/resource/drawable/DrawableResource;
.source "GifDrawableResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/resource/drawable/DrawableResource",
        "<",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/DrawableResource;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 12
    return-void
.end method


# virtual methods
.method public c()I
    .locals 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e()[B

    move-result-object v0

    array-length v1, v0

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->b(Landroid/graphics/Bitmap;)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->stop()V

    .line 22
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->g()V

    .line 23
    return-void
.end method
