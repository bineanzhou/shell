.class public Lcom/open/likehelper/util/FileIOUtils;
.super Ljava/lang/Object;
.source "FileIOUtils.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x2000

    sput v0, Lcom/open/likehelper/util/FileIOUtils;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 21
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Ljava/io/InputStream;Z)Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 45
    invoke-static {p0}, Lcom/open/likehelper/util/FileIOUtils;->b(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    .line 59
    :goto_0
    return v0

    .line 46
    :cond_1
    const/4 v4, 0x0

    .line 48
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :try_start_1
    sget v2, Lcom/open/likehelper/util/FileIOUtils;->a:I

    new-array v2, v2, [B

    .line 51
    :goto_1
    const/4 v4, 0x0

    sget v5, Lcom/open/likehelper/util/FileIOUtils;->a:I

    invoke-virtual {p1, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 52
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 55
    :catch_0
    move-exception v2

    .line 56
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 59
    new-array v2, v6, [Ljava/io/Closeable;

    aput-object p1, v2, v1

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/open/likehelper/util/CloseUtils;->a([Ljava/io/Closeable;)V

    move v0, v1

    goto :goto_0

    :cond_2
    new-array v2, v6, [Ljava/io/Closeable;

    aput-object p1, v2, v1

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/open/likehelper/util/CloseUtils;->a([Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    move-object v3, v4

    :goto_3
    new-array v4, v6, [Ljava/io/Closeable;

    aput-object p1, v4, v1

    aput-object v3, v4, v0

    invoke-static {v4}, Lcom/open/likehelper/util/CloseUtils;->a([Ljava/io/Closeable;)V

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_3

    .line 55
    :catch_1
    move-exception v2

    move-object v3, v4

    goto :goto_2
.end method

.method private static b(Ljava/io/File;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 25
    if-nez p0, :cond_1

    .line 32
    :cond_0
    :goto_0
    return v0

    .line 26
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/open/likehelper/util/FileIOUtils;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 30
    :catch_0
    move-exception v1

    .line 31
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
