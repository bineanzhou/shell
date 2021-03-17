.class Lcom/tencent/smtt/sdk/l;
.super Ljava/lang/Object;


# static fields
.field static a:Z

.field private static c:Lcom/tencent/smtt/sdk/l;

.field private static f:I

.field private static g:I

.field private static h:I

.field private static j:Ljava/lang/String;


# instance fields
.field private b:Lcom/tencent/smtt/sdk/ay;

.field private d:Z

.field private e:Z

.field private i:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v1, Lcom/tencent/smtt/sdk/l;->c:Lcom/tencent/smtt/sdk/l;

    sput v0, Lcom/tencent/smtt/sdk/l;->f:I

    sput v0, Lcom/tencent/smtt/sdk/l;->g:I

    sput-boolean v0, Lcom/tencent/smtt/sdk/l;->a:Z

    const/4 v0, 0x3

    sput v0, Lcom/tencent/smtt/sdk/l;->h:I

    sput-object v1, Lcom/tencent/smtt/sdk/l;->j:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/smtt/sdk/l;->b:Lcom/tencent/smtt/sdk/ay;

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/l;->d:Z

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/l;->e:Z

    iput-object v1, p0, Lcom/tencent/smtt/sdk/l;->i:Ljava/io/File;

    return-void
.end method

.method public static a(Z)Lcom/tencent/smtt/sdk/l;
    .locals 2

    sget-object v0, Lcom/tencent/smtt/sdk/l;->c:Lcom/tencent/smtt/sdk/l;

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    const-class v1, Lcom/tencent/smtt/sdk/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/smtt/sdk/l;->c:Lcom/tencent/smtt/sdk/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/smtt/sdk/l;

    invoke-direct {v0}, Lcom/tencent/smtt/sdk/l;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/l;->c:Lcom/tencent/smtt/sdk/l;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/smtt/sdk/l;->c:Lcom/tencent/smtt/sdk/l;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static a(I)V
    .locals 0

    sput p0, Lcom/tencent/smtt/sdk/l;->f:I

    return-void
.end method

.method private b(I)V
    .locals 5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    sget-object v2, Lcom/tencent/smtt/sdk/l;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/l;->i:Ljava/io/File;

    const-string v4, "count.prop"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static d()I
    .locals 1

    sget v0, Lcom/tencent/smtt/sdk/l;->f:I

    return v0
.end method

