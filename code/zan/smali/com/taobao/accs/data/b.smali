.class Lcom/taobao/accs/data/b;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

.field final synthetic b:Lcom/taobao/accs/data/a;


# direct methods
.method constructor <init>(Lcom/taobao/accs/data/a;Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V
    .locals 0

    .prologue
    .line 919
    iput-object p1, p0, Lcom/taobao/accs/data/b;->b:Lcom/taobao/accs/data/a;

    iput-object p2, p0, Lcom/taobao/accs/data/b;->a:Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 922
    iget-object v0, p0, Lcom/taobao/accs/data/b;->b:Lcom/taobao/accs/data/a;

    iget-object v0, v0, Lcom/taobao/accs/data/a;->c:Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/taobao/accs/data/b;->b:Lcom/taobao/accs/data/a;

    iget-object v0, v0, Lcom/taobao/accs/data/a;->c:Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    iget-object v1, p0, Lcom/taobao/accs/data/b;->a:Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V

    .line 925
    :cond_0
    return-void
.end method
