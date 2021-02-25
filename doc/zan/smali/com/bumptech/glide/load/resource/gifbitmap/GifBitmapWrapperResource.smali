.class public Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/Resource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/Resource",
        "<",
        "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;)V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    if-nez p1, :cond_0

    .line 16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Data must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;->a:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    .line 19
    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;->a:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;->a()Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;->a:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->a()I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;->a:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->b()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Resource;->d()V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;->a:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->c()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Resource;->d()V

    .line 41
    :cond_1
    return-void
.end method
