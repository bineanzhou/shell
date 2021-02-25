.class Lcom/taobao/accs/internal/h;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/internal/ServiceImpl;


# direct methods
.method constructor <init>(Lcom/taobao/accs/internal/ServiceImpl;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/taobao/accs/internal/h;->a:Lcom/taobao/accs/internal/ServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const v8, 0x101d1

    .line 108
    invoke-static {}, Lcom/taobao/accs/internal/ServiceImpl;->d()V

    .line 109
    iget-object v0, p0, Lcom/taobao/accs/internal/h;->a:Lcom/taobao/accs/internal/ServiceImpl;

    iget-object v1, p0, Lcom/taobao/accs/internal/h;->a:Lcom/taobao/accs/internal/ServiceImpl;

    invoke-static {v1}, Lcom/taobao/accs/internal/ServiceImpl;->a(Lcom/taobao/accs/internal/ServiceImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/accs/internal/ServiceImpl;->a(Lcom/taobao/accs/internal/ServiceImpl;Landroid/content/Context;)V

    .line 110
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const-string v1, "START"

    invoke-static {}, Lcom/taobao/accs/utl/UtilityImpl;->getProxy()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PROXY"

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/taobao/accs/internal/h;->a:Lcom/taobao/accs/internal/ServiceImpl;

    invoke-static {v0}, Lcom/taobao/accs/internal/ServiceImpl;->a(Lcom/taobao/accs/internal/ServiceImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->getServiceAliveTime(Landroid/content/Context;)J

    move-result-wide v0

    .line 113
    const-string v2, "ServiceImpl"

    const-string v3, "getServiceAliveTime"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "aliveTime"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    const-wide/16 v2, 0x4e20

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 116
    const-string v2, "accs"

    const-string v3, "service_alive"

    const-string v4, ""

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    long-to-double v0, v0

    invoke-static {v2, v3, v4, v0, v1}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/internal/h;->a:Lcom/taobao/accs/internal/ServiceImpl;

    invoke-static {v0}, Lcom/taobao/accs/internal/ServiceImpl;->a(Lcom/taobao/accs/internal/ServiceImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "service_start"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/accs/utl/UtilityImpl;->setServiceTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 120
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const-string v1, "NOTIFY"

    iget-object v2, p0, Lcom/taobao/accs/internal/h;->a:Lcom/taobao/accs/internal/ServiceImpl;

    invoke-static {v2}, Lcom/taobao/accs/internal/ServiceImpl;->a(Lcom/taobao/accs/internal/ServiceImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->isNotificationEnabled(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v1, v2}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;)V

    .line 122
    return-void
.end method
