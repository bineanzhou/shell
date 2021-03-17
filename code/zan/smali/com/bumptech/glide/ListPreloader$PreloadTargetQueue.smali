.class final Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;
.super Ljava/lang/Object;
.source "ListPreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/ListPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PreloadTargetQueue"
.end annotation


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bumptech/glide/ListPreloader$PreloadTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    invoke-static {p1}, Lcom/bumptech/glide/util/Util;->a(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;->a:Ljava/util/Queue;

    .line 287
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;->a:Ljava/util/Queue;

    new-instance v2, Lcom/bumptech/glide/ListPreloader$PreloadTarget;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/bumptech/glide/ListPreloader$PreloadTarget;-><init>(Lcom/bumptech/glide/ListPreloader$1;)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :cond_0
    return-void
.end method


# virtual methods
.method public a(II)Lcom/bumptech/glide/ListPreloader$PreloadTarget;
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/ListPreloader$PreloadTarget;

    .line 294
    iget-object v1, p0, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;->a:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 295
    invoke-static {v0, p1}, Lcom/bumptech/glide/ListPreloader$PreloadTarget;->a(Lcom/bumptech/glide/ListPreloader$PreloadTarget;I)I

    .line 296
    invoke-static {v0, p2}, Lcom/bumptech/glide/ListPreloader$PreloadTarget;->b(Lcom/bumptech/glide/ListPreloader$PreloadTarget;I)I

    .line 297
    return-object v0
.end method
