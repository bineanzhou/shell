.class public Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;
.super Ljava/lang/Object;
.source "ImageVideoWrapperEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/Encoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Encoder",
        "<",
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/Encoder;Lcom/bumptech/glide/load/Encoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->a:Lcom/bumptech/glide/load/Encoder;

    .line 23
    iput-object p2, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->b:Lcom/bumptech/glide/load/Encoder;

    .line 24
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->a:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/Encoder;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->b:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/Encoder;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->c:Ljava/lang/String;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/model/ImageVideoWrapper;Ljava/io/OutputStream;)Z
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->a()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->a:Lcom/bumptech/glide/load/Encoder;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/bumptech/glide/load/Encoder;->a(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result v0

    .line 31
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->b:Lcom/bumptech/glide/load/Encoder;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->b()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/bumptech/glide/load/Encoder;->a(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->a(Lcom/bumptech/glide/load/model/ImageVideoWrapper;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method
