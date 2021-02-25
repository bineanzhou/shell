.class public Lcom/bumptech/glide/BitmapTypeRequest;
.super Lcom/bumptech/glide/BitmapRequestBuilder;
.source "BitmapTypeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/BitmapRequestBuilder",
        "<TModelType;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final g:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModelType;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/bumptech/glide/Glide;

.field private final j:Lcom/bumptech/glide/RequestManager$OptionsApplier;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/GenericRequestBuilder;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;***>;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModelType;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/bumptech/glide/RequestManager$OptionsApplier;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p1, Lcom/bumptech/glide/GenericRequestBuilder;->c:Lcom/bumptech/glide/Glide;

    const-class v1, Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v0, p2, p3, v1, v2}, Lcom/bumptech/glide/BitmapTypeRequest;->a(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/FixedLoadProvider;

    move-result-object v0

    const-class v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;-><init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V

    .line 54
    iput-object p2, p0, Lcom/bumptech/glide/BitmapTypeRequest;->g:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 55
    iput-object p3, p0, Lcom/bumptech/glide/BitmapTypeRequest;->h:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 56
    iget-object v0, p1, Lcom/bumptech/glide/GenericRequestBuilder;->c:Lcom/bumptech/glide/Glide;

    iput-object v0, p0, Lcom/bumptech/glide/BitmapTypeRequest;->i:Lcom/bumptech/glide/Glide;

    .line 57
    iput-object p4, p0, Lcom/bumptech/glide/BitmapTypeRequest;->j:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    .line 58
    return-void
.end method

.method private static a(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/FixedLoadProvider;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<",
            "Landroid/graphics/Bitmap;",
            "TR;>;)",
            "Lcom/bumptech/glide/provider/FixedLoadProvider",
            "<TA;",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Landroid/graphics/Bitmap;",
            "TR;>;"
        }
    .end annotation

    .prologue
    .line 33
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    .line 37
    :cond_0
    if-nez p4, :cond_1

    .line 38
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p3}, Lcom/bumptech/glide/Glide;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object p4

    .line 40
    :cond_1
    const-class v0, Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/Glide;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/provider/DataLoadProvider;

    move-result-object v1

    .line 42
    new-instance v2, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;

    invoke-direct {v2, p1, p2}, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;)V

    .line 45
    new-instance v0, Lcom/bumptech/glide/provider/FixedLoadProvider;

    invoke-direct {v0, v2, p4, v1}, Lcom/bumptech/glide/provider/FixedLoadProvider;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap$CompressFormat;I)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$CompressFormat;",
            "I)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;[B>;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;-><init>(Landroid/graphics/Bitmap$CompressFormat;I)V

    const-class v1, [B

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/BitmapTypeRequest;->a(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Ljava/lang/Class;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Ljava/lang/Class;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<",
            "Landroid/graphics/Bitmap;",
            "TR;>;",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TR;>;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/bumptech/glide/BitmapTypeRequest;->j:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    new-instance v1, Lcom/bumptech/glide/BitmapRequestBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/BitmapTypeRequest;->i:Lcom/bumptech/glide/Glide;

    iget-object v3, p0, Lcom/bumptech/glide/BitmapTypeRequest;->g:Lcom/bumptech/glide/load/model/ModelLoader;

    iget-object v4, p0, Lcom/bumptech/glide/BitmapTypeRequest;->h:Lcom/bumptech/glide/load/model/ModelLoader;

    invoke-static {v2, v3, v4, p2, p1}, Lcom/bumptech/glide/BitmapTypeRequest;->a(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/FixedLoadProvider;

    move-result-object v2

    invoke-direct {v1, v2, p2, p0}, Lcom/bumptech/glide/BitmapRequestBuilder;-><init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager$OptionsApplier;->a(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/BitmapRequestBuilder;

    return-object v0
.end method

.method public p()Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;[B>;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;-><init>()V

    const-class v1, [B

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/BitmapTypeRequest;->a(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Ljava/lang/Class;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method
