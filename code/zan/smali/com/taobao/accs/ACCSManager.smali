.class public final Lcom/taobao/accs/ACCSManager;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/ACCSManager$AccsRequest;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ACCSManager"

.field public static mAccsInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/IACCSManager;",
            ">;"
        }
    .end annotation
.end field

.field public static mContext:Landroid/content/Context;

.field public static mDefaultAppkey:Ljava/lang/String;

.field public static mDefaultConfigTag:Ljava/lang/String;

.field public static mEnv:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/taobao/accs/ACCSManager;->mEnv:I

    .line 33
    const-string v0, "default"

    sput-object v0, Lcom/taobao/accs/ACCSManager;->mDefaultConfigTag:Ljava/lang/String;

    .line 399
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/taobao/accs/ACCSManager;->mAccsInstances:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    sget-object v0, Lcom/taobao/accs/ACCSManager;->mDefaultAppkey:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1, p2, p3}, Lcom/taobao/accs/ACCSManager;->bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V

    .line 129
    return-void
.end method

.method public static bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    sget-object v0, Lcom/taobao/accs/ACCSManager;->mDefaultAppkey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "old interface!!, please AccsManager.setAppkey() first!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    invoke-static {}, Lcom/taobao/accs/utl/l;->a()V

    .line 116
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    sget-object v2, Lcom/taobao/accs/ACCSManager;->mDefaultAppkey:Ljava/lang/String;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/taobao/accs/IACCSManager;->bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V

    .line 117
    return-void
.end method

