.class public Lcom/umeng/socialize/utils/SocializeUtils;
.super Ljava/lang/Object;
.source "SocializeUtils.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "SocializeUtils"

.field public static deleteUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static final hexDigits:[C

.field private static mDoubleByte_Pattern:Ljava/util/regex/Pattern;

.field private static smDip:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/umeng/socialize/utils/SocializeUtils;->hexDigits:[C

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/umeng/socialize/utils/SocializeUtils;->deleteUris:Ljava/util/Set;

    .line 221
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/socialize/utils/SocializeUtils;->mDoubleByte_Pattern:Ljava/util/regex/Pattern;

    .line 249
    const/4 v0, 0x0

    sput v0, Lcom/umeng/socialize/utils/SocializeUtils;->smDip:I

    return-void

    .line 68
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static File2byte(Ljava/io/File;)[B
    .locals 6

    .prologue
    .line 341
    const/4 v0, 0x0

    .line 345
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 346
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 347
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 349
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 351
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 357
    :catch_0
    move-exception v1

    .line 359
    invoke-static {v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    .line 365
    :goto_1
    return-object v0

    .line 353
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 354
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 355
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    .line 361
    :catch_1
    move-exception v1

    .line 363
    invoke-static {v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static assertBinaryInvalid([B)Z
    .locals 1

    .prologue
    .line 390
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bundleTomap(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    :cond_0
    const/4 v0, 0x0

    .line 380
    :goto_0
    return-object v0

    .line 372
    :cond_1
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 373
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 374
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 375
    const-string v3, "com.sina.weibo.intent.extra.USER_ICON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 376
    const-string v3, "icon_url"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :cond_2
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 380
    goto :goto_0
.end method

.method public static countContentLength(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 200
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 202
    const/4 v0, 0x0

    .line 204
    invoke-static {}, Lcom/umeng/socialize/utils/SocializeUtils;->getDoubleBytePattern()Ljava/util/regex/Pattern;

    move-result-object v2

    .line 205
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 207
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    .line 212
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    .line 213
    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 218
    :goto_1
    return v0

    .line 215
    :cond_1
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public static decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 187
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 188
    if-eqz p0, :cond_0

    .line 189
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 190
    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 191
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 192
    aget-object v6, v5, v1

    invoke-static {v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v5, v5, v7

    .line 193
    invoke-static {v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 192
    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    return-object v2
.end method

.method public static dip2Px(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 315
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 316
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getAppkey(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 81
    if-nez p0, :cond_1

    .line 82
    const-string v0, ""

    .line 102
    :cond_0
    :goto_0
    return-object v0

    .line 84
    :cond_1
    sget-object v0, Lcom/umeng/socialize/common/SocializeConstants;->APPKEY:Ljava/lang/String;

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    .line 89
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_0

    .line 93
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "UMENG_APPKEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    .line 99
    invoke-static {v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static getDoubleBytePattern()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/umeng/socialize/utils/SocializeUtils;->mDoubleByte_Pattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 229
    const-string v0, "[^\\x00-\\xff]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/SocializeUtils;->mDoubleByte_Pattern:Ljava/util/regex/Pattern;

    .line 231
    :cond_0
    sget-object v0, Lcom/umeng/socialize/utils/SocializeUtils;->mDoubleByte_Pattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static getFloatWindowSize(Landroid/content/Context;)[I
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 239
    if-nez p0, :cond_0

    .line 240
    new-array v0, v0, [I

    .line 246
    :goto_0
    return-object v0

    .line 243
    :cond_0
    new-array v0, v0, [I

    .line 244
    const/4 v1, 0x0

    const/16 v2, 0x244

    aput v2, v0, v1

    .line 245
    const/4 v1, 0x1

    const/16 v2, 0x15e

    aput v2, v0, v1

    goto :goto_0
.end method

.method public static hexdigest(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 430
    const/4 v0, 0x0

    .line 433
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/socialize/utils/SocializeUtils;->md5([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 438
    :goto_0
    return-object v0

    .line 434
    :catch_0
    move-exception v1

    .line 435
    invoke-static {v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static insertImage(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 287
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-object v0

    .line 292
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "umeng_social_shareimg"

    const/4 v3, 0x0

    .line 291
    invoke-static {v1, p1, v2, v3}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 297
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v1

    .line 300
    invoke-static {v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isFloatWindowStyle(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 253
    if-nez p0, :cond_0

    move v0, v3

    .line 277
    :goto_0
    return v0

    .line 256
    :cond_0
    sget-boolean v0, Lcom/umeng/socialize/common/SocializeConstants;->SUPPORT_PAD:Z

    if-eqz v0, :cond_3

    .line 257
    sget v0, Lcom/umeng/socialize/utils/SocializeUtils;->smDip:I

    if-nez v0, :cond_1

    .line 258
    const-string v0, "window"

    .line 259
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 260
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 261
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 262
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 264
    if-le v2, v1, :cond_2

    .line 266
    :goto_1
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 267
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 268
    int-to-float v0, v1

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/umeng/socialize/utils/SocializeUtils;->smDip:I

    .line 271
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 272
    and-int/lit8 v0, v0, 0xf

    .line 273
    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    sget v0, Lcom/umeng/socialize/utils/SocializeUtils;->smDip:I

    const/16 v1, 0x226

    if-lt v0, v1, :cond_3

    .line 274
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 264
    goto :goto_1

    :cond_3
    move v0, v3

    .line 277
    goto :goto_0
.end method

.method public static isHasDplusCache()Z
    .locals 7

    .prologue
    .line 413
    const-string v0, "s_e"

    invoke-static {v0}, Lcom/umeng/socialize/net/dplus/cache/DplueCache;->getFilePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 414
    const-string v0, "auth"

    invoke-static {v0}, Lcom/umeng/socialize/net/dplus/cache/DplueCache;->getFilePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 415
    const-string v0, "userinfo"

    invoke-static {v0}, Lcom/umeng/socialize/net/dplus/cache/DplueCache;->getFilePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 416
    const-string v0, "dau"

    invoke-static {v0}, Lcom/umeng/socialize/net/dplus/cache/DplueCache;->getFilePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 417
    const-string v0, "stats"

    invoke-static {v0}, Lcom/umeng/socialize/net/dplus/cache/DplueCache;->getFilePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 418
    const/4 v0, 0x0

    .line 419
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    if-gtz v1, :cond_4

    :cond_0
    if-eqz v2, :cond_1

    .line 420
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    if-gtz v1, :cond_4

    :cond_1
    if-eqz v3, :cond_2

    .line 421
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    if-gtz v1, :cond_4

    :cond_2
    if-eqz v4, :cond_3

    .line 422
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    if-gtz v1, :cond_4

    :cond_3
    if-eqz v5, :cond_5

    .line 423
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_5

    .line 424
    :cond_4
    const/4 v0, 0x1

    .line 426
    :cond_5
    return v0
.end method

.method public static isToday(J)Z
    .locals 8

    .prologue
    const/4 v6, 0x6

    const/4 v0, 0x1

    .line 394
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 395
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 396
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 398
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 399
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 400
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 402
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 403
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 404
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int v1, v2, v1

    .line 406
    if-nez v1, :cond_0

    .line 410
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static jsonToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 326
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 329
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 331
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    .line 337
    :cond_0
    return-object v1
.end method

.method public static mapToBundle(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 383
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 384
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 385
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_0
    return-object v2
.end method

.method public static md5([B)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 442
    const/4 v1, 0x0

    .line 444
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 445
    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 446
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 447
    const/16 v2, 0x20

    new-array v4, v2, [C

    move v2, v0

    .line 449
    :goto_0
    const/16 v5, 0x10

    if-ge v0, v5, :cond_0

    .line 450
    aget-byte v5, v3, v0

    .line 451
    add-int/lit8 v6, v2, 0x1

    sget-object v7, Lcom/umeng/socialize/utils/SocializeUtils;->hexDigits:[C

    ushr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v4, v2

    .line 452
    add-int/lit8 v2, v6, 0x1

    sget-object v7, Lcom/umeng/socialize/utils/SocializeUtils;->hexDigits:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v7, v5

    aput-char v5, v4, v6

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 455
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :goto_1
    return-object v0

    .line 456
    :catch_0
    move-exception v0

    .line 457
    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public static openApplicationMarket(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 128
    sget-boolean v0, Lcom/umeng/socialize/Config;->isJumptoAppStore:Z

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 136
    :cond_0
    return-void
.end method

.method public static parseUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 171
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 173
    invoke-virtual {v1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/socialize/utils/SocializeUtils;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-object v0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public static safeCloseDialog(Landroid/app/Dialog;)V
    .locals 1

    .prologue
    .line 114
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static safeShowDialog(Landroid/app/Dialog;)V
    .locals 1

    .prologue
    .line 149
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
