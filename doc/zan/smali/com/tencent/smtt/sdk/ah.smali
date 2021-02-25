.class Lcom/tencent/smtt/sdk/ah;
.super Landroid/os/HandlerThread;


# static fields
.field private static a:Lcom/tencent/smtt/sdk/ah;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/smtt/sdk/ah;
    .locals 3

    const-class v1, Lcom/tencent/smtt/sdk/ah;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/smtt/sdk/ah;->a:Lcom/tencent/smtt/sdk/ah;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/smtt/sdk/ah;

    const-string v2, "TbsHandlerThread"

    invoke-direct {v0, v2}, Lcom/tencent/smtt/sdk/ah;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/smtt/sdk/ah;->a:Lcom/tencent/smtt/sdk/ah;

    sget-object v0, Lcom/tencent/smtt/sdk/ah;->a:Lcom/tencent/smtt/sdk/ah;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/ah;->start()V

    :cond_0
    sget-object v0, Lcom/tencent/smtt/sdk/ah;->a:Lcom/tencent/smtt/sdk/ah;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
