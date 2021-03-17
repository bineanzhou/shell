.class final Lcom/tencent/smtt/sdk/g;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/tencent/smtt/sdk/ai;

.field final synthetic c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tencent/smtt/sdk/ai;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/ai;

    iput-object p3, p0, Lcom/tencent/smtt/sdk/g;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/tencent/smtt/sdk/aj;->a()Lcom/tencent/smtt/sdk/aj;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/g;->a:Landroid/content/Context;

    invoke-virtual {v0, v3, v1}, Lcom/tencent/smtt/sdk/aj;->a(ZLandroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/smtt/sdk/aj;->a()Lcom/tencent/smtt/sdk/aj;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/g;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/tencent/smtt/sdk/aj;->b(Landroid/content/Context;Z)V

    :cond_0
    invoke-static {v3}, Lcom/tencent/smtt/sdk/l;->a(Z)Lcom/tencent/smtt/sdk/l;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/g;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v4, v2}, Lcom/tencent/smtt/sdk/l;->a(Landroid/content/Context;ZZLcom/tencent/smtt/sdk/ai;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/bi;->b()Lcom/tencent/smtt/sdk/bi;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/g;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/ai;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/bi;->a(Landroid/content/Context;Lcom/tencent/smtt/sdk/ai;)V

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bi;->c()Z

    move-result v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/g;->c:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->c:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
