.class public Lcom/umeng/socialize/b/b/a;
.super Ljava/lang/Object;
.source "CacheUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/b/b/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 23
    :goto_0
    if-eqz v0, :cond_2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "umeng_cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/b/b/c;->d:Ljava/lang/String;

    .line 31
    :goto_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/umeng/socialize/b/b/c;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 36
    :cond_0
    :try_start_0
    sget-object v0, Lcom/umeng/socialize/b/b/c;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/b/b/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_2
    return-void

    .line 22
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 28
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "umeng_cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/b/b/c;->d:Ljava/lang/String;

    goto :goto_1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 50
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 53
    if-eqz v3, :cond_0

    array-length v0, v3

    if-nez v0, :cond_1

    .line 73
    :cond_0
    return-void

    :cond_1
    move v0, v1

    move v2, v1

    .line 59
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 60
    int-to-long v4, v2

    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v2, v4

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_2
    if-gtz v2, :cond_3

    const/16 v0, 0x28

    invoke-static {}, Lcom/umeng/socialize/b/b/a;->c()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 64
    :cond_3
    array-length v0, v3

    .line 66
    new-instance v2, Lcom/umeng/socialize/b/b/a$a;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/umeng/socialize/b/b/a$a;-><init>(Lcom/umeng/socialize/b/b/a$1;)V

    invoke-static {v3, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 68
    :goto_1
    if-ge v1, v0, :cond_0

    .line 69
    aget-object v2, v3, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static b()V
    .locals 0

    .prologue
    .line 95
    invoke-static {}, Lcom/umeng/socialize/b/b/a;->a()V

    .line 96
    return-void
.end method

.method private static c()I
    .locals 4

    .prologue
    .line 75
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-double v2, v1

    .line 79
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v2

    .line 80
    double-to-int v0, v0

    return v0
.end method
