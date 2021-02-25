.class Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$1;,
        Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;,
        Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;,
        Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;,
        Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;

.field private final b:Lcom/bumptech/glide/gifdecoder/GifDecoder;

.field private final c:Landroid/os/Handler;

.field private d:Z

.field private e:Z

.field private f:Lcom/bumptech/glide/GenericRequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;Lcom/bumptech/glide/gifdecoder/GifDecoder;II)V
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/Glide;->c()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v1

    invoke-static {p1, p3, p4, p5, v1}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->a(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/GifDecoder;IILcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    invoke-direct {p0, p2, p3, v0, v1}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;-><init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;Lcom/bumptech/glide/gifdecoder/GifDecoder;Landroid/os/Handler;Lcom/bumptech/glide/GenericRequestBuilder;)V

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;Lcom/bumptech/glide/gifdecoder/GifDecoder;Landroid/os/Handler;Lcom/bumptech/glide/GenericRequestBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            "Landroid/os/Handler;",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->d:Z

    .line 33
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->e:Z

    .line 49
    if-nez p3, :cond_0

    .line 50
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;-><init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$1;)V

    invoke-direct {p3, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->a:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;

    .line 53
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->b:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    .line 54
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->c:Landroid/os/Handler;

    .line 55
    iput-object p4, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->f:Lcom/bumptech/glide/GenericRequestBuilder;

    .line 56
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/GifDecoder;IILcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            "II",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            ")",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;

    invoke-direct {v0, p4}, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 173
    new-instance v1, Lcom/bumptech/glide/load/resource/gif/GifFrameModelLoader;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/gif/GifFrameModelLoader;-><init>()V

    .line 174
    invoke-static {}, Lcom/bumptech/glide/load/resource/NullEncoder;->b()Lcom/bumptech/glide/load/Encoder;

    move-result-object v2

    .line 175
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->c(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    const-class v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v3, v1, v4}, Lcom/bumptech/glide/RequestManager;->a(Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;)Lcom/bumptech/glide/RequestManager$GenericModelRequest;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->a(Ljava/lang/Object;)Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;

    move-result-object v1

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->a(Ljava/lang/Class;)Lcom/bumptech/glide/GenericTranscodeRequest;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/GenericTranscodeRequest;->b(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->f(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Z)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/bumptech/glide/GenericRequestBuilder;->b(II)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->e:Z

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->e:Z

    .line 100
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->b:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->e()V

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->b:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v2}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->f()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 102
    new-instance v2, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->c:Landroid/os/Handler;

    iget-object v4, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->b:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v4}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->h()I

    move-result v4

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;-><init>(Landroid/os/Handler;IJ)V

    .line 103
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->f:Lcom/bumptech/glide/GenericRequestBuilder;

    new-instance v1, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->d:Z

    if-eqz v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->d:Z

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->h:Z

    .line 73
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->e()V

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/Transformation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Transformation must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->f:Lcom/bumptech/glide/GenericRequestBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/bumptech/glide/load/Transformation;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/GenericRequestBuilder;->b([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->f:Lcom/bumptech/glide/GenericRequestBuilder;

    .line 64
    return-void
.end method

.method a(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 110
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->h:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->c:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 125
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->g:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 116
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->g:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 117
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->a:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;

    invoke-static {p1}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->a(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;->b(I)V

    .line 119
    if-eqz v0, :cond_1

    .line 120
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->c:Landroid/os/Handler;

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 123
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->e:Z

    .line 124
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->e()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->d:Z

    .line 78
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->b()V

    .line 82
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->g:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->g:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->a(Lcom/bumptech/glide/request/target/Target;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->g:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 86
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->h:Z

    .line 88
    return-void
.end method

.method public d()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->g:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->g:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