.method public static bindService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 181
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/taobao/accs/IACCSManager;->bindService(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public static bindUser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/taobao/accs/ACCSManager;->bindUser(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 148
    return-void
.end method

.method public static bindUser(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    sget-object v0, Lcom/taobao/accs/ACCSManager;->mDefaultAppkey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "old interface!!, please AccsManager.setAppkey() first!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/taobao/accs/IACCSManager;->bindUser(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 162
    return-void
.end method

.method public static clearLoginInfoImpl(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 304
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/taobao/accs/IACCSManager;->clearLoginInfo(Landroid/content/Context;)V

    .line 305
    return-void
.end method

.method protected static createInner(Landroid/content/Context;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 427
    const/4 v2, 0x0

    .line 429
    :try_start_0
    const-string v1, "ACCSManager"

    const-string v3, "new accs instance"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "configTag"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v1, v3, v4}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 430
    invoke-static {}, Lcom/taobao/accs/d/a;->a()Lcom/taobao/accs/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/accs/d/a;->b()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v3, "com.taobao.accs.internal.ACCSManagerImpl"

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/IACCSManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    if-nez v1, :cond_0

    .line 439
    :try_start_1
    const-string v2, "com.taobao.accs.internal.ACCSManagerImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/taobao/accs/IACCSManager;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 447
    :cond_0
    :goto_0
    return-object v1

    .line 442
    :catch_0
    move-exception v2

    .line 443
    const-string v3, "ACCSManager"

    const-string v4, "getAccsInstance"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 434
    :catch_1
    move-exception v1

    .line 435
    :try_start_2
    const-string v3, "ACCSManager"

    const-string v4, "getAccsInstance"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v1, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 437
    if-nez v2, :cond_2

    .line 439
    :try_start_3
    const-string v1, "com.taobao.accs.internal.ACCSManagerImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/IACCSManager;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 442
    :catch_2
    move-exception v1

    .line 443
    const-string v3, "ACCSManager"

    const-string v4, "getAccsInstance"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v1, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v1, v2

    .line 444
    goto :goto_0

    .line 437
    :catchall_0
    move-exception v1

    if-nez v2, :cond_1

    .line 439
    :try_start_4
    const-string v2, "com.taobao.accs.internal.ACCSManagerImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 444
    :cond_1
    :goto_1
    throw v1

    .line 442
    :catch_3
    move-exception v2

    .line 443
    const-string v3, "ACCSManager"

    const-string v4, "getAccsInstance"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method public static forceDisableService(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 455
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/taobao/accs/IACCSManager;->forceDisableService(Landroid/content/Context;)V

    .line 456
    return-void
.end method

.method public static forceEnableService(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 451
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/taobao/accs/IACCSManager;->forceEnableService(Landroid/content/Context;)V

    .line 452
    return-void
.end method

.method public static forceReConnectChannel(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 326
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/accs/IACCSManager;->forceReConnectChannel()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;
    .locals 6

    .prologue
    .line 407
    const-class v1, Lcom/taobao/accs/ACCSManager;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 408
    :cond_0
    const-string v0, "ACCSManager"

    const-string v2, "getAccsInstance param null"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "configTag"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    const-string v5, "context"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p0, v3, v4

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    const/4 v0, 0x0

    .line 422
    :cond_1
    :goto_0
    monitor-exit v1

    return-object v0

    .line 412
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 413
    sget-object v0, Lcom/taobao/accs/ACCSManager;->mAccsInstances:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/IACCSManager;

    .line 415
    if-nez v0, :cond_1

    .line 416
    invoke-static {p0, p2}, Lcom/taobao/accs/ACCSManager;->createInner(Landroid/content/Context;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    .line 417
    if-eqz v0, :cond_1

    .line 418
    sget-object v3, Lcom/taobao/accs/ACCSManager;->mAccsInstances:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getAppkey(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 476
    .line 478
    :try_start_0
    const-string v1, "ACCS_SDK"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 479
    const-string v2, "appkey"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 480
    const-string v2, "ACCSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppkey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    :goto_0
    return-object v0

    .line 481
    :cond_0
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 482
    :catch_0
    move-exception v1

    .line 483
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getChannelState(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 315
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/accs/IACCSManager;->getChannelState()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultAppkey(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 59
    sget-object v0, Lcom/taobao/accs/ACCSManager;->mDefaultAppkey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const-string v0, "ACCSManager"

    const-string v1, "old interface!!, please AccsManager.setAppkey() first!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    const-string v0, "defaultAppkey"

    invoke-static {p0, v0, v4}, Lcom/taobao/accs/utl/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/ACCSManager;->mDefaultAppkey:Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/taobao/accs/ACCSManager;->mDefaultAppkey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v0

    .line 68
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/ACCSManager;->mDefaultAppkey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    sget-object v0, Lcom/taobao/accs/ACCSManager;->mDefaultAppkey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    const-string v0, "0"

    sput-object v0, Lcom/taobao/accs/ACCSManager;->mDefaultAppkey:Ljava/lang/String;

    .line 79
    :cond_1
    sget-object v0, Lcom/taobao/accs/ACCSManager;->mDefaultAppkey:Ljava/lang/String;

    return-object v0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const-string v1, "ACCSManager"

    const-string v2, "getDefaultAppkey"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getDefaultConfig(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/taobao/accs/ACCSManager;->mDefaultConfigTag:Ljava/lang/String;

    return-object v0
.end method

.method private static declared-synchronized getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;
    .locals 3

    .prologue
    .line 396
    const-class v1, Lcom/taobao/accs/ACCSManager;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getDefaultConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/taobao/accs/ACCSManager;->getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getUserUnit(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 337
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/accs/IACCSManager;->getUserUnit()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isChannelError(Landroid/content/Context;I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 348
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/accs/IACCSManager;->isChannelError(I)Z

    move-result v0

    return v0
.end method

.method public static isNetworkReachable(Landroid/content/Context;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 261
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/taobao/accs/IACCSManager;->isNetworkReachable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static registerDataListener(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 378
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 379
    const-string v0, "ACCSManager"

    const-string v1, "getManagerImpl null, return"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/taobao/accs/IACCSManager;->registerDataListener(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V

    goto :goto_0
.end method

.method public static registerSerivce(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 359
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/taobao/accs/IACCSManager;->registerSerivce(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public static sendData(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 220
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/taobao/accs/IACCSManager;->sendData(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 205
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/taobao/accs/IACCSManager;->sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 215
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/taobao/accs/IACCSManager;->sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 210
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/taobao/accs/IACCSManager;->sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendPushResponse(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 256
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/taobao/accs/IACCSManager;->sendPushResponse(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 240
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/taobao/accs/IACCSManager;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 230
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/taobao/accs/ACCSManager;->sendRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 235
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/taobao/accs/IACCSManager;->sendRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 225
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/taobao/accs/IACCSManager;->sendRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setAppkey(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p2    # I
        .annotation build Lcom/taobao/accs/AccsClientConfig$ENV;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/taobao/accs/utl/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/ACCSManager;->mContext:Landroid/content/Context;

    .line 46
    sput-object p1, Lcom/taobao/accs/ACCSManager;->mDefaultAppkey:Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/taobao/accs/ACCSManager;->mContext:Landroid/content/Context;

    const-string v1, "defaultAppkey"

    sget-object v2, Lcom/taobao/accs/ACCSManager;->mDefaultAppkey:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sput p2, Lcom/taobao/accs/ACCSManager;->mEnv:I

    .line 49
    sput p2, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    .line 55
    return-void
.end method

.method public static setDefaultConfig(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    const-string v0, "ACCSManager"

    const-string v1, "setDefaultConfig"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "configTag"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    sput-object p1, Lcom/taobao/accs/ACCSManager;->mDefaultConfigTag:Ljava/lang/String;

    .line 89
    :cond_0
    return-void
.end method

.method public static setLoginInfoImpl(Landroid/content/Context;Lcom/taobao/accs/ILoginInfo;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 299
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/taobao/accs/IACCSManager;->setLoginInfo(Landroid/content/Context;Lcom/taobao/accs/ILoginInfo;)V

    .line 300
    return-void
.end method

.method public static setMode(Landroid/content/Context;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 276
    sput p1, Lcom/taobao/accs/ACCSManager;->mEnv:I

    .line 277
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/taobao/accs/IACCSManager;->setMode(Landroid/content/Context;I)V

    .line 278
    return-void
.end method

.method public static setProxy(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 282
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/taobao/accs/IACCSManager;->setProxy(Landroid/content/Context;Ljava/lang/String;I)V

    .line 283
    return-void
.end method

.method public static setServiceListener(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/IServiceReceiver;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 267
    return-void
.end method

.method public static startInAppConnection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 293
    sget-object v0, Lcom/taobao/accs/ACCSManager;->mDefaultAppkey:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1, p2, p3}, Lcom/taobao/accs/ACCSManager;->startInAppConnection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V

    .line 294
    return-void
.end method

.method public static startInAppConnection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 287
    invoke-static {}, Lcom/taobao/accs/utl/l;->a()V

    .line 288
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    sget-object v2, Lcom/taobao/accs/ACCSManager;->mDefaultAppkey:Ljava/lang/String;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/taobao/accs/IACCSManager;->startInAppConnection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V

    .line 289
    return-void
.end method

.method public static unRegisterDataListener(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 392
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/taobao/accs/IACCSManager;->unRegisterDataListener(Landroid/content/Context;Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public static unbindApp(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 138
    return-void
.end method

.method public static unbindService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 191
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/taobao/accs/IACCSManager;->unbindService(Landroid/content/Context;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public static unbindUser(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 170
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/taobao/accs/IACCSManager;->unbindUser(Landroid/content/Context;)V

    .line 171
    return-void
.end method

.method public static unregisterService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 364
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/taobao/accs/IACCSManager;->unRegisterSerivce(Landroid/content/Context;Ljava/lang/String;)V

    .line 365
    return-void
.end method
