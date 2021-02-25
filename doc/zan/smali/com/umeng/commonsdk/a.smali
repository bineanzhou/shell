.class public Lcom/umeng/commonsdk/a;
.super Ljava/lang/Object;
.source "UMConfigureInternation.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/commonsdk/a;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 25
    const-class v1, Lcom/umeng/commonsdk/a;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sget-boolean v0, Lcom/umeng/commonsdk/a;->a:Z

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/umeng/commonsdk/a$1;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/a$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 45
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/commonsdk/a;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    :try_start_1
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

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
