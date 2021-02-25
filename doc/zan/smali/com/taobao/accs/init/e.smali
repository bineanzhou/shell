.class Lcom/taobao/accs/init/e;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Landroid/app/Application;

.field final synthetic c:Lcom/taobao/accs/init/Launcher_Login;


# direct methods
.method constructor <init>(Lcom/taobao/accs/init/Launcher_Login;Ljava/util/HashMap;Landroid/app/Application;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/taobao/accs/init/e;->c:Lcom/taobao/accs/init/Launcher_Login;

    iput-object p2, p0, Lcom/taobao/accs/init/e;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/taobao/accs/init/e;->b:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 27
    const/4 v2, 0x0

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/taobao/accs/init/e;->a:Ljava/util/HashMap;

    const-string v5, "envIndex"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 30
    iget-object v1, p0, Lcom/taobao/accs/init/e;->a:Ljava/util/HashMap;

    const-string v5, "onlineAppKey"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    if-ne v6, v3, :cond_1

    .line 32
    :try_start_1
    iget-object v2, p0, Lcom/taobao/accs/init/e;->a:Ljava/util/HashMap;

    const-string v3, "preAppKey"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 40
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 41
    const-string v1, "Launcher_Login"

    const-string v2, "login get appkey null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    const-string v1, "21646297"

    move-object v2, v1

    .line 46
    :goto_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/taobao/accs/init/Launcher_InitAccs;->mForceBindUser:Z

    .line 47
    iget-object v1, p0, Lcom/taobao/accs/init/e;->a:Ljava/util/HashMap;

    const-string v3, "userId"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/taobao/accs/init/Launcher_InitAccs;->mUserId:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lcom/taobao/accs/init/e;->a:Ljava/util/HashMap;

    const-string v3, "sid"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/taobao/accs/init/Launcher_InitAccs;->mSid:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/taobao/accs/init/e;->b:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/taobao/accs/init/e;->a:Ljava/util/HashMap;

    const-string v5, "ttid"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v5, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppReceiver:Lcom/taobao/accs/IAppReceiver;

    invoke-static {v3, v2, v1, v5}, Lcom/taobao/accs/ACCSManager;->bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 57
    :goto_2
    return-void

    .line 33
    :cond_1
    const/4 v2, 0x2

    if-ne v6, v2, :cond_2

    move v5, v3

    :goto_3
    const/4 v2, 0x3

    if-ne v6, v2, :cond_3

    move v2, v3

    :goto_4
    or-int/2addr v2, v5

    if-eqz v2, :cond_0

    .line 34
    :try_start_3
    iget-object v2, p0, Lcom/taobao/accs/init/e;->a:Ljava/util/HashMap;

    const-string v3, "dailyAppkey"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :cond_2
    move v5, v4

    .line 33
    goto :goto_3

    :cond_3
    move v2, v4

    goto :goto_4

    .line 36
    :catch_0
    move-exception v1

    .line 37
    :goto_5
    :try_start_4
    const-string v3, "Launcher_Login"

    const-string v5, "login get param error"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v1, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-object v1, v2

    goto :goto_0

    .line 53
    :catch_1
    move-exception v1

    .line 54
    const-string v2, "Launcher_Login"

    const-string v3, "login"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    .line 36
    :catch_2
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_5

    :cond_4
    move-object v2, v1

    goto :goto_1
.end method
