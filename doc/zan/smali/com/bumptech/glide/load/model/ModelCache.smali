.class public Lcom/bumptech/glide/load/model/ModelCache;
.super Ljava/lang/Object;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/ModelCache$ModelKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:I = 0xfa


# instance fields
.field private final b:Lcom/bumptech/glide/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/LruCache",
            "<",
            "Lcom/bumptech/glide/load/model/ModelCache$ModelKey",
            "<TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0xfa

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/model/ModelCache;-><init>(I)V

    .line 23
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/bumptech/glide/load/model/ModelCache$1;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/model/ModelCache$1;-><init>(Lcom/bumptech/glide/load/model/ModelCache;I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/ModelCache;->b:Lcom/bumptech/glide/util/LruCache;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)TB;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/model/ModelCache$ModelKey;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/bumptech/glide/load/model/ModelCache;->b:Lcom/bumptech/glide/util/LruCache;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/util/LruCache;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 46
    invoke-virtual {v0}, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->a()V

    .line 47
    return-object v1
.end method

.method public a(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;IITB;)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/model/ModelCache$ModelKey;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/bumptech/glide/load/model/ModelCache;->b:Lcom/bumptech/glide/util/LruCache;

    invoke-virtual {v1, v0, p4}, Lcom/bumptech/glide/util/LruCache;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method
