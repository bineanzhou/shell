.class Lcom/taobao/accs/internal/ServiceImpl$2;
.super Lorg/android/agoo/service/IMessageService$Stub;
.source "Taobao"


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/internal/ServiceImpl;


# direct methods
.method constructor <init>(Lcom/taobao/accs/internal/ServiceImpl;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/taobao/accs/internal/ServiceImpl$2;->this$0:Lcom/taobao/accs/internal/ServiceImpl;

    invoke-direct {p0}, Lorg/android/agoo/service/IMessageService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public ping()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 430
    const/4 v0, 0x1

    return v0
.end method

.method public probe()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 435
    const-string v0, "ServiceImpl"

    const-string v1, "ReceiverImpl probeTaoBao begin......messageServiceBinder [probe]"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl$2;->this$0:Lcom/taobao/accs/internal/ServiceImpl;

    invoke-static {v0}, Lcom/taobao/accs/internal/ServiceImpl;->b(Lcom/taobao/accs/internal/ServiceImpl;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/taobao/accs/internal/i;

    invoke-direct {v1, p0}, Lcom/taobao/accs/internal/i;-><init>(Lcom/taobao/accs/internal/ServiceImpl$2;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 462
    return-void
.end method
