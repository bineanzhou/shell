.class Lcom/tencent/wxop/stat/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/wxop/stat/au;


# direct methods
.method constructor <init>(Lcom/tencent/wxop/stat/au;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wxop/stat/ax;->a:Lcom/tencent/wxop/stat/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/wxop/stat/ax;->a:Lcom/tencent/wxop/stat/au;

    invoke-static {v0}, Lcom/tencent/wxop/stat/au;->a(Lcom/tencent/wxop/stat/au;)V

    return-void
.end method
