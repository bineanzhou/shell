.class Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a:Z

    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a(Landroid/content/Context;)V

    return-void
.end method

.method private native ChmodInner(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const-class v1, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->b:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "liblinuxtoolsfortbssdk_jni.so"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a:Z

    :cond_1
    const-string v0, "/checkChmodeExists"

    const-string v2, "700"

    invoke-direct {p0, v0, v2}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->ChmodInner(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    invoke-static {}, Lcom/tencent/smtt/sdk/aj;->a()Lcom/tencent/smtt/sdk/aj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/aj;->h(Landroid/content/Context;)Ljava/io/File;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    sget-boolean v0, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a:Z

    if-nez v0, :cond_0

    const-string v0, "TbsLinuxToolsJni"

    const-string v1, "jni not loaded!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->ChmodInner(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
