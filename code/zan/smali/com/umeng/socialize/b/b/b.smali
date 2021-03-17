.class public Lcom/umeng/socialize/b/b/b;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field private static b:Lcom/umeng/socialize/b/b/b;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/umeng/socialize/b/b/b;

    invoke-direct {v0}, Lcom/umeng/socialize/b/b/b;-><init>()V

    sput-object v0, Lcom/umeng/socialize/b/b/b;->b:Lcom/umeng/socialize/b/b/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/b/b/b;->a:Ljava/lang/String;

    .line 31
    :try_start_0
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/b/b/b;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a()Lcom/umeng/socialize/b/b/b;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/umeng/socialize/b/b/b;->b:Lcom/umeng/socialize/b/b/b;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/umeng/socialize/b/b/b;

    invoke-direct {v0}, Lcom/umeng/socialize/b/b/b;-><init>()V

    .line 42
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/umeng/socialize/b/b/b;->b:Lcom/umeng/socialize/b/b/b;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/io/File;)[B
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 79
    .line 83
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    const/16 v0, 0x1000

    :try_start_2
    new-array v0, v0, [B

    .line 88
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 89
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 93
    :goto_1
    :try_start_3
    sget-object v3, Lcom/umeng/socialize/utils/UmengText$IMAGE;->READ_IMAGE_ERROR:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    invoke-static {}, Lcom/umeng/socialize/utils/DefaultClass;->getBytes()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v0

    .line 97
    if-eqz v2, :cond_0

    .line 98
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 100
    :cond_0
    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 107
    :cond_1
    :goto_2
    return-object v0

    .line 91
    :cond_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v0

    .line 97
    if-eqz v3, :cond_3

    .line 98
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 100
    :cond_3
    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 103
    :catch_1
    move-exception v1

    .line 104
    sget-object v2, Lcom/umeng/socialize/utils/UmengText$IMAGE;->CLOSE:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 103
    :catch_2
    move-exception v1

    .line 104
    sget-object v2, Lcom/umeng/socialize/utils/UmengText$IMAGE;->CLOSE:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 96
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 97
    :goto_3
    if-eqz v3, :cond_4

    .line 98
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 100
    :cond_4
    if-eqz v1, :cond_5

    .line 101
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 106
    :cond_5
    :goto_4
    throw v0

    .line 103
    :catch_3
    move-exception v1

    .line 104
    sget-object v2, Lcom/umeng/socialize/utils/UmengText$IMAGE;->CLOSE:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 96
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_3

    .line 92
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method

.method public b()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lcom/umeng/socialize/b/b/a;->b()V

    .line 47
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/umeng/socialize/b/b/b;->c()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/socialize/b/b/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 51
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 53
    return-object v0
.end method

.method public c()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/umeng_cache/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 76
    :cond_0
    return-object v1

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/b/b/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/umeng/socialize/b/b/b;->a:Ljava/lang/String;

    .line 64
    sget-object v1, Lcom/umeng/socialize/utils/UmengText$CACHE;->SD_NOT_FOUNT:Ljava/lang/String;

    invoke-static {v1}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_2
    invoke-static {}, Lcom/umeng/socialize/utils/DefaultClass;->getString()Ljava/lang/String;

    move-result-object v0

    .line 68
    sget-object v1, Lcom/umeng/socialize/utils/UmengText$CACHE;->SD_NOT_FOUNT:Ljava/lang/String;

    invoke-static {v1}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 111
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->hexdigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    return-object v0
.end method
