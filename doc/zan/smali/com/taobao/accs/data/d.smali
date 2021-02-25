.class public Lcom/taobao/accs/data/d;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/taobao/accs/data/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/accs/data/d;->b:Lcom/taobao/accs/data/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/taobao/accs/data/d;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/taobao/accs/data/d;->b:Lcom/taobao/accs/data/d;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Lcom/taobao/accs/data/d;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lcom/taobao/accs/data/d;->b:Lcom/taobao/accs/data/d;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/taobao/accs/data/d;

    invoke-direct {v0}, Lcom/taobao/accs/data/d;-><init>()V

    sput-object v0, Lcom/taobao/accs/data/d;->b:Lcom/taobao/accs/data/d;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Lcom/taobao/accs/data/d;->b:Lcom/taobao/accs/data/d;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 407
    invoke-static {}, Lcom/taobao/accs/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/taobao/accs/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    const-string v1, "operate"

    sget-object v2, Lcom/taobao/accs/common/Constants$Operate;->TRY_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 410
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/accs/data/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 414
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 57
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/taobao/accs/data/e;

    invoke-direct {v1, p0, p1}, Lcom/taobao/accs/data/e;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-string v1, "MsgDistribute"

    const-string v2, "distribMessage"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 68
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v1

    const v2, 0x101d1

    const-string v3, "MsgToBuss8"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "distribMessage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xdd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;I)V
    .locals 6

    .prologue
    .line 216
    if-eqz p8, :cond_0

    .line 217
    sparse-switch p4, :sswitch_data_0

    .line 268
    :cond_0
    :goto_0
    const/4 v0, 0x1

    if-ne p4, v0, :cond_4

    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->b:Lcom/taobao/accs/IAgooAppReceiver;

    if-eqz v0, :cond_4

    if-eqz p3, :cond_4

    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->b:Lcom/taobao/accs/IAgooAppReceiver;

    invoke-virtual {v0}, Lcom/taobao/accs/IAgooAppReceiver;->getAppkey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 272
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->b:Lcom/taobao/accs/IAgooAppReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, p9, v1}, Lcom/taobao/accs/IAgooAppReceiver;->onBindApp(ILjava/lang/String;)V

    .line 284
    :cond_1
    :goto_1
    return-void

    .line 219
    :sswitch_0
    instance-of v0, p8, Lcom/taobao/accs/IAppReceiverV1;

    if-eqz v0, :cond_2

    move-object v0, p8

    .line 220
    check-cast v0, Lcom/taobao/accs/IAppReceiverV1;

    const/4 v1, 0x0

    invoke-virtual {v0, p9, v1}, Lcom/taobao/accs/IAppReceiverV1;->onBindApp(ILjava/lang/String;)V

    .line 226
    :goto_2
    const/16 v0, 0xc8

    if-ne p9, v0, :cond_0

    .line 227
    :try_start_0
    const-string v0, "MsgDistribute"

    const-string v1, "start election by bindapp...."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "serviceId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p6, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    invoke-direct {p0, p1}, Lcom/taobao/accs/data/d;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    const-string v1, "MsgDistribute"

    const-string v2, "start election is error"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "serviceId"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p6, v3, v4

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 222
    :cond_2
    invoke-interface {p8, p9}, Lcom/taobao/accs/IAppReceiver;->onBindApp(I)V

    goto :goto_2

    .line 236
    :sswitch_1
    const/16 v0, 0xc8

    if-ne p9, v0, :cond_3

    .line 237
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->disableService(Landroid/content/Context;)V

    .line 239
    :cond_3
    invoke-interface {p8, p9}, Lcom/taobao/accs/IAppReceiver;->onUnbindApp(I)V

    goto :goto_0

    .line 242
    :sswitch_2
    invoke-interface {p8, p5, p9}, Lcom/taobao/accs/IAppReceiver;->onBindUser(Ljava/lang/String;I)V

    goto :goto_0

    .line 245
    :sswitch_3
    invoke-interface {p8, p9}, Lcom/taobao/accs/IAppReceiver;->onUnbindUser(I)V

    goto :goto_0

    .line 248
    :sswitch_4
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const-string v0, "MsgDistribute"

    const-string v1, "serviceId isEmpty"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    const-string v0, "data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 252
    if-eqz v0, :cond_0

    .line 253
    invoke-interface {p8, p5, p7, v0}, Lcom/taobao/accs/IAppReceiver;->onData(Ljava/lang/String;Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 258
    :sswitch_5
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-interface {p8, p7, p9}, Lcom/taobao/accs/IAppReceiver;->onSendData(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 277
    :cond_4
    if-nez p8, :cond_1

    const/16 v0, 0x68

    if-eq p4, v0, :cond_1

    const/16 v0, 0x67

    if-eq p4, v0, :cond_1

    .line 280
    const-string v0, "accs"

    const-string v1, "send_fail"

    const-string v2, "1"

    const-string v3, "appReceiver null return"

    invoke-static {v0, v1, p6, v2, v3}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v0, "MsgDistribute"

    const-string v1, "appReceiver null!"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "serviceId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p6, v2, v3

    const/4 v3, 0x2

    const-string v4, "appkey"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d1

    const-string v2, "MsgToBuss7"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "commandId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "serviceId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " errorCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dataId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xdd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 217
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x64 -> :sswitch_5
        0x65 -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic a(Lcom/taobao/accs/data/d;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/taobao/accs/data/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/taobao/accs/data/d;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/taobao/accs/data/d;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v5, 0x4

    const/4 v7, 0x3

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 425
    .line 426
    const-string v0, "routingAck"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 427
    const-string v1, "routingMsg"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 430
    if-eqz v0, :cond_2

    .line 431
    const-string v0, "MsgDistribute"

    const-string v1, "recieve routiong ack"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "dataId"

    aput-object v6, v5, v3

    aput-object p3, v5, v2

    const-string v6, "serviceId"

    aput-object v6, v5, v9

    aput-object p4, v5, v7

    invoke-static {v0, v1, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    sget-object v0, Lcom/taobao/accs/data/d;->a:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 433
    sget-object v0, Lcom/taobao/accs/data/d;->a:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 435
    :cond_0
    const-string v0, "accs"

    const-string v1, "ele_routing_rate"

    const-string v5, ""

    invoke-static {v0, v1, v5}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 440
    :goto_0
    if-eqz v4, :cond_1

    .line 442
    :try_start_0
    const-string v0, "packageName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    const-string v4, "MsgDistribute"

    const-string v5, "send routiong ack"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "dataId"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p3, v6, v7

    const/4 v7, 0x2

    const-string v8, "to pkg"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v0, v6, v7

    const/4 v7, 0x4

    const-string v8, "serviceId"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    aput-object p4, v6, v7

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.taobao.accs.intent.action.COMMAND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    const-string v5, "command"

    const/16 v6, 0x6a

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 446
    const-string v5, "com.taobao.accs.ChannelService"

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const-string v5, "routingAck"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 448
    const-string v5, "packageName"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    const-string v0, "dataId"

    invoke-virtual {v4, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :cond_1
    :goto_1
    return v1

    .line 451
    :catch_0
    move-exception v0

    .line 452
    const-string v4, "MsgDistribute"

    const-string v5, "send routing ack"

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "serviceId"

    aput-object v7, v6, v3

    aput-object p4, v6, v2

    invoke-static {v4, v5, v0, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27

    .prologue
    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 78
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    const-string v4, "MsgDistribute"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 83
    const-string v3, "MsgDistribute"

    const-string v4, "action null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v3

    const v4, 0x101d1

    const-string v5, "MsgToBuss9"

    const-string v6, "action null"

    const/16 v7, 0xdd

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    const/4 v5, 0x0

    .line 89
    const/4 v13, 0x0

    .line 91
    :try_start_0
    const-string v4, "com.taobao.accs.intent.action.RECEIVE"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 92
    const-string v3, "command"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 93
    const-string v3, "userInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 94
    const-string v3, "errorCode"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 95
    const-string v3, "serviceId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 96
    const-string v3, "dataId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 97
    const-string v3, "appKey"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 98
    const-string v3, "configTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    :cond_3
    const-string v4, "accs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 105
    const-string v4, "MsgDistribute"

    const-string v7, "distribute"

    const/16 v8, 0xa

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "command:"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, " serviceId:"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v5, v8, v9

    const/4 v9, 0x4

    const-string v10, " dataId:"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    aput-object v6, v8, v9

    const/4 v9, 0x6

    const-string v10, "appkey"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    aput-object v12, v8, v9

    const/16 v9, 0x8

    const-string v10, "config"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    aput-object v3, v8, v9

    invoke-static {v4, v7, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v6, v5}, Lcom/taobao/accs/data/d;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 116
    if-gez v13, :cond_5

    .line 117
    const-string v3, "MsgDistribute"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "command error:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "serviceId"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v5, v6, v7

    invoke-static {v3, v4, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 155
    :catch_0
    move-exception v3

    .line 156
    const-string v4, "MsgDistribute"

    const-string v6, "distribMessage :"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "serviceId"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v5, v7, v8

    invoke-static {v4, v6, v3, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 157
    const-string v4, "accs"

    const-string v6, "send_fail"

    const-string v7, "1"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "distribute error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Lcom/taobao/accs/utl/UtilityImpl;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v6, v5, v7, v3}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :cond_4
    :try_start_1
    const-string v4, "MsgDistribute"

    const-string v7, "distribute"

    const/16 v8, 0xa

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "command:"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, " serviceId:"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v5, v8, v9

    const/4 v9, 0x4

    const-string v10, " dataId:"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    aput-object v6, v8, v9

    const/4 v9, 0x6

    const-string v10, "appkey"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    aput-object v12, v8, v9

    const/16 v9, 0x8

    const-string v10, "config"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    aput-object v3, v8, v9

    invoke-static {v4, v7, v8}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 122
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v5}, Lcom/taobao/accs/data/d;->a(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 127
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v6, v5}, Lcom/taobao/accs/data/d;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 131
    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/accs/client/GlobalClientInfo;->getAppReceiver()Ljava/util/Map;

    move-result-object v19

    .line 132
    const/4 v8, 0x0

    .line 133
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 134
    if-eqz v19, :cond_7

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/accs/IAppReceiver;

    :goto_2
    move-object v8, v3

    :cond_6
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    .line 138
    invoke-virtual/range {v3 .. v8}, Lcom/taobao/accs/data/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Lcom/taobao/accs/IAppReceiver;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v8

    .line 143
    invoke-direct/range {v9 .. v18}, Lcom/taobao/accs/data/d;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;I)V

    .line 146
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, v8

    move-object/from16 v22, p2

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v25, v13

    move/from16 v26, v18

    .line 147
    invoke-virtual/range {v19 .. v26}, Lcom/taobao/accs/data/d;->a(Landroid/content/Context;Lcom/taobao/accs/IAppReceiver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 134
    :cond_7
    const/4 v3, 0x0

    goto :goto_2

    :cond_8
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, v19

    move-object/from16 v12, p2

    move/from16 v14, v18

    .line 149
    invoke-virtual/range {v9 .. v14}, Lcom/taobao/accs/data/d;->a(Landroid/content/Context;Ljava/util/Map;Landroid/content/Intent;II)V

    goto/16 :goto_0

    .line 152
    :cond_9
    const-string v4, "MsgDistribute"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "action error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "serviceId"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v5, v7, v8

    invoke-static {v4, v6, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v4

    const v6, 0x101d1

    const-string v7, "MsgToBuss10"

    const/16 v8, 0xdd

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v3, v8}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 463
    .line 465
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    :try_start_0
    const-string v0, "MsgDistribute"

    const-string v1, "start MsgDistributeService"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "receive pkg"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "target pkg"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "serviceId"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.taobao.accs.data.MsgDistributeService"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    const-string v0, "routingMsg"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 470
    const-string v0, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 472
    sget-object v0, Lcom/taobao/accs/data/d;->a:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 473
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/taobao/accs/data/d;->a:Ljava/util/Set;

    .line 475
    :cond_0
    sget-object v0, Lcom/taobao/accs/data/d;->a:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 477
    new-instance v0, Lcom/taobao/accs/data/f;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/taobao/accs/data/f;-><init>(Lcom/taobao/accs/data/d;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    const-wide/16 v2, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v1}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v0, v6

    .line 500
    :goto_1
    return v0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    const-string v1, "accs"

    const-string v2, "ele_routing_rate"

    const-string v3, ""

    const-string v4, "exception"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v1, "MsgDistribute"

    const-string v2, "routing msg error, try election"

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "serviceId"

    aput-object v4, v3, v7

    aput-object p4, v3, v6

    const-string v4, "dataId"

    aput-object v4, v3, v8

    aput-object p3, v3, v9

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 494
    invoke-direct {p0, p1}, Lcom/taobao/accs/data/d;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    move v0, v7

    goto :goto_1
.end method

.method static synthetic d()Ljava/util/Set;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/taobao/accs/data/d;->a:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/taobao/accs/IAppReceiver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 287
    const/4 v0, 0x0

    .line 288
    if-eqz p2, :cond_0

    .line 289
    invoke-interface {p2, p4}, Lcom/taobao/accs/IAppReceiver;->getService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/taobao/accs/client/GlobalClientInfo;->getService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 297
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 298
    const-string v1, "MsgDistribute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "to start service:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    :cond_2
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    invoke-virtual {p1, p3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 313
    :goto_0
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d1

    const-string v2, "MsgToBuss"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "commandId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "serviceId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " errorCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dataId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xdd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 314
    const-string v0, "accs"

    const-string v1, "to_buss"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2commandId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "serviceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 315
    return-void

    .line 303
    :cond_3
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/taobao/accs/client/GlobalClientInfo;->getListener(Ljava/lang/String;)Lcom/taobao/accs/base/AccsAbstractDataListener;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_4

    .line 305
    invoke-static {p1, p3, v0}, Lcom/taobao/accs/base/AccsAbstractDataListener;->onReceiveData(Landroid/content/Context;Landroid/content/Intent;Lcom/taobao/accs/base/AccsDataListener;)I

    goto :goto_0

    .line 307
    :cond_4
    const-string v0, "appKey"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    const-string v1, "MsgDistribute"

    const-string v2, "callback is null"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "dataId"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p5, v3, v4

    const/4 v4, 0x2

    const-string v5, " serviceId"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    const-string v5, " command"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "appkey"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    const-string v0, "accs"

    const-string v1, "send_fail"

    const-string v2, "1"

    const-string v3, "service is null"

    invoke-static {v0, v1, p4, v2, v3}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected a(Landroid/content/Context;Ljava/util/Map;Landroid/content/Intent;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/IAppReceiver;",
            ">;",
            "Landroid/content/Intent;",
            "II)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 320
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 321
    if-eqz p2, :cond_1

    .line 322
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 323
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/IAppReceiver;

    .line 324
    invoke-interface {v0}, Lcom/taobao/accs/IAppReceiver;->getAllServices()Ljava/util/Map;

    move-result-object v0

    .line 325
    if-eqz v0, :cond_0

    .line 326
    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 331
    :cond_1
    const/16 v0, 0x67

    if-ne p4, v0, :cond_a

    .line 332
    if-eqz v2, :cond_5

    .line 333
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 335
    const-string v1, "accs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "windvane"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "motu-remote"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 338
    :cond_3
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 340
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 341
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/accs/client/GlobalClientInfo;->getService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 343
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 344
    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    invoke-virtual {p1, p3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 352
    :cond_5
    const-string v0, "connect_avail"

    invoke-virtual {p3, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 353
    const-string v0, "host"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 354
    const-string v0, "errorDetail"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 355
    const-string v0, "type_inapp"

    invoke-virtual {p3, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 356
    const-string v0, "is_center_host"

    invoke-virtual {p3, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 357
    const/4 v0, 0x0

    .line 358
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 359
    if-eqz v6, :cond_8

    .line 360
    new-instance v0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;-><init>(Ljava/lang/String;ZZ)V

    .line 364
    :goto_2
    iput-boolean v6, v0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->connected:Z

    .line 366
    :cond_6
    if-eqz v0, :cond_9

    .line 367
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.taobao.accs.intent.action.CONNECTINFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string v2, "connect_info"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 370
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 392
    :cond_7
    :goto_3
    return-void

    .line 362
    :cond_8
    new-instance v0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;-><init>(Ljava/lang/String;ZZILjava/lang/String;)V

    goto :goto_2

    .line 372
    :cond_9
    const-string v0, "MsgDistribute"

    const-string v1, "connect info null, host empty"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 375
    :cond_a
    const/16 v0, 0x68

    if-ne p4, v0, :cond_d

    .line 376
    if-eqz v2, :cond_7

    .line 377
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 378
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 380
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 381
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/accs/client/GlobalClientInfo;->getService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 383
    :cond_c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 384
    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    invoke-virtual {p1, p3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_4

    .line 390
    :cond_d
    const-string v0, "MsgDistribute"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "distribMessage serviceId is null!! command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method protected a(ILjava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 163
    .line 164
    const/16 v2, 0x64

    if-eq p1, v2, :cond_0

    const-string v2, "agooSend"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    invoke-static {}, Lcom/taobao/accs/utl/UtilityImpl;->getUsableSpace()J

    move-result-wide v2

    .line 166
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    const-wide/32 v4, 0x500000

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    .line 167
    const-string v4, "accs"

    const-string v5, "send_fail"

    const-string v6, "1"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "space low "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, p2, v6, v7}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v4, "MsgDistribute"

    const-string v5, "user space low, don\'t distribute"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "size"

    aput-object v7, v6, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v1, 0x2

    const-string v2, "serviceId"

    aput-object v2, v6, v1

    const/4 v1, 0x3

    aput-object p2, v6, v1

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Lcom/taobao/accs/IAppReceiver;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 180
    .line 183
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    :goto_0
    return v1

    .line 187
    :cond_0
    const/4 v2, 0x0

    .line 188
    if-eqz p5, :cond_1

    .line 189
    invoke-interface {p5, p2}, Lcom/taobao/accs/IAppReceiver;->getService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 193
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/taobao/accs/client/GlobalClientInfo;->getService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 197
    const-string v2, "accs"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 198
    const-string v2, "MsgDistribute"

    const-string v3, "start MsgDistributeService"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "dataId"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    :goto_1
    invoke-virtual {p4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/taobao/accs/data/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p1, p4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_2
    move v1, v0

    .line 212
    goto :goto_0

    .line 200
    :cond_3
    const-string v2, "MsgDistribute"

    const-string v3, "start MsgDistributeService"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "dataId"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    const-string v2, "MsgDistribute"

    const-string v3, "handleMsgInChannelProcess"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    const-string v0, "com.taobao.accs.ChannelService"

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    const-string v0, "com.taobao.accs.data.MsgDistributeService"

    return-object v0
.end method
