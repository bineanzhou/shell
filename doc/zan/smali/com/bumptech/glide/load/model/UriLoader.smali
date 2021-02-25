.class public abstract Lcom/bumptech/glide/load/model/UriLoader;
.super Ljava/lang/Object;
.source "UriLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader",
        "<",
        "Landroid/net/Uri;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/bumptech/glide/load/model/UriLoader;->a:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/bumptech/glide/load/model/UriLoader;->b:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 23
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 49
    const-string v0, "file"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "content"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.resource"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected abstract a(Landroid/content/Context;Ljava/lang/String;)Lcom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<TT;>;"
        }
    .end annotation
.end method

.method public final a(Landroid/net/Uri;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II)",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-static {v1}, Lcom/bumptech/glide/load/model/UriLoader;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 31
    invoke-static {p1}, Lcom/bumptech/glide/load/model/AssetUriParser;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    invoke-static {p1}, Lcom/bumptech/glide/load/model/AssetUriParser;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/bumptech/glide/load/model/UriLoader;->a:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/bumptech/glide/load/model/UriLoader;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v0

    .line 41
    :cond_0
    :goto_0
    return-object v0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/model/UriLoader;->a:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/load/model/UriLoader;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_2
    iget-object v2, p0, Lcom/bumptech/glide/load/model/UriLoader;->b:Lcom/bumptech/glide/load/model/ModelLoader;

    if-eqz v2, :cond_0

    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/load/model/UriLoader;->b:Lcom/bumptech/glide/load/model/ModelLoader;

    new-instance v1, Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/bumptech/glide/load/model/ModelLoader;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 1

    .prologue
    .line 16
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/model/UriLoader;->a(Landroid/net/Uri;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v0

    return-object v0
.end method
