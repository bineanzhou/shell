.class final Lcom/mcxiaoke/packer/support/walle/PayloadWriter;
.super Ljava/lang/Object;
.source "PayloadWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcxiaoke/packer/support/walle/PayloadWriter$ApkSigningBlockHandler;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static a(Ljava/io/File;ILjava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {p0, v0}, Lcom/mcxiaoke/packer/support/walle/PayloadWriter;->a(Ljava/io/File;Ljava/util/Map;)V

    .line 33
    return-void
.end method

.method public static a(Ljava/io/File;I[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    array-length v0, p2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 22
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 23
    const/4 v1, 0x0

    array-length v2, p2

    invoke-virtual {v0, p2, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 25
    invoke-static {p0, p1, v0}, Lcom/mcxiaoke/packer/support/walle/PayloadWriter;->a(Ljava/io/File;ILjava/nio/ByteBuffer;)V

    .line 26
    return-void
.end method

.method static a(Ljava/io/File;Lcom/mcxiaoke/packer/support/walle/PayloadWriter$ApkSigningBlockHandler;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    .line 59
    .line 62
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v3, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    .line 64
    :try_start_2
    invoke-static {v2}, Lcom/mcxiaoke/packer/support/walle/ApkUtil;->a(Ljava/nio/channels/FileChannel;)J

    move-result-wide v4

    .line 65
    invoke-static {v2, v4, v5}, Lcom/mcxiaoke/packer/support/walle/ApkUtil;->a(Ljava/nio/channels/FileChannel;J)J

    move-result-wide v6

    .line 67
    invoke-static {v2, v6, v7}, Lcom/mcxiaoke/packer/support/walle/ApkUtil;->b(Ljava/nio/channels/FileChannel;J)Lcom/mcxiaoke/packer/support/walle/Pair;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lcom/mcxiaoke/packer/support/walle/Pair;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 69
    invoke-virtual {v1}, Lcom/mcxiaoke/packer/support/walle/Pair;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 71
    cmp-long v1, v6, v10

    if-eqz v1, :cond_0

    cmp-long v1, v8, v10

    if-nez v1, :cond_1

    .line 72
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No APK Signature Scheme v2 block in APK Signing Block"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    :goto_0
    invoke-static {v1}, Lcom/mcxiaoke/packer/support/walle/V2Utils;->a(Ljava/io/Closeable;)V

    .line 123
    invoke-static {v2}, Lcom/mcxiaoke/packer/support/walle/V2Utils;->a(Ljava/io/Closeable;)V

    throw v0

    .line 75
    :cond_1
    :try_start_3
    invoke-static {v0}, Lcom/mcxiaoke/packer/support/walle/ApkUtil;->a(Ljava/nio/ByteBuffer;)Ljava/util/Map;

    move-result-object v1

    .line 77
    const v0, 0x7109871a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 79
    if-nez v0, :cond_2

    .line 80
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No APK Signature Scheme v2 block in APK Signing Block"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_2
    invoke-interface {p1, v1}, Lcom/mcxiaoke/packer/support/walle/PayloadWriter$ApkSigningBlockHandler;->a(Ljava/util/Map;)Lcom/mcxiaoke/packer/support/walle/ApkSigningBlock;

    move-result-object v0

    .line 85
    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 86
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v10

    sub-long/2addr v10, v6

    long-to-int v1, v10

    new-array v1, v1, [B

    .line 87
    invoke-virtual {v3, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 89
    invoke-virtual {v2, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 91
    invoke-virtual {v0, v3}, Lcom/mcxiaoke/packer/support/walle/ApkSigningBlock;->a(Ljava/io/DataOutput;)J

    move-result-wide v10

    .line 94
    invoke-virtual {v3, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 96
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 111
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x6

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 114
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 115
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 116
    add-long v4, v6, v10

    const-wide/16 v10, 0x8

    add-long/2addr v4, v10

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    long-to-int v1, v4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 118
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 119
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    invoke-static {v2}, Lcom/mcxiaoke/packer/support/walle/V2Utils;->a(Ljava/io/Closeable;)V

    .line 123
    invoke-static {v3}, Lcom/mcxiaoke/packer/support/walle/V2Utils;->a(Ljava/io/Closeable;)V

    .line 125
    return-void

    .line 122
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_0
.end method

.method private static a(Ljava/io/File;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/mcxiaoke/packer/support/walle/PayloadWriter$1;

    invoke-direct {v0, p1}, Lcom/mcxiaoke/packer/support/walle/PayloadWriter$1;-><init>(Ljava/util/Map;)V

    .line 55
    invoke-static {p0, v0}, Lcom/mcxiaoke/packer/support/walle/PayloadWriter;->a(Ljava/io/File;Lcom/mcxiaoke/packer/support/walle/PayloadWriter$ApkSigningBlockHandler;)V

    .line 56
    return-void
.end method
