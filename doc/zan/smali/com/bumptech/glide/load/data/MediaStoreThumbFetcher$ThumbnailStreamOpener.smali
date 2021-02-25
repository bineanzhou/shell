.class Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;
.super Ljava/lang/Object;
.source "MediaStoreThumbFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThumbnailStreamOpener"
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;


# instance fields
.field private final b:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

.field private c:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

    invoke-direct {v0}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->a:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->b:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

    .line 152
    iput-object p2, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->c:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;

    .line 153
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;)V
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->a:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

    invoke-direct {p0, v0, p1}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;-><init>(Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;)V

    .line 148
    return-void
.end method

.method private a(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 6

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 199
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->b:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 202
    iget-object v2, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->b:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->b:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;->b(Ljava/io/File;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 203
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 206
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 6

    .prologue
    .line 156
    const/4 v0, -0x1

    .line 157
    const/4 v2, 0x0

    .line 159
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 160
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->c()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 166
    if-eqz v2, :cond_0

    .line 168
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 174
    :cond_0
    :goto_0
    return v0

    .line 161
    :catch_0
    move-exception v1

    .line 162
    :try_start_2
    const-string v3, "MediaStoreThumbFetcher"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    const-string v3, "MediaStoreThumbFetcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to open uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    :cond_1
    if-eqz v2, :cond_0

    .line 168
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 169
    :catch_1
    move-exception v1

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 168
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 171
    :cond_2
    :goto_1
    throw v0

    .line 169
    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public b(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 178
    .line 181
    iget-object v1, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->c:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;

    invoke-interface {v1, p1, p2}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    .line 183
    if-eqz v2, :cond_3

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 184
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->a(Landroid/database/Cursor;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 187
    :goto_0
    if-eqz v2, :cond_0

    .line 188
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_0
    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 194
    :cond_1
    return-object v0

    .line 187
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 188
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method
