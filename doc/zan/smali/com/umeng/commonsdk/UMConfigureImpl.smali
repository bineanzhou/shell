.class public Lcom/umeng/commonsdk/UMConfigureImpl;
.super Ljava/lang/Object;
.source "UMConfigureImpl.java"


# static fields
.field private static a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    sput-boolean v0, Lcom/umeng/commonsdk/UMConfigureImpl;->a:Z

    .line 42
    sput-boolean v0, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 110
    const-class v1, Lcom/umeng/commonsdk/UMConfigureImpl;

    monitor-enter v1

    if-eqz p0, :cond_1

    :try_start_0
    sget-boolean v0, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Z

    if-nez v0, :cond_1

    .line 111
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/umeng/commonsdk/UMConfigureImpl$1;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/UMConfigureImpl$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 138
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 140
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    :try_start_1
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized b(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 150
    const-class v1, Lcom/umeng/commonsdk/UMConfigureImpl;

    monitor-enter v1

    if-eqz p0, :cond_1

    :try_start_0
    sget-boolean v0, Lcom/umeng/commonsdk/UMConfigureImpl;->a:Z

    if-nez v0, :cond_1

    .line 151
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/umeng/commonsdk/UMConfigureImpl$2;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/UMConfigureImpl$2;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 236
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :try_start_1
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/utils/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/internal/utils/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/utils/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/internal/utils/b;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/umeng/commonsdk/UMConfigureImpl;->a:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    :try_start_3
    const-string v0, "internal"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "get station is null "

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 263
    :catch_1
    move-exception v0

    .line 265
    :try_start_4
    const-string v2, "internal"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/umeng/commonsdk/UMConfigureImpl;->b(Landroid/content/Context;)V

    .line 51
    invoke-static {v0}, Lcom/umeng/commonsdk/UMConfigureImpl;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
