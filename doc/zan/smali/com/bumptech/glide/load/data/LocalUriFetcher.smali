.class public abstract Lcom/bumptech/glide/load/data/LocalUriFetcher;
.super Ljava/lang/Object;
.source "LocalUriFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "LocalUriFetcher"


# instance fields
.field private final b:Landroid/net/Uri;

.field private final c:Landroid/content/Context;

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/data/LocalUriFetcher;->c:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/bumptech/glide/load/data/LocalUriFetcher;->b:Landroid/net/Uri;

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/load/data/LocalUriFetcher;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/bumptech/glide/load/data/LocalUriFetcher;->b:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Lcom/bumptech/glide/load/data/LocalUriFetcher;->b(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/data/LocalUriFetcher;->d:Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/bumptech/glide/load/data/LocalUriFetcher;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bumptech/glide/load/data/LocalUriFetcher;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/data/LocalUriFetcher;->d:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/data/LocalUriFetcher;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    const-string v1, "LocalUriFetcher"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const-string v1, "LocalUriFetcher"

    const-string v2, "failed to close data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract b(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/content/ContentResolver;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/bumptech/glide/load/data/LocalUriFetcher;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method
