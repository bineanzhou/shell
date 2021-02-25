.class Lcom/taobao/accs/internal/c;
.super Lcom/taobao/accs/base/AccsAbstractDataListener;
.source "Taobao"


# instance fields
.field final synthetic a:Lcom/taobao/accs/internal/b;


# direct methods
.method constructor <init>(Lcom/taobao/accs/internal/b;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/taobao/accs/internal/c;->a:Lcom/taobao/accs/internal/b;

    invoke-direct {p0}, Lcom/taobao/accs/base/AccsAbstractDataListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0

    .prologue
    .line 393
    return-void
.end method

.method public onData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0

    .prologue
    .line 388
    return-void
.end method

.method public onResponse(Ljava/lang/String;Ljava/lang/String;I[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/taobao/accs/internal/c;->a:Lcom/taobao/accs/internal/b;

    invoke-static {v0, p4, p3}, Lcom/taobao/accs/internal/b;->a(Lcom/taobao/accs/internal/b;[BI)V

    .line 408
    iget-object v0, p0, Lcom/taobao/accs/internal/c;->a:Lcom/taobao/accs/internal/b;

    invoke-static {v0}, Lcom/taobao/accs/internal/b;->a(Lcom/taobao/accs/internal/b;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/taobao/accs/internal/c;->a:Lcom/taobao/accs/internal/b;

    invoke-static {v0}, Lcom/taobao/accs/internal/b;->a(Lcom/taobao/accs/internal/b;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 411
    :cond_0
    return-void
.end method

.method public onSendData(Ljava/lang/String;Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0

    .prologue
    .line 403
    return-void
.end method

.method public onUnbind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0

    .prologue
    .line 398
    return-void
.end method
