.class final Lcom/taobao/accs/data/e;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/taobao/accs/data/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/taobao/accs/data/e;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 62
    invoke-static {}, Lcom/taobao/accs/data/d;->a()Lcom/taobao/accs/data/d;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/data/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/accs/data/e;->b:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/d;Landroid/content/Context;Landroid/content/Intent;)V

    .line 64
    return-void
.end method
