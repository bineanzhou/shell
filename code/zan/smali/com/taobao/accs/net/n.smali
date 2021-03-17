.class Lcom/taobao/accs/net/n;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:Lcom/taobao/accs/net/k;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/k;IZI)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/taobao/accs/net/n;->d:Lcom/taobao/accs/net/k;

    iput p2, p0, Lcom/taobao/accs/net/n;->a:I

    iput-boolean p3, p0, Lcom/taobao/accs/net/n;->b:Z

    iput p4, p0, Lcom/taobao/accs/net/n;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 315
    iget v0, p0, Lcom/taobao/accs/net/n;->a:I

    if-lez v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/taobao/accs/net/n;->d:Lcom/taobao/accs/net/k;

    iget-object v0, v0, Lcom/taobao/accs/net/k;->e:Lcom/taobao/accs/data/a;

    iget v1, p0, Lcom/taobao/accs/net/n;->a:I

    invoke-static {v1}, Lcom/taobao/accs/utl/UtilityImpl;->int2String(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/accs/data/a;->b(Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_1

    .line 318
    iget-boolean v1, p0, Lcom/taobao/accs/net/n;->b:Z

    if-eqz v1, :cond_3

    .line 320
    iget-object v1, p0, Lcom/taobao/accs/net/n;->d:Lcom/taobao/accs/net/k;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2}, Lcom/taobao/accs/net/k;->a(Lcom/taobao/accs/data/Message;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/taobao/accs/net/n;->d:Lcom/taobao/accs/net/k;

    iget-object v1, v1, Lcom/taobao/accs/net/k;->e:Lcom/taobao/accs/data/a;

    iget v2, p0, Lcom/taobao/accs/net/n;->c:I

    invoke-virtual {v1, v0, v2}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;I)V

    .line 323
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 324
    const-string v0, "accs"

    const-string v1, "resend"

    const-string v2, "total_tnet"

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 332
    :cond_1
    :goto_0
    iget v0, p0, Lcom/taobao/accs/net/n;->a:I

    if-gez v0, :cond_2

    iget-boolean v0, p0, Lcom/taobao/accs/net/n;->b:Z

    if-eqz v0, :cond_2

    .line 333
    iget-object v0, p0, Lcom/taobao/accs/net/n;->d:Lcom/taobao/accs/net/k;

    iget v1, p0, Lcom/taobao/accs/net/n;->a:I

    invoke-virtual {v0, v1}, Lcom/taobao/accs/net/k;->b(I)V

    .line 335
    :cond_2
    return-void

    .line 327
    :cond_3
    iget-object v1, p0, Lcom/taobao/accs/net/n;->d:Lcom/taobao/accs/net/k;

    iget-object v1, v1, Lcom/taobao/accs/net/k;->e:Lcom/taobao/accs/data/a;

    iget v2, p0, Lcom/taobao/accs/net/n;->c:I

    invoke-virtual {v1, v0, v2}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/Message;I)V

    goto :goto_0
.end method
