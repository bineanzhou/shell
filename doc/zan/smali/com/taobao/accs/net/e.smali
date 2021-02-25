.class Lcom/taobao/accs/net/e;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/net/b;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/b;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/taobao/accs/net/e;->a:Lcom/taobao/accs/net/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/taobao/accs/net/e;->a:Lcom/taobao/accs/net/b;

    iget-object v0, v0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/a;

    invoke-virtual {v0}, Lcom/taobao/accs/data/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/taobao/accs/net/e;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/accs/net/e;->a:Lcom/taobao/accs/net/b;

    iget v2, v2, Lcom/taobao/accs/net/b;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "receive ping time out! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    iget-object v0, p0, Lcom/taobao/accs/net/e;->a:Lcom/taobao/accs/net/b;

    iget-object v0, v0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/net/g;->a(Landroid/content/Context;)Lcom/taobao/accs/net/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/net/g;->c()V

    .line 311
    iget-object v0, p0, Lcom/taobao/accs/net/e;->a:Lcom/taobao/accs/net/b;

    const-string v1, ""

    const-string v2, "receive ping timeout"

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/net/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/taobao/accs/net/e;->a:Lcom/taobao/accs/net/b;

    iget-object v0, v0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/a;

    const/16 v1, -0xc

    invoke-virtual {v0, v1}, Lcom/taobao/accs/data/a;->a(I)V

    .line 314
    :cond_0
    return-void
.end method
