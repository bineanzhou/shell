.class public final Lcom/taobao/agoo/TaobaoRegister;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final EVENT_ID:I = 0x101d1

.field static final PREFERENCES:Ljava/lang/String; = "Agoo_AppStore"

.field static final PROPERTY_APP_NOTIFICATION_CUSTOM_SOUND:Ljava/lang/String; = "app_notification_custom_sound"

.field static final PROPERTY_APP_NOTIFICATION_ICON:Ljava/lang/String; = "app_notification_icon"

.field static final PROPERTY_APP_NOTIFICATION_SOUND:Ljava/lang/String; = "app_notification_sound"

.field static final PROPERTY_APP_NOTIFICATION_VIBRATE:Ljava/lang/String; = "app_notification_vibrate"

.field private static final SERVICEID:Ljava/lang/String; = "agooSend"

.field protected static final TAG:Ljava/lang/String; = "TaobaoRegister"

.field private static mRequestListener:Lcom/taobao/agoo/a/b;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method static synthetic access$000()Lcom/taobao/agoo/a/b;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/taobao/agoo/TaobaoRegister;->mRequestListener:Lcom/taobao/agoo/a/b;

    return-object v0
.end method

.method static synthetic access$002(Lcom/taobao/agoo/a/b;)Lcom/taobao/agoo/a/b;
    .locals 0

    .prologue
    .line 31
    sput-object p0, Lcom/taobao/agoo/TaobaoRegister;->mRequestListener:Lcom/taobao/agoo/a/b;

    return-object p0
.end method

.method public static bindAgoo(Landroid/content/Context;Lcom/taobao/agoo/ICallback;)V
    .locals 4

    .prologue
    .line 371
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/taobao/agoo/TaobaoRegister;->sendSwitch(Landroid/content/Context;Lcom/taobao/agoo/ICallback;Z)V

    .line 372
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d1

    const-string v2, "bindAgoo"

    invoke-static {p0}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;)V

    .line 373
    return-void
.end method

.method public static bindAgoo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/android/agoo/common/CallBack;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 308
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/taobao/agoo/TaobaoRegister;->bindAgoo(Landroid/content/Context;Lcom/taobao/agoo/ICallback;)V

    .line 309
    return-void
.end method

