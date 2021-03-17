.class Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "GifDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/GifDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GifState"
.end annotation


# static fields
.field private static final j:I = 0x77


# instance fields
.field a:Lcom/bumptech/glide/gifdecoder/GifHeader;

.field b:[B

.field c:Landroid/content/Context;

.field d:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field e:I

.field f:I

.field g:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

.field h:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field i:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifHeader;[BLandroid/content/Context;Lcom/bumptech/glide/load/Transformation;IILcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/gifdecoder/GifHeader;",
            "[B",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 332
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 333
    if-nez p9, :cond_0

    .line 334
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The first frame of the GIF must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->a:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 337
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->b:[B

    .line 338
    iput-object p8, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->h:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 339
    iput-object p9, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->i:Landroid/graphics/Bitmap;

    .line 340
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->c:Landroid/content/Context;

    .line 341
    iput-object p4, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->d:Lcom/bumptech/glide/load/Transformation;

    .line 342
    iput p5, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->e:I

    .line 343
    iput p6, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->f:I

    .line 344
    iput-object p7, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->g:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 345
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V
    .locals 1

    .prologue
    .line 347
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 348
    if-eqz p1, :cond_0

    .line 349
    iget-object v0, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->a:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->a:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 350
    iget-object v0, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->b:[B

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->b:[B

    .line 351
    iget-object v0, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->c:Landroid/content/Context;

    .line 352
    iget-object v0, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->d:Lcom/bumptech/glide/load/Transformation;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->d:Lcom/bumptech/glide/load/Transformation;

    .line 353
    iget v0, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->e:I

    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->e:I

    .line 354
    iget v0, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->f:I

    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->f:I

    .line 355
    iget-object v0, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->g:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->g:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 356
    iget-object v0, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->h:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->h:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 357
    iget-object v0, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->i:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->i:Landroid/graphics/Bitmap;

    .line 359
    :cond_0
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 368
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;-><init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
