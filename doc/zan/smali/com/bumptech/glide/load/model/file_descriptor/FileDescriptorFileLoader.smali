.class public Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader;
.super Lcom/bumptech/glide/load/model/FileLoader;
.source "FileDescriptorFileLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/model/FileLoader",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;",
        "Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorModelLoader",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    const-class v0, Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/bumptech/glide/Glide;->b(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/model/ModelLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Landroid/net/Uri;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/model/FileLoader;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;)V

    .line 43
    return-void
.end method
