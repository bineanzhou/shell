.class Lorg/android/agoo/control/AgooFactory$a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/agoo/control/AgooFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/android/agoo/control/AgooFactory;

.field private b:Landroid/content/Intent;

.field private c:Ljava/lang/String;

.field private d:Lorg/android/agoo/service/SendMessage;

.field private e:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Lorg/android/agoo/control/AgooFactory;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lorg/android/agoo/control/AgooFactory$a;->a:Lorg/android/agoo/control/AgooFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput-object p2, p0, Lorg/android/agoo/control/AgooFactory$a;->c:Ljava/lang/String;

    .line 619
    iput-object p3, p0, Lorg/android/agoo/control/AgooFactory$a;->b:Landroid/content/Intent;

    .line 620
    iput-object p0, p0, Lorg/android/agoo/control/AgooFactory$a;->e:Landroid/content/ServiceConnection;

    .line 621
    return-void
.end method

.method static synthetic a(Lorg/android/agoo/control/AgooFactory$a;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lorg/android/agoo/control/AgooFactory$a;->b:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lorg/android/agoo/control/AgooFactory$a;Lorg/android/agoo/service/SendMessage;)Lorg/android/agoo/service/SendMessage;
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lorg/android/agoo/control/AgooFactory$a;->d:Lorg/android/agoo/service/SendMessage;

    return-object p1
.end method

.method static synthetic b(Lorg/android/agoo/control/AgooFactory$a;)Lorg/android/agoo/service/SendMessage;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lorg/android/agoo/control/AgooFactory$a;->d:Lorg/android/agoo/service/SendMessage;

    return-object v0
.end method

.method static synthetic c(Lorg/android/agoo/control/AgooFactory$a;)Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lorg/android/agoo/control/AgooFactory$a;->e:Landroid/content/ServiceConnection;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 630
    const-string v0, "AgooFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageConnection conneted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    invoke-static {p2}, Lorg/android/agoo/service/SendMessage$Stub;->asInterface(Landroid/os/IBinder;)Lorg/android/agoo/service/SendMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/android/agoo/control/AgooFactory$a;->d:Lorg/android/agoo/service/SendMessage;

    .line 632
    const-string v0, "AgooFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnected current tid:"

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

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 633
    const-string v0, "AgooFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageConnection sent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/android/agoo/control/AgooFactory$a;->b:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 634
    iget-object v0, p0, Lorg/android/agoo/control/AgooFactory$a;->d:Lorg/android/agoo/service/SendMessage;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lorg/android/agoo/control/AgooFactory$a;->a:Lorg/android/agoo/control/AgooFactory;

    invoke-static {v0}, Lorg/android/agoo/control/AgooFactory;->access$500(Lorg/android/agoo/control/AgooFactory;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lorg/android/agoo/control/f;

    invoke-direct {v1, p0}, Lorg/android/agoo/control/f;-><init>(Lorg/android/agoo/control/AgooFactory$a;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 655
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 625
    const-string v0, "AgooFactory"

    const-string v1, "MessageConnection disConnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    return-void
.end method
