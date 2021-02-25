.class public Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;
.super Ljava/lang/Object;
.source "GifDrawableLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/provider/DataLoadProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/provider/DataLoadProvider",
        "<",
        "Ljava/io/InputStream;",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;

.field private final b:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;

.field private final c:Lcom/bumptech/glide/load/model/StreamEncoder;

.field private final d:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->a:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;

    .line 28
    new-instance v0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->a:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->d:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    .line 29
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->b:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;

    .line 30
    new-instance v0, Lcom/bumptech/glide/load/model/StreamEncoder;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/StreamEncoder;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->c:Lcom/bumptech/glide/load/model/StreamEncoder;

    .line 31
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
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->d:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

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
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->a:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;

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
    .line 45
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->c:Lcom/bumptech/glide/load/model/StreamEncoder;

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/load/ResourceEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->b:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;

    return-object v0
.end method
