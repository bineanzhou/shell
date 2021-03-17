.class Lcom/tencent/wxop/stat/av;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lcom/tencent/wxop/stat/au;


# direct methods
.method constructor <init>(Lcom/tencent/wxop/stat/au;Ljava/util/List;IZZ)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wxop/stat/av;->e:Lcom/tencent/wxop/stat/au;

    iput-object p2, p0, Lcom/tencent/wxop/stat/av;->a:Ljava/util/List;

    iput p3, p0, Lcom/tencent/wxop/stat/av;->b:I

    iput-boolean p4, p0, Lcom/tencent/wxop/stat/av;->c:Z

    iput-boolean p5, p0, Lcom/tencent/wxop/stat/av;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/wxop/stat/av;->e:Lcom/tencent/wxop/stat/au;

    iget-object v1, p0, Lcom/tencent/wxop/stat/av;->a:Ljava/util/List;

    iget v2, p0, Lcom/tencent/wxop/stat/av;->b:I

    iget-boolean v3, p0, Lcom/tencent/wxop/stat/av;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/wxop/stat/au;->a(Lcom/tencent/wxop/stat/au;Ljava/util/List;IZ)V

    iget-boolean v0, p0, Lcom/tencent/wxop/stat/av;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wxop/stat/av;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method
