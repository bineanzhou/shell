.class Lcom/bumptech/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher;
.super Ljava/lang/Object;
.source "GifFrameModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/GifFrameModelLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GifFrameDataFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher",
        "<",
        "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/gifdecoder/GifDecoder;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher;->a:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    .line 20
    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher;->b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/gifdecoder/GifDecoder;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/gifdecoder/GifDecoder;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher;->a:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher;->a:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method
