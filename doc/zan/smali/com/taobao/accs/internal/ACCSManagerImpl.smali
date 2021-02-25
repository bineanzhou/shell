.class public Lcom/taobao/accs/internal/ACCSManagerImpl;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lcom/taobao/accs/IACCSManager;


# instance fields
.field public a:Lcom/taobao/accs/net/b;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->b:I

    .line 51
    const-string v0, "ACCSMgrImpl_"

    iput-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->a:Landroid/content/Context;

    .line 55
    new-instance v0, Lcom/taobao/accs/net/k;

    sget-object v1, Lcom/taobao/accs/client/GlobalClientInfo;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p2}, Lcom/taobao/accs/net/k;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    .line 56
    iput-object p2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->c:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    iget-object v1, v1, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private a(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 621
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getServiceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntent null command:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " serviceEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getServiceEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 625
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 627
    const/4 v0, 0x0

    .line 654
    :goto_0
    return-object v0

    .line 631
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 632
    const-string v1, "com.taobao.accs.intent.action.COMMAND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.taobao.accs.ChannelService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    const-string v1, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    const-string v1, "command"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 638
    const-string v1, "appKey"

    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    iget-object v2, v2, Lcom/taobao/accs/net/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    const-string v1, "configTag"

    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 679
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.taobao.accs.intent.action.RECEIVE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    const-string v0, "command"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 682
    const-string v0, "serviceId"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 683
    const-string v0, "dataId"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    const-string v0, "appKey"

    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    iget-object v2, v2, Lcom/taobao/accs/net/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    const-string v0, "configTag"

    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    const-string v2, "errorCode"

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/16 v0, 0xc8

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 687
    invoke-static {p1, v1}, Lcom/taobao/accs/data/d;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 689
    return-void

    .line 686
    :cond_0
    const/16 v0, 0x12c

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0xc8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->a()V

    .line 160
    if-nez p2, :cond_1

    .line 161
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    const-string v2, "message is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;I)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    packed-switch p3, :pswitch_data_0

    :cond_2
    move v0, v2

    .line 194
    :goto_1
    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    const-string v3, "sendControlMessage"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "command"

    aput-object v5, v4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v0, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v0, p2, v2}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V

    goto :goto_0

    .line 169
    :pswitch_0
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/b;

    move-result-object v0

    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/taobao/accs/client/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p4, :cond_2

    .line 171
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isAppBinded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v0, p2, v6}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;I)V

    move v0, v1

    .line 173
    goto :goto_1

    .line 177
    :pswitch_1
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/b;

    move-result-object v0

    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/taobao/accs/client/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isAppUnbinded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v0, p2, v6}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;I)V

    move v0, v1

    .line 181
    goto/16 :goto_1

    .line 185
    :pswitch_2
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/b;

    move-result-object v0

    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/taobao/accs/data/Message;->E:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/taobao/accs/client/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p4, :cond_2

    .line 187
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/taobao/accs/data/Message;->E:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isUserBinded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "isForceBind"

    aput-object v5, v4, v1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v0, p2, v6}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;I)V

    move v0, v1

    .line 190
    goto/16 :goto_1

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    .locals 6

    .prologue
    .line 63
    const-string v3, "accs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/internal/ACCSManagerImpl;->bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V

    .line 65
    return-void
.end method

