.class Lcom/tencent/smtt/sdk/aj;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static b:Z

.field private static c:Lcom/tencent/smtt/sdk/aj;

.field private static final h:Ljava/util/concurrent/locks/Lock;

.field private static final i:Ljava/util/concurrent/locks/Lock;

.field private static k:Landroid/os/Handler;

.field private static final l:[[Ljava/lang/Long;

.field private static m:Z


# instance fields
.field private d:I

.field private e:Ljava/nio/channels/FileLock;

.field private f:Ljava/io/FileOutputStream;

.field private g:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v1, 0x0

    const-wide/32 v10, 0xaf4f9c

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    sput-object v1, Lcom/tencent/smtt/sdk/aj;->c:Lcom/tencent/smtt/sdk/aj;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/aj;->i:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Lcom/tencent/smtt/sdk/ak;

    invoke-direct {v0}, Lcom/tencent/smtt/sdk/ak;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/aj;->a:Ljava/lang/ThreadLocal;

    sput-object v1, Lcom/tencent/smtt/sdk/aj;->k:Landroid/os/Handler;

    const/4 v0, 0x7

    new-array v0, v0, [[Ljava/lang/Long;

    new-array v1, v8, [Ljava/lang/Long;

    const-wide/16 v2, 0x6345

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    const-wide/32 v2, 0xaedee0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [Ljava/lang/Long;

    const-wide/16 v2, 0x635c

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    const-wide/32 v2, 0xb73fa0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [Ljava/lang/Long;

    const-wide/16 v2, 0x635d

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    const/4 v1, 0x3

    new-array v2, v8, [Ljava/lang/Long;

    const-wide/16 v4, 0x635e

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v8, [Ljava/lang/Long;

    const-wide/16 v4, 0x635f

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    const-wide/32 v4, 0xb74fa0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v8, [Ljava/lang/Long;

    const-wide/16 v4, 0x6360

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v8, [Ljava/lang/Long;

    const-wide/16 v4, 0x6362

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/smtt/sdk/aj;->l:[[Ljava/lang/Long;

    sput-boolean v6, Lcom/tencent/smtt/sdk/aj;->b:Z

    sput-boolean v6, Lcom/tencent/smtt/sdk/aj;->m:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tencent/smtt/sdk/aj;->d:I

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/aj;->g:Z

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/aj;->j:Z

    sget-object v0, Lcom/tencent/smtt/sdk/aj;->k:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/smtt/sdk/al;

    invoke-static {}, Lcom/tencent/smtt/sdk/ah;->a()Lcom/tencent/smtt/sdk/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/ah;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/smtt/sdk/al;-><init>(Lcom/tencent/smtt/sdk/aj;Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/smtt/sdk/aj;->k:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static declared-synchronized a()Lcom/tencent/smtt/sdk/aj;
    .locals 3

    const-class v1, Lcom/tencent/smtt/sdk/aj;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/smtt/sdk/aj;->c:Lcom/tencent/smtt/sdk/aj;

    if-nez v0, :cond_1

    const-class v2, Lcom/tencent/smtt/sdk/aj;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/tencent/smtt/sdk/aj;->c:Lcom/tencent/smtt/sdk/aj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/smtt/sdk/aj;

    invoke-direct {v0}, Lcom/tencent/smtt/sdk/aj;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/aj;->c:Lcom/tencent/smtt/sdk/aj;

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/tencent/smtt/sdk/aj;->c:Lcom/tencent/smtt/sdk/aj;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(ILjava/lang/String;Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const-string v0, "TbsInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Local tbs apk("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") is deleted!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "tbs"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v3, "core_unzip_tmp"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    const-string v3, "tbs.conf"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v0, "tbs_local_installation"

    const-string v2, "true"

    invoke-virtual {v4, v0, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {v4, v1, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v0, "TbsInstaller"

    const-string v2, "TBS_LOCAL_INSTALLATION is set!"

    const/4 v4, 0x1

    invoke-static {v0, v2, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_2
    :goto_3
    if-eqz v2, :cond_1

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_4
    if-eqz v2, :cond_3

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_3
    :goto_5
    if-eqz v3, :cond_4

    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_4
    :goto_6
    throw v0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :catch_8
    move-exception v0

    move-object v2, v3

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    const/16 v3, 0x1a1

    invoke-static {p0}, Lcom/tencent/smtt/sdk/aj;->n(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "core_unzip_tmp"

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/aj;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "TMP_TBS_UNZIP_FOLDER_NAME"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v3, v1}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-UploadIfTempCoreExistConfError INFO_TEMP_CORE_EXIST_CONF_ERROR TMP_TBS_UNZIP_FOLDER_NAME"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "core_share_backup_tmp"

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/aj;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "TMP_BACKUP_TBSCORE_FOLDER_NAME"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v3, v1}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-UploadIfTempCoreExistConfError INFO_TEMP_CORE_EXIST_CONF_ERROR TMP_BACKUP_TBSCORE_FOLDER_NAME"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "core_copy_tmp"

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/aj;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "TMP_TBS_COPY_FOLDER_NAME"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v3, v1}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-UploadIfTempCoreExistConfError INFO_TEMP_CORE_EXIST_CONF_ERROR TMP_TBS_COPY_FOLDER_NAME"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/content/Context;I)V
    .locals 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x20c

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-virtual {p0, p2}, Lcom/tencent/smtt/sdk/aj;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-copyTbsCoreInThread start!"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    const-string v0, "tbs_preloadx5_check_cfg_file"

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :goto_1
    const-string v1, "tbs_precheck_disable_version"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p3, :cond_2

    const-string v0, "TbsInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TbsInstaller-copyTbsCoreInThread -- version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is disabled by preload_x5_check!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x20d

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    goto :goto_0

    :cond_1
    const-string v0, "tbs_preloadx5_check_cfg_file"

    invoke-virtual {p2, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p2}, Lcom/tencent/smtt/sdk/aj;->m(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x20e

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/tencent/smtt/sdk/aj;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-static {p2}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    const-string v1, "copy_core_ver"

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/ae;->c(Ljava/lang/String;)I

    move-result v1

    invoke-static {p2}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    const-string v2, "copy_status"

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/ae;->b(Ljava/lang/String;)I

    move-result v0

    if-ne v1, p3, :cond_4

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->j:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 v1, 0xdc

    invoke-interface {v0, v1}, Lcom/tencent/smtt/sdk/TbsListener;->onInstallFinish(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x210

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object v0, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v0, Lcom/tencent/smtt/sdk/aj;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/aj;->b()V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/tencent/smtt/sdk/aj;->d(Landroid/content/Context;)I

    move-result v2

    const-string v3, "TbsInstaller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TbsInstaller-copyTbsCoreInThread tbsCoreInstalledVer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v2, p3, :cond_5

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->j:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 v1, 0xdc

    invoke-interface {v0, v1}, Lcom/tencent/smtt/sdk/TbsListener;->onInstallFinish(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x210

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v0, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v0, Lcom/tencent/smtt/sdk/aj;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :cond_5
    :try_start_2
    invoke-static {p2}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/ae;->b()I

    move-result v3

    if-lez v3, :cond_6

    if-gt p3, v3, :cond_7

    :cond_6
    if-lez v1, :cond_8

    if-le p3, v1, :cond_8

    :cond_7
    invoke-virtual {p0, p2}, Lcom/tencent/smtt/sdk/aj;->g(Landroid/content/Context;)V

    :cond_8
    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    if-lez v2, :cond_a

    if-gt p3, v2, :cond_9

    const v1, 0x54c5638

    if-ne p3, v1, :cond_a

    :cond_9
    const/4 v0, -0x1

    invoke-virtual {p0, p2}, Lcom/tencent/smtt/sdk/aj;->g(Landroid/content/Context;)V

    const-string v1, "TbsInstaller"

    const-string v2, "TbsInstaller-copyTbsCoreInThread -- update TBS....."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_a
    invoke-static {p2}, Lcom/tencent/smtt/utils/k;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lcom/tencent/smtt/utils/aa;->a()J

    move-result-wide v0

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadMinFreeSpace()J

    move-result-wide v2

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    const/16 v5, -0x211

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v4

    const/16 v5, 0xd2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rom is not enough when copying tbs core! curAvailROM="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",minReqRom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-object v0, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v0, Lcom/tencent/smtt/sdk/aj;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_2

    :cond_b
    if-lez v0, :cond_c

    sget-object v0, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v0, Lcom/tencent/smtt/sdk/aj;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_2

    :cond_c
    if-nez v0, :cond_e

    :try_start_3
    invoke-static {p2}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    const-string v1, "copy_retry_num"

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/ae;->c(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_d

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v1, 0xd3

    const-string v2, "exceed copy retry num!"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x212

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-object v0, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v0, Lcom/tencent/smtt/sdk/aj;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_2

    :cond_d
    :try_start_4
    invoke-static {p2}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v1

    const-string v2, "copy_retry_num"

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/tencent/smtt/sdk/ae;->a(Ljava/lang/String;I)V

    :cond_e
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/tencent/smtt/sdk/aj;->l(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    if-eqz v0, :cond_1f

    if-eqz v6, :cond_1f

    invoke-static {p2}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Lcom/tencent/smtt/sdk/ae;->a(II)V

    new-instance v1, Lcom/tencent/smtt/utils/z;

    invoke-direct {v1}, Lcom/tencent/smtt/utils/z;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/smtt/utils/z;->a(Ljava/io/File;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    const/16 v8, -0x227

    invoke-virtual {v7, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static {v0, v6}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    const-string v8, "TbsInstaller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TbsInstaller-copyTbsCoreInThread time="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v2, v10, v2

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_1e

    invoke-virtual {v1, v0}, Lcom/tencent/smtt/utils/z;->b(Ljava/io/File;)V

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/z;->a()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-copyTbsCoreInThread copy-verify fail!"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v6, v0}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Z)V

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v1, 0xd5

    const-string v2, "TbsCopy-Verify fail after copying tbs core!"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x213

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    sget-object v0, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v0, Lcom/tencent/smtt/sdk/aj;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_2

    :cond_f
    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_5
    new-instance v0, Ljava/io/File;

    const-string v1, "1"

    invoke-direct {v0, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_12

    :try_start_6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_12

    if-eqz v1, :cond_12

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move v0, v4

    :goto_3
    if-eqz v2, :cond_10

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_10
    :goto_4
    move v2, v0

    :goto_5
    if-eqz v2, :cond_17

    :try_start_9
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v7, -0x228

    invoke-virtual {v0, v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    move v0, v5

    :goto_6
    array-length v7, v3

    if-ge v0, v7, :cond_17

    aget-object v7, v3, v0

    const-string v8, "1"

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".dex"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_11

    const-string v8, "tbs.conf"

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v8

    if-eqz v8, :cond_15

    :cond_11
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_12
    move-object v2, v3

    move v0, v5

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    :goto_8
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v2, :cond_13

    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_13
    :goto_9
    move v2, v4

    goto :goto_5

    :catchall_0
    move-exception v0

    :goto_a
    if-eqz v3, :cond_14

    :try_start_c
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_14
    :goto_b
    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catch_1
    move-exception v0

    :try_start_e
    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    const/16 v2, 0xd7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x219

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    sget-object v0, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v0, Lcom/tencent/smtt/sdk/aj;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_2

    :cond_15
    :try_start_f
    invoke-static {v7}, Lcom/tencent/smtt/utils/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v1, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_16

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    const-string v8, "TbsInstaller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "md5_check_success for ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    sget-object v1, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v1, Lcom/tencent/smtt/sdk/aj;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/aj;->b()V

    throw v0

    :cond_16
    :try_start_10
    const-string v0, "TbsInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "md5_check_failure for ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    :cond_17
    const-string v0, "TbsInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyTbsCoreInThread - md5_check_success:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_18

    if-nez v4, :cond_18

    const-string v0, "TbsInstaller"

    const-string v1, "copyTbsCoreInThread - md5 incorrect -> delete destTmpDir!"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v6, v0}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Z)V

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v1, 0xd5

    const-string v2, "TbsCopy-Verify md5 fail after copying tbs core!"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x214

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    sget-object v0, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v0, Lcom/tencent/smtt/sdk/aj;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_2

    :cond_18
    :try_start_11
    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-copyTbsCoreInThread success!"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/tencent/smtt/sdk/aj;->f(Landroid/content/Context;Z)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ac;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v2, Ljava/io/File;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "x5.oversea.tbs.org"

    :goto_c
    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, p2}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/File;Landroid/content/Context;)V

    :cond_19
    invoke-static {p2}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lcom/tencent/smtt/sdk/ae;->a(II)V

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/aj;->j:Z

    if-eqz v0, :cond_1c

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v1, 0xdc

    const-string v2, "continueInstallWithout core success"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    :goto_d
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x215

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    const-string v0, "TbsInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TbsInstaller-copyTbsCoreInThread success -- version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1d

    const-string v0, "tbs_preloadx5_check_cfg_file"

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    move-result-object v0

    :goto_e
    :try_start_12
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tbs_preload_x5_counter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "tbs_preload_x5_recorder"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "tbs_preload_x5_version"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :goto_f
    :try_start_13
    invoke-static {p2}, Lcom/tencent/smtt/utils/aa;->a(Landroid/content/Context;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :cond_1a
    :goto_10
    sget-object v0, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v0, Lcom/tencent/smtt/sdk/aj;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_2

    :cond_1b
    :try_start_14
    const-string v0, "x5.tbs.org"

    goto :goto_c

    :cond_1c
    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v1, 0xdc

    const-string v2, "success"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    goto :goto_d

    :cond_1d
    const-string v0, "tbs_preloadx5_check_cfg_file"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_e

    :catch_2
    move-exception v0

    const-string v1, "TbsInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init tbs_preload_x5_counter#2 exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_1e
    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-copyTbsCoreInThread fail!"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p3, v1}, Lcom/tencent/smtt/sdk/ae;->a(II)V

    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Z)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x216

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v1, 0xd4

    const-string v2, "copy fail!"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    goto :goto_10

    :cond_1f
    if-nez v0, :cond_20

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v1, 0xd5

    const-string v2, "src-dir is null when copying tbs core!"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x217

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    :cond_20
    if-nez v6, :cond_1a

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v1, 0xd6

    const-string v2, "dst-dir is null when copying tbs core!"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x218

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto/16 :goto_10

    :cond_21
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/aj;->b()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x21a

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    goto/16 :goto_0

    :catch_3
    move-exception v1

    :try_start_15
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto/16 :goto_a

    :catch_6
    move-exception v0

    move-object v2, v3

    goto/16 :goto_8

    :catch_7
    move-exception v0

    goto/16 :goto_8
.end method

.method static synthetic a(Lcom/tencent/smtt/sdk/aj;Landroid/content/Context;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/aj;->a(Landroid/content/Context;Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/smtt/sdk/aj;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/aj;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/io/File;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "TbsInstaller"

    const-string v3, "TbsInstaller-unzipTbs start"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/tencent/smtt/utils/k;->c(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v2, 0xcc

    const-string v3, "apk is invalid!"

    invoke-virtual {v0, v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x208

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    const-string v2, "tbs"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string v4, "core_unzip_tmp"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v3}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->k(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v2, 0xcd

    const-string v3, "tmp unzip dir is null!"

    invoke-virtual {v0, v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x209

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "TbsInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TbsInstaller-unzipTbs -- delete unzip folder if exists exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-static {v3}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;)Z

    invoke-static {p2, v3}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v3}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    const/16 v5, -0x20a

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    const-string v4, "TbsInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copyFileIfChanged -- delete tmpTbsCoreUnzipDir#1! exist:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-unzipTbs done"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x1

    :try_start_2
    invoke-direct {p0, p1, v4}, Lcom/tencent/smtt/sdk/aj;->f(Landroid/content/Context;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_3
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    const/16 v5, -0x20b

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v4

    const/16 v5, 0xce

    invoke-virtual {v4, v5, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/Throwable;)V

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    :goto_3
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    :try_start_4
    invoke-static {v3}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;)V

    const-string v0, "TbsInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFileIfChanged -- delete tmpTbsCoreUnzipDir#2! exist:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_4
    const-string v0, "TbsInstaller"

    const-string v2, "TbsInstaller-unzipTbs done"

    :goto_5
    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v2

    :try_start_5
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    const/16 v5, -0x20b

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v4

    const/16 v5, 0xcf

    invoke-virtual {v4, v5, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/Throwable;)V

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    if-eqz v2, :cond_6

    :goto_6
    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    :try_start_6
    invoke-static {v3}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;)V

    const-string v0, "TbsInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFileIfChanged -- delete tmpTbsCoreUnzipDir#2! exist:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    :cond_5
    :goto_7
    const-string v0, "TbsInstaller"

    const-string v2, "TbsInstaller-unzipTbs done"

    goto :goto_5

    :catchall_0
    move-exception v0

    const-string v1, "TbsInstaller"

    const-string v2, "TbsInstaller-unzipTbs done"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFileIfChanged -- delete tmpTbsCoreUnzipDir#2! exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_4
    move-exception v0

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFileIfChanged -- delete tmpTbsCoreUnzipDir#2! exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_6
    move v0, v1

    goto :goto_6

    :cond_7
    move v0, v1

    goto/16 :goto_3
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/16 v6, 0xc8

    const/4 v12, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x1f5

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "TbsInstaller"

    const-string v3, "isTbsLocalInstalled --> no installation!"

    invoke-static {v2, v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x1f6

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TbsInstaller-installTbsCoreInThread tbsApkPath="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TbsInstaller-installTbsCoreInThread tbsCoreTargetVer="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TbsInstaller-continueInstallTbsCore currentProcessName="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TbsInstaller-installTbsCoreInThread currentProcessId="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TbsInstaller-installTbsCoreInThread currentThreadName="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    const-string v2, "tbs_preloadx5_check_cfg_file"

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    :goto_1
    const-string v3, "tbs_precheck_disable_version"

    const/4 v7, -0x1

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move/from16 v0, p3

    if-ne v2, v0, :cond_2

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TbsInstaller-installTbsCoreInThread -- version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is disabled by preload_x5_check!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x1f7

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    goto/16 :goto_0

    :cond_1
    const-string v2, "tbs_preloadx5_check_cfg_file"

    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/tencent/smtt/utils/k;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/tencent/smtt/utils/aa;->a()J

    move-result-wide v2

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadMinFreeSpace()J

    move-result-wide v4

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    const/16 v7, -0x1f8

    invoke-virtual {v6, v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v6

    const/16 v7, 0xd2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rom is not enough when installing tbs core! curAvailROM="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",minReqRom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->m(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x1f9

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    goto/16 :goto_0

    :cond_4
    sget-object v2, Lcom/tencent/smtt/sdk/aj;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v2

    const-string v3, "TbsInstaller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TbsInstaller-installTbsCoreInThread locked ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_24

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x1fb

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    sget-object v2, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v2

    const-string v3, "copy_core_ver"

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/ae;->c(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/ae;->b()I

    move-result v3

    const-string v7, "TbsInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TbsInstaller-installTbsCoreInThread tbsCoreCopyVer ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "TbsInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TbsInstaller-installTbsCoreInThread tbsCoreInstallVer ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "TbsInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TbsInstaller-installTbsCoreInThread tbsCoreTargetVer ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v3, :cond_5

    move/from16 v0, p3

    if-gt v0, v3, :cond_6

    :cond_5
    if-lez v2, :cond_7

    move/from16 v0, p3

    if-le v0, v2, :cond_7

    :cond_6
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->g(Landroid/content/Context;)V

    :cond_7
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/ae;->c()I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->d(Landroid/content/Context;)I

    move-result v3

    const-string v7, "TbsInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TbsInstaller-installTbsCoreInThread installStatus1="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "TbsInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TbsInstaller-installTbsCoreInThread tbsCoreInstalledVer="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v2, :cond_8

    if-ge v2, v12, :cond_8

    const-string v3, "TbsInstaller"

    const-string v7, "TbsInstaller-installTbsCoreInThread -- retry....."

    const/4 v8, 0x1

    invoke-static {v3, v7, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move v8, v2

    move v9, v4

    :goto_2
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x1fc

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TbsInstaller-installTbsCoreInThread installStatus2="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ge v8, v4, :cond_19

    const-string v2, "TbsInstaller"

    const-string v3, "STEP 2/2 begin installation....."

    const/4 v7, 0x1

    invoke-static {v2, v3, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x1fd

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    if-eqz v9, :cond_c

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v2

    const-string v3, "unzip_retry_num"

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/ae;->c(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_b

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    const/16 v3, 0xc9

    const-string v4, "exceed unzip retry num!"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/aj;->t(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x1fe

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v2, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v2, Lcom/tencent/smtt/sdk/aj;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/aj;->b()V

    goto/16 :goto_0

    :cond_8
    const/4 v7, 0x3

    if-ne v2, v7, :cond_a

    if-lez v3, :cond_a

    move/from16 v0, p3

    if-gt v0, v3, :cond_9

    const v3, 0x54c5638

    move/from16 v0, p3

    if-ne v0, v3, :cond_a

    :cond_9
    const/4 v2, -0x1

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->g(Landroid/content/Context;)V

    const-string v3, "TbsInstaller"

    const-string v7, "TbsInstaller-installTbsCoreInThread -- update TBS....."

    const/4 v8, 0x1

    invoke-static {v3, v7, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_a
    move v8, v2

    move v9, v5

    goto/16 :goto_2

    :cond_b
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Lcom/tencent/smtt/sdk/ae;->b(I)V

    :cond_c
    if-nez p2, :cond_d

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v2

    const-string v3, "install_apk_path"

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/ae;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    const/16 v3, 0xca

    const-string v4, "apk path is null!"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x1ff

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v2, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v2, Lcom/tencent/smtt/sdk/aj;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/aj;->b()V

    goto/16 :goto_0

    :cond_d
    move-object v2, p2

    :cond_e
    :try_start_2
    const-string v3, "TbsInstaller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TbsInstaller-installTbsCoreInThread apkPath ="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2}, Lcom/tencent/smtt/sdk/aj;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_f

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x200

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    const/16 v3, 0xcb

    const-string v4, "apk version is 0!"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v2, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v2, Lcom/tencent/smtt/sdk/aj;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/aj;->b()V

    goto/16 :goto_0

    :cond_f
    :try_start_3
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v3

    const-string v10, "install_apk_path"

    invoke-virtual {v3, v10, v2}, Lcom/tencent/smtt/sdk/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v3

    const/4 v10, 0x0

    invoke-virtual {v3, v7, v10}, Lcom/tencent/smtt/sdk/ae;->b(II)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v10, -0x224

    invoke-virtual {v3, v10}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v3}, Lcom/tencent/smtt/sdk/aj;->a(Landroid/content/Context;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    const/16 v3, 0xcf

    const-string v4, "unzipTbsApk failed"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v2, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v2, Lcom/tencent/smtt/sdk/aj;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/aj;->b()V

    goto/16 :goto_0

    :cond_10
    if-eqz v9, :cond_12

    :try_start_4
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v2

    const-string v3, "unlzma_status"

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/ae;->b(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_11

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    const/16 v3, 0xdf

    const-string v4, "exceed unlzma retry num!"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x229

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/aj;->t(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ac;->c(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_needdownload"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "request_full_package"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sget-object v2, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v2, Lcom/tencent/smtt/sdk/aj;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/aj;->b()V

    goto/16 :goto_0

    :cond_11
    :try_start_5
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Lcom/tencent/smtt/sdk/ae;->d(I)V

    :cond_12
    const-string v2, "TbsInstaller"

    const-string v3, "unlzma begin"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance()Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_responsecode"

    const/4 v10, 0x0

    invoke-interface {v2, v3, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->d(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "can_unlzma"

    const/4 v10, 0x0

    invoke-static {p1, v2, v10}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_25

    instance-of v10, v2, Ljava/lang/Boolean;

    if-eqz v10, :cond_25

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_3
    if-eqz v2, :cond_18

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v10, "responseCode"

    invoke-virtual {v2, v10, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "unzip_temp_path"

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->k(Landroid/content/Context;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "unlzma"

    invoke-static {p1, v3, v2}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_14

    const-string v2, "TbsInstaller"

    const-string v3, "unlzma return null"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    const/16 v3, 0xde

    const-string v10, "unlzma is null"

    invoke-virtual {v2, v3, v10}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_13
    :goto_4
    if-nez v5, :cond_18

    sget-object v2, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v2, Lcom/tencent/smtt/sdk/aj;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/aj;->b()V

    goto/16 :goto_0

    :cond_14
    :try_start_6
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_16

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "TbsInstaller"

    const-string v3, "unlzma success"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    :goto_5
    move v5, v2

    goto :goto_4

    :cond_15
    const-string v2, "TbsInstaller"

    const-string v3, "unlzma return false"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    const/16 v3, 0xde

    const-string v10, "unlzma return false"

    invoke-virtual {v2, v3, v10}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    move v2, v5

    goto :goto_5

    :cond_16
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_17

    move v5, v4

    goto :goto_4

    :cond_17
    instance-of v3, v2, Ljava/lang/Throwable;

    if-eqz v3, :cond_13

    const-string v10, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unlzma failure because Throwable"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v2

    check-cast v0, Ljava/lang/Throwable;

    move-object v3, v0

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v3

    const/16 v10, 0xde

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v3, v10, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v2

    sget-object v3, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v3, Lcom/tencent/smtt/sdk/aj;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/aj;->b()V

    throw v2

    :cond_18
    :try_start_7
    const-string v2, "TbsInstaller"

    const-string v3, "unlzma finished"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v7, v3}, Lcom/tencent/smtt/sdk/ae;->b(II)V

    move v5, v7

    :cond_19
    if-ge v8, v12, :cond_23

    if-eqz v9, :cond_1b

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v2

    const-string v3, "dexopt_retry_num"

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/ae;->c(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_1a

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    const/16 v3, 0xd0

    const-string v4, "exceed dexopt retry num!"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x202

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/aj;->t(Landroid/content/Context;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sget-object v2, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v2, Lcom/tencent/smtt/sdk/aj;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/aj;->b()V

    goto/16 :goto_0

    :cond_1a
    :try_start_8
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Lcom/tencent/smtt/sdk/ae;->a(I)V

    :cond_1b
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x225

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/tencent/smtt/sdk/aj;->c(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x203

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sget-object v2, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v2, Lcom/tencent/smtt/sdk/aj;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/aj;->b()V

    goto/16 :goto_0

    :cond_1c
    :try_start_9
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v5, v3}, Lcom/tencent/smtt/sdk/ae;->b(II)V

    const-string v2, "TbsInstaller"

    const-string v3, "STEP 2/2 installation completed! you can restart!"

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STEP 2/2 installation completed! you can restart! version:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x204

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_20

    const-string v2, "tbs_preloadx5_check_cfg_file"

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v2

    :goto_6
    :try_start_a
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "tbs_preload_x5_counter"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v3, "tbs_preload_x5_recorder"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v3, "tbs_preload_x5_version"

    move/from16 v0, p3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x205

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_7
    const v2, 0x54c5638

    move/from16 v0, p3

    if-ne v0, v2, :cond_1d

    :try_start_b
    move/from16 v0, p3

    invoke-direct {p0, v0, p2, p1}, Lcom/tencent/smtt/sdk/aj;->a(ILjava/lang/String;Landroid/content/Context;)V

    :cond_1d
    iget-boolean v2, p0, Lcom/tencent/smtt/sdk/aj;->j:Z

    if-eqz v2, :cond_21

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/ae;->d()I

    move-result v3

    if-ne v3, v4, :cond_1e

    const/16 v6, 0xdd

    :cond_1e
    const-string v3, "continueInstallWithout core success"

    invoke-virtual {v2, v6, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_1f
    :goto_8
    sget-object v2, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v2, Lcom/tencent/smtt/sdk/aj;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/aj;->b()V

    goto/16 :goto_0

    :cond_20
    :try_start_c
    const-string v2, "tbs_preloadx5_check_cfg_file"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    goto :goto_6

    :catch_0
    move-exception v2

    const-string v3, "TbsInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Init tbs_preload_x5_counter#1 exception:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x206

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    goto :goto_7

    :cond_21
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v3

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/ae;->d()I

    move-result v2

    if-ne v2, v4, :cond_22

    const/16 v2, 0xdd

    :goto_9
    const-string v4, "success"

    invoke-virtual {v3, v2, v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    goto :goto_8

    :cond_22
    move v2, v6

    goto :goto_9

    :cond_23
    if-ne v8, v12, :cond_1f

    sget-object v2, Lcom/tencent/smtt/sdk/QbSdk;->j:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 v3, 0xc8

    invoke-interface {v2, v3}, Lcom/tencent/smtt/sdk/TbsListener;->onInstallFinish(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_8

    :cond_24
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x207

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/aj;->b()V

    goto/16 :goto_0

    :cond_25
    move v2, v5

    goto/16 :goto_3
.end method

.method private b(Landroid/content/Context;Ljava/io/File;)Z
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/tencent/smtt/sdk/ap;

    invoke-direct {v1, p0}, Lcom/tencent/smtt/sdk/ap;-><init>(Lcom/tencent/smtt/sdk/aj;)V

    invoke-virtual {p2, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v1, v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.tencent.tbs"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v4, 0x1388

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_1

    const-string v5, "TbsInstaller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "jarFile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v1

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ldalvik/system/DexClassLoader;

    aget-object v6, v2, v1

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_2
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    const/16 v3, 0xd1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    const-string v1, "TbsInstaller"

    const-string v2, "TbsInstaller-doTbsDexOpt done"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private c(Landroid/content/Context;I)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "TbsInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TbsInstaller-doTbsDexOpt start - dirMode: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    :try_start_0
    const-string v0, "TbsInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doDexoptOrDexoat mode error: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    :cond_0
    :goto_0
    return v2

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->k(Landroid/content/Context;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    :try_start_1
    const-string v1, "java.vm.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v4, "2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    move v4, v1

    :goto_3
    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ne v1, v5, :cond_4

    move v1, v2

    :goto_4
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "tbs_stop_preoat"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    if-nez v5, :cond_1

    move v3, v2

    :cond_1
    if-eqz v3, :cond_2

    invoke-direct {p0, p1, v0}, Lcom/tencent/smtt/sdk/aj;->c(Landroid/content/Context;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/tencent/smtt/sdk/aj;->b(Landroid/content/Context;Ljava/io/File;)Z

    move-result v2

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->l(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v4

    const/16 v5, 0xe2

    invoke-virtual {v4, v5, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v4, v3

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    const/16 v3, 0xd1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-doTbsDexOpt done"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private c(Landroid/content/Context;Ljava/io/File;)Z
    .locals 10

    const/16 v9, 0xe2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "tbs_sdk_extension_dex.jar"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "tbs_sdk_extension_dex.dex"

    invoke-direct {v2, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, Ldalvik/system/DexClassLoader;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v1, v5, v6, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/smtt/sdk/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    const/16 v2, 0xe2

    const-string v3, "can not find oat command"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    new-instance v1, Lcom/tencent/smtt/sdk/aq;

    invoke-direct {v1, p0}, Lcom/tencent/smtt/sdk/aq;-><init>(Lcom/tencent/smtt/sdk/aj;)V

    invoke-virtual {p2, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "tbs_sdk_extension_dex"

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/system/bin/dex2oat "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " --dex-location="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/tencent/smtt/sdk/aj;->a()Lcom/tencent/smtt/sdk/aj;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/tencent/smtt/sdk/aj;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jar"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    invoke-virtual {v2, v9, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "tbs"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v3, "tbs.conf"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized c(Landroid/content/Context;Z)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    const-string v2, "TbsInstaller"

    const-string v3, "TbsInstaller-enableTbsCoreFromCopy"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->m(Landroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_2
    sget-object v2, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v2

    const-string v3, "TbsInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TbsInstaller-enableTbsCoreFromCopy Locked ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    :try_start_3
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v2

    const-string v3, "copy_status"

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/ae;->b(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1}, Lcom/tencent/smtt/sdk/aj;->a(ZLandroid/content/Context;)I

    move-result v3

    const-string v4, "TbsInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TbsInstaller-enableTbsCoreFromCopy copyStatus ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "TbsInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TbsInstaller-enableTbsCoreFromCopy tbsCoreInstalledVer ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v2, v1, :cond_3

    if-nez v3, :cond_2

    const-string v2, "TbsInstaller"

    const-string v3, "TbsInstaller-enableTbsCoreFromCopy tbsCoreInstalledVer = 0"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/aj;->p(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_1
    :try_start_4
    sget-object v0, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v1

    :cond_1
    :try_start_5
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/aj;->b()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    :try_start_6
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    const/16 v3, 0xd7

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TbsInstaller::enableTbsCoreFromCopy exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    if-eqz p2, :cond_3

    :try_start_8
    const-string v2, "TbsInstaller"

    const-string v3, "TbsInstaller-enableTbsCoreFromCopy tbsCoreInstalledVer != 0"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/aj;->p(Landroid/content/Context;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_9
    sget-object v2, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catch_1
    move-exception v0

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    goto :goto_2

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method private d(Landroid/content/Context;I)Landroid/content/Context;
    .locals 8

    const/4 v1, 0x0

    const-string v0, "TbsInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TbsInstaller--getTbsCoreHostContext tbsCoreTargetVer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz p2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreProviderAppList()[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :goto_1
    array-length v2, v3

    if-ge v0, v2, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    aget-object v2, v3, v0

    invoke-direct {p0, p1, v2}, Lcom/tencent/smtt/sdk/aj;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, v3, v0

    invoke-virtual {p0, p1, v2}, Lcom/tencent/smtt/sdk/aj;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/tencent/smtt/sdk/aj;->c(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v2, "TbsInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TbsInstaller--getTbsCoreHostContext "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " illegal signature go on next"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v2}, Lcom/tencent/smtt/sdk/aj;->d(Landroid/content/Context;)I

    move-result v4

    const-string v5, "TbsInstaller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TbsInstaller-getTbsCoreHostContext hostTbsCoreVer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    if-ne v4, p2, :cond_1

    const-string v1, "TbsInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TbsInstaller-getTbsCoreHostContext targetApp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v0, v3, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized d(Landroid/content/Context;Z)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TbsInstaller-enableTbsCoreFromUnzip canRenameTmpDir ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->m(Landroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_2
    sget-object v2, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v2

    const-string v3, "TbsInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TbsInstaller-enableTbsCoreFromUnzip locked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    :try_start_3
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/ae;->c()I

    move-result v2

    const-string v3, "TbsInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TbsInstaller-enableTbsCoreFromUnzip installStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1}, Lcom/tencent/smtt/sdk/aj;->a(ZLandroid/content/Context;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    if-nez v3, :cond_2

    const-string v2, "TbsInstaller"

    const-string v3, "TbsInstaller-enableTbsCoreFromUnzip tbsCoreInstalledVer = 0"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/aj;->o(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    sget-object v0, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v1

    :cond_1
    :try_start_5
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/aj;->b()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TbsInstaller::enableTbsCoreFromUnzip Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    if-eqz p2, :cond_3

    :try_start_7
    const-string v2, "TbsInstaller"

    const-string v3, "TbsInstaller-enableTbsCoreFromUnzip tbsCoreInstalledVer != 0"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/aj;->o(Landroid/content/Context;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_8
    sget-object v2, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_1
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    goto :goto_2

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method private declared-synchronized e(Landroid/content/Context;Z)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method private f(Landroid/content/Context;Z)V
    .locals 5

    const/16 v4, 0xe1

    if-nez p1, :cond_1

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const-string v1, "setTmpFolderCoreToRead context is null"

    invoke-virtual {v0, v4, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v0, "tbs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "tmp_folder_core_to_read.conf"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTmpFolderCoreToRead Exception message is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception cause is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {v1}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static j(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "tbs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    const-string v3, "core_private"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static n(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    const-string v2, "tbs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string v4, "tmp_folder_core_to_read.conf"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private o(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--generateNewTbsCoreFromUnzip"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/bi;->b()Lcom/tencent/smtt/sdk/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bi;->a()Ljava/nio/channels/FileLock;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/smtt/sdk/bi;->b()Lcom/tencent/smtt/sdk/bi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/bi;->a(Landroid/content/Context;)Ljava/nio/channels/FileLock;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "TbsInstaller"

    const-string v1, "generateNewTbsCoreFromUnzip -- failed to get rename fileLock#2!"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/aj;->q(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/aj;->r(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;)V

    :cond_1
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/ae;->a(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/ae;->b(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/ae;->d(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    const-string v1, "incrupdate_retry_num"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/ae;->a(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/ae;->b(II)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/ae;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/ae;->c(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->f(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->writeCoreInfoForThirdPartyApp(Landroid/content/Context;IZ)V

    :cond_2
    sget-object v0, Lcom/tencent/smtt/sdk/aj;->a:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    const/16 v2, 0xdb

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception when renameing from unzip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--generateNewTbsCoreFromUnzip Exception"

    invoke-static {v0, v1, v5}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method private p(Landroid/content/Context;)V
    .locals 5

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--generateNewTbsCoreFromCopy"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/bi;->b()Lcom/tencent/smtt/sdk/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bi;->a()Ljava/nio/channels/FileLock;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/smtt/sdk/bi;->b()Lcom/tencent/smtt/sdk/bi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/bi;->a(Landroid/content/Context;)Ljava/nio/channels/FileLock;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "TbsInstaller"

    const-string v1, "generateNewTbsCoreFromCopy -- failed to get rename fileLock#2!"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/aj;->q(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/aj;->s(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/ae;->a(II)V

    sget-object v0, Lcom/tencent/smtt/sdk/aj;->a:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    const/16 v2, 0xdb

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception when renameing from copy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private q(Landroid/content/Context;)V
    .locals 2

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--deleteOldCore"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Z)V

    return-void
.end method

.method private r(Landroid/content/Context;)V
    .locals 2

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--renameShareDir"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->k(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/smtt/sdk/aj;->f(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private s(Landroid/content/Context;)V
    .locals 2

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--renameTbsCoreCopyDir"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->l(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/smtt/sdk/aj;->f(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private t(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--clearNewTbsCore"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->k(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Z)V

    :cond_0
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/tencent/smtt/sdk/ae;->b(II)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/ae;->c(I)V

    const-string v0, "TbsInstaller::clearNewTbsCore forceSysWebViewInner!"

    invoke-static {p1, v0}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(ZLandroid/content/Context;)I
    .locals 2

    if-nez p1, :cond_0

    sget-object v0, Lcom/tencent/smtt/sdk/aj;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/tencent/smtt/sdk/aj;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, p2}, Lcom/tencent/smtt/sdk/aj;->d(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    sget-object v0, Lcom/tencent/smtt/sdk/aj;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 1

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v0, Lcom/tencent/smtt/sdk/aj;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "TbsInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TbsInstaller-installTbsCore tbsApkPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TbsInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TbsInstaller-installTbsCore tbsCoreTargetVer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TbsInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TbsInstaller-continueInstallTbsCore currentProcessName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TbsInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TbsInstaller-installTbsCore currentProcessId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TbsInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TbsInstaller-installTbsCore currentThreadName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v3

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v3, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v0, Lcom/tencent/smtt/sdk/aj;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method a(Landroid/content/Context;Z)V
    .locals 12

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iput-boolean v7, p0, Lcom/tencent/smtt/sdk/aj;->j:Z

    :cond_0
    const-string v0, "TbsInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TbsInstaller-continueInstallTbsCore currentProcessName="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TbsInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TbsInstaller-continueInstallTbsCore currentProcessId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TbsInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TbsInstaller-continueInstallTbsCore currentThreadName="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->m(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    sget-object v2, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v2

    if-eqz v2, :cond_8

    :try_start_0
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/ae;->c()I

    move-result v6

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/ae;->b()I

    move-result v5

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    const-string v2, "install_apk_path"

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/ae;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    const-string v2, "copy_core_ver"

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/ae;->c(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v2

    const-string v8, "copy_status"

    invoke-virtual {v2, v8}, Lcom/tencent/smtt/sdk/ae;->b(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    sget-object v8, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/aj;->b()V

    const-string v8, "TbsInstaller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TbsInstaller-continueInstallTbsCore installStatus="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "TbsInstaller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TbsInstaller-continueInstallTbsCore tbsCoreInstallVer="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "TbsInstaller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TbsInstaller-continueInstallTbsCore tbsApkPath="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "TbsInstaller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TbsInstaller-continueInstallTbsCore tbsCoreCopyVer="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "TbsInstaller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TbsInstaller-continueInstallTbsCore copyStatus="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {p1, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;Z)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/smtt/sdk/aj;->b(Landroid/content/Context;I)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v9, "tbs_responsecode"

    invoke-interface {v8, v9, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v7, :cond_4

    if-eq v8, v11, :cond_4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_5

    :cond_4
    move v1, v7

    :cond_5
    if-nez v1, :cond_6

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v7, "operation"

    const/16 v8, 0x2711

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, p1, v1}, Lcom/tencent/smtt/sdk/aj;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    :cond_6
    if-le v6, v3, :cond_7

    if-ge v6, v11, :cond_7

    invoke-virtual {p0, p1, v4, v5}, Lcom/tencent/smtt/sdk/aj;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_7
    if-nez v2, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/smtt/sdk/aj;->a(Landroid/content/Context;I)Z

    goto/16 :goto_0

    :cond_8
    move v2, v3

    move-object v4, v0

    move v5, v1

    move v6, v3

    move v0, v1

    goto/16 :goto_1
.end method

.method a(Landroid/content/Context;I)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TbsInstaller-installLocalTbsCore targetTbsCoreVer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TbsInstaller-continueInstallTbsCore currentProcessName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TbsInstaller-installLocalTbsCore currentProcessId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TbsInstaller-installLocalTbsCore currentThreadName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/aj;->d(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    aput-object p1, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v5, v0, Landroid/os/Message;->what:I

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lcom/tencent/smtt/sdk/aj;->k:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v1

    goto/16 :goto_0

    :cond_1
    const-string v1, "TbsInstaller"

    const-string v2, "TbsInstaller--installLocalTbsCore copy from null"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public declared-synchronized a(Landroid/content/Context;Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--quickDexOptForThirdPartyApp"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/tencent/smtt/sdk/aj;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/tencent/smtt/sdk/aj;->m:Z

    new-instance v0, Lcom/tencent/smtt/sdk/am;

    invoke-direct {v0, p0, p2, p1}, Lcom/tencent/smtt/sdk/am;-><init>(Lcom/tencent/smtt/sdk/aj;Landroid/content/Context;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/am;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/content/Context;[Ljava/io/File;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method b(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    :cond_0
    return v0
.end method

.method b(Landroid/content/Context;Landroid/content/Context;)Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "tbs"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    const-string v3, "core_share"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/smtt/sdk/aj;->d:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tencent/smtt/sdk/aj;->d:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/aj;->g:Z

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "TbsInstaller"

    const-string v1, "releaseTbsInstallingFileLock with skip"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "TbsInstaller"

    const-string v1, "releaseTbsInstallingFileLock without skip"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/aj;->e:Ljava/nio/channels/FileLock;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/aj;->f:Ljava/io/FileOutputStream;

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/nio/channels/FileLock;Ljava/io/FileOutputStream;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/aj;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Landroid/content/Context;I)V
    .locals 3

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-installTbsCoreForThirdPartyApp"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->d(Landroid/content/Context;)I

    move-result v0

    if-eq v0, p2, :cond_0

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v0, "TbsInstaller"

    const-string v2, "TbsInstaller--quickDexOptForThirdPartyApp hostContext != null"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/tencent/smtt/sdk/aj;->a(Landroid/content/Context;Landroid/content/Context;)Z

    goto :goto_0

    :cond_2
    if-gtz v0, :cond_0

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--installTbsCoreForThirdPartyApp hostContext == null"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TbsInstaller::installTbsCoreForThirdPartyApp forceSysWebViewInner #2"

    invoke-static {p1, v0}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method b(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 10

    const/16 v9, 0xd9

    const/16 v8, -0x222

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x21b

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-installLocalTesCoreExInThread"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/tencent/smtt/utils/k;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/tencent/smtt/utils/aa;->a()J

    move-result-wide v0

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadMinFreeSpace()J

    move-result-wide v2

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v4

    const/16 v5, 0xd2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rom is not enough when patching tbs core! curAvailROM="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",minReqRom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x21c

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->m(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x21d

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/tencent/smtt/sdk/aj;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    const-string v1, "TbsInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TbsInstaller-installLocalTesCoreExInThread locked="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/tencent/smtt/sdk/QbSdk;->setTBSInstallingStatus(Z)V

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->d(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/ae;->d()I

    move-result v0

    if-ne v0, v3, :cond_5

    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/QbSdk;->setTBSInstallingStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/tencent/smtt/sdk/aj;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/aj;->b()V

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-installLocalTesCoreExInThread PATCH_NONEEDPATCH"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {v5}, Lcom/tencent/smtt/sdk/QbSdk;->setTBSInstallingStatus(Z)V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tbs_responsecode"

    const/4 v6, 0x0

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_6

    const/4 v4, 0x4

    if-ne v0, v4, :cond_7

    :cond_6
    move v0, v3

    :goto_2
    if-nez v0, :cond_f

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    const-string v4, "incrupdate_retry_num"

    invoke-virtual {v0, v4}, Lcom/tencent/smtt/sdk/ae;->c(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x5

    if-le v0, v4, :cond_8

    const-string v0, "TbsInstaller"

    const-string v4, "TbsInstaller-installLocalTesCoreExInThread exceed incrupdate num"

    invoke-static {v0, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "old_apk_location"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "new_apk_location"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "diff_file_location"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v4, "tbs_needdownload"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v4, 0xe0

    const-string v6, "incrUpdate exceed retry max num"

    invoke-virtual {v0, v4, v6}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lcom/tencent/smtt/sdk/aj;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/aj;->b()V

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-installLocalTesCoreExInThread PATCH_NONEEDPATCH"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    move v0, v5

    goto :goto_2

    :cond_8
    :try_start_2
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v4

    const-string v6, "incrupdate_retry_num"

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v6, v0}, Lcom/tencent/smtt/sdk/ae;->a(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/aj;->j(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_f

    new-instance v4, Ljava/io/File;

    const-string v6, "x5.tbs"

    invoke-direct {v4, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v4, -0x226

    invoke-virtual {v0, v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static {p1, p2}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    if-nez v1, :cond_9

    move v0, v3

    :goto_3
    sget-object v4, Lcom/tencent/smtt/sdk/aj;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/aj;->b()V

    if-nez v0, :cond_d

    const-string v0, "TbsInstaller"

    const-string v2, "TbsInstaller-installLocalTesCoreExInThread PATCH_SUCCESS"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    const-string v2, "incrupdate_retry_num"

    invoke-virtual {v0, v2, v5}, Lcom/tencent/smtt/sdk/ae;->a(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x220

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v5, v2}, Lcom/tencent/smtt/sdk/ae;->b(II)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/ae;->c(I)V

    const-string v0, "apk_path"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p1}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/File;Landroid/content/Context;)V

    const-string v2, "tbs_core_ver"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/smtt/sdk/aj;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_9
    :try_start_3
    const-string v0, "patch_result"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    const/16 v6, -0x21f

    invoke-virtual {v4, v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v4

    const/16 v6, 0xda

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    sget-object v0, Lcom/tencent/smtt/sdk/aj;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/aj;->b()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-installLocalTesCoreExInThread PATCH_FAIL"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v1, "tbs_needdownload"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incrUpdate fail! patch ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v4, v1

    move v1, v2

    :goto_4
    sget-object v6, Lcom/tencent/smtt/sdk/aj;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/aj;->b()V

    if-nez v1, :cond_b

    const-string v1, "TbsInstaller"

    const-string v2, "TbsInstaller-installLocalTesCoreExInThread PATCH_SUCCESS"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v1

    const-string v2, "incrupdate_retry_num"

    invoke-virtual {v1, v2, v5}, Lcom/tencent/smtt/sdk/ae;->a(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    const/16 v2, -0x220

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v5, v2}, Lcom/tencent/smtt/sdk/ae;->b(II)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/tencent/smtt/sdk/ae;->c(I)V

    const-string v1, "apk_path"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p1}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/File;Landroid/content/Context;)V

    const-string v2, "tbs_core_ver"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/tencent/smtt/sdk/aj;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_5
    invoke-static {v5}, Lcom/tencent/smtt/sdk/QbSdk;->setTBSInstallingStatus(Z)V

    throw v0

    :cond_a
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x223

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/aj;->b()V

    goto/16 :goto_0

    :cond_b
    if-ne v1, v2, :cond_c

    const-string v1, "TbsInstaller"

    const-string v2, "TbsInstaller-installLocalTesCoreExInThread PATCH_NONEEDPATCH"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    const-string v2, "TbsInstaller"

    const-string v4, "TbsInstaller-installLocalTesCoreExInThread PATCH_FAIL"

    invoke-static {v2, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v4, "tbs_needdownload"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "incrUpdate fail! patch ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v9, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    goto :goto_5

    :cond_d
    if-ne v0, v2, :cond_e

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-installLocalTesCoreExInThread PATCH_NONEEDPATCH"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    const-string v1, "TbsInstaller"

    const-string v2, "TbsInstaller-installLocalTesCoreExInThread PATCH_FAIL"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v2, "tbs_needdownload"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incrUpdate fail! patch ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object v4, v1

    move v1, v2

    goto/16 :goto_4

    :catchall_2
    move-exception v0

    move-object v4, v1

    move v1, v3

    goto/16 :goto_4

    :cond_f
    move v0, v2

    goto/16 :goto_3
.end method

.method b(Landroid/content/Context;Z)V
    .locals 3

    const/4 v2, 0x1

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    const-string v0, "TbsInstaller"

    const-string v1, "android version < 2.1 no need install X5 core"

    invoke-static {v0, v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/tencent/smtt/sdk/aj;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "core_unzip_tmp"

    invoke-static {p1, v0}, Lcom/tencent/smtt/sdk/aj;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_3
    const-string v0, "core_share_backup_tmp"

    invoke-static {p1, v0}, Lcom/tencent/smtt/sdk/aj;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_4
    const-string v0, "core_copy_tmp"

    invoke-static {p1, v0}, Lcom/tencent/smtt/sdk/aj;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_5
    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-installTbsCoreIfNeeded, error !!"

    invoke-static {v0, v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/aj;->d(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-installTbsCoreIfNeeded, enableTbsCoreFromUnzip!!"

    invoke-static {v0, v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/aj;->e(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-installTbsCoreIfNeeded, enableTbsCoreFromBackup!!"

    invoke-static {v0, v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/aj;->c(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-installTbsCoreIfNeeded, enableTbsCoreFromCopy!!"

    invoke-static {v0, v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method b(Landroid/content/Context;)Z
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    const-string v4, "tbs.conf"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0

    :cond_2
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    const/4 v4, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v5, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v4, "tbs_local_installation"

    const-string v6, "false"

    invoke-virtual {v5, v4, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-eqz v4, :cond_6

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xf731400

    cmp-long v0, v6, v8

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    const-string v5, "TbsInstaller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TBS_LOCAL_INSTALLATION is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expired="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_4

    :goto_2
    and-int v0, v4, v1

    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v2

    move-object v2, v4

    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v4

    :goto_4
    if-eqz v3, :cond_5

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    :goto_5
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v1, v0

    move v0, v2

    move-object v2, v3

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    move v0, v4

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method c(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.mtt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3082023f308201a8a00302010202044c46914a300d06092a864886f70d01010505003064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f301e170d3130303732313036313835305a170d3430303731333036313835305a3064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f30819f300d06092a864886f70d010101050003818d0030818902818100c209077044bd0d63ea00ede5b839914cabcc912a87f0f8b390877e0f7a2583f0d5933443c40431c35a4433bc4c965800141961adc44c9625b1d321385221fd097e5bdc2f44a1840d643ab59dc070cf6c4b4b4d98bed5cbb8046e0a7078ae134da107cdf2bfc9b440fe5cb2f7549b44b73202cc6f7c2c55b8cfb0d333a021f01f0203010001300d06092a864886f70d010105050003818100b007db9922774ef4ccfee81ba514a8d57c410257e7a2eba64bfa17c9e690da08106d32f637ac41fbc9f205176c71bde238c872c3ee2f8313502bee44c80288ea4ef377a6f2cdfe4d3653c145c4acfedbfbadea23b559d41980cc3cdd35d79a68240693739aabf5c5ed26148756cf88264226de394c8a24ac35b712b120d4d23a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.mm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "308202eb30820254a00302010202044d36f7a4300d06092a864886f70d01010505003081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e74301e170d3131303131393134333933325a170d3431303131313134333933325a3081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e7430819f300d06092a864886f70d010101050003818d0030818902818100c05f34b231b083fb1323670bfbe7bdab40c0c0a6efc87ef2072a1ff0d60cc67c8edb0d0847f210bea6cbfaa241be70c86daf56be08b723c859e52428a064555d80db448cdcacc1aea2501eba06f8bad12a4fa49d85cacd7abeb68945a5cb5e061629b52e3254c373550ee4e40cb7c8ae6f7a8151ccd8df582d446f39ae0c5e930203010001300d06092a864886f70d0101050500038181009c8d9d7f2f908c42081b4c764c377109a8b2c70582422125ce545842d5f520aea69550b6bd8bfd94e987b75a3077eb04ad341f481aac266e89d3864456e69fba13df018acdc168b9a19dfd7ad9d9cc6f6ace57c746515f71234df3a053e33ba93ece5cd0fc15f3e389a3f365588a9fcb439e069d3629cd7732a13fff7b891499"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.mobileqq"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "30820253308201bca00302010202044bbb0361300d06092a864886f70d0101050500306d310e300c060355040613054368696e61310f300d06035504080c06e58c97e4baac310f300d06035504070c06e58c97e4baac310f300d060355040a0c06e885bee8aeaf311b3019060355040b0c12e697a0e7babfe4b89ae58aa1e7b3bbe7bb9f310b30090603550403130251513020170d3130303430363039343831375a180f32323834303132303039343831375a306d310e300c060355040613054368696e61310f300d06035504080c06e58c97e4baac310f300d06035504070c06e58c97e4baac310f300d060355040a0c06e885bee8aeaf311b3019060355040b0c12e697a0e7babfe4b89ae58aa1e7b3bbe7bb9f310b300906035504031302515130819f300d06092a864886f70d010101050003818d0030818902818100a15e9756216f694c5915e0b529095254367c4e64faeff07ae13488d946615a58ddc31a415f717d019edc6d30b9603d3e2a7b3de0ab7e0cf52dfee39373bc472fa997027d798d59f81d525a69ecf156e885fd1e2790924386b2230cc90e3b7adc95603ddcf4c40bdc72f22db0f216a99c371d3bf89cba6578c60699e8a0d536950203010001300d06092a864886f70d01010505000381810094a9b80e80691645dd42d6611775a855f71bcd4d77cb60a8e29404035a5e00b21bcc5d4a562482126bd91b6b0e50709377ceb9ef8c2efd12cc8b16afd9a159f350bb270b14204ff065d843832720702e28b41491fbc3a205f5f2f42526d67f17614d8a974de6487b2c866efede3b4e49a0f916baa3c1336fd2ee1b1629652049"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.tbs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3082023f308201a8a00302010202044c46914a300d06092a864886f70d01010505003064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f301e170d3130303732313036313835305a170d3430303731333036313835305a3064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f30819f300d06092a864886f70d010101050003818d0030818902818100c209077044bd0d63ea00ede5b839914cabcc912a87f0f8b390877e0f7a2583f0d5933443c40431c35a4433bc4c965800141961adc44c9625b1d321385221fd097e5bdc2f44a1840d643ab59dc070cf6c4b4b4d98bed5cbb8046e0a7078ae134da107cdf2bfc9b440fe5cb2f7549b44b73202cc6f7c2c55b8cfb0d333a021f01f0203010001300d06092a864886f70d010105050003818100b007db9922774ef4ccfee81ba514a8d57c410257e7a2eba64bfa17c9e690da08106d32f637ac41fbc9f205176c71bde238c872c3ee2f8313502bee44c80288ea4ef377a6f2cdfe4d3653c145c4acfedbfbadea23b559d41980cc3cdd35d79a68240693739aabf5c5ed26148756cf88264226de394c8a24ac35b712b120d4d23a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.qzone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "308202ad30820216a00302010202044c26cea2300d06092a864886f70d010105050030819a310b3009060355040613023836311530130603550408130c4265696a696e672043697479311530130603550407130c4265696a696e67204369747931263024060355040a131d515a6f6e65205465616d206f662054656e63656e7420436f6d70616e7931183016060355040b130f54656e63656e7420436f6d70616e79311b301906035504031312416e64726f696420515a6f6e65205465616d301e170d3130303632373034303830325a170d3335303632313034303830325a30819a310b3009060355040613023836311530130603550408130c4265696a696e672043697479311530130603550407130c4265696a696e67204369747931263024060355040a131d515a6f6e65205465616d206f662054656e63656e7420436f6d70616e7931183016060355040b130f54656e63656e7420436f6d70616e79311b301906035504031312416e64726f696420515a6f6e65205465616d30819f300d06092a864886f70d010101050003818d003081890281810082d6aca037a9843fbbe88b6dd19f36e9c24ce174c1b398f3a529e2a7fe02de99c27539602c026edf96ad8d43df32a85458bca1e6fbf11958658a7d6751a1d9b782bf43a8c19bd1c06bdbfd94c0516326ae3cf638ac42bb470580e340c46e6f306a772c1ef98f10a559edf867f3f31fe492808776b7bd953b2cba2d2b2d66a44f0203010001300d06092a864886f70d0101050500038181006003b04a8a8c5be9650f350cda6896e57dd13e6e83e7f891fc70f6a3c2eaf75cfa4fc998365deabbd1b9092159edf4b90df5702a0d101f8840b5d4586eb92a1c3cd19d95fbc1c2ac956309eda8eef3944baf08c4a49d3b9b3ffb06bc13dab94ecb5b8eb74e8789aa0ba21cb567f538bbc59c2a11e6919924a24272eb79251677"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.qqpimsecure"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "30820239308201a2a00302010202044c96f48f300d06092a864886f70d01010505003060310b300906035504061302434e310b300906035504081302474431123010060355040713094775616e677a686f753110300e060355040a130754656e63656e74310b3009060355040b130233473111300f0603550403130857696c736f6e57753020170d3130303932303035343334335a180f32303635303632333035343334335a3060310b300906035504061302434e310b300906035504081302474431123010060355040713094775616e677a686f753110300e060355040a130754656e63656e74310b3009060355040b130233473111300f0603550403130857696c736f6e577530819f300d06092a864886f70d010101050003818d0030818902818100b56e79dbb1185a79e52d792bb3d0bb3da8010d9b87da92ec69f7dc5ad66ab6bfdff2a6a1ed285dd2358f28b72a468be7c10a2ce30c4c27323ed4edcc936080e5bedc2cbbca0b7e879c08a631182793f44bb3ea284179b263410c298e5f6831032c9702ba4a74e2ccfc9ef857f12201451602fc8e774ac59d6398511586c83d1d0203010001300d06092a864886f70d0101050500038181002475615bb65b8d8786b890535802948840387d06b1692ff3ea47ef4c435719ba1865b81e6bfa6293ce31747c3cd6b34595b485cc1563fd90107ba5845c28b95c79138f0dec288940395bc10f92f2b69d8dc410999deb38900974ce9984b678030edfba8816582f56160d87e38641288d8588d2a31e20b89f223d788dd35cc9c8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "TbsInstaller"

    const-string v2, "TbsInstaller-installLocalTbsCore getPackageInfo fail"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method d(Landroid/content/Context;)I
    .locals 6

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v4, "tbs.conf"

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_2
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    const-string v3, "tbs_core_version"

    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    if-nez v1, :cond_3

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TbsInstaller--getTbsCoreInstalledVerInNolock IOException="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v2, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_5
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v0

    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TbsInstaller--getTbsCoreInstalledVerInNolock IOException="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v2, v3

    :goto_2
    :try_start_7
    const-string v3, "TbsInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TbsInstaller--getTbsCoreInstalledVerInNolock Exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_1

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v1

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TbsInstaller--getTbsCoreInstalledVerInNolock IOException="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_4

    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :cond_4
    :goto_4
    throw v0

    :catch_4
    move-exception v1

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TbsInstaller--getTbsCoreInstalledVerInNolock IOException="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_5
    move-exception v1

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TbsInstaller--getTbsCoreInstalledVerInNolock IOException="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v1

    goto/16 :goto_2
.end method

.method e(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "tbs.conf"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method f(Landroid/content/Context;)I
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->m(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TbsInstaller--getTbsCoreInstalledVer locked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_9

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    const-string v4, "tbs.conf"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    if-eqz v3, :cond_2

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_2
    :goto_1
    sget-object v0, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/aj;->b()V

    move v0, v1

    goto :goto_0

    :cond_3
    :try_start_2
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    const-string v3, "tbs_core_version"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    if-nez v0, :cond_5

    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_2
    sget-object v0, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/aj;->b()V

    move v0, v1

    goto :goto_0

    :cond_5
    :try_start_5
    sget-object v3, Lcom/tencent/smtt/sdk/aj;->a:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v0, Lcom/tencent/smtt/sdk/aj;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v0

    if-eqz v2, :cond_6

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_6
    :goto_3
    sget-object v1, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/aj;->b()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_4
    :try_start_7
    const-string v3, "TbsInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TbsInstaller--getTbsCoreInstalledVer Exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_7

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_7
    :goto_5
    sget-object v0, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/aj;->b()V

    move v0, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_6
    if-eqz v2, :cond_8

    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_8
    :goto_7
    sget-object v1, Lcom/tencent/smtt/sdk/aj;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/aj;->b()V

    throw v0

    :cond_9
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/aj;->b()V

    move v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TbsInstaller--getTbsCoreInstalledVer IOException="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_2
    move-exception v0

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TbsInstaller--getTbsCoreInstalledVer IOException="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_3
    move-exception v0

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TbsInstaller--getTbsCoreInstalledVer IOException="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_4
    move-exception v0

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TbsInstaller--getTbsCoreInstalledVer IOException="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_5
    move-exception v1

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TbsInstaller--getTbsCoreInstalledVer IOException="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    goto/16 :goto_6

    :catch_6
    move-exception v0

    goto/16 :goto_4
.end method

.method g(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--cleanStatusAndTmpDir"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/ae;->a(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/ae;->b(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/ae;->d(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    const-string v1, "incrupdate_retry_num"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/ae;->a(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/tencent/smtt/sdk/ae;->b(II)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/ae;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    const-string v1, "copy_retry_num"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/ae;->a(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/tencent/smtt/sdk/ae;->a(II)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/ae;->c(I)V

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->k(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Z)V

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/aj;->l(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Z)V

    return-void
.end method

.method h(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/tencent/smtt/sdk/aj;->b(Landroid/content/Context;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method i(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "tbs"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    const-string v3, "share"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method k(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "tbs"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    const-string v3, "core_unzip_tmp"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method l(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "tbs"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    const-string v3, "core_copy_tmp"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method declared-synchronized m(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/tencent/smtt/sdk/aj;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/smtt/sdk/aj;->d:I

    iget-boolean v2, p0, Lcom/tencent/smtt/sdk/aj;->g:Z

    if-eqz v2, :cond_0

    const-string v1, "TbsInstaller"

    const-string v2, "getTbsInstallingFileLock success,is cached= true"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v2, 0x1

    :try_start_1
    const-string v3, "tbslock.txt"

    invoke-static {p1, v2, v3}, Lcom/tencent/smtt/utils/k;->b(Landroid/content/Context;ZLjava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/smtt/sdk/aj;->f:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/aj;->f:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/aj;->f:Ljava/io/FileOutputStream;

    invoke-static {p1, v2}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;Ljava/io/FileOutputStream;)Ljava/nio/channels/FileLock;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/smtt/sdk/aj;->e:Ljava/nio/channels/FileLock;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/aj;->e:Ljava/nio/channels/FileLock;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const-string v1, "TbsInstaller"

    const-string v2, "getTbsInstallingFileLock success,is cached= false"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/aj;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
