.class public Lcom/bumptech/glide/Glide;
.super Ljava/lang/Object;
.source "Glide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/Glide$ClearTarget;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "Glide"

.field private static volatile b:Lcom/bumptech/glide/Glide;


# instance fields
.field private final c:Lcom/bumptech/glide/load/model/GenericLoaderFactory;

.field private final d:Lcom/bumptech/glide/load/engine/Engine;

.field private final e:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final f:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field private final g:Lcom/bumptech/glide/load/DecodeFormat;

.field private final h:Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

.field private final i:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

.field private final j:Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

.field private final k:Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

.field private final l:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

.field private final m:Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

.field private final n:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

.field private final o:Landroid/os/Handler;

.field private final p:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/content/Context;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 6

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/request/target/ImageViewTargetFactory;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Glide;->h:Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

    .line 93
    new-instance v0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Glide;->i:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    .line 204
    iput-object p1, p0, Lcom/bumptech/glide/Glide;->d:Lcom/bumptech/glide/load/engine/Engine;

    .line 205
    iput-object p3, p0, Lcom/bumptech/glide/Glide;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 206
    iput-object p2, p0, Lcom/bumptech/glide/Glide;->f:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 207
    iput-object p5, p0, Lcom/bumptech/glide/Glide;->g:Lcom/bumptech/glide/load/DecodeFormat;

    .line 208
    new-instance v0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;

    invoke-direct {v0, p4}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bumptech/glide/Glide;->c:Lcom/bumptech/glide/load/model/GenericLoaderFactory;

    .line 209
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bumptech/glide/Glide;->o:Landroid/os/Handler;

    .line 210
    new-instance v0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

    invoke-direct {v0, p2, p3, p5}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;-><init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/bumptech/glide/Glide;->p:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

    .line 212
    new-instance v0, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

    invoke-direct {v0}, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Glide;->j:Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

    .line 214
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;

    invoke-direct {v0, p3, p5}, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    .line 216
    iget-object v1, p0, Lcom/bumptech/glide/Glide;->j:Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

    const-class v2, Ljava/io/InputStream;

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3, v0}, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    .line 218
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;

    invoke-direct {v1, p3, p5}, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    .line 220
    iget-object v2, p0, Lcom/bumptech/glide/Glide;->j:Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

    const-class v3, Landroid/os/ParcelFileDescriptor;

    const-class v4, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4, v1}, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    .line 222
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider;

    invoke-direct {v2, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider;-><init>(Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    .line 224
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->j:Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

    const-class v1, Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v3, v2}, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    .line 226
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;

    invoke-direct {v0, p4, p3}, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 228
    iget-object v1, p0, Lcom/bumptech/glide/Glide;->j:Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

    const-class v3, Ljava/io/InputStream;

    const-class v4, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v1, v3, v4, v0}, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    .line 230
    iget-object v1, p0, Lcom/bumptech/glide/Glide;->j:Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

    const-class v3, Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    const-class v4, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    new-instance v5, Lcom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;

    invoke-direct {v5, v2, v0, p3}, Lcom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;-><init>(Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    invoke-virtual {v1, v3, v4, v5}, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    .line 233
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->j:Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

    const-class v1, Ljava/io/InputStream;

    const-class v2, Ljava/io/File;

    new-instance v3, Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    .line 235
    const-class v0, Ljava/io/File;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader$Factory;

    invoke-direct {v2}, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader$Factory;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/Glide;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 236
    const-class v0, Ljava/io/File;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/bumptech/glide/load/model/stream/StreamFileLoader$Factory;

    invoke-direct {v2}, Lcom/bumptech/glide/load/model/stream/StreamFileLoader$Factory;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/Glide;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 237
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$Factory;

    invoke-direct {v2}, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$Factory;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/Glide;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 238
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/bumptech/glide/load/model/stream/StreamResourceLoader$Factory;

    invoke-direct {v2}, Lcom/bumptech/glide/load/model/stream/StreamResourceLoader$Factory;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/Glide;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 239
    const-class v0, Ljava/lang/Integer;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$Factory;

    invoke-direct {v2}, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$Factory;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/Glide;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 240
    const-class v0, Ljava/lang/Integer;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/bumptech/glide/load/model/stream/StreamResourceLoader$Factory;

    invoke-direct {v2}, Lcom/bumptech/glide/load/model/stream/StreamResourceLoader$Factory;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/Glide;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 241
    const-class v0, Ljava/lang/String;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorStringLoader$Factory;

    invoke-direct {v2}, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorStringLoader$Factory;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/Glide;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 242
    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/bumptech/glide/load/model/stream/StreamStringLoader$Factory;

    invoke-direct {v2}, Lcom/bumptech/glide/load/model/stream/StreamStringLoader$Factory;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/Glide;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 243
    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorUriLoader$Factory;

    invoke-direct {v2}, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorUriLoader$Factory;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/Glide;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 244
    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/bumptech/glide/load/model/stream/StreamUriLoader$Factory;

    invoke-direct {v2}, Lcom/bumptech/glide/load/model/stream/StreamUriLoader$Factory;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/Glide;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 245
    const-class v0, Ljava/net/URL;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/bumptech/glide/load/model/stream/StreamUrlLoader$Factory;

    invoke-direct {v2}, Lcom/bumptech/glide/load/model/stream/StreamUrlLoader$Factory;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/Glide;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 246
    const-class v0, Lcom/bumptech/glide/load/model/GlideUrl;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader$Factory;

    invoke-direct {v2}, Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader$Factory;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/Glide;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 247
    const-class v0, [B

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader$Factory;

    invoke-direct {v2}, Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader$Factory;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/Glide;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 249
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->i:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    const-class v1, Landroid/graphics/Bitmap;

    const-class v2, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;

    new-instance v3, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p3}, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    .line 251
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->i:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    const-class v1, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    const-class v2, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    new-instance v3, Lcom/bumptech/glide/load/resource/transcode/GifBitmapWrapperDrawableTranscoder;

    new-instance v4, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, p3}, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    invoke-direct {v3, v4}, Lcom/bumptech/glide/load/resource/transcode/GifBitmapWrapperDrawableTranscoder;-><init>(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    .line 255
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v0, p3}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    iput-object v0, p0, Lcom/bumptech/glide/Glide;->k:Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    .line 256
    new-instance v0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    iget-object v1, p0, Lcom/bumptech/glide/Glide;->k:Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v0, p3, v1}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;)V

    iput-object v0, p0, Lcom/bumptech/glide/Glide;->l:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    .line 258
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    invoke-direct {v0, p3}, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    iput-object v0, p0, Lcom/bumptech/glide/Glide;->m:Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    .line 259
    new-instance v0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    iget-object v1, p0, Lcom/bumptech/glide/Glide;->m:Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    invoke-direct {v0, p3, v1}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;)V

    iput-object v0, p0, Lcom/bumptech/glide/Glide;->n:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    .line 260
    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;
    .locals 1

    .prologue
    .line 640
    invoke-static {}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->a()Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    .line 641
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 665
    invoke-static {}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->a()Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    .line 666
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->a(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;
    .locals 1

    .prologue
    .line 677
    invoke-static {}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->a()Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    .line 678
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;
    .locals 1

    .prologue
    .line 652
    invoke-static {}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->a()Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    .line 653
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 567
    const-class v0, Ljava/io/InputStream;

    invoke-static {p0, v0, p1}, Lcom/bumptech/glide/Glide;->a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    .line 533
    if-nez p0, :cond_1

    .line 534
    const-string v0, "Glide"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    const-string v0, "Glide"

    const-string v1, "Unable to load null model, setting placeholder only"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_0
    const/4 v0, 0x0

    .line 539
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-direct {v0}, Lcom/bumptech/glide/Glide;->m()Lcom/bumptech/glide/load/model/GenericLoaderFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 577
    const-class v0, Ljava/io/InputStream;

    invoke-static {p0, v0, p1}, Lcom/bumptech/glide/Glide;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    .line 557
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    invoke-static {v0, p1, p2}, Lcom/bumptech/glide/Glide;->a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .prologue
    .line 111
    const-string v0, "image_manager_disk_cache"

    invoke-static {p0, v0}, Lcom/bumptech/glide/Glide;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 125
    if-eqz v2, :cond_2

    .line 126
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    .line 131
    goto :goto_0

    .line 133
    :cond_2
    const-string v1, "Glide"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const-string v1, "Glide"

    const-string v2, "default disk cache dir is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 459
    new-instance v0, Lcom/bumptech/glide/Glide$ClearTarget;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/Glide$ClearTarget;-><init>(Landroid/view/View;)V

    .line 460
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->a(Lcom/bumptech/glide/request/target/Target;)V

    .line 461
    return-void
.end method

.method public static a(Lcom/bumptech/glide/GlideBuilder;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 191
    invoke-static {}, Lcom/bumptech/glide/Glide;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Glide is already setup, check with isSetup() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/bumptech/glide/GlideBuilder;->a()Lcom/bumptech/glide/Glide;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/Glide;->b:Lcom/bumptech/glide/Glide;

    .line 196
    return-void
.end method

.method public static a(Lcom/bumptech/glide/request/FutureTarget;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/FutureTarget",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 442
    invoke-interface {p0}, Lcom/bumptech/glide/request/FutureTarget;->a()V

    .line 443
    return-void
.end method

.method public static a(Lcom/bumptech/glide/request/target/Target;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 427
    invoke-static {}, Lcom/bumptech/glide/util/Util;->a()V

    .line 428
    invoke-interface {p0}, Lcom/bumptech/glide/request/target/Target;->a_()Lcom/bumptech/glide/request/Request;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_0

    .line 430
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->d()V

    .line 431
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/bumptech/glide/request/target/Target;->a(Lcom/bumptech/glide/request/Request;)V

    .line 433
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 176
    sget-object v0, Lcom/bumptech/glide/Glide;->b:Lcom/bumptech/glide/Glide;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Lcom/bumptech/glide/Glide;
    .locals 6

    .prologue
    .line 145
    sget-object v0, Lcom/bumptech/glide/Glide;->b:Lcom/bumptech/glide/Glide;

    if-nez v0, :cond_2

    .line 146
    const-class v1, Lcom/bumptech/glide/Glide;

    monitor-enter v1

    .line 147
    :try_start_0
    sget-object v0, Lcom/bumptech/glide/Glide;->b:Lcom/bumptech/glide/Glide;

    if-nez v0, :cond_1

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 149
    new-instance v0, Lcom/bumptech/glide/module/ManifestParser;

    invoke-direct {v0, v2}, Lcom/bumptech/glide/module/ManifestParser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/module/ManifestParser;->a()Ljava/util/List;

    move-result-object v3

    .line 151
    new-instance v4, Lcom/bumptech/glide/GlideBuilder;

    invoke-direct {v4, v2}, Lcom/bumptech/glide/GlideBuilder;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/module/GlideModule;

    .line 153
    invoke-interface {v0, v2, v4}, Lcom/bumptech/glide/module/GlideModule;->a(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 155
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Lcom/bumptech/glide/GlideBuilder;->a()Lcom/bumptech/glide/Glide;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/Glide;->b:Lcom/bumptech/glide/Glide;

    .line 156
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/module/GlideModule;

    .line 157
    sget-object v4, Lcom/bumptech/glide/Glide;->b:Lcom/bumptech/glide/Glide;

    invoke-interface {v0, v2, v4}, Lcom/bumptech/glide/module/GlideModule;->a(Landroid/content/Context;Lcom/bumptech/glide/Glide;)V

    goto :goto_1

    .line 160
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :cond_2
    sget-object v0, Lcom/bumptech/glide/Glide;->b:Lcom/bumptech/glide/Glide;

    return-object v0
.end method

.method public static b(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 588
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-static {p0, v0, p1}, Lcom/bumptech/glide/Glide;->a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Object;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 598
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-static {p0, v0, p1}, Lcom/bumptech/glide/Glide;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    return-object v0
.end method

.method static b()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    sput-object v0, Lcom/bumptech/glide/Glide;->b:Lcom/bumptech/glide/Glide;

    .line 201
    return-void
.end method

.method public static c(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
    .locals 1

    .prologue
    .line 628
    invoke-static {}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->a()Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    .line 629
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->a(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0
.end method

.method private m()Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->c:Lcom/bumptech/glide/load/model/GenericLoaderFactory;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->i:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/target/Target;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lcom/bumptech/glide/request/target/Target",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->h:Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/target/ImageViewTargetFactory;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 383
    invoke-static {}, Lcom/bumptech/glide/util/Util;->a()V

    .line 385
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->f:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->a(I)V

    .line 386
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->a(I)V

    .line 387
    return-void
.end method

.method public a(Lcom/bumptech/glide/MemoryCategory;)V
    .locals 2

    .prologue
    .line 414
    invoke-static {}, Lcom/bumptech/glide/util/Util;->a()V

    .line 416
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->f:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-virtual {p1}, Lcom/bumptech/glide/MemoryCategory;->getMultiplier()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->a(F)V

    .line 417
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-virtual {p1}, Lcom/bumptech/glide/MemoryCategory;->getMultiplier()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->a(F)V

    .line 418
    return-void
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<TT;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 492
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->c:Lcom/bumptech/glide/load/model/GenericLoaderFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    move-result-object v0

    .line 493
    if-eqz v0, :cond_0

    .line 494
    invoke-interface {v0}, Lcom/bumptech/glide/load/model/ModelLoaderFactory;->a()V

    .line 496
    :cond_0
    return-void
.end method

.method public varargs a([Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;)V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->p:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->a([Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;)V

    .line 360
    return-void
.end method

.method b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/provider/DataLoadProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TZ;>;)",
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->j:Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/provider/DataLoadProvider;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    return-object v0
.end method

.method public c(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 511
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->c:Lcom/bumptech/glide/load/model/GenericLoaderFactory;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    move-result-object v0

    .line 512
    if-eqz v0, :cond_0

    .line 513
    invoke-interface {v0}, Lcom/bumptech/glide/load/model/ModelLoaderFactory;->a()V

    .line 515
    :cond_0
    return-void
.end method

.method d()Lcom/bumptech/glide/load/engine/Engine;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->d:Lcom/bumptech/glide/load/engine/Engine;

    return-object v0
.end method

.method e()Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->k:Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    return-object v0
.end method

.method f()Lcom/bumptech/glide/load/resource/bitmap/FitCenter;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->m:Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    return-object v0
.end method

.method g()Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->l:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    return-object v0
.end method

.method h()Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->n:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    return-object v0
.end method

.method i()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->o:Landroid/os/Handler;

    return-object v0
.end method

.method j()Lcom/bumptech/glide/load/DecodeFormat;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->g:Lcom/bumptech/glide/load/DecodeFormat;

    return-object v0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 370
    invoke-static {}, Lcom/bumptech/glide/util/Util;->a()V

    .line 372
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->f:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->c()V

    .line 373
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->b()V

    .line 374
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 397
    invoke-static {}, Lcom/bumptech/glide/util/Util;->b()V

    .line 398
    invoke-virtual {p0}, Lcom/bumptech/glide/Glide;->d()Lcom/bumptech/glide/load/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/Engine;->a()V

    .line 399
    return-void
.end method