.method public bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    if-nez p1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindApp APPKEY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v2

    .line 75
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 76
    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    const-string v4, "accs disabled, try enable"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->focusEnableService(Landroid/content/Context;)V

    .line 80
    :cond_2
    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v3}, Lcom/taobao/accs/net/b;->k()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    iget-object v3, v3, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v3}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 81
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    const/16 v1, -0xf

    invoke-virtual {v0, v2, v1}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;I)V

    goto :goto_0

    .line 90
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 91
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    const/16 v1, -0xe

    invoke-virtual {v0, v2, v1}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;I)V

    goto :goto_0

    .line 94
    :cond_4
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    iput-object p4, v2, Lcom/taobao/accs/net/b;->a:Ljava/lang/String;

    .line 95
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    iput-object p2, v2, Lcom/taobao/accs/net/b;->b:Ljava/lang/String;

    .line 96
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    iget-object v2, v2, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v2}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2, v2}, Lcom/taobao/accs/utl/UtilityImpl;->saveAppKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    if-eqz p5, :cond_5

    .line 99
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, p5}, Lcom/taobao/accs/client/GlobalClientInfo;->setAppReceiver(Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V

    .line 107
    :cond_5
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->enableService(Landroid/content/Context;)V

    .line 108
    invoke-direct {p0, p1, v0}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v2

    .line 109
    if-eqz v2, :cond_0

    .line 115
    :try_start_0
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/accs/client/GlobalClientInfo;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 116
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->appVersionChanged(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "ACCS_SDK"

    invoke-static {v4, p1}, Lcom/taobao/accs/utl/UtilityImpl;->utdidChanged(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 117
    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    .line 118
    const-string v4, "fouce_bind"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    :cond_7
    const-string v4, "appKey"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v4, "ttid"

    invoke-virtual {v2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v4, "appVersion"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v3, "app_sercet"

    iget-object v4, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    iget-object v4, v4, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v4}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 125
    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-static {v3, p1, v2}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;

    move-result-object v2

    .line 126
    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V

    .line 132
    :cond_8
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/taobao/accs/net/b;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "accs"

    aput-object v3, v0, v2

    new-instance v2, Lcom/taobao/accs/utl/i$a;

    invoke-direct {v2}, Lcom/taobao/accs/utl/i$a;-><init>()V

    invoke-static {v0, v2}, Lcom/taobao/accs/utl/i;->a([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 136
    invoke-static {}, Lcom/taobao/accs/utl/i;->f()V

    .line 137
    invoke-static {}, Lcom/taobao/accs/utl/i;->e()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 139
    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    const-string v2, "no orange sdk"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 142
    :catch_1
    move-exception v0

    .line 143
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    const-string v3, "bindApp exception"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 116
    goto :goto_1
.end method

.method public bindService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 304
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    invoke-direct {p0, p1, v3}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 311
    if-nez v0, :cond_2

    .line 312
    const/4 v0, 0x0

    invoke-direct {p0, p1, v3, p2, v0}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_2
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v1}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 319
    const-string v2, "appKey"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v1, "serviceId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 323
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-static {v1, v0}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;

    move-result-object v0

    .line 324
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v3, v1}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V

    .line 329
    :cond_3
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/accs/net/b;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public bindUser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/taobao/accs/internal/ACCSManagerImpl;->bindUser(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 227
    return-void
.end method

.method public bindUser(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    const-string v2, "bindUser"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "userId"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    const-string v1, "accs disabled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    :goto_0
    return-void

    .line 238
    :cond_0
    const/4 v1, 0x3

    invoke-direct {p0, p1, v1}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 239
    if-nez v1, :cond_1

    .line 240
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    const-string v1, "intent null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    const-string v2, "bindUser"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 244
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v2}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 246
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    const-string v1, "appKey null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 249
    :cond_2
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->appVersionChanged(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz p3, :cond_4

    .line 250
    :cond_3
    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    const-string v4, "force bind User"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    const-string v3, "fouce_bind"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move p3, v0

    .line 254
    :cond_4
    const-string v0, "appKey"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v0, "userInfo"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 258
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-static {v0, v1}, Lcom/taobao/accs/data/Message;->c(Lcom/taobao/accs/net/b;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;

    move-result-object v0

    .line 259
    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V

    .line 264
    :cond_5
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/accs/net/b;->b(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public cancel(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v0, p2}, Lcom/taobao/accs/net/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearLoginInfo(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 732
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/client/GlobalClientInfo;->clearLoginInfoImpl()V

    .line 733
    return-void
.end method

.method public forceDisableService(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 659
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->focusDisableService(Landroid/content/Context;)V

    .line 660
    return-void
.end method

.method public forceEnableService(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 664
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->focusEnableService(Landroid/content/Context;)V

    .line 665
    return-void
.end method

.method public forceReConnectChannel()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 776
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    iget-object v0, v0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/SessionCenter;->getInstance(Ljava/lang/String;)Lanet/channel/SessionCenter;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/SessionCenter;->forceRecreateAccsSession()V

    .line 777
    invoke-virtual {p0}, Lcom/taobao/accs/internal/ACCSManagerImpl;->getChannelState()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getChannelState()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/32 v8, 0xea60

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 748
    invoke-virtual {p0}, Lcom/taobao/accs/internal/ACCSManagerImpl;->getUserUnit()Ljava/lang/String;

    move-result-object v0

    .line 749
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 751
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 752
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    iget-object v3, v3, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v3}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lanet/channel/SessionCenter;->getInstance(Ljava/lang/String;)Lanet/channel/SessionCenter;

    move-result-object v3

    invoke-virtual {v3, v1, v8, v9}, Lanet/channel/SessionCenter;->getThrowsException(Ljava/lang/String;J)Lanet/channel/Session;

    move-result-object v3

    .line 756
    iget-object v4, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    iget-object v4, v4, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v4}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lanet/channel/SessionCenter;->getInstance(Ljava/lang/String;)Lanet/channel/SessionCenter;

    move-result-object v4

    invoke-virtual {v4, v0, v8, v9}, Lanet/channel/SessionCenter;->getThrowsException(Ljava/lang/String;J)Lanet/channel/Session;

    move-result-object v4

    .line 758
    if-eqz v3, :cond_0

    .line 759
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    :cond_0
    if-eqz v4, :cond_1

    .line 762
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChannelState "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 765
    return-object v2
.end method

.method public getUserUnit()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 788
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 789
    if-nez v0, :cond_1

    .line 790
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    const-string v1, "context is null"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    const/4 v0, 0x0

    .line 802
    :cond_0
    :goto_0
    return-object v0

    .line 793
    :cond_1
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v2

    invoke-static {v0}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    iget-object v4, v4, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/taobao/accs/client/GlobalClientInfo;->getUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lanet/channel/strategy/IStrategyInstance;->getUnitPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 799
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 800
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserUnit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isChannelError(I)Z
    .locals 1

    .prologue
    .line 813
    invoke-static {p1}, Lcom/taobao/accs/ErrorCode;->isChannelError(I)Z

    move-result v0

    return v0
.end method

.method public isNetworkReachable(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 617
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public registerDataListener(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V
    .locals 1

    .prologue
    .line 845
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/taobao/accs/client/GlobalClientInfo;->registerListener(Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V

    .line 846
    return-void
.end method

.method public registerSerivce(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 825
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/taobao/accs/client/GlobalClientInfo;->registerService(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    return-void
.end method

.method public sendBusinessAck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SLjava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "S",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 859
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZSLjava/lang/String;Ljava/util/Map;)Lcom/taobao/accs/data/Message;

    move-result-object v0

    .line 860
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v1, v0, v4}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V

    .line 861
    return-void
.end method

.method public sendData(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 378
    :try_start_0
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v1

    .line 380
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 381
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    const-string v2, "send data not in mainprocess"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    :goto_0
    return-object v0

    .line 385
    :cond_0
    if-nez v1, :cond_1

    if-nez p2, :cond_3

    .line 387
    :cond_1
    if-eqz v1, :cond_2

    .line 388
    const-string v2, "accs"

    const-string v3, "send_fail"

    iget-object v4, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string v5, "1"

    const-string v6, "accs disable"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :goto_1
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send data dataInfo null or disable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    const-string v1, "accs"

    const-string v2, "send_fail"

    iget-object v3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string v4, "1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send data dataid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 421
    :goto_2
    iget-object v0, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    goto :goto_0

    .line 390
    :cond_2
    :try_start_1
    const-string v2, "accs"

    const-string v3, "send_fail"

    const-string v4, ""

    const-string v5, "1"

    const-string v6, "data null"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 396
    :cond_3
    iget-object v1, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 397
    const-class v1, Lcom/taobao/accs/internal/ACCSManagerImpl;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 398
    :try_start_2
    iget v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->b:I

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    .line 400
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 403
    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v1}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 405
    const-string v1, "accs"

    const-string v2, "send_fail"

    iget-object v3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string v4, "1"

    const-string v5, "data appkey null"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send data appkey null dataid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 400
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 409
    :cond_5
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->a()V

    .line 410
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1, p2}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;)Lcom/taobao/accs/data/Message;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 413
    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onSend()V

    .line 415
    :cond_6
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2
.end method

.method public sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 361
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 367
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 372
    new-instance v0, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0, p1, v0}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendData(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendPushResponse(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 509
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 510
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    const-string v2, "sendPushResponse input null"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "context"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string v5, "response"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 v4, 0x4

    const-string v5, "extraInfo"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object p3, v3, v4

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 511
    const-string v0, "accs"

    const-string v2, "send_fail"

    const-string v3, ""

    const-string v4, "1"

    const-string v5, "sendPushResponse null"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    :goto_0
    return-object v8

    .line 515
    :cond_1
    const-string v2, "accs"

    const-string v3, "send_fail"

    const-string v4, "push response total"

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v2

    .line 518
    if-eqz v2, :cond_2

    .line 519
    const-string v0, "accs"

    const-string v2, "send_fail"

    iget-object v3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string v4, "1"

    const-string v5, "sendPushResponse accs disable"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 607
    :catch_0
    move-exception v0

    .line 608
    const-string v2, "accs"

    const-string v3, "send_fail"

    iget-object v4, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string v5, "1"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "push response "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendPushResponse dataid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 523
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v2}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v2

    .line 524
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 525
    const-string v0, "accs"

    const-string v2, "send_fail"

    iget-object v3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string v4, "1"

    const-string v5, "sendPushResponse appkey null"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendPushResponse appkey null dataid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 530
    :cond_3
    iget-object v3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 531
    const-class v3, Lcom/taobao/accs/internal/ACCSManagerImpl;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 532
    :try_start_2
    iget v4, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->b:I

    .line 533
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    .line 534
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 537
    :cond_4
    if-nez p3, :cond_5

    .line 538
    :try_start_3
    new-instance p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    invoke-direct {p3}, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;-><init>()V

    .line 540
    :cond_5
    const/4 v3, 0x0

    iput-object v3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    .line 550
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    .line 553
    iget v3, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->connType:I

    if-eqz v3, :cond_6

    iget-object v3, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromHost:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 554
    :cond_6
    const/4 v0, 0x0

    iput v0, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->connType:I

    .line 556
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    const-string v3, "pushresponse use channel"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "host"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromHost:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 559
    :cond_7
    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    const-string v4, "sendPushResponse"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "sendbyInapp"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "host"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromHost:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "pkg"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-object v7, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "dataId"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget-object v7, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 560
    if-eqz v0, :cond_9

    .line 562
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    const-string v3, "sendPushResponse inapp by"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "app"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    new-instance v0, Ljava/net/URL;

    iget-object v3, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromHost:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    .line 564
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 565
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 534
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 567
    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.taobao.accs.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 568
    iget-object v3, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    const-string v4, "com.taobao.accs.data.MsgDistributeService"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    const-string v3, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    const-string v3, "reqdata"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 571
    const-string v3, "appKey"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    const-string v2, "configTag"

    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 577
    :cond_9
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 578
    if-nez v0, :cond_a

    .line 579
    const-string v0, "accs"

    const-string v2, "send_fail"

    iget-object v3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string v4, "1"

    const-string v5, "push response intent null"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const/16 v0, 0x64

    iget-object v2, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    iget-object v3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    const-string v2, "sendPushResponse input null"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "context"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string v5, "response"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 v4, 0x4

    const-string v5, "extraInfo"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object p3, v3, v4

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 584
    :cond_a
    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    const-string v4, "sendPushResponse channel by"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "app"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    iget-object v3, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    const-string v4, "com.taobao.accs.ChannelService"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    const-string v3, "send_type"

    sget-object v4, Lcom/taobao/accs/data/Message$ReqType;->REQ:Lcom/taobao/accs/data/Message$ReqType;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 587
    const-string v3, "appKey"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    const-string v2, "userInfo"

    iget-object v3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    const-string v2, "serviceId"

    iget-object v3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    const-string v2, "data"

    iget-object v3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->data:[B

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 591
    const-string v2, "dataId"

    iget-object v3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    const-string v2, "configTag"

    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    iget-object v2, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 595
    const-string v2, "businessId"

    iget-object v3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    :cond_b
    iget-object v2, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->tag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 598
    const-string v2, "extTag"

    iget-object v3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    :cond_c
    iget-object v2, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 601
    const-string v2, "target"

    iget-object v3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    :cond_d
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method public sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 490
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 439
    if-nez p2, :cond_0

    .line 440
    :try_start_0
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    const-string v2, "sendRequest request null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    const-string v1, "accs"

    const-string v2, "send_fail"

    const/4 v3, 0x0

    const-string v4, "1"

    const-string v5, "request null"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :goto_0
    return-object v0

    .line 445
    :cond_0
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 446
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    const-string v2, "send data not in mainprocess"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 478
    :catch_0
    move-exception v0

    .line 479
    if-eqz p2, :cond_1

    .line 480
    const-string v1, "accs"

    const-string v2, "send_fail"

    iget-object v3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string v4, "1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendRequest dataid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 486
    :cond_1
    :goto_1
    iget-object v0, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    goto :goto_0

    .line 450
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v1

    .line 451
    if-eqz v1, :cond_3

    .line 452
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    const-string v2, "sendRequest disable"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    const-string v1, "accs"

    const-string v2, "send_fail"

    iget-object v3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string v4, "1"

    const-string v5, "accs disable"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :cond_3
    iget-object v1, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 458
    const-class v1, Lcom/taobao/accs/internal/ACCSManagerImpl;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 459
    :try_start_2
    iget v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->b:I

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    .line 461
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 464
    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v1}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 466
    const-string v1, "accs"

    const-string v2, "send_fail"

    iget-object v3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string v4, "1"

    const-string v5, "request appkey null"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendRequest appkey null dataid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 461
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 470
    :cond_5
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->a()V

    .line 471
    if-nez p3, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 472
    :cond_6
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-static {v0, p1, p3, p2, p4}, Lcom/taobao/accs/data/Message;->b(Lcom/taobao/accs/net/b;Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;

    move-result-object v0

    .line 474
    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 475
    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onSend()V

    .line 477
    :cond_7
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1
.end method

.method public sendRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 427
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 433
    new-instance v0, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0, p1, v0}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLoginInfo(Landroid/content/Context;Lcom/taobao/accs/ILoginInfo;)V
    .locals 2

    .prologue
    .line 728
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    iget-object v1, v1, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/taobao/accs/client/GlobalClientInfo;->setLoginInfoImpl(Ljava/lang/String;Lcom/taobao/accs/ILoginInfo;)V

    .line 729
    return-void
.end method

.method public setMode(Landroid/content/Context;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 675
    invoke-static {p1, p2}, Lcom/taobao/accs/ACCSClient;->setEnvironment(Landroid/content/Context;I)V

    .line 676
    return-void
.end method

.method public setProxy(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 693
    const-string v0, "ACCS_SDK"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 694
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 695
    const-string v1, "proxy_host"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 697
    :cond_0
    const-string v1, "proxy_port"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 698
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 699
    return-void
.end method

.method public startInAppConnection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    .locals 6

    .prologue
    .line 704
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/internal/ACCSManagerImpl;->startInAppConnection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V

    .line 706
    return-void
.end method

.method public startInAppConnection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 710
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p5}, Lcom/taobao/accs/client/GlobalClientInfo;->setAppReceiver(Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V

    .line 711
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 712
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    const-string v1, "inapp only init in main process!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startInAppConnection APPKEY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 716
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 719
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    iput-object p4, v0, Lcom/taobao/accs/net/b;->a:Ljava/lang/String;

    .line 720
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    iput-object p2, v0, Lcom/taobao/accs/net/b;->b:Ljava/lang/String;

    .line 721
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    iget-object v0, v0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/taobao/accs/utl/UtilityImpl;->saveAppKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :cond_2
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->a()V

    goto :goto_0
.end method

.method public unRegisterDataListener(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 855
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/taobao/accs/client/GlobalClientInfo;->unregisterListener(Ljava/lang/String;)V

    .line 856
    return-void
.end method

.method public unRegisterSerivce(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 830
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/taobao/accs/client/GlobalClientInfo;->unRegisterService(Ljava/lang/String;)V

    .line 831
    return-void
.end method

.method public unbindApp(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 202
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindApp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 208
    if-nez v0, :cond_2

    .line 209
    invoke-direct {p0, p1, v3, v5, v5}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_2
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-static {v1, p1, v0}, Lcom/taobao/accs/data/Message;->b(Lcom/taobao/accs/net/b;Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;

    move-result-object v0

    .line 214
    invoke-direct {p0, p1, v0, v3, v4}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V

    goto :goto_0
.end method

.method public unbindService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 334
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 338
    if-nez v0, :cond_2

    .line 339
    const/4 v0, 0x0

    invoke-direct {p0, p1, v3, p2, v0}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 342
    :cond_2
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v1}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 346
    const-string v2, "appKey"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string v1, "serviceId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-static {v1, v0}, Lcom/taobao/accs/data/Message;->b(Lcom/taobao/accs/net/b;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;

    move-result-object v0

    .line 351
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v3, v1}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V

    goto :goto_0
.end method

.method public unbindUser(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x4

    .line 276
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    invoke-direct {p0, p1, v3}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 283
    if-nez v0, :cond_2

    .line 284
    invoke-direct {p0, p1, v3, v1, v1}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_2
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v1}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 291
    const-string v2, "appKey"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-static {v1, v0}, Lcom/taobao/accs/data/Message;->d(Lcom/taobao/accs/net/b;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;

    move-result-object v0

    .line 295
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v3, v1}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V

    goto :goto_0
.end method

.method public updateConfig(Lcom/taobao/accs/AccsClientConfig;)V
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    instance-of v0, v0, Lcom/taobao/accs/net/k;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    check-cast v0, Lcom/taobao/accs/net/k;

    invoke-virtual {v0, p1}, Lcom/taobao/accs/net/k;->a(Lcom/taobao/accs/AccsClientConfig;)V

    .line 868
    :cond_0
    return-void
.end method
