.class public Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
.super Ljava/lang/Object;
.source "PreFillType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/prefill/PreFillType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private c:Landroid/graphics/Bitmap$Config;

.field private d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0, p1, p1}, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;-><init>(II)V

    .line 115
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->d:I

    .line 123
    if-gtz p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    if-gtz p2, :cond_1

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    iput p1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->a:I

    .line 130
    iput p2, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->b:I

    .line 131
    return-void
.end method


# virtual methods
.method a()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->c:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public a(I)Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    .locals 2

    .prologue
    .line 158
    if-gtz p1, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Weight must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->d:I

    .line 162
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->c:Landroid/graphics/Bitmap$Config;

    .line 140
    return-object p0
.end method

.method b()Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    .locals 5

    .prologue
    .line 169
    new-instance v0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    iget v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->a:I

    iget v2, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->b:I

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->c:Landroid/graphics/Bitmap$Config;

    iget v4, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;-><init>(IILandroid/graphics/Bitmap$Config;I)V

    return-object v0
.end method
