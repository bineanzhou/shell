.class public Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;
.super Ljava/lang/Object;
.source "StreamBitmapDataLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/provider/DataLoadProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/provider/DataLoadProvider",
        "<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

.field private final b:Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

.field private final c:Lcom/bumptech/glide/load/model/StreamEncoder;

.field private final d:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder",
            "<",
            "Landroid/graphics/Bitmap;",
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
    new-instance v0, Lcom/bumptech/glide/load/model/StreamEncoder;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/StreamEncoder;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->c:Lcom/bumptech/glide/load/model/StreamEncoder;

    .line 29
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->a:Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    .line 30
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->b:Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    .line 31
    new-instance v0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->a:Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->d:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

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
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->d:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    return-object v0
.end method

.method public b()Lcom/bumptech/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->a:Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/load/Encoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->c:Lcom/bumptech/glide/load/model/StreamEncoder;

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
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->b:Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    return-object v0
.end method
