.class public Lorg/android/spdy/SoInstallMgrSdk;
.super Ljava/lang/Object;
.source "SoInstallMgrSdk.java"


# static fields
.field private static final ARMEABI:Ljava/lang/String; = "armeabi"

.field private static final EventID_SO_INIT:I = 0x5229

.field static final LOGTAG:Ljava/lang/String; = "INIT_SO"

.field private static final MIPS:Ljava/lang/String; = "mips"

.field private static final X86:Ljava/lang/String; = "x86"

.field static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lorg/android/spdy/SoInstallMgrSdk;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _cpuType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    new-instance v0, Landroid/os/Build;

    invoke-direct {v0}, Landroid/os/Build;-><init>()V

    const-string v1, "CPU_ABI"

    invoke-static {v0, v1}, Lorg/android/spdy/SoInstallMgrSdk;->_getFieldReflectively(Landroid/os/Build;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    :cond_0
    const-string v0, "armeabi"

    .line 213
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 214
    return-object v0
.end method

.method private static _getFieldReflectively(Landroid/os/Build;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    :try_start_0
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 202
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method static _loadUnzipSo(Ljava/lang/String;ILjava/lang/ClassLoader;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 264
    .line 270
    :try_start_0
    invoke-static {p0, p1}, Lorg/android/spdy/SoInstallMgrSdk;->isExist(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    if-nez p2, :cond_1

    .line 276
    invoke-static {p0, p1}, Lorg/android/spdy/SoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 313
    :cond_0
    :goto_0
    return v0

    .line 278
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 279
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/ClassLoader;

    aput-object v5, v3, v4

    .line 280
    const-class v4, Ljava/lang/Runtime;

    const-string v5, "load"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 281
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 282
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Lorg/android/spdy/SoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 296
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 312
    goto :goto_0

    .line 299
    :catch_1
    move-exception v0

    .line 303
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    move v0, v1

    .line 312
    goto :goto_0

    .line 307
    :catch_2
    move-exception v0

    .line 310
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method static _targetSoFile(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 221
    sget-object v1, Lorg/android/spdy/SoInstallMgrSdk;->mContext:Landroid/content/Context;

    .line 222
    if-nez v1, :cond_0

    .line 223
    const-string v0, ""

    .line 232
    :goto_0
    return-object v0

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/files"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 228
    if-eqz v1, :cond_1

    .line 230
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 232
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 58
    sput-object p0, Lorg/android/spdy/SoInstallMgrSdk;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method public static initSo(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/android/spdy/SoInstallMgrSdk;->initSo(Ljava/lang/String;ILjava/lang/ClassLoader;)Z

    move-result v0

    return v0
.end method

.method public static initSo(Ljava/lang/String;ILjava/lang/ClassLoader;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    .line 82
    if-nez p2, :cond_1

    .line 86
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 122
    :goto_0
    if-nez v0, :cond_4

    .line 126
    :try_start_1
    invoke-static {p0, p1}, Lorg/android/spdy/SoInstallMgrSdk;->isExist(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    invoke-static {p0, p1, p2}, Lorg/android/spdy/SoInstallMgrSdk;->_loadUnzipSo(Ljava/lang/String;ILjava/lang/ClassLoader;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_7

    move-result v2

    .line 129
    if-eqz v2, :cond_2

    move v0, v2

    .line 195
    :cond_0
    :goto_1
    return v0

    .line 88
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 89
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/ClassLoader;

    aput-object v5, v3, v4

    .line 90
    const-class v4, Ljava/lang/Runtime;

    const-string v5, "loadLibrary"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 91
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 92
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 117
    goto :goto_0

    .line 104
    :catch_1
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    move v0, v1

    .line 117
    goto :goto_0

    .line 111
    :catch_2
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    move v0, v1

    goto :goto_0

    .line 133
    :cond_2
    :try_start_3
    invoke-static {p0, p1}, Lorg/android/spdy/SoInstallMgrSdk;->removeSoIfExit(Ljava/lang/String;I)V

    .line 140
    :cond_3
    invoke-static {}, Lorg/android/spdy/SoInstallMgrSdk;->_cpuType()Ljava/lang/String;

    move-result-object v2

    .line 141
    const-string v3, "mips"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "x86"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_7

    move-result v2

    if-eqz v2, :cond_5

    .line 190
    :cond_4
    :goto_2
    if-nez v0, :cond_0

    goto :goto_1

    .line 151
    :cond_5
    :try_start_4
    invoke-static {p0, p1, p2}, Lorg/android/spdy/SoInstallMgrSdk;->unZipSelectedFiles(Ljava/lang/String;ILjava/lang/ClassLoader;)Z
    :try_end_4
    .catch Ljava/util/zip/ZipException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_7

    move-result v0

    goto :goto_2

    .line 153
    :catch_3
    move-exception v2

    .line 155
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_2

    .line 167
    :catch_4
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 188
    goto :goto_2

    .line 158
    :catch_5
    move-exception v2

    .line 160
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_2

    .line 174
    :catch_6
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    move v0, v1

    .line 188
    goto :goto_2

    .line 182
    :catch_7
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    move v0, v1

    goto :goto_2
.end method

.method static isExist(Ljava/lang/String;I)Z
    .locals 2

    .prologue
    .line 254
    invoke-static {p0, p1}, Lorg/android/spdy/SoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 255
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method static removeSoIfExit(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 240
    invoke-static {p0, p1}, Lorg/android/spdy/SoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 241
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 248
    :cond_0
    return-void
.end method

.method static unZipSelectedFiles(Ljava/lang/String;ILjava/lang/ClassLoader;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lib/armeabi/lib"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".so"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 322
    :try_start_0
    const-string v0, ""

    .line 323
    sget-object v5, Lorg/android/spdy/SoInstallMgrSdk;->mContext:Landroid/content/Context;

    .line 324
    if-nez v5, :cond_0

    move v0, v1

    .line 424
    :goto_0
    return v0

    .line 330
    :cond_0
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 331
    if-eqz v4, :cond_1

    .line 333
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 339
    :cond_1
    new-instance v6, Ljava/util/zip/ZipFile;

    invoke-direct {v6, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 343
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 344
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-eqz v7, :cond_2

    .line 355
    :try_start_1
    invoke-static {p0, p1}, Lorg/android/spdy/SoInstallMgrSdk;->removeSoIfExit(Ljava/lang/String;I)V

    .line 358
    invoke-virtual {v6, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 359
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lib"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "bk"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".so"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v5, v0, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 361
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 363
    const/16 v0, 0x400

    new-array v5, v0, [B

    move v0, v1

    .line 366
    :goto_1
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_3

    .line 368
    const/4 v8, 0x0

    invoke-static {v5, v8, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 369
    add-int/2addr v0, v7

    goto :goto_1

    .line 376
    :cond_3
    if-eqz v4, :cond_4

    .line 380
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 388
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 389
    :try_start_5
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 395
    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    .line 396
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 401
    :cond_6
    :goto_4
    if-eqz v6, :cond_7

    .line 403
    :try_start_7
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V

    .line 408
    :cond_7
    if-lez v0, :cond_d

    .line 410
    invoke-static {p0, p1, p2}, Lorg/android/spdy/SoInstallMgrSdk;->_loadUnzipSo(Ljava/lang/String;ILjava/lang/ClassLoader;)Z

    move-result v0

    goto/16 :goto_0

    .line 382
    :catch_0
    move-exception v4

    .line 383
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 419
    :catch_1
    move-exception v0

    .line 420
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    move v0, v1

    .line 424
    goto/16 :goto_0

    .line 390
    :catch_2
    move-exception v2

    .line 391
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 397
    :catch_3
    move-exception v2

    .line 398
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_4

    .line 376
    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    :goto_5
    if-eqz v4, :cond_9

    .line 380
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 388
    :cond_9
    :goto_6
    if-eqz v2, :cond_a

    .line 389
    :try_start_a
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 395
    :cond_a
    :goto_7
    if-eqz v3, :cond_b

    .line 396
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    .line 401
    :cond_b
    :goto_8
    if-eqz v6, :cond_c

    .line 403
    :try_start_c
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V

    .line 404
    :cond_c
    throw v0

    .line 382
    :catch_4
    move-exception v4

    .line 383
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 390
    :catch_5
    move-exception v2

    .line 391
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 397
    :catch_6
    move-exception v2

    .line 398
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_8

    :cond_d
    move v0, v1

    .line 415
    goto/16 :goto_0

    .line 376
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5
.end method
