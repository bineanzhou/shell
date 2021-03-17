.class Lcom/bumptech/glide/ListPreloader$PreloadTarget;
.super Lcom/bumptech/glide/request/target/BaseTarget;
.source "ListPreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/ListPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreloadTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/BaseTarget",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/BaseTarget;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/ListPreloader$1;)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/bumptech/glide/ListPreloader$PreloadTarget;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/ListPreloader$PreloadTarget;I)I
    .locals 0

    .prologue
    .line 301
    iput p1, p0, Lcom/bumptech/glide/ListPreloader$PreloadTarget;->c:I

    return p1
.end method

.method static synthetic b(Lcom/bumptech/glide/ListPreloader$PreloadTarget;I)I
    .locals 0

    .prologue
    .line 301
    iput p1, p0, Lcom/bumptech/glide/ListPreloader$PreloadTarget;->b:I

    return p1
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 2

    .prologue
    .line 313
    iget v0, p0, Lcom/bumptech/glide/ListPreloader$PreloadTarget;->c:I

    iget v1, p0, Lcom/bumptech/glide/ListPreloader$PreloadTarget;->b:I

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->a(II)V

    .line 314
    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 309
    return-void
.end method
