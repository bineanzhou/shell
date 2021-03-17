.class final Lcom/bumptech/glide/load/model/ModelCache$ModelKey;
.super Ljava/lang/Object;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/ModelCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ModelKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bumptech/glide/load/model/ModelCache$ModelKey",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:I

.field private c:I

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->a(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->a:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/model/ModelCache$ModelKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;II)",
            "Lcom/bumptech/glide/load/model/ModelCache$ModelKey",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;

    .line 74
    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;-><init>()V

    .line 78
    :cond_0
    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->b(Ljava/lang/Object;II)V

    .line 79
    return-object v0
.end method

.method private b(Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)V"
        }
    .end annotation

    .prologue
    .line 85
    iput-object p1, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->d:Ljava/lang/Object;

    .line 86
    iput p2, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->c:I

    .line 87
    iput p3, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->b:I

    .line 88
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->a:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 96
    instance-of v1, p1, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;

    if-eqz v1, :cond_0

    .line 97
    check-cast p1, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;

    .line 98
    iget v1, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->c:I

    iget v2, p1, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->c:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->b:I

    iget v2, p1, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->b:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->d:Ljava/lang/Object;

    iget-object v2, p1, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->d:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 100
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->b:I

    .line 106
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->c:I

    add-int/2addr v0, v1

    .line 107
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    return v0
.end method
