.class Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;
.super Ljava/lang/ref/WeakReference;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceWeakReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Lcom/bumptech/glide/load/engine/EngineResource",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/Key;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 339
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 340
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;->a:Lcom/bumptech/glide/load/Key;

    .line 341
    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;)Lcom/bumptech/glide/load/Key;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;->a:Lcom/bumptech/glide/load/Key;

    return-object v0
.end method
