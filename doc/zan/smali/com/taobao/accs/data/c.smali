.class Lcom/taobao/accs/data/c;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/data/a;


# direct methods
.method constructor <init>(Lcom/taobao/accs/data/a;)V
    .locals 0

    .prologue
    .line 932
    iput-object p1, p0, Lcom/taobao/accs/data/c;->a:Lcom/taobao/accs/data/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/taobao/accs/data/c;->a:Lcom/taobao/accs/data/a;

    iget-object v0, v0, Lcom/taobao/accs/data/a;->c:Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/taobao/accs/data/c;->a:Lcom/taobao/accs/data/a;

    iget-object v0, v0, Lcom/taobao/accs/data/a;->c:Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a()V

    .line 938
    :cond_0
    return-void
.end method
