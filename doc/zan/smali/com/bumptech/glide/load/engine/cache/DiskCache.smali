.class public interface abstract Lcom/bumptech/glide/load/engine/cache/DiskCache;
.super Ljava/lang/Object;
.source "DiskCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;,
        Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/bumptech/glide/load/Key;)Ljava/io/File;
.end method

.method public abstract a()V
.end method

.method public abstract a(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V
.end method

.method public abstract b(Lcom/bumptech/glide/load/Key;)V
.end method
