.class Lcom/tencent/wxop/stat/ay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/wxop/stat/event/e;

.field final synthetic b:Lcom/tencent/wxop/stat/h;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lcom/tencent/wxop/stat/au;


# direct methods
.method constructor <init>(Lcom/tencent/wxop/stat/au;Lcom/tencent/wxop/stat/event/e;Lcom/tencent/wxop/stat/h;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wxop/stat/ay;->e:Lcom/tencent/wxop/stat/au;

    iput-object p2, p0, Lcom/tencent/wxop/stat/ay;->a:Lcom/tencent/wxop/stat/event/e;

    iput-object p3, p0, Lcom/tencent/wxop/stat/ay;->b:Lcom/tencent/wxop/stat/h;

    iput-boolean p4, p0, Lcom/tencent/wxop/stat/ay;->c:Z

    iput-boolean p5, p0, Lcom/tencent/wxop/stat/ay;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/wxop/stat/ay;->e:Lcom/tencent/wxop/stat/au;

    iget-object v1, p0, Lcom/tencent/wxop/stat/ay;->a:Lcom/tencent/wxop/stat/event/e;

    iget-object v2, p0, Lcom/tencent/wxop/stat/ay;->b:Lcom/tencent/wxop/stat/h;

    iget-boolean v3, p0, Lcom/tencent/wxop/stat/ay;->c:Z

    iget-boolean v4, p0, Lcom/tencent/wxop/stat/ay;->d:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/wxop/stat/au;->a(Lcom/tencent/wxop/stat/au;Lcom/tencent/wxop/stat/event/e;Lcom/tencent/wxop/stat/h;ZZ)V

    return-void
.end method
