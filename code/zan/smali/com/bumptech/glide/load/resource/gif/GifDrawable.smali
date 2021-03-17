.class public Lcom/bumptech/glide/load/resource/gif/GifDrawable;
.super Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
.source "GifDrawable.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
    }
.end annotation


# instance fields
.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Rect;

.field private final e:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

.field private final f:Lcom/bumptech/glide/gifdecoder/GifDecoder;

.field private final g:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;IILcom/bumptech/glide/gifdecoder/GifHeader;[BLandroid/graphics/Bitmap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Lcom/bumptech/glide/gifdecoder/GifHeader;",
            "[B",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move-object v3, p1

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;-><init>(Lcom/bumptech/glide/gifdecoder/GifHeader;[BLandroid/content/Context;Lcom/bumptech/glide/load/Transformation;IILcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;-><init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V

    .line 75
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder;Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Paint;)V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->d:Landroid/graphics/Rect;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->k:Z

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->m:I

    .line 99
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->f:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    .line 100
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->g:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 101
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;-><init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    .line 102
    iput-object p5, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->c:Landroid/graphics/Paint;

    .line 103
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iput-object p4, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->h:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 104
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iput-object p3, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->i:Landroid/graphics/Bitmap;

    .line 105
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V
    .locals 6

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->d:Landroid/graphics/Rect;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->k:Z

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->m:I

    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "GifState must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    .line 90
    new-instance v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    iget-object v1, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->g:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;-><init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->f:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->c:Landroid/graphics/Paint;

    .line 92
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->f:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    iget-object v1, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->a:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v2, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->b:[B

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->a(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V

    .line 93
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    iget-object v1, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->f:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    iget v4, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->e:I

    iget v5, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->f:I

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;Lcom/bumptech/glide/gifdecoder/GifDecoder;II)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->g:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 94
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->g:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    iget-object v1, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->d:Lcom/bumptech/glide/load/Transformation;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->a(Lcom/bumptech/glide/load/Transformation;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable;Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/Transformation;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v1, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->a:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v2, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->b:[B

    iget-object v3, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->c:Landroid/content/Context;

    iget-object v4, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget v5, v4, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->e:I

    iget-object v4, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget v6, v4, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->f:I

    iget-object v4, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v7, v4, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->g:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget-object v4, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v8, v4, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->h:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object v4, p3

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;-><init>(Lcom/bumptech/glide/gifdecoder/GifHeader;[BLandroid/content/Context;Lcom/bumptech/glide/load/Transformation;IILcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;-><init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V

    .line 82
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->l:I

    .line 141
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->g:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->c()V

    .line 171
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->invalidateSelf()V

    .line 172
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 176
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->f:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->g()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->invalidateSelf()V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->h:Z

    if-nez v0, :cond_0

    .line 179
    iput-boolean v1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->h:Z

    .line 180
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->g:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->a()V

    .line 181
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->h:Z

    .line 187
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->g:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->b()V

    .line 188
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 306
    if-gtz p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_0
    if-nez p1, :cond_1

    .line 312
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->f:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->j()I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->m:I

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_1
    iput p1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->m:I

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    if-nez p2, :cond_0

    .line 113
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The first frame of the GIF must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    if-nez p1, :cond_1

    .line 116
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The frame transformation must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iput-object p1, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->d:Lcom/bumptech/glide/load/Transformation;

    .line 119
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iput-object p2, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->i:Landroid/graphics/Bitmap;

    .line 120
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->g:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->a(Lcom/bumptech/glide/load/Transformation;)V

    .line 121
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->h:Z

    .line 219
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x1

    return v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b(I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 262
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_1

    .line 263
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->stop()V

    .line 264
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->j()V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->invalidateSelf()V

    .line 270
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->f:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->g()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    .line 271
    iget v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->l:I

    .line 274
    :cond_2
    iget v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->l:I

    iget v1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->m:I

    if-lt v0, v1, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->stop()V

    goto :goto_0
.end method

.method public c()Lcom/bumptech/glide/gifdecoder/GifDecoder;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->f:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/load/Transformation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->d:Lcom/bumptech/glide/load/Transformation;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->j:Z

    if-eqz v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->n:Z

    if-eqz v0, :cond_1

    .line 234
    const/16 v0, 0x77

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->d:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->n:Z

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->g:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_2

    .line 240
    :goto_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->d:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->i:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method public e()[B
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->b:[B

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->f:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->g()I

    move-result v0

    return v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->j:Z

    .line 289
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->h:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->i:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->a(Landroid/graphics/Bitmap;)Z

    .line 290
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->g:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->c()V

    .line 291
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->g:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->b()V

    .line 292
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 256
    const/4 v0, -0x2

    return v0
.end method

.method h()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->j:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->h:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->n:Z

    .line 225
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 246
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 251
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->k:Z

    .line 193
    if-nez p1, :cond_1

    .line 194
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->l()V

    .line 198
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setVisible(ZZ)Z

    move-result v0

    return v0

    .line 195
    :cond_1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->i:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->k()V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->i:Z

    .line 146
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->i()V

    .line 147
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->k:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->k()V

    .line 150
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->i:Z

    .line 155
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->l()V

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->j()V

    .line 164
    :cond_0
    return-void
.end method
