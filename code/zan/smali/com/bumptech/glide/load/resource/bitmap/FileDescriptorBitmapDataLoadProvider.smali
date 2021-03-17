.class public Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;
.super Ljava/lang/Object;
.source "FileDescriptorBitmapDataLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/provider/DataLoadProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/provider/DataLoadProvider",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;

.field private final c:Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

.field private final d:Lcom/bumptech/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    invoke-direct {v1, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->a:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 29
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->b:Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;

    .line 30
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->c:Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    .line 31
    invoke-static {}, Lcom/bumptech/glide/load/resource/NullEncoder;->b()Lcom/bumptech/glide/load/Encoder;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->d:Lcom/bumptech/glide/load/Encoder;

    .line 32
    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->a:Lcom/bumptech/glide/load/ResourceDecoder;

    return-object v0
.end method

.method public b()Lcom/bumptech/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->b:Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/load/Encoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->d:Lcom/bumptech/glide/load/Encoder;

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/load/ResourceEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->c:Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    return-object v0
.end method