.method public static clickMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 393
    new-instance v3, Lorg/android/agoo/control/NotifManager;

    invoke-direct {v3}, Lorg/android/agoo/control/NotifManager;-><init>()V

    .line 397
    :try_start_0
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    const-string v0, "TaobaoRegister"

    const-string v2, "clickMessage"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "msgid"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    const-string v6, "extData"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    invoke-static {v0, v2, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    :cond_0
    const-string v0, "accs"

    .line 401
    const-string v4, "8"

    .line 402
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 403
    const-string v0, "TaobaoRegister"

    const-string v2, "messageId == null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    if-eqz v1, :cond_1

    .line 421
    invoke-virtual {v3, v1}, Lorg/android/agoo/control/NotifManager;->reportNotifyMessage(Lorg/android/agoo/common/MsgDO;)V

    .line 424
    :cond_1
    :goto_0
    return-void

    .line 406
    :cond_2
    :try_start_1
    invoke-virtual {v3, p0}, Lorg/android/agoo/control/NotifManager;->init(Landroid/content/Context;)V

    .line 407
    new-instance v2, Lorg/android/agoo/common/MsgDO;

    invoke-direct {v2}, Lorg/android/agoo/common/MsgDO;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    :try_start_2
    iput-object p1, v2, Lorg/android/agoo/common/MsgDO;->msgIds:Ljava/lang/String;

    .line 409
    iput-object p2, v2, Lorg/android/agoo/common/MsgDO;->extData:Ljava/lang/String;

    .line 410
    iput-object v0, v2, Lorg/android/agoo/common/MsgDO;->messageSource:Ljava/lang/String;

    .line 411
    iput-object v4, v2, Lorg/android/agoo/common/MsgDO;->msgStatus:Ljava/lang/String;

    .line 412
    new-instance v0, Lorg/android/agoo/control/AgooFactory;

    invoke-direct {v0}, Lorg/android/agoo/control/AgooFactory;-><init>()V

    .line 413
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v3, v1}, Lorg/android/agoo/control/AgooFactory;->init(Landroid/content/Context;Lorg/android/agoo/control/NotifManager;Lorg/android/agoo/message/MessageService;)V

    .line 415
    const-string v1, "8"

    invoke-virtual {v0, p1, v1}, Lorg/android/agoo/control/AgooFactory;->updateMsgStatus(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 420
    if-eqz v2, :cond_1

    .line 421
    invoke-virtual {v3, v2}, Lorg/android/agoo/control/NotifManager;->reportNotifyMessage(Lorg/android/agoo/common/MsgDO;)V

    goto :goto_0

    .line 417
    :catch_0
    move-exception v0

    .line 418
    :goto_1
    :try_start_3
    const-string v2, "TaobaoRegister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clickMessage,error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 420
    if-eqz v1, :cond_1

    .line 421
    invoke-virtual {v3, v1}, Lorg/android/agoo/control/NotifManager;->reportNotifyMessage(Lorg/android/agoo/common/MsgDO;)V

    goto :goto_0

    .line 420
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    .line 421
    invoke-virtual {v3, v1}, Lorg/android/agoo/control/NotifManager;->reportNotifyMessage(Lorg/android/agoo/common/MsgDO;)V

    :cond_3
    throw v0

    .line 420
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 417
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public static dismissMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 433
    new-instance v3, Lorg/android/agoo/control/NotifManager;

    invoke-direct {v3}, Lorg/android/agoo/control/NotifManager;-><init>()V

    .line 436
    :try_start_0
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    const-string v0, "TaobaoRegister"

    const-string v2, "dismissMessage"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "msgid"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    const-string v6, "extData"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    invoke-static {v0, v2, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    :cond_0
    const-string v0, "accs"

    .line 440
    const-string v4, "9"

    .line 441
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 442
    const-string v0, "TaobaoRegister"

    const-string v2, "messageId == null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    if-eqz v1, :cond_1

    .line 459
    invoke-virtual {v3, v1}, Lorg/android/agoo/control/NotifManager;->reportNotifyMessage(Lorg/android/agoo/common/MsgDO;)V

    .line 462
    :cond_1
    :goto_0
    return-void

    .line 445
    :cond_2
    :try_start_1
    invoke-virtual {v3, p0}, Lorg/android/agoo/control/NotifManager;->init(Landroid/content/Context;)V

    .line 446
    new-instance v2, Lorg/android/agoo/common/MsgDO;

    invoke-direct {v2}, Lorg/android/agoo/common/MsgDO;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    :try_start_2
    iput-object p1, v2, Lorg/android/agoo/common/MsgDO;->msgIds:Ljava/lang/String;

    .line 448
    iput-object p2, v2, Lorg/android/agoo/common/MsgDO;->extData:Ljava/lang/String;

    .line 449
    iput-object v0, v2, Lorg/android/agoo/common/MsgDO;->messageSource:Ljava/lang/String;

    .line 450
    iput-object v4, v2, Lorg/android/agoo/common/MsgDO;->msgStatus:Ljava/lang/String;

    .line 451
    new-instance v0, Lorg/android/agoo/control/AgooFactory;

    invoke-direct {v0}, Lorg/android/agoo/control/AgooFactory;-><init>()V

    .line 452
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v3, v1}, Lorg/android/agoo/control/AgooFactory;->init(Landroid/content/Context;Lorg/android/agoo/control/NotifManager;Lorg/android/agoo/message/MessageService;)V

    .line 454
    const-string v1, "9"

    invoke-virtual {v0, p1, v1}, Lorg/android/agoo/control/AgooFactory;->updateMsgStatus(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 458
    if-eqz v2, :cond_1

    .line 459
    invoke-virtual {v3, v2}, Lorg/android/agoo/control/NotifManager;->reportNotifyMessage(Lorg/android/agoo/common/MsgDO;)V

    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    :goto_1
    :try_start_3
    const-string v2, "TaobaoRegister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clickMessage,error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 458
    if-eqz v1, :cond_1

    .line 459
    invoke-virtual {v3, v1}, Lorg/android/agoo/control/NotifManager;->reportNotifyMessage(Lorg/android/agoo/common/MsgDO;)V

    goto :goto_0

    .line 458
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    .line 459
    invoke-virtual {v3, v1}, Lorg/android/agoo/control/NotifManager;->reportNotifyMessage(Lorg/android/agoo/common/MsgDO;)V

    :cond_3
    throw v0

    .line 458
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 455
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public static isEnableDaemonServer(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 471
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    const-string v0, "TaobaoRegister"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnableDaemonServer begin,enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    :cond_0
    invoke-static {p0, p1}, Lorg/android/agoo/common/Config;->a(Landroid/content/Context;Z)V

    .line 475
    return-void
.end method

.method public static pingApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 465
    new-instance v0, Lorg/android/agoo/control/NotifManager;

    invoke-direct {v0}, Lorg/android/agoo/control/NotifManager;-><init>()V

    .line 466
    invoke-virtual {v0, p0}, Lorg/android/agoo/control/NotifManager;->init(Landroid/content/Context;)V

    .line 467
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/android/agoo/control/NotifManager;->pingApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 468
    return-void
.end method

.method public static declared-synchronized register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/agoo/IRegister;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/accs/AccsException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 79
    const-class v6, Lcom/taobao/agoo/TaobaoRegister;

    monitor-enter v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/taobao/agoo/TaobaoRegister;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/agoo/IRegister;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit v6

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/agoo/IRegister;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/accs/AccsException;
        }
    .end annotation

    .prologue
    .line 93
    const-class v8, Lcom/taobao/agoo/TaobaoRegister;

    monitor-enter v8

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    const-string v0, "TaobaoRegister"

    const-string v1, "register params null"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "appkey"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    const-string v4, "configTag"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const/4 v3, 0x4

    const-string v4, "context"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :goto_0
    monitor-exit v8

    return-void

    .line 97
    :cond_1
    :try_start_1
    const-string v0, "TaobaoRegister"

    const-string v1, "register"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "appKey"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    const-string v4, "configTag"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 99
    sput-object p1, Lorg/android/agoo/common/Config;->a:Ljava/lang/String;

    .line 100
    invoke-static {p0, p2}, Lorg/android/agoo/common/Config;->setAgooAppKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    sput-object p3, Lcom/taobao/accs/utl/a;->b:Ljava/lang/String;

    .line 102
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    const/4 v0, 0x2

    sput v0, Lcom/taobao/accs/client/a;->a:I

    .line 106
    :cond_2
    invoke-static {p1}, Lcom/taobao/accs/AccsClientConfig;->getConfigByTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig;

    move-result-object v0

    .line 107
    if-nez v0, :cond_3

    .line 108
    new-instance v0, Lcom/taobao/accs/AccsClientConfig$Builder;

    invoke-direct {v0}, Lcom/taobao/accs/AccsClientConfig$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAppKey(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAppSecret(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/accs/AccsClientConfig$Builder;->setTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig$Builder;->build()Lcom/taobao/accs/AccsClientConfig;

    .line 118
    :goto_1
    invoke-static {p0, p2, p1}, Lcom/taobao/accs/ACCSManager;->getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;

    move-result-object v2

    .line 120
    new-instance v0, Lcom/taobao/agoo/f;

    move-object v3, p5

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/agoo/f;-><init>(Landroid/content/Context;Lcom/taobao/accs/IACCSManager;Lcom/taobao/agoo/IRegister;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v0

    invoke-interface/range {v2 .. v7}, Lcom/taobao/accs/IACCSManager;->bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    .line 112
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getAuthCode()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/taobao/accs/client/a;->c:Ljava/lang/String;

    .line 113
    const-string v2, "TaobaoRegister"

    const-string v3, "config exist"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "config"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static declared-synchronized removeAlias(Landroid/content/Context;Lcom/taobao/agoo/ICallback;)V
    .locals 9

    .prologue
    .line 254
    const-class v1, Lcom/taobao/agoo/TaobaoRegister;

    monitor-enter v1

    :try_start_0
    const-string v0, "TaobaoRegister"

    const-string v2, "removeAlias"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :try_start_1
    invoke-static {p0}, Lorg/android/agoo/common/Config;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {p0}, Lorg/android/agoo/common/Config;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-static {p0}, Lorg/android/agoo/common/Config;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 259
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 263
    :cond_0
    if-eqz p1, :cond_1

    .line 264
    const-string v4, "504.1"

    const-string v5, "input params null!!"

    invoke-virtual {p1, v4, v5}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_1
    const-string v4, "TaobaoRegister"

    const-string v5, "setAlias param null"

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "appkey"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v3, 0x2

    const-string v7, "deviceId"

    aput-object v7, v6, v3

    const/4 v3, 0x3

    aput-object v0, v6, v3

    const/4 v0, 0x4

    const-string v3, "pushAliasToken"

    aput-object v3, v6, v0

    const/4 v0, 0x5

    aput-object v2, v6, v0

    const/4 v0, 0x6

    const-string v2, "context"

    aput-object v2, v6, v0

    const/4 v0, 0x7

    aput-object p0, v6, v0

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    :cond_2
    :goto_0
    monitor-exit v1

    return-void

    .line 271
    :cond_3
    :try_start_2
    invoke-static {p0}, Lorg/android/agoo/common/Config;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/taobao/accs/ACCSManager;->getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;

    move-result-object v4

    .line 272
    sget-object v5, Lcom/taobao/agoo/TaobaoRegister;->mRequestListener:Lcom/taobao/agoo/a/b;

    if-nez v5, :cond_4

    .line 273
    new-instance v5, Lcom/taobao/agoo/a/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/taobao/agoo/a/b;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/taobao/agoo/TaobaoRegister;->mRequestListener:Lcom/taobao/agoo/a/b;

    .line 275
    :cond_4
    const-string v5, "AgooDeviceCmd"

    sget-object v6, Lcom/taobao/agoo/TaobaoRegister;->mRequestListener:Lcom/taobao/agoo/a/b;

    invoke-interface {v4, p0, v5, v6}, Lcom/taobao/accs/IACCSManager;->registerDataListener(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V

    .line 277
    invoke-static {v3, v0, v2}, Lcom/taobao/agoo/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 278
    new-instance v2, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v3, 0x0

    const-string v5, "AgooDeviceCmd"

    const/4 v6, 0x0

    invoke-direct {v2, v3, v5, v0, v6}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 279
    invoke-interface {v4, p0, v2}, Lcom/taobao/accs/IACCSManager;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 281
    if-eqz p1, :cond_2

    .line 282
    const-string v0, "504.1"

    const-string v2, "accs channel disabled!"

    invoke-virtual {p1, v0, v2}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    :try_start_3
    const-string v2, "TaobaoRegister"

    const-string v3, "removeAlias"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 286
    :cond_5
    if-eqz p1, :cond_2

    .line 287
    :try_start_4
    sget-object v2, Lcom/taobao/agoo/TaobaoRegister;->mRequestListener:Lcom/taobao/agoo/a/b;

    iget-object v2, v2, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private static declared-synchronized sendSwitch(Landroid/content/Context;Lcom/taobao/agoo/ICallback;Z)V
    .locals 8

    .prologue
    .line 326
    const-class v1, Lcom/taobao/agoo/TaobaoRegister;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/common/Config;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-static {p0}, Lorg/android/agoo/common/Config;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-static {p0}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 330
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 333
    :cond_0
    if-eqz p1, :cond_1

    .line 334
    const-string v3, "503.3"

    const-string v4, "input params null!!"

    invoke-virtual {p1, v3, v4}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_1
    const-string v3, "TaobaoRegister"

    const-string v4, "sendSwitch param null"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "appkey"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v2, 0x2

    const-string v6, "deviceId"

    aput-object v6, v5, v2

    const/4 v2, 0x3

    aput-object v0, v5, v2

    const/4 v0, 0x4

    const-string v2, "context"

    aput-object v2, v5, v0

    const/4 v0, 0x5

    aput-object p0, v5, v0

    const/4 v0, 0x6

    const-string v2, "enablePush"

    aput-object v2, v5, v0

    const/4 v0, 0x7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :cond_2
    :goto_0
    monitor-exit v1

    return-void

    .line 341
    :cond_3
    :try_start_1
    invoke-static {p0}, Lorg/android/agoo/common/Config;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v2, v4}, Lcom/taobao/accs/ACCSManager;->getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;

    move-result-object v4

    .line 342
    sget-object v5, Lcom/taobao/agoo/TaobaoRegister;->mRequestListener:Lcom/taobao/agoo/a/b;

    if-nez v5, :cond_4

    .line 343
    new-instance v5, Lcom/taobao/agoo/a/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/taobao/agoo/a/b;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/taobao/agoo/TaobaoRegister;->mRequestListener:Lcom/taobao/agoo/a/b;

    .line 345
    :cond_4
    const-string v5, "AgooDeviceCmd"

    sget-object v6, Lcom/taobao/agoo/TaobaoRegister;->mRequestListener:Lcom/taobao/agoo/a/b;

    invoke-interface {v4, p0, v5, v6}, Lcom/taobao/accs/IACCSManager;->registerDataListener(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V

    .line 347
    invoke-static {v2, v0, v3, p2}, Lcom/taobao/agoo/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v0

    .line 348
    new-instance v2, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v3, 0x0

    const-string v5, "AgooDeviceCmd"

    const/4 v6, 0x0

    invoke-direct {v2, v3, v5, v0, v6}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 349
    invoke-interface {v4, p0, v2}, Lcom/taobao/accs/IACCSManager;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 351
    if-eqz p1, :cond_2

    .line 352
    const-string v0, "503.2"

    const-string v2, "accs channel disabled!"

    invoke-virtual {p1, v0, v2}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    :try_start_2
    const-string v2, "TaobaoRegister"

    const-string v3, "sendSwitch"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 356
    :cond_5
    if-eqz p1, :cond_2

    .line 357
    :try_start_3
    sget-object v2, Lcom/taobao/agoo/TaobaoRegister;->mRequestListener:Lcom/taobao/agoo/a/b;

    iget-object v2, v2, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized setAccsConfigTag(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 55
    const-class v1, Lcom/taobao/agoo/TaobaoRegister;

    monitor-enter v1

    :try_start_0
    sput-object p1, Lorg/android/agoo/common/Config;->a:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lcom/taobao/accs/AccsClientConfig;->getConfigByTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig;

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "accs config not exist!! please set accs config first!!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 60
    :cond_0
    :try_start_1
    const-string v2, "TaobaoRegister"

    const-string v3, "setAccsConfigTag"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "config"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getAuthCode()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/taobao/accs/client/a;->c:Ljava/lang/String;

    .line 62
    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/android/agoo/common/Config;->setAgooAppKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/utl/a;->b:Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/taobao/accs/utl/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    const/4 v0, 0x2

    sput v0, Lcom/taobao/accs/client/a;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :cond_1
    monitor-exit v1

    return-void
.end method

.method public static setAgooMsgReceiveService(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 482
    sput-object p0, Lcom/taobao/accs/client/a;->b:Ljava/lang/String;

    .line 483
    return-void
.end method

.method public static declared-synchronized setAlias(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/agoo/ICallback;)V
    .locals 8

    .prologue
    .line 189
    const-class v1, Lcom/taobao/agoo/TaobaoRegister;

    monitor-enter v1

    :try_start_0
    const-string v0, "TaobaoRegister"

    const-string v2, "setAlias"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "alias"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    invoke-static {p0}, Lorg/android/agoo/common/Config;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {p0}, Lorg/android/agoo/common/Config;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 196
    :cond_0
    if-eqz p2, :cond_1

    .line 197
    const-string v3, "504.1"

    const-string v4, "input params null!!"

    invoke-virtual {p2, v3, v4}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_1
    const-string v3, "TaobaoRegister"

    const-string v4, "setAlias param null"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "appkey"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v2, 0x2

    const-string v6, "deviceId"

    aput-object v6, v5, v2

    const/4 v2, 0x3

    aput-object v0, v5, v2

    const/4 v0, 0x4

    const-string v2, "alias"

    aput-object v2, v5, v0

    const/4 v0, 0x5

    aput-object p1, v5, v0

    const/4 v0, 0x6

    const-string v2, "context"

    aput-object v2, v5, v0

    const/4 v0, 0x7

    aput-object p0, v5, v0

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :cond_2
    :goto_0
    monitor-exit v1

    return-void

    .line 207
    :cond_3
    :try_start_1
    sget-object v3, Lcom/taobao/agoo/TaobaoRegister;->mRequestListener:Lcom/taobao/agoo/a/b;

    if-nez v3, :cond_4

    .line 208
    new-instance v3, Lcom/taobao/agoo/a/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/taobao/agoo/a/b;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/taobao/agoo/TaobaoRegister;->mRequestListener:Lcom/taobao/agoo/a/b;

    .line 210
    :cond_4
    sget-object v3, Lcom/taobao/agoo/a/b;->b:Lcom/taobao/agoo/a/a;

    invoke-virtual {v3, p1}, Lcom/taobao/agoo/a/a;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 211
    const-string v0, "TaobaoRegister"

    const-string v2, "Alias already set"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "alias"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    if-eqz p2, :cond_2

    .line 213
    invoke-virtual {p2}, Lcom/taobao/agoo/ICallback;->onSuccess()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    :try_start_2
    const-string v2, "TaobaoRegister"

    const-string v3, "setAlias"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 217
    :cond_5
    :try_start_3
    invoke-static {p0}, Lorg/android/agoo/common/Config;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/taobao/accs/ACCSManager;->getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;

    move-result-object v3

    .line 218
    sget-object v4, Lcom/taobao/agoo/a/b;->b:Lcom/taobao/agoo/a/a;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/taobao/agoo/a/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 219
    const-string v4, "AgooDeviceCmd"

    sget-object v5, Lcom/taobao/agoo/TaobaoRegister;->mRequestListener:Lcom/taobao/agoo/a/b;

    invoke-interface {v3, p0, v4, v5}, Lcom/taobao/accs/IACCSManager;->registerDataListener(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V

    .line 220
    invoke-static {v2, v0, p1}, Lcom/taobao/agoo/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 221
    new-instance v2, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v4, 0x0

    const-string v5, "AgooDeviceCmd"

    const/4 v6, 0x0

    invoke-direct {v2, v4, v5, v0, v6}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 222
    invoke-interface {v3, p0, v2}, Lcom/taobao/accs/IACCSManager;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 224
    if-eqz p2, :cond_2

    .line 225
    const-string v0, "504.1"

    const-string v2, "accs channel disabled!"

    invoke-virtual {p2, v0, v2}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_6
    if-eqz p2, :cond_2

    .line 230
    iput-object p1, p2, Lcom/taobao/agoo/ICallback;->extra:Ljava/lang/String;

    .line 231
    sget-object v2, Lcom/taobao/agoo/TaobaoRegister;->mRequestListener:Lcom/taobao/agoo/a/b;

    iget-object v2, v2, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 236
    :cond_7
    if-eqz p2, :cond_2

    .line 237
    const-string v0, "504.1"

    const-string v2, "bindApp first!!"

    invoke-virtual {p2, v0, v2}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public static setBuilderSound(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 543
    return-void
.end method

.method public static setEnv(Landroid/content/Context;I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/taobao/accs/AccsClientConfig$ENV;
        .end annotation
    .end param

    .prologue
    .line 520
    invoke-static {p0, p1}, Lcom/taobao/accs/ACCSClient;->setEnvironment(Landroid/content/Context;I)V

    .line 521
    return-void
.end method

.method public static setNotificationIcon(Landroid/content/Context;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 526
    return-void
.end method

.method public static setNotificationSound(Landroid/content/Context;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 532
    return-void
.end method

.method public static setNotificationVibrate(Landroid/content/Context;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 548
    return-void
.end method

.method public static unBindAgoo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/android/agoo/common/CallBack;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 321
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/taobao/agoo/TaobaoRegister;->unbindAgoo(Landroid/content/Context;Lcom/taobao/agoo/ICallback;)V

    .line 322
    return-void
.end method

.method public static unbindAgoo(Landroid/content/Context;Lcom/taobao/agoo/ICallback;)V
    .locals 4

    .prologue
    .line 381
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/taobao/agoo/TaobaoRegister;->sendSwitch(Landroid/content/Context;Lcom/taobao/agoo/ICallback;Z)V

    .line 382
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d1

    const-string v2, "unregister"

    invoke-static {p0}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;)V

    .line 383
    return-void
.end method

.method public static unregister(Landroid/content/Context;Lorg/android/agoo/common/CallBack;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 552
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/taobao/agoo/TaobaoRegister;->unbindAgoo(Landroid/content/Context;Lcom/taobao/agoo/ICallback;)V

    .line 553
    return-void
.end method
