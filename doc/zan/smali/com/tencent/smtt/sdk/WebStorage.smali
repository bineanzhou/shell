.class public Lcom/tencent/smtt/sdk/WebStorage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/WebStorage$QuotaUpdater;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/smtt/sdk/WebStorage;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()Lcom/tencent/smtt/sdk/WebStorage;
    .locals 2

    const-class v1, Lcom/tencent/smtt/sdk/WebStorage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/smtt/sdk/WebStorage;->a:Lcom/tencent/smtt/sdk/WebStorage;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/smtt/sdk/WebStorage;

    invoke-direct {v0}, Lcom/tencent/smtt/sdk/WebStorage;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/WebStorage;->a:Lcom/tencent/smtt/sdk/WebStorage;

    :cond_0
    sget-object v0, Lcom/tencent/smtt/sdk/WebStorage;->a:Lcom/tencent/smtt/sdk/WebStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lcom/tencent/smtt/sdk/WebStorage;
    .locals 1

    invoke-static {}, Lcom/tencent/smtt/sdk/WebStorage;->a()Lcom/tencent/smtt/sdk/WebStorage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteAllData()V
    .locals 2

    invoke-static {}, Lcom/tencent/smtt/sdk/bi;->b()Lcom/tencent/smtt/sdk/bi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bi;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bi;->d()Lcom/tencent/smtt/sdk/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bj;->n()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->deleteAllData()V

    goto :goto_0
.end method

.method public deleteOrigin(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/tencent/smtt/sdk/bi;->b()Lcom/tencent/smtt/sdk/bi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bi;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bi;->d()Lcom/tencent/smtt/sdk/bj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/bj;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebStorage;->deleteOrigin(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getOrigins(Lcom/tencent/smtt/sdk/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/smtt/sdk/ValueCallback",
            "<",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/smtt/sdk/bi;->b()Lcom/tencent/smtt/sdk/bi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bi;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bi;->d()Lcom/tencent/smtt/sdk/bj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/bj;->a(Landroid/webkit/ValueCallback;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebStorage;->getOrigins(Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method

.method public getQuotaForOrigin(Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/smtt/sdk/ValueCallback",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/smtt/sdk/bi;->b()Lcom/tencent/smtt/sdk/bi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bi;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bi;->d()Lcom/tencent/smtt/sdk/bj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/smtt/sdk/bj;->b(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebStorage;->getQuotaForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method

.method public getUsageForOrigin(Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/smtt/sdk/ValueCallback",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/smtt/sdk/bi;->b()Lcom/tencent/smtt/sdk/bi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bi;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bi;->d()Lcom/tencent/smtt/sdk/bj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/smtt/sdk/bj;->a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebStorage;->getUsageForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method

.method public setQuotaForOrigin(Ljava/lang/String;J)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/tencent/smtt/sdk/bi;->b()Lcom/tencent/smtt/sdk/bi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bi;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bi;->d()Lcom/tencent/smtt/sdk/bj;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/smtt/sdk/bj;->a(Ljava/lang/String;J)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebStorage;->setQuotaForOrigin(Ljava/lang/String;J)V

    goto :goto_0
.end method
