.class Lcom/tencent/smtt/sdk/bi;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/smtt/sdk/bi;

.field private static e:Ljava/nio/channels/FileLock;


# instance fields
.field private b:Lcom/tencent/smtt/sdk/bj;

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/smtt/sdk/bi;->e:Ljava/nio/channels/FileLock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/tencent/smtt/sdk/bi;
    .locals 2

    sget-object v0, Lcom/tencent/smtt/sdk/bi;->a:Lcom/tencent/smtt/sdk/bi;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/smtt/sdk/bi;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/smtt/sdk/bi;->a:Lcom/tencent/smtt/sdk/bi;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/smtt/sdk/bi;

    invoke-direct {v0}, Lcom/tencent/smtt/sdk/bi;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/bi;->a:Lcom/tencent/smtt/sdk/bi;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/smtt/sdk/bi;->a:Lcom/tencent/smtt/sdk/bi;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Z)Lcom/tencent/smtt/sdk/bj;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bi;->b:Lcom/tencent/smtt/sdk/bj;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/bi;->d()Lcom/tencent/smtt/sdk/bj;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Ljava/nio/channels/FileLock;
    .locals 1

    sget-object v0, Lcom/tencent/smtt/sdk/bi;->e:Ljava/nio/channels/FileLock;

    return-object v0
.end method

.method public declared-synchronized a(Landroid/content/Context;)Ljava/nio/channels/FileLock;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/tencent/smtt/sdk/bi;->e:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/smtt/sdk/bi;->e:Ljava/nio/channels/FileLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    const-string v1, "tbs_rename_lock.txt"

    invoke-static {p1, v0, v1}, Lcom/tencent/smtt/utils/k;->b(Landroid/content/Context;ZLjava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    sget-object v0, Lcom/tencent/smtt/sdk/bi;->e:Ljava/nio/channels/FileLock;

    goto :goto_0

    :cond_2
    invoke-static {p1, v0}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;Ljava/io/FileOutputStream;)Ljava/nio/channels/FileLock;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/bi;->e:Ljava/nio/channels/FileLock;

    sget-object v0, Lcom/tencent/smtt/sdk/bi;->e:Ljava/nio/channels/FileLock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/content/Context;Lcom/tencent/smtt/sdk/ai;)V
    .locals 7

    const/4 v2, 0x0

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    const-string v1, "x5_core_engine_init_sync"

    const/4 v3, 0x2

    invoke-virtual {p2, v1, v3}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;B)V

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/smtt/sdk/l;->a(Z)Lcom/tencent/smtt/sdk/l;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v1, v4, p2}, Lcom/tencent/smtt/sdk/l;->a(Landroid/content/Context;ZZLcom/tencent/smtt/sdk/ai;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_1

    const-string v1, "init_x5_core"

    const/4 v5, 0x1

    invoke-virtual {p2, v1, v5}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;B)V

    :cond_1
    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/l;->b()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/bi;->d:Z

    if-nez v1, :cond_b

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p2, Lcom/tencent/smtt/sdk/ai;->a:Z

    :cond_2
    new-instance v1, Lcom/tencent/smtt/sdk/bj;

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/ay;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/ay;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/tencent/smtt/sdk/bj;-><init>(Lcom/tencent/smtt/export/external/DexLoader;)V

    iput-object v1, p0, Lcom/tencent/smtt/sdk/bi;->b:Lcom/tencent/smtt/sdk/bj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/tencent/smtt/sdk/bi;->b:Lcom/tencent/smtt/sdk/bj;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/bj;->a()Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/bi;->c:Z

    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/bi;->c:Z

    if-nez v1, :cond_3

    const-string v1, "can not use X5 by x5corewizard return false"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    move-object v1, v2

    :goto_0
    :try_start_2
    iget-boolean v5, p0, Lcom/tencent/smtt/sdk/bi;->c:Z

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/CookieManager;->a()V

    :cond_4
    :goto_1
    iget-boolean v5, p0, Lcom/tencent/smtt/sdk/bi;->c:Z

    if-nez v5, :cond_f

    const-string v5, "X5CoreEngine"

    const-string v6, "mCanUseX5 is false --> report"

    invoke-static {v5, v6}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/l;->b()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-eqz v5, :cond_d

    if-nez v1, :cond_d

    :try_start_3
    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/ay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/ay;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "com.tencent.tbs.tbsshell.TBSShell"

    const-string v3, "getLoadFailureDetails"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_5
    instance-of v1, v2, Ljava/lang/Throwable;

    if-eqz v1, :cond_6

    move-object v0, v2

    check-cast v0, Ljava/lang/Throwable;

    move-object v1, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; cause: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; th: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failure detail:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    :goto_2
    if-eqz v4, :cond_c

    :try_start_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isPreloadX5Disabled:-10000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    const/16 v2, 0x198

    new-instance v3, Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "X5CoreEngine::init, mCanUseX5=false, available true, details: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    :cond_8
    :goto_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/bi;->d:Z

    if-eqz p2, :cond_9

    const-string v1, "init_x5_core"

    const/4 v2, 0x2

    invoke-virtual {p2, v1, v2}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    const/4 v1, 0x1

    :try_start_5
    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/bi;->c:Z

    move-object v1, v2

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/tencent/smtt/sdk/bi;->c:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can not use x5 by throwable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_a
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/bi;->c:Z

    const-string v1, "can not use X5 by !tbs available"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    move-object v1, v2

    goto/16 :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_c
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    const/16 v2, 0x197

    new-instance v3, Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "X5CoreEngine::init, mCanUseX5=false, available true, details: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    goto :goto_3

    :cond_d
    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/l;->b()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v2

    const/16 v3, 0x199

    new-instance v4, Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCanUseX5=false, available true, reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3, v4}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_e
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v2

    const/16 v3, 0x19a

    new-instance v4, Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCanUseX5=false, available false, reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3, v4}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_f
    sget-object v1, Lcom/tencent/smtt/sdk/bi;->e:Ljava/nio/channels/FileLock;

    if-nez v1, :cond_8

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/bi;->a(Landroid/content/Context;)Ljava/nio/channels/FileLock;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3
.end method

.method public c()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/bi;->c:Z

    goto :goto_0
.end method

.method public d()Lcom/tencent/smtt/sdk/bj;
    .locals 1

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/bi;->b:Lcom/tencent/smtt/sdk/bj;

    goto :goto_0
.end method

.method e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/bi;->d:Z

    return v0
.end method
