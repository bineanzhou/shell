.class final Lcom/mcxiaoke/packer/support/walle/PayloadReader;
.super Ljava/lang/Object;
.source "PayloadReader.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method private static a(Ljava/io/File;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 32
    .line 37
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v2, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 39
    invoke-static {v1}, Lcom/mcxiaoke/packer/support/walle/ApkUtil;->c(Ljava/nio/channels/FileChannel;)Lcom/mcxiaoke/packer/support/walle/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcxiaoke/packer/support/walle/Pair;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 40
    invoke-static {v0}, Lcom/mcxiaoke/packer/support/walle/ApkUtil;->a(Ljava/nio/ByteBuffer;)Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 42
    invoke-static {v1}, Lcom/mcxiaoke/packer/support/walle/V2Utils;->a(Ljava/io/Closeable;)V

    .line 43
    invoke-static {v2}, Lcom/mcxiaoke/packer/support/walle/V2Utils;->a(Ljava/io/Closeable;)V

    .line 45
    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_0
    invoke-static {v1}, Lcom/mcxiaoke/packer/support/walle/V2Utils;->a(Ljava/io/Closeable;)V

    .line 43
    invoke-static {v2}, Lcom/mcxiaoke/packer/support/walle/V2Utils;->a(Ljava/io/Closeable;)V

    throw v0

    .line 42
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-static {p0, p1}, Lcom/mcxiaoke/packer/support/walle/PayloadReader;->b(Ljava/io/File;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/mcxiaoke/packer/support/walle/V2Utils;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/io/File;I)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-static {p0}, Lcom/mcxiaoke/packer/support/walle/PayloadReader;->a(Ljava/io/File;)Ljava/util/Map;

    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 27
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    goto :goto_0
.end method
