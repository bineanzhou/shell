.class public Lcom/bumptech/glide/load/resource/bytes/BytesResource;
.super Ljava/lang/Object;
.source "BytesResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/Resource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/Resource",
        "<[B>;"
    }
.end annotation


# instance fields
.field private final a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    if-nez p1, :cond_0

    .line 13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bytes must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bytes/BytesResource;->a:[B

    .line 16
    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bytes/BytesResource;->a:[B

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bytes/BytesResource;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bytes/BytesResource;->a:[B

    array-length v0, v0

    return v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method
