.class public interface abstract Lcom/bumptech/glide/load/engine/cache/MemoryCache;
.super Ljava/lang/Object;
.source "MemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;
    }
.end annotation


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract a(F)V
.end method

.method public abstract a(I)V
.end method

.method public abstract a(Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;)V
.end method

.method public abstract b()I
.end method

.method public abstract b(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract c()V
.end method
