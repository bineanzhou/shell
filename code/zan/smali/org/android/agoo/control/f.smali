.class Lorg/android/agoo/control/f;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/android/agoo/control/AgooFactory$a;


# direct methods
.method constructor <init>(Lorg/android/agoo/control/AgooFactory$a;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lorg/android/agoo/control/f;->a:Lorg/android/agoo/control/AgooFactory$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 639
    :try_start_0
    const-string v0, "AgooFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnected running tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 640
    iget-object v0, p0, Lorg/android/agoo/control/f;->a:Lorg/android/agoo/control/AgooFactory$a;

    invoke-static {v0}, Lorg/android/agoo/control/AgooFactory$a;->b(Lorg/android/agoo/control/AgooFactory$a;)Lorg/android/agoo/service/SendMessage;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/control/f;->a:Lorg/android/agoo/control/AgooFactory$a;

    invoke-static {v1}, Lorg/android/agoo/control/AgooFactory$a;->a(Lorg/android/agoo/control/AgooFactory$a;)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/android/agoo/service/SendMessage;->doSend(Landroid/content/Intent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    const-string v0, "AgooFactory"

    const-string v1, "send finish. close this connection"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    iget-object v0, p0, Lorg/android/agoo/control/f;->a:Lorg/android/agoo/control/AgooFactory$a;

    invoke-static {v0, v5}, Lorg/android/agoo/control/AgooFactory$a;->a(Lorg/android/agoo/control/AgooFactory$a;Lorg/android/agoo/service/SendMessage;)Lorg/android/agoo/service/SendMessage;

    .line 648
    invoke-static {}, Lorg/android/agoo/control/AgooFactory;->access$000()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/control/f;->a:Lorg/android/agoo/control/AgooFactory$a;

    invoke-static {v1}, Lorg/android/agoo/control/AgooFactory$a;->c(Lorg/android/agoo/control/AgooFactory$a;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 650
    :goto_0
    return-void

    .line 641
    :catch_0
    move-exception v0

    .line 642
    :try_start_1
    const-string v1, "AgooFactory"

    const-string v2, "send error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 646
    const-string v0, "AgooFactory"

    const-string v1, "send finish. close this connection"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    iget-object v0, p0, Lorg/android/agoo/control/f;->a:Lorg/android/agoo/control/AgooFactory$a;

    invoke-static {v0, v5}, Lorg/android/agoo/control/AgooFactory$a;->a(Lorg/android/agoo/control/AgooFactory$a;Lorg/android/agoo/service/SendMessage;)Lorg/android/agoo/service/SendMessage;

    .line 648
    invoke-static {}, Lorg/android/agoo/control/AgooFactory;->access$000()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/control/f;->a:Lorg/android/agoo/control/AgooFactory$a;

    invoke-static {v1}, Lorg/android/agoo/control/AgooFactory$a;->c(Lorg/android/agoo/control/AgooFactory$a;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    .line 646
    :catchall_0
    move-exception v0

    const-string v1, "AgooFactory"

    const-string v2, "send finish. close this connection"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    iget-object v1, p0, Lorg/android/agoo/control/f;->a:Lorg/android/agoo/control/AgooFactory$a;

    invoke-static {v1, v5}, Lorg/android/agoo/control/AgooFactory$a;->a(Lorg/android/agoo/control/AgooFactory$a;Lorg/android/agoo/service/SendMessage;)Lorg/android/agoo/service/SendMessage;

    .line 648
    invoke-static {}, Lorg/android/agoo/control/AgooFactory;->access$000()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/android/agoo/control/f;->a:Lorg/android/agoo/control/AgooFactory$a;

    invoke-static {v2}, Lorg/android/agoo/control/AgooFactory$a;->c(Lorg/android/agoo/control/AgooFactory$a;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method