.method private i()I
    .locals 5

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/l;->i:Ljava/io/File;

    const-string v4, "count.prop"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    sget-object v3, Lcom/tencent/smtt/sdk/l;->j:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v2, v3

    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_2
    :goto_3
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a()Lcom/tencent/smtt/sdk/ay;
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/l;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->b:Lcom/tencent/smtt/sdk/ay;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized a(Landroid/content/Context;ZZLcom/tencent/smtt/sdk/ai;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    const/16 v1, 0x3e7

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->addLog(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/tencent/smtt/utils/TbsLog;->initIfNeed(Landroid/content/Context;)V

    sget v1, Lcom/tencent/smtt/sdk/l;->g:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/tencent/smtt/sdk/l;->g:I

    if-eqz p4, :cond_0

    sget v1, Lcom/tencent/smtt/sdk/l;->g:I

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_0
    iput-boolean v1, p4, Lcom/tencent/smtt/sdk/ai;->b:Z

    :cond_0
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a()V

    if-eqz p4, :cond_1

    const-string v1, "tbs_rename_task"

    const/4 v3, 0x1

    invoke-virtual {p4, v1, v3}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;B)V

    :cond_1
    invoke-static {}, Lcom/tencent/smtt/sdk/aj;->a()Lcom/tencent/smtt/sdk/aj;

    move-result-object v3

    sget v1, Lcom/tencent/smtt/sdk/l;->g:I

    if-ne v1, v2, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {v3, p1, v1}, Lcom/tencent/smtt/sdk/aj;->b(Landroid/content/Context;Z)V

    if-eqz p4, :cond_2

    const-string v1, "tbs_rename_task"

    const/4 v3, 0x2

    invoke-virtual {p4, v1, v3}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;B)V

    :cond_2
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->forceToLoadX5ForThirdApp(Landroid/content/Context;Z)V

    if-eqz p4, :cond_3

    const-string v1, "can_load_x5"

    const/4 v3, 0x1

    invoke-virtual {p4, v1, v3}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;B)V

    :cond_3
    invoke-static {p1, p2, p3}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;ZZ)Z

    move-result v4

    if-eqz p4, :cond_4

    const-string v1, "can_load_x5"

    const/4 v3, 0x2

    invoke-virtual {p4, v1, v3}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;B)V

    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x7

    if-lt v1, v3, :cond_7

    move v3, v2

    :goto_2
    if-eqz v4, :cond_8

    if-eqz v3, :cond_8

    move v1, v2

    :goto_3
    if-eqz v1, :cond_16

    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/l;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_9

    :goto_4
    monitor-exit p0

    return-void

    :cond_5
    move v1, v0

    goto :goto_0

    :cond_6
    move v1, v0

    goto :goto_1

    :cond_7
    move v3, v0

    goto :goto_2

    :cond_8
    move v1, v0

    goto :goto_3

    :cond_9
    :try_start_1
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v1, 0x3e3

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->addLog(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p4, :cond_a

    const-string v1, "read_core_info"

    const/4 v2, 0x1

    invoke-virtual {p4, v1, v2}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;B)V

    :cond_a
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz p4, :cond_b

    const-string v2, "read_core_info"

    const/4 v3, 0x2

    invoke-virtual {p4, v2, v3}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;B)V

    :cond_b
    if-eqz v1, :cond_d

    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/aj;->a()Lcom/tencent/smtt/sdk/aj;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/smtt/sdk/aj;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    if-nez v1, :cond_13

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/l;->d:Z

    const-string v0, "SDKEngine::useSystemWebView by error_tbs_core_dexopt_dir null!"

    invoke-static {p1, v0}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "SDKEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "useSystemWebView by exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_15

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    const/16 v2, 0x146

    invoke-virtual {v1, p1, v2}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;I)V

    :goto_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/l;->d:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDKEngine::useSystemWebView by exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_c
    :goto_6
    invoke-static {p1}, Lcom/tencent/smtt/sdk/aj;->j(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/l;->i:Ljava/io/File;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/l;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_d
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/l;->d:Z

    const-string v0, "SDKEngine::useSystemWebView by error_host_unavailable"

    invoke-static {p1, v0}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_e
    const/16 v1, 0x3e4

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->addLog(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/aj;->a()Lcom/tencent/smtt/sdk/aj;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/smtt/sdk/aj;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    sget v3, Lcom/tencent/smtt/sdk/l;->f:I

    const/16 v4, 0x635c

    if-eq v3, v4, :cond_f

    sget v3, Lcom/tencent/smtt/sdk/l;->f:I

    const/16 v4, 0x635d

    if-ne v3, v4, :cond_10

    :cond_f
    :goto_7
    if-eqz v2, :cond_11

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    :goto_8
    if-nez v1, :cond_12

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/l;->d:Z

    const-string v0, "SDKEngine::useSystemWebView by tbs_core_share_dir null!"

    invoke-static {p1, v0}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_10
    move v2, v0

    goto :goto_7

    :cond_11
    move-object v2, p1

    goto :goto_8

    :cond_12
    move-object v3, v1

    :cond_13
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v2, v4}, Lcom/tencent/smtt/sdk/QbSdk;->getDexLoaderFileList(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    :goto_9
    array-length v4, v5

    if-ge v0, v4, :cond_14

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_14
    new-instance v0, Lcom/tencent/smtt/sdk/ay;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/tencent/smtt/sdk/QbSdk;->d:Ljava/lang/String;

    move-object v1, p1

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/tencent/smtt/sdk/ay;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/sdk/ai;)V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/l;->b:Lcom/tencent/smtt/sdk/ay;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/l;->d:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :cond_15
    :try_start_4
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    const/16 v2, 0x147

    invoke-virtual {v1, p1, v2, v0}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can_load_x5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; is_compatible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDKEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDKEngine.init canLoadTbs=false; failure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/l;->d:Z

    if-nez v1, :cond_c

    :cond_17
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/l;->d:Z

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    const/16 v2, 0x195

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/tencent/smtt/sdk/l;->j:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/l;->d:Z

    return v0
.end method

.method b(Z)Z
    .locals 0

    sput-boolean p1, Lcom/tencent/smtt/sdk/l;->a:Z

    return p1
.end method

.method c()Lcom/tencent/smtt/sdk/ay;
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->b:Lcom/tencent/smtt/sdk/ay;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->b:Lcom/tencent/smtt/sdk/ay;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "system webview get nothing..."

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->b:Lcom/tencent/smtt/sdk/ay;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/ay;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method f()Z
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/tencent/smtt/sdk/l;->a:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/tencent/smtt/sdk/l;->j:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/l;->i()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/l;->b(I)V

    :cond_2
    :goto_1
    sget-boolean v0, Lcom/tencent/smtt/sdk/l;->a:Z

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v1, 0x1

    sget v3, Lcom/tencent/smtt/sdk/l;->h:I

    if-gt v2, v3, :cond_0

    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/l;->b(I)V

    goto :goto_1
.end method

.method g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/l;->e:Z

    return v0
.end method

.method public h()Z
    .locals 1

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->useSoftWare()Z

    move-result v0

    return v0
.end method
