.class Lcom/tencent/smtt/sdk/ay;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:Lcom/tencent/smtt/export/external/DexLoader;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/sdk/ai;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ay;->a:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ay;->b:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ay;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ay;->d:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ay;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v0, "TbsDexOpt"

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ay;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ay;->g:Ljava/lang/String;

    const-string v0, "TbsWizard"

    const-string v1, "construction start..."

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p5, :cond_0

    array-length v0, p5

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TbsWizard paramter error:-1callerContext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hostcontext"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isEmpty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dexfileList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ay;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/ay;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/smtt/sdk/ay;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/smtt/sdk/ay;->d:[Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/smtt/sdk/ay;->f:Ljava/lang/String;

    if-eqz p7, :cond_2

    const-string v0, "load_tbs_dex"

    const/4 v1, 0x1

    invoke-virtual {p7, v0, v1}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;B)V

    :cond_2
    new-instance v0, Lcom/tencent/smtt/export/external/DexLoader;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/ay;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/ay;->d:[Ljava/lang/String;

    sget-object v5, Lcom/tencent/smtt/sdk/QbSdk;->k:Ljava/util/Map;

    move-object v1, p6

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexLoader;-><init>(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ay;->e:Lcom/tencent/smtt/export/external/DexLoader;

    if-eqz p7, :cond_3

    const-string v0, "load_tbs_dex"

    const/4 v1, 0x2

    invoke-virtual {p7, v0, v1}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;B)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ay;->c:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/tencent/smtt/export/external/libwebp;->loadWepLibraryIfNeed(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "com.nd.android.pandahome2"

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ay;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ay;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v1, "com.tencent.tbs.common.beacon.X5CoreBeaconUploader"

    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tencent/smtt/sdk/ay;->a:Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->k:Ljava/util/Map;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ay;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v1, "com.tencent.tbs.tbsshell.TBSShell"

    const-string v2, "initTbsSettings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/util/Map;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/tencent/smtt/sdk/QbSdk;->k:Ljava/util/Map;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz p7, :cond_6

    const-string v0, "init_tbs"

    const/4 v1, 0x1

    invoke-virtual {p7, v0, v1}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;B)V

    :cond_6
    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/ay;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz p7, :cond_7

    const-string v1, "init_tbs"

    const/4 v2, 0x2

    invoke-virtual {p7, v1, v2}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;B)V

    :cond_7
    if-gez v0, :cond_8

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TbsWizard init error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; msg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/smtt/sdk/ay;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    const-string v0, "TbsWizard"

    const-string v1, "construction end..."

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;)I
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ay;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v1, "com.tencent.tbs.tbsshell.TBSShell"

    const-string v2, "initTesRuntimeEnvironment"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v7

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v8

    const-class v4, Lcom/tencent/smtt/export/external/DexLoader;

    aput-object v4, v3, v9

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v10

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v11

    const/4 v4, 0x5

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    iget-object v5, p0, Lcom/tencent/smtt/sdk/ay;->b:Landroid/content/Context;

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/tencent/smtt/sdk/ay;->e:Lcom/tencent/smtt/export/external/DexLoader;

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/tencent/smtt/sdk/ay;->c:Ljava/lang/String;

    aput-object v5, v4, v10

    iget-object v5, p0, Lcom/tencent/smtt/sdk/ay;->f:Ljava/lang/String;

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const-string v6, "3.1.0.1034"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const v6, 0xa85c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/ay;->c()V

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/ay;->d()V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ay;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v1, "com.tencent.tbs.tbsshell.TBSShell"

    const-string v2, "initTesRuntimeEnvironment"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v7

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v8

    const-class v4, Lcom/tencent/smtt/export/external/DexLoader;

    aput-object v4, v3, v9

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v10

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v11

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    iget-object v5, p0, Lcom/tencent/smtt/sdk/ay;->b:Landroid/content/Context;

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/tencent/smtt/sdk/ay;->e:Lcom/tencent/smtt/export/external/DexLoader;

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/tencent/smtt/sdk/ay;->c:Ljava/lang/String;

    aput-object v5, v4, v10

    iget-object v5, p0, Lcom/tencent/smtt/sdk/ay;->f:Ljava/lang/String;

    aput-object v5, v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_3

    const/4 v0, -0x3

    move v2, v0

    :goto_0
    if-gez v2, :cond_6

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ay;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v1, "com.tencent.tbs.tbsshell.TBSShell"

    const-string v3, "getLoadFailureDetails"

    new-array v4, v7, [Ljava/lang/Class;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; cause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; th: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ay;->g:Ljava/lang/String;

    :cond_1
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/smtt/sdk/ay;->g:Ljava/lang/String;

    :cond_2
    :goto_1
    return v2

    :cond_3
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_4
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/ay;->a:Landroid/content/Context;

    const/16 v3, 0x148

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    const/4 v0, -0x5

    move v2, v0

    goto :goto_0

    :cond_5
    const/4 v0, -0x4

    move v2, v0

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ay;->g:Ljava/lang/String;

    goto :goto_1
.end method

.method private c()V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ay;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v1, "com.tencent.tbs.tbsshell.TBSShell"

    const-string v2, "setTesSdkVersionName"

    new-array v3, v5, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "3.1.0.1034"

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ay;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v1, "com.tencent.tbs.tbsshell.TBSShell"

    const-string v2, "VERSION"

    const v3, 0xa85c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/smtt/export/external/DexLoader;->setStaticField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ay;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v2, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "invokeStaticMethod"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v8

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v9

    const-class v5, [Ljava/lang/Class;

    aput-object v5, v4, v10

    const/4 v5, 0x4

    const-class v6, [Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "com.tencent.smtt.util.CrashTracker"

    aput-object v6, v5, v7

    const-string v6, "getCrashExtraInfo"

    aput-object v6, v5, v9

    aput-object v0, v5, v10

    const/4 v6, 0x4

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v7, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ay;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v2, "com.tencent.smtt.util.CrashTracker"

    const-string v3, "getCrashExtraInfo"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ReaderPackName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tencent/smtt/sdk/TbsReaderView;->gReaderPackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ReaderPackVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tencent/smtt/sdk/TbsReaderView;->gReaderPackVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "X5 core get nothing..."

    :cond_2
    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ay;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v2, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "installLocalQbApk"

    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v4, v8

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p2, v5, v6

    aput-object p3, v5, v7

    aput-object p4, v5, v8

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public b()Lcom/tencent/smtt/export/external/DexLoader;
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ay;->e:Lcom/tencent/smtt/export/external/DexLoader;

    return-object v0
.end method
