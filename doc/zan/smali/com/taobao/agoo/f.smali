.class final Lcom/taobao/agoo/f;
.super Lcom/taobao/accs/IAgooAppReceiver;
.source "Taobao"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/taobao/accs/IACCSManager;

.field final synthetic c:Lcom/taobao/agoo/IRegister;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/taobao/accs/IACCSManager;Lcom/taobao/agoo/IRegister;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/taobao/agoo/f;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/taobao/agoo/f;->b:Lcom/taobao/accs/IACCSManager;

    iput-object p3, p0, Lcom/taobao/agoo/f;->c:Lcom/taobao/agoo/IRegister;

    iput-object p4, p0, Lcom/taobao/agoo/f;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/taobao/agoo/f;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/taobao/accs/IAgooAppReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/taobao/agoo/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public onBindApp(ILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 124
    :try_start_0
    const-string v0, "TaobaoRegister"

    const-string v1, "onBindApp"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "errorCode"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_5

    .line 127
    invoke-static {}, Lcom/taobao/agoo/TaobaoRegister;->access$000()Lcom/taobao/agoo/a/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/taobao/agoo/a/b;

    iget-object v1, p0, Lcom/taobao/agoo/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/taobao/agoo/a/b;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/taobao/agoo/TaobaoRegister;->access$002(Lcom/taobao/agoo/a/b;)Lcom/taobao/agoo/a/b;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/taobao/agoo/f;->b:Lcom/taobao/accs/IACCSManager;

    iget-object v1, p0, Lcom/taobao/agoo/f;->a:Landroid/content/Context;

    const-string v2, "AgooDeviceCmd"

    invoke-static {}, Lcom/taobao/agoo/TaobaoRegister;->access$000()Lcom/taobao/agoo/a/b;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/accs/IACCSManager;->registerDataListener(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V

    .line 133
    invoke-static {}, Lcom/taobao/agoo/TaobaoRegister;->access$000()Lcom/taobao/agoo/a/b;

    sget-object v0, Lcom/taobao/agoo/a/b;->b:Lcom/taobao/agoo/a/a;

    iget-object v1, p0, Lcom/taobao/agoo/f;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/agoo/a/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    const-string v0, "TaobaoRegister"

    const-string v1, "agoo aready Registered return "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/taobao/agoo/f;->c:Lcom/taobao/agoo/IRegister;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/taobao/agoo/f;->c:Lcom/taobao/agoo/IRegister;

    iget-object v1, p0, Lcom/taobao/agoo/f;->a:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/agoo/common/Config;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/agoo/IRegister;->onSuccess(Ljava/lang/String;)V

    .line 172
    :cond_1
    :goto_0
    return-void

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/taobao/agoo/f;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/agoo/f;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/agoo/f;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/taobao/agoo/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 143
    if-nez v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/taobao/agoo/f;->c:Lcom/taobao/agoo/IRegister;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/taobao/agoo/f;->c:Lcom/taobao/agoo/IRegister;

    const-string v1, "503.1"

    const-string v2, "req data null"

    invoke-virtual {v0, v1, v2}, Lcom/taobao/agoo/IRegister;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    const-string v1, "TaobaoRegister"

    const-string v2, "register onBindApp"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 150
    :cond_3
    :try_start_1
    new-instance v1, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v2, 0x0

    const-string v3, "AgooDeviceCmd"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/taobao/agoo/f;->b:Lcom/taobao/accs/IACCSManager;

    iget-object v2, p0, Lcom/taobao/agoo/f;->a:Landroid/content/Context;

    invoke-interface {v0, v2, v1}, Lcom/taobao/accs/IACCSManager;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 153
    iget-object v0, p0, Lcom/taobao/agoo/f;->c:Lcom/taobao/agoo/IRegister;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/taobao/agoo/f;->c:Lcom/taobao/agoo/IRegister;

    const-string v1, "503.1"

    const-string v2, "accs channel disabled!"

    invoke-virtual {v0, v1, v2}, Lcom/taobao/agoo/IRegister;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_4
    iget-object v1, p0, Lcom/taobao/agoo/f;->c:Lcom/taobao/agoo/IRegister;

    if-eqz v1, :cond_1

    .line 159
    invoke-static {}, Lcom/taobao/agoo/TaobaoRegister;->access$000()Lcom/taobao/agoo/a/b;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/taobao/agoo/f;->c:Lcom/taobao/agoo/IRegister;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 163
    :cond_5
    iget-object v0, p0, Lcom/taobao/agoo/f;->c:Lcom/taobao/agoo/IRegister;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/taobao/agoo/f;->c:Lcom/taobao/agoo/IRegister;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "accs bindapp error!"

    invoke-virtual {v0, v1, v2}, Lcom/taobao/agoo/IRegister;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
