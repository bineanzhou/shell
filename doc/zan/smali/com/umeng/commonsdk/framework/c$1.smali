.class final Lcom/umeng/commonsdk/framework/c$1;
.super Landroid/content/BroadcastReceiver;
.source "UMNetWorkSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/framework/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 64
    const-string v0, "connectivity"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/c;->a(Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;

    .line 66
    :try_start_0
    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->d()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/c;->a(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 67
    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->e()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->e()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/c;->a(Z)Z

    .line 70
    const/16 v0, 0x111

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/c;->a(I)V

    .line 71
    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->e()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v2, :cond_0

    .line 74
    if-eqz p1, :cond_0

    .line 75
    const v0, 0x8006

    :try_start_1
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->eventHasExist(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const v0, 0x8006

    .line 78
    invoke-static {p1}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v1

    const/4 v2, 0x0

    .line 77
    invoke-static {p1, v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    :try_start_2
    const-string v0, "--->>> network disconnected."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/c;->a(Z)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 81
    :catch_1
    move-exception v0

    goto :goto_0
.end method
