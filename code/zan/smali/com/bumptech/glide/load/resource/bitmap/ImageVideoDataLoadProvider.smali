.class public Lcom/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider;
.super Ljava/lang/Object;
.source "ImageVideoDataLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/provider/DataLoadProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/provider/DataLoadProvider",
        "<",
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;

.field private final b:Lcom/bumptech/glide/load/ResourceDecoder;
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

.field private final c:Lcom/bumptech/glide/load/ResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/provider/DataLoadProvider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-interface {p1}, Lcom/bumptech/glide/provider/DataLoadProvider;->d()Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider;->c:Lcom/bumptech/glide/load/ResourceEncoder;

    .line 29
    new-instance v0, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;

    invoke-interface {p1}, Lcom/bumptech/glide/provider/DataLoadProvider;->c()Lcom/bumptech/glide/load/Encoder;

    move-result-object v1

    invoke-interface {p2}, Lcom/bumptech/glide/provider/DataLoadProvider;->c()Lcom/bumptech/glide/load/Encoder;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;-><init>(Lcom/bumptech/glide/load/Encoder;Lcom/bumptech/glide/load/Encoder;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider;->d:Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;

    .line 31
    invoke-interface {p1}, Lcom/bumptech/glide/provider/DataLoadProvider;->a()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider;->b:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 32
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;

    invoke-interface {p1}, Lcom/bumptech/glide/provider/DataLoadProvider;->b()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v1

    invoke-interface {p2}, Lcom/bumptech/glide/provider/DataLoadProvider;->b()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider;->a:Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;

    .line 34
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
    .line 38
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider;->b:Lcom/bumptech/glide/load/ResourceDecoder;

    return-object v0
.end method

.method public b()Lcom/bumptech/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider;->a:Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/load/Encoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider;->d:Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;

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
    .line 53
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider;->c:Lcom/bumptech/glide/load/ResourceEncoder;

    return-object v0
.end method
