.class public Lcom/open/likehelper/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/open/likehelper/util/FileUtils$OnReplaceListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    return-void
.end method

.method private static a(J)Ljava/lang/String;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 291
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 292
    const-string v0, "shouldn\'t be less than zero!"

    .line 300
    :goto_0
    return-object v0

    .line 293
    :cond_0
    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 294
    const-string v0, "%.3fB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 295
    :cond_1
    const-wide/32 v0, 0x100000

    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    .line 296
    const-string v0, "%.3fKB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-double v2, p0

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 297
    :cond_2
    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_3

    .line 298
    const-string v0, "%.3fMB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-double v2, p0

    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 300
    :cond_3
    const-string v0, "%.3fGB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-double v2, p0

    const-wide/high16 v4, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 333
    const-string v1, ""

    .line 335
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 337
    new-array v2, v2, [B

    .line 338
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    .line 339
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 340
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    return-object v0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 344
    goto :goto_0
.end method

.method public static a(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 28
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

.method public static a(Ljava/io/File;Ljava/io/File;Lcom/open/likehelper/util/FileUtils$OnReplaceListener;)Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/open/likehelper/util/FileUtils;->a(Ljava/io/File;Ljava/io/File;Lcom/open/likehelper/util/FileUtils$OnReplaceListener;Z)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Lcom/open/likehelper/util/FileUtils$OnReplaceListener;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 211
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v1

    .line 213
    :cond_1
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 217
    invoke-interface {p2}, Lcom/open/likehelper/util/FileUtils$OnReplaceListener;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 218
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/open/likehelper/util/FileUtils;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/open/likehelper/util/FileIOUtils;->a(Ljava/io/File;Ljava/io/InputStream;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p3, :cond_3

    .line 229
    invoke-static {p0}, Lcom/open/likehelper/util/FileUtils;->d(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    move v1, v0

    .line 222
    goto :goto_0

    :cond_5
    move v0, v1

    .line 229
    goto :goto_1

    .line 230
    :catch_0
    move-exception v0

    .line 231
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 57
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/open/likehelper/util/FileUtils$OnReplaceListener;)Z
    .locals 2

    .prologue
    .line 185
    invoke-static {p0}, Lcom/open/likehelper/util/FileUtils;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/open/likehelper/util/FileUtils;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/open/likehelper/util/FileUtils;->a(Ljava/io/File;Ljava/io/File;Lcom/open/likehelper/util/FileUtils$OnReplaceListener;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 91
    invoke-static {p0}, Lcom/open/likehelper/util/FileUtils;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/io/File;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 38
    if-nez p0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 43
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/open/likehelper/util/FileUtils;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Ljava/io/File;Ljava/io/File;Lcom/open/likehelper/util/FileUtils$OnReplaceListener;)Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/open/likehelper/util/FileUtils;->a(Ljava/io/File;Ljava/io/File;Lcom/open/likehelper/util/FileUtils$OnReplaceListener;Z)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Lcom/open/likehelper/util/FileUtils$OnReplaceListener;)Z
    .locals 2

    .prologue
    .line 245
    invoke-static {p0}, Lcom/open/likehelper/util/FileUtils;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/open/likehelper/util/FileUtils;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/open/likehelper/util/FileUtils;->b(Ljava/io/File;Ljava/io/File;Lcom/open/likehelper/util/FileUtils$OnReplaceListener;)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/io/File;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 67
    if-nez p0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/open/likehelper/util/FileUtils;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 101
    invoke-static {p0}, Lcom/open/likehelper/util/FileUtils;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/open/likehelper/util/FileUtils;->d(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 111
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 121
    invoke-static {p0}, Lcom/open/likehelper/util/FileUtils;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/open/likehelper/util/FileUtils;->e(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static e(Ljava/io/File;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 133
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 134
    new-instance v3, Ljava/io/File;

    aget-object v4, v2, v0

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/open/likehelper/util/FileUtils;->e(Ljava/io/File;)Z

    move-result v3

    .line 135
    if-nez v3, :cond_0

    .line 140
    :goto_1
    return v1

    .line 133
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    goto :goto_1
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-static {p0}, Lcom/open/likehelper/util/FileUtils;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 153
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 154
    new-instance v4, Ljava/io/File;

    aget-object v5, v3, v0

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/open/likehelper/util/FileUtils;->e(Ljava/io/File;)Z

    move-result v4

    .line 155
    if-nez v4, :cond_0

    .line 160
    :goto_1
    return v1

    .line 153
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static f(Ljava/io/File;)J
    .locals 5

    .prologue
    const-wide/16 v0, -0x1

    .line 278
    invoke-static {p0}, Lcom/open/likehelper/util/FileUtils;->g(Ljava/io/File;)J

    move-result-wide v2

    .line 279
    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 164
    if-nez p0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v0

    .line 167
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    .line 168
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v1

    .line 169
    goto :goto_0

    .line 167
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static g(Ljava/io/File;)J
    .locals 2

    .prologue
    .line 311
    invoke-static {p0}, Lcom/open/likehelper/util/FileUtils;->h(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 312
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 267
    invoke-static {p0}, Lcom/open/likehelper/util/FileUtils;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/open/likehelper/util/FileUtils;->f(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static h(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 323
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
