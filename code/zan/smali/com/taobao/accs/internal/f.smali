.class Lcom/taobao/accs/internal/f;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/internal/b;


# direct methods
.method constructor <init>(Lcom/taobao/accs/internal/b;)V
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lcom/taobao/accs/internal/f;->a:Lcom/taobao/accs/internal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 637
    const-string v0, "ElectionServiceImpl"

    const-string v1, "time out, onReportComplete"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "pkgs"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/taobao/accs/internal/f;->a:Lcom/taobao/accs/internal/b;

    invoke-static {v4}, Lcom/taobao/accs/internal/b;->d(Lcom/taobao/accs/internal/b;)Ljava/util/Map;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    iget-object v0, p0, Lcom/taobao/accs/internal/f;->a:Lcom/taobao/accs/internal/b;

    invoke-static {v0}, Lcom/taobao/accs/internal/b;->e(Lcom/taobao/accs/internal/b;)V

    .line 639
    return-void
.end method
