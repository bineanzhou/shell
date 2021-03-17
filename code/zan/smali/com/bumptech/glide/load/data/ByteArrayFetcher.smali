.class public Lcom/bumptech/glide/load/data/ByteArrayFetcher;
.super Ljava/lang/Object;
.source "ByteArrayFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:[B

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/bumptech/glide/load/data/ByteArrayFetcher;->a:[B

    .line 18
    iput-object p2, p0, Lcom/bumptech/glide/load/data/ByteArrayFetcher;->b:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/data/ByteArrayFetcher;->b(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public b(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/bumptech/glide/load/data/ByteArrayFetcher;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bumptech/glide/load/data/ByteArrayFetcher;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method
