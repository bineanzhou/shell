.class Lcom/taobao/accs/net/t;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/taobao/accs/net/r;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/r;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/taobao/accs/net/t;->b:Lcom/taobao/accs/net/r;

    iput-object p2, p0, Lcom/taobao/accs/net/t;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/taobao/accs/net/t;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/accs/net/t;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/accs/net/t;->b:Lcom/taobao/accs/net/r;

    invoke-static {v1}, Lcom/taobao/accs/net/r;->c(Lcom/taobao/accs/net/r;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/taobao/accs/net/t;->b:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->b(Lcom/taobao/accs/net/r;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 603
    iget-object v0, p0, Lcom/taobao/accs/net/t;->b:Lcom/taobao/accs/net/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/accs/net/r;->a(Lcom/taobao/accs/net/r;Z)Z

    .line 604
    iget-object v0, p0, Lcom/taobao/accs/net/t;->b:Lcom/taobao/accs/net/r;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/taobao/accs/net/r;->b(Lcom/taobao/accs/net/r;Z)Z

    .line 605
    iget-object v0, p0, Lcom/taobao/accs/net/t;->b:Lcom/taobao/accs/net/r;

    invoke-virtual {v0}, Lcom/taobao/accs/net/r;->l()V

    .line 606
    iget-object v0, p0, Lcom/taobao/accs/net/t;->b:Lcom/taobao/accs/net/r;

    invoke-static {v0}, Lcom/taobao/accs/net/r;->d(Lcom/taobao/accs/net/r;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v0

    const-string v1, "conn timeout"

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 609
    :cond_0
    return-void
.end method
