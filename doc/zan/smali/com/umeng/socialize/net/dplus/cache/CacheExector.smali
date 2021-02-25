.class public Lcom/umeng/socialize/net/dplus/cache/CacheExector;
.super Ljava/lang/Object;
.source "CacheExector.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/umeng/socialize/net/dplus/cache/CacheExector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x20

    iput v0, p0, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->b:I

    .line 30
    const/16 v0, 0x1400

    iput v0, p0, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->c:I

    .line 31
    const/16 v0, 0x8

    iput v0, p0, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->d:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->e:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->e:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private a(J)D
    .locals 5

    .prologue
    .line 229
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    long-to-double v0, p1

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Class;)Lcom/umeng/socialize/net/dplus/cache/IReader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/umeng/socialize/net/dplus/cache/IReader;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 307
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 308
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/net/dplus/cache/IReader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_0
    return-object v0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    sget-object v1, Lcom/umeng/socialize/utils/UmengText$CACHE;->CACHEFILE:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 312
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()Ljava/io/File;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 106
    iget-object v1, p0, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    sget-object v1, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a:Ljava/lang/String;

    const-string v2, "Couldn\'t create directory mDirPath is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    return-object v0

    .line 110
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    sget-object v1, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t create directory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 116
    goto :goto_0
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 125
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    :cond_0
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    .line 128
    :cond_1
    invoke-direct {p0, p2}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/Closeable;)V
    .locals 2

    .prologue
    .line 238
    if-eqz p1, :cond_0

    .line 239
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    sget-object v1, Lcom/umeng/socialize/utils/UmengText$CACHE;->CACHEFILE:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/io/File;)[Ljava/io/File;
    .locals 2

    .prologue
    .line 189
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    :cond_0
    const/4 v0, 0x0

    .line 195
    :goto_0
    return-object v0

    .line 192
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 193
    invoke-direct {p0}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->b()Ljava/util/Comparator;

    move-result-object v1

    .line 194
    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 146
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    :cond_0
    const/4 v0, 0x0

    .line 159
    :cond_1
    :goto_0
    return-object v0

    .line 150
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_3

    array-length v0, v0

    if-gtz v0, :cond_4

    .line 152
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->c(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 155
    if-nez v0, :cond_1

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method private b()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    new-instance v0, Lcom/umeng/socialize/net/dplus/cache/CacheExector$1;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/net/dplus/cache/CacheExector$1;-><init>(Lcom/umeng/socialize/net/dplus/cache/CacheExector;)V

    .line 209
    return-object v0
.end method

.method private c(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, p1}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 163
    if-eqz v1, :cond_0

    array-length v2, v1

    if-gtz v2, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-object v0

    .line 167
    :cond_1
    const/4 v2, 0x0

    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 168
    aget-object v1, v1, v2

    .line 171
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 172
    invoke-direct {p0, v2, v3}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a(J)D

    move-result-wide v2

    .line 173
    const-wide/high16 v4, 0x4040000000000000L    # 32.0

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_0

    move-object v0, v1

    .line 176
    goto :goto_0
.end method

.method private d(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 321
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-object v0

    .line 324
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 325
    if-eqz v1, :cond_0

    array-length v1, v1

    if-lez v1, :cond_0

    .line 328
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->e(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method private e(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 338
    invoke-direct {p0, p1}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a(Ljava/io/File;)[Ljava/io/File;

    move-result-object v3

    .line 339
    if-eqz v3, :cond_0

    array-length v0, v3

    if-gtz v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 354
    :goto_0
    return-object v0

    .line 342
    :cond_1
    const/16 v4, 0x28

    .line 343
    const/4 v0, 0x0

    :goto_1
    array-length v1, v3

    if-ge v0, v1, :cond_3

    .line 344
    aget-object v1, v3, v0

    .line 345
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a(J)D

    move-result-wide v6

    .line 347
    int-to-double v8, v4

    cmpg-double v5, v6, v8

    if-gtz v5, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 348
    goto :goto_0

    .line 350
    :cond_2
    sget-object v5, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getReadableFileFromFiles:file length don\'t legal"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->deleteFile(Ljava/lang/String;)Z

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 354
    goto :goto_0
.end method


# virtual methods
.method public checkSize(Ljava/lang/String;)D
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 38
    invoke-direct {p0}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a()Ljava/io/File;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    :cond_0
    return-wide v2

    .line 43
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 44
    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 45
    aget-object v4, v1, v0

    if-eqz v4, :cond_2

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 46
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a(J)D

    move-result-wide v4

    .line 47
    add-double/2addr v2, v4

    .line 44
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 212
    invoke-direct {p0}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a()Ljava/io/File;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    move v1, v0

    .line 215
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 216
    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    aget-object v1, v2, v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 215
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_1
    return v1
.end method

.method public readFile(Ljava/lang/String;Ljava/lang/Class;)Lcom/umeng/socialize/net/dplus/cache/IReader;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/umeng/socialize/net/dplus/cache/IReader;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 246
    invoke-direct {p0}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a()Ljava/io/File;

    move-result-object v1

    .line 247
    invoke-direct {p0, v1, p1}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->d(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 248
    if-nez v2, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-object v0

    .line 252
    :cond_1
    new-instance v1, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;

    invoke-direct {v1, v2}, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;-><init>(Ljava/io/File;)V

    .line 255
    :try_start_0
    invoke-virtual {v1}, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    move-object v5, v1

    .line 260
    :goto_1
    if-eqz v5, :cond_0

    .line 267
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/umeng/socialize/net/dplus/cache/IReader;

    move-result-object v1

    .line 270
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 274
    const/4 v4, 0x0

    .line 275
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 277
    add-int/lit8 v4, v4, 0x1

    .line 278
    sget-object v8, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "read file:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v8

    if-nez v8, :cond_2

    .line 282
    :try_start_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 283
    :catch_0
    move-exception v7

    .line 284
    :try_start_5
    sget-object v8, Lcom/umeng/socialize/utils/UmengText$CACHE;->CACHEFILE:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 295
    :catch_1
    move-exception v1

    .line 296
    :goto_3
    :try_start_6
    sget-object v4, Lcom/umeng/socialize/utils/UmengText$CACHE;->CACHEFILE:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 298
    invoke-direct {p0, v5}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a(Ljava/io/Closeable;)V

    .line 299
    invoke-direct {p0, v3}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a(Ljava/io/Closeable;)V

    .line 300
    invoke-direct {p0, v2}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 256
    :catch_2
    move-exception v1

    .line 257
    sget-object v3, Lcom/umeng/socialize/utils/UmengText$CACHE;->CACHEFILE:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->deleteFile(Ljava/lang/String;)Z

    move-object v5, v0

    goto :goto_1

    .line 289
    :cond_3
    if-eqz v1, :cond_4

    .line 290
    :try_start_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/umeng/socialize/net/dplus/cache/IReader;->create(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 298
    :cond_4
    invoke-direct {p0, v5}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a(Ljava/io/Closeable;)V

    .line 299
    invoke-direct {p0, v3}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a(Ljava/io/Closeable;)V

    .line 300
    invoke-direct {p0, v2}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 294
    goto/16 :goto_0

    .line 298
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_4
    invoke-direct {p0, v5}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a(Ljava/io/Closeable;)V

    .line 299
    invoke-direct {p0, v3}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a(Ljava/io/Closeable;)V

    .line 300
    invoke-direct {p0, v2}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a(Ljava/io/Closeable;)V

    .line 301
    throw v0

    .line 298
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 295
    :catch_3
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v2, v0

    goto :goto_3
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 53
    .line 54
    invoke-direct {p0}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a()Ljava/io/File;

    move-result-object v0

    .line 55
    invoke-direct {p0, v0, p2}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 56
    if-nez v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v4

    .line 60
    :cond_1
    new-instance v6, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;

    invoke-direct {v6, v0}, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;-><init>(Ljava/io/File;)V

    .line 63
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v6, v2}, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->startWrite(Z)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v5, v0

    .line 68
    :goto_1
    if-eqz v5, :cond_0

    .line 82
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :try_start_2
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    :try_start_3
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 87
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 88
    invoke-virtual {v6, v5}, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v1, v2

    move v2, v3

    .line 95
    :goto_2
    invoke-direct {p0, v0}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a(Ljava/io/Closeable;)V

    .line 96
    invoke-direct {p0, v1}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a(Ljava/io/Closeable;)V

    .line 97
    invoke-direct {p0, v5}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a(Ljava/io/Closeable;)V

    :goto_3
    move v4, v2

    .line 99
    goto :goto_0

    .line 64
    :catch_0
    move-exception v2

    .line 65
    sget-object v5, Lcom/umeng/socialize/utils/UmengText$CACHE;->CACHEFILE:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->deleteFile(Ljava/lang/String;)Z

    move-object v5, v1

    goto :goto_1

    .line 91
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 92
    :goto_4
    :try_start_4
    invoke-virtual {v6, v5}, Lcom/umeng/socialize/net/dplus/cache/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 93
    sget-object v3, Lcom/umeng/socialize/utils/UmengText$CACHE;->CACHEFILE:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 95
    invoke-direct {p0, v1}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a(Ljava/io/Closeable;)V

    .line 96
    invoke-direct {p0, v2}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a(Ljava/io/Closeable;)V

    .line 97
    invoke-direct {p0, v5}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a(Ljava/io/Closeable;)V

    move v2, v4

    .line 98
    goto :goto_3

    .line 95
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_5
    invoke-direct {p0, v1}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a(Ljava/io/Closeable;)V

    .line 96
    invoke-direct {p0, v2}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a(Ljava/io/Closeable;)V

    .line 97
    invoke-direct {p0, v5}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->a(Ljava/io/Closeable;)V

    .line 98
    throw v0

    .line 95
    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_5

    .line 91
    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4

    :cond_2
    move-object v0, v1

    move v2, v4

    goto :goto_2
.end method
