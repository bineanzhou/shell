.class public Lcom/umeng/socialize/net/dplus/cache/AtomicFile;
.super Ljava/lang/Object;
.source "AtomicFile.java"


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->a:Ljava/io/File;

    .line 26
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->b:Ljava/io/File;

    .line 27
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 73
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 75
    const/16 v0, 0x2000

    :try_start_2
    new-array v0, v0, [B

    .line 77
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_2

    .line 78
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 79
    const-string v6, "AtomicFile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_0

    .line 83
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 85
    :cond_0
    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 89
    :cond_1
    throw v0

    .line 82
    :cond_2
    if-eqz v3, :cond_3

    .line 83
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 85
    :cond_3
    if-eqz v1, :cond_4

    .line 86
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 90
    :cond_4
    const-string v0, "AtomicFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "comsum time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void

    .line 82
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method

.method static a(Ljava/io/FileOutputStream;)Z
    .locals 2

    .prologue
    .line 156
    if-eqz p0, :cond_0

    .line 157
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_0
    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    sget-object v1, Lcom/umeng/socialize/utils/UmengText$CACHE;->CACHEFILE:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 35
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 36
    return-void
.end method

.method public failWrite(Ljava/io/FileOutputStream;)V
    .locals 2

    .prologue
    .line 107
    if-eqz p1, :cond_0

    .line 108
    invoke-static {p1}, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->a(Ljava/io/FileOutputStream;)Z

    .line 110
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 111
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 112
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    sget-object v1, Lcom/umeng/socialize/utils/UmengText$CACHE;->CACHEFILE:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public finishWrite(Ljava/io/FileOutputStream;)V
    .locals 2

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    invoke-static {p1}, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->a(Ljava/io/FileOutputStream;)Z

    .line 98
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 99
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    sget-object v1, Lcom/umeng/socialize/utils/UmengText$CACHE;->CACHEFILE:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getBaseFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->a:Ljava/io/File;

    return-object v0
.end method

.method public openRead()Ljava/io/FileInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 123
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 125
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public readFully()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 133
    :try_start_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 134
    new-array v1, v1, [B

    .line 136
    :goto_0
    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {v3, v1, v0, v2}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 138
    if-gtz v2, :cond_0

    .line 150
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 139
    return-object v1

    .line 141
    :cond_0
    add-int/2addr v2, v0

    .line 142
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 143
    array-length v4, v1

    sub-int/2addr v4, v2

    if-le v0, v4, :cond_1

    .line 144
    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 145
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    move-object v1, v0

    move v0, v2

    .line 148
    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 151
    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public startWrite(Z)Ljava/io/FileOutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->a:Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->b:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    const-string v0, "AtomicFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t rename file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->a:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to backup file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->b:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 53
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->a:Ljava/io/File;

    invoke-direct {v0, v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_1
    return-object v0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->a:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->a(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 55
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_3

    .line 57
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$CACHE;->CACHEFILE:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    :cond_3
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->a:Ljava/io/File;

    invoke-direct {v0, v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 60
    :catch_1
    move-exception v0

    .line 61
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$CACHE;->CACHEFILE:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1
.end method
