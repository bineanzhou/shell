.class Lcom/taobao/accs/data/f;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Landroid/content/Intent;

.field final synthetic e:Lcom/taobao/accs/data/d;


# direct methods
.method constructor <init>(Lcom/taobao/accs/data/d;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/taobao/accs/data/f;->e:Lcom/taobao/accs/data/d;

    iput-object p2, p0, Lcom/taobao/accs/data/f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/accs/data/f;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/accs/data/f;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/taobao/accs/data/f;->d:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 480
    invoke-static {}, Lcom/taobao/accs/data/d;->d()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 481
    invoke-static {}, Lcom/taobao/accs/data/d;->d()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/data/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    const-string v0, "MsgDistribute"

    const-string v1, "routing msg time out, try election"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "dataId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/taobao/accs/data/f;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "serviceId"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/taobao/accs/data/f;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 483
    invoke-static {}, Lcom/taobao/accs/data/d;->d()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/data/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 484
    iget-object v0, p0, Lcom/taobao/accs/data/f;->e:Lcom/taobao/accs/data/d;

    iget-object v1, p0, Lcom/taobao/accs/data/f;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/d;Landroid/content/Context;)V

    .line 485
    const-string v0, "accs"

    const-string v1, "ele_routing_rate"

    const-string v2, ""

    const-string v3, "timeout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/accs/data/f;->d:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_0
    return-void
.end method
