.class public Lcom/bumptech/glide/BitmapRequestBuilder;
.super Lcom/bumptech/glide/GenericRequestBuilder;
.source "BitmapRequestBuilder.java"

# interfaces
.implements Lcom/bumptech/glide/BitmapOptions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/GenericRequestBuilder",
        "<TModelType;",
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        "Landroid/graphics/Bitmap;",
        "TTranscodeType;>;",
        "Lcom/bumptech/glide/BitmapOptions;"
    }
.end annotation


# instance fields
.field private final g:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private h:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

.field private i:Lcom/bumptech/glide/load/DecodeFormat;

.field private j:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TModelType;",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Landroid/graphics/Bitmap;",
            "TTranscodeType;>;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;***>;)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/GenericRequestBuilder;-><init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V

    .line 50
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->a:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    iput-object v0, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->h:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 58
    iget-object v0, p3, Lcom/bumptech/glide/GenericRequestBuilder;->c:Lcom/bumptech/glide/Glide;

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->c()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->g:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 59
    iget-object v0, p3, Lcom/bumptech/glide/GenericRequestBuilder;->c:Lcom/bumptech/glide/Glide;

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->j()Lcom/bumptech/glide/load/DecodeFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->i:Lcom/bumptech/glide/load/DecodeFormat;

    .line 61
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    iget-object v1, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->g:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v2, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->i:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->j:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 62
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;

    iget-object v1, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->g:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v2, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->i:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->k:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 63
    return-void
.end method

.method private a(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/Downsampler;",
            ")",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 111
    iput-object p1, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->h:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 112
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    iget-object v1, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->g:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v2, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->i:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-direct {v0, p1, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->j:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 113
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;

    iget-object v1, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->j:Lcom/bumptech/glide/load/ResourceDecoder;

    iget-object v2, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->k:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;)V

    invoke-super {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->f(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 114
    return-object p0
.end method


# virtual methods
.method public a(F)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->d(F)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 123
    return-object p0
.end method

.method public a(I)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 330
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->h(I)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 331
    return-object p0
.end method

.method public a(II)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 435
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/GenericRequestBuilder;->b(II)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 436
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 368
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->f(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 369
    return-object p0
.end method

.method public a(Landroid/view/animation/Animation;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            ")",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 341
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 342
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/BitmapRequestBuilder;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<*TTranscodeType;>;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 152
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<***TTranscodeType;>;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 445
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 446
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 249
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 250
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DecodeFormat;",
            ")",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 239
    iput-object p1, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->i:Lcom/bumptech/glide/load/DecodeFormat;

    .line 240
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    iget-object v1, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->h:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    iget-object v2, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->g:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-direct {v0, v1, v2, p1}, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->j:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 241
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;-><init>()V

    iget-object v2, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->g:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-direct {v0, v1, v2, p1}, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->k:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 242
    new-instance v0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    iget-object v2, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->h:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    iget-object v3, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->g:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-direct {v1, v2, v3, p1}, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;)V

    invoke-super {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->e(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 243
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;

    iget-object v1, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->j:Lcom/bumptech/glide/load/ResourceDecoder;

    iget-object v2, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->k:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;)V

    invoke-super {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->f(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 244
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            ">;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 454
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 455
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 469
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 470
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->f(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 170
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 188
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 426
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 427
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<",
            "Landroid/graphics/Bitmap;",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 312
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 313
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener",
            "<-TModelType;TTranscodeType;>;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 408
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 409
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;",
            ")",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 350
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 351
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 475
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 476
    return-object p0
.end method

.method public a(Z)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 417
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Z)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 418
    return-object p0
.end method

.method public varargs a([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 302
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 303
    return-object p0
.end method

.method public varargs a([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;",
            ")",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 264
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 265
    return-object p0
.end method

.method public synthetic a()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/bumptech/glide/BitmapRequestBuilder;->g()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 498
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method

.method public b(F)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->c(F)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 161
    return-object p0
.end method

.method public b(I)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 359
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->g(I)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 360
    return-object p0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 374
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->e(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 375
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->e(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 179
    return-object p0
.end method

.method public synthetic b()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/bumptech/glide/BitmapRequestBuilder;->f()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(II)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/BitmapRequestBuilder;->a(II)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->a(Landroid/view/animation/Animation;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->a(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->a(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->a(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->a(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->a(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->a(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->a(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->a(Ljava/lang/Object;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Z)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->a(Z)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->a([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->a:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->a(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 380
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->f(I)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 381
    return-object p0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 398
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->d(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 399
    return-object p0
.end method

.method public c(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 201
    iput-object p1, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->j:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 202
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;

    iget-object v1, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->k:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;)V

    invoke-super {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->f(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 203
    return-object p0
.end method

.method public synthetic c(F)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->b(F)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/bumptech/glide/BitmapRequestBuilder;->j()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 84
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->c:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->a(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 389
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->e(I)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 390
    return-object p0
.end method

.method public d(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 215
    iput-object p1, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->k:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 216
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;

    iget-object v1, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->j:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-direct {v0, v1, p1}, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;)V

    invoke-super {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->f(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 217
    return-object p0
.end method

.method public synthetic d(F)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->a(F)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->c(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 96
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->b:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->a(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->d(I)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->b(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 278
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->c:Lcom/bumptech/glide/Glide;

    invoke-virtual {v2}, Lcom/bumptech/glide/Glide;->e()Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->a([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->c(I)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->a(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 291
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->c:Lcom/bumptech/glide/Glide;

    invoke-virtual {v2}, Lcom/bumptech/glide/Glide;->f()Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->a([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->b(I)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 321
    invoke-super {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->n()Lcom/bumptech/glide/GenericRequestBuilder;

    .line 322
    return-object p0
.end method

.method public synthetic h(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->a(I)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 463
    invoke-super {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->o()Lcom/bumptech/glide/GenericRequestBuilder;

    .line 464
    return-object p0
.end method

.method public j()Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 481
    invoke-super {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->m()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/BitmapRequestBuilder;

    return-object v0
.end method

.method k()V
    .locals 0

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/bumptech/glide/BitmapRequestBuilder;->g()Lcom/bumptech/glide/BitmapRequestBuilder;

    .line 504
    return-void
.end method

.method l()V
    .locals 0

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/bumptech/glide/BitmapRequestBuilder;->f()Lcom/bumptech/glide/BitmapRequestBuilder;

    .line 509
    return-void
.end method

.method public synthetic m()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/bumptech/glide/BitmapRequestBuilder;->j()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic n()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/bumptech/glide/BitmapRequestBuilder;->h()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic o()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/bumptech/glide/BitmapRequestBuilder;->i()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method
