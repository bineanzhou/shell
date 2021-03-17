.class Lcom/taobao/accs/internal/d;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/taobao/accs/internal/b;


# direct methods
.method constructor <init>(Lcom/taobao/accs/internal/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/taobao/accs/internal/d;->b:Lcom/taobao/accs/internal/b;

    iput-object p2, p0, Lcom/taobao/accs/internal/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 493
    const-string v0, "ElectionServiceImpl"

    const-string v1, "tryElection"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "isPing"

    aput-object v3, v2, v4

    invoke-static {}, Lcom/taobao/accs/internal/b;->b()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    invoke-static {}, Lcom/taobao/accs/internal/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    const-string v0, "ElectionServiceImpl"

    const-string v1, "no need election, stop self"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    iget-object v0, p0, Lcom/taobao/accs/internal/d;->b:Lcom/taobao/accs/internal/b;

    invoke-virtual {v0, v5}, Lcom/taobao/accs/internal/b;->a(Z)V

    .line 503
    :goto_0
    return-void

    .line 499
    :cond_0
    const-string v0, "ElectionServiceImpl"

    const-string v1, "tryElection curr host unreceive ping, try selectAppToElection"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "curr host"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/taobao/accs/internal/d;->a:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    iget-object v0, p0, Lcom/taobao/accs/internal/d;->b:Lcom/taobao/accs/internal/b;

    iget-object v1, p0, Lcom/taobao/accs/internal/d;->b:Lcom/taobao/accs/internal/b;

    invoke-static {v1}, Lcom/taobao/accs/internal/b;->b(Lcom/taobao/accs/internal/b;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "host invaid"

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/internal/b;->a(Lcom/taobao/accs/internal/b;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
