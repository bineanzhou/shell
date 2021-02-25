.class Lcom/tencent/wxop/stat/at;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/wxop/stat/h;


# instance fields
.field final synthetic a:Lcom/tencent/wxop/stat/aq;


# direct methods
.method constructor <init>(Lcom/tencent/wxop/stat/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wxop/stat/at;->a:Lcom/tencent/wxop/stat/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->c()V

    invoke-static {}, Lcom/tencent/wxop/stat/au;->b()Lcom/tencent/wxop/stat/au;

    move-result-object v0

    iget v0, v0, Lcom/tencent/wxop/stat/au;->a:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wxop/stat/at;->a:Lcom/tencent/wxop/stat/aq;

    invoke-static {v0}, Lcom/tencent/wxop/stat/aq;->a(Lcom/tencent/wxop/stat/aq;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/tencent/wxop/stat/StatServiceImpl;->commitEvents(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 5

    invoke-static {}, Lcom/tencent/wxop/stat/au;->b()Lcom/tencent/wxop/stat/au;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wxop/stat/at;->a:Lcom/tencent/wxop/stat/aq;

    invoke-static {v1}, Lcom/tencent/wxop/stat/aq;->b(Lcom/tencent/wxop/stat/aq;)Lcom/tencent/wxop/stat/event/e;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/wxop/stat/at;->a:Lcom/tencent/wxop/stat/aq;

    invoke-static {v3}, Lcom/tencent/wxop/stat/aq;->c(Lcom/tencent/wxop/stat/aq;)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/wxop/stat/au;->a(Lcom/tencent/wxop/stat/event/e;Lcom/tencent/wxop/stat/h;ZZ)V

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->d()V

    return-void
.end method
