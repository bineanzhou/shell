.class Lcom/taobao/accs/net/o;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/net/k;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/k;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/taobao/accs/net/o;->a:Lcom/taobao/accs/net/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/net/o;->a:Lcom/taobao/accs/net/k;

    iget-object v0, v0, Lcom/taobao/accs/net/k;->d:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/taobao/accs/net/o;->a:Lcom/taobao/accs/net/k;

    invoke-virtual {v0}, Lcom/taobao/accs/net/k;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/taobao/accs/net/o;->a:Lcom/taobao/accs/net/k;

    invoke-virtual {v0}, Lcom/taobao/accs/net/k;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mTryStartServiceRunable bindapp"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    iget-object v0, p0, Lcom/taobao/accs/net/o;->a:Lcom/taobao/accs/net/k;

    iget-object v1, p0, Lcom/taobao/accs/net/o;->a:Lcom/taobao/accs/net/k;

    iget-object v1, v1, Lcom/taobao/accs/net/k;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/taobao/accs/net/k;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
