.class Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
.super Ljava/lang/Object;
.source "ViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/target/ViewTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SizeDeterminer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;
    }
.end annotation


# static fields
.field private static final a:I


# instance fields
.field private final b:Landroid/view/View;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/request/target/SizeReadyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

.field private e:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->c:Ljava/util/List;

    .line 172
    iput-object p1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->b:Landroid/view/View;

    .line 173
    return-void
.end method

.method private a(IZ)I
    .locals 1

    .prologue
    .line 249
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 250
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->d()Landroid/graphics/Point;

    move-result-object v0

    .line 251
    if-eqz p2, :cond_0

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 253
    :goto_0
    return v0

    .line 251
    :cond_0
    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_1
    move v0, p1

    .line 253
    goto :goto_0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->c()I

    move-result v0

    .line 188
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->b()I

    move-result v1

    .line 189
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->a(II)V

    .line 200
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->d:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 204
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->d:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    goto :goto_0
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/target/SizeReadyCallback;

    .line 177
    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->a(II)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->a()V

    return-void
.end method

.method private a(I)Z
    .locals 1

    .prologue
    .line 275
    if-gtz p1, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()I
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 233
    :goto_0
    return v0

    .line 230
    :cond_0
    if-eqz v0, :cond_1

    .line 231
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->a(IZ)I

    move-result v0

    goto :goto_0

    .line 233
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 238
    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 239
    iget-object v2, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 240
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 244
    :cond_0
    :goto_0
    return v0

    .line 241
    :cond_1
    if-eqz v1, :cond_0

    .line 242
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->a(IZ)I

    move-result v0

    goto :goto_0
.end method

.method private d()Landroid/graphics/Point;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->e:Landroid/graphics/Point;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->e:Landroid/graphics/Point;

    .line 271
    :goto_0
    return-object v0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 264
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 265
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_1

    .line 266
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->e:Landroid/graphics/Point;

    .line 267
    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->e:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 271
    :goto_1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->e:Landroid/graphics/Point;

    goto :goto_0

    .line 269
    :cond_1
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->e:Landroid/graphics/Point;

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 3

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->c()I

    move-result v0

    .line 209
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->b()I

    move-result v1

    .line 210
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->a(II)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->d:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 220
    new-instance v1, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;-><init>(Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;)V

    iput-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->d:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    .line 221
    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->d:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method
