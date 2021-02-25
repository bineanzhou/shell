.class Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;
.super Ljava/lang/Object;
.source "MediaStoreThumbFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileService"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 133
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/io/File;)J
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method
