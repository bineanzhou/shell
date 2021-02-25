.class Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "GlideBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BitmapState"
.end annotation


# static fields
.field private static final d:I = 0x6

.field private static final e:Landroid/graphics/Paint;

.field private static final f:I = 0x77


# instance fields
.field final a:Landroid/graphics/Bitmap;

.field b:I

.field c:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 141
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->e:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 147
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->e:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->c:Landroid/graphics/Paint;

    .line 150
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->a:Landroid/graphics/Bitmap;

    .line 151
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p1, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    .line 156
    iget v0, p1, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->b:I

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->b:I

    .line 157
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 172
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->c:Landroid/graphics/Paint;

    if-ne v0, v1, :cond_0

    .line 173
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->c:Landroid/graphics/Paint;

    .line 175
    :cond_0
    return-void
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->a()V

    .line 166
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 167
    return-void
.end method

.method a(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->a()V

    .line 161
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 162
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 179
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;

    invoke-direct {v0, p1, p0}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;)V

    return-object v0
.end method
