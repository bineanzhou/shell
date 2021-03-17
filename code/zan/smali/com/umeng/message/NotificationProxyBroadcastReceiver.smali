.class public Lcom/umeng/message/NotificationProxyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationProxyBroadcastReceiver.java"


# static fields
.field public static final EXTRA_ACTION_CLICK:I = 0xa

.field public static final EXTRA_ACTION_DISMISS:I = 0xb

.field public static final EXTRA_ACTION_NOT_EXIST:I = -0x1

.field public static final EXTRA_KEY_ACTION:Ljava/lang/String; = "ACTION"

.field public static final EXTRA_KEY_MESSAGE_ID:Ljava/lang/String; = "MESSAGE_ID"

.field public static final EXTRA_KEY_MSG:Ljava/lang/String; = "MSG"

.field public static final EXTRA_KEY_NOTIFICATION_ID:Ljava/lang/String; = "NOTIFICATION_ID"

.field public static final EXTRA_KEY_TASK_ID:Ljava/lang/String; = "TASK_ID"

.field public static final LOCAL_ACTION_CLICK:I = 0xc

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/umeng/message/UHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/umeng/message/NotificationProxyBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/NotificationProxyBroadcastReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 82
    if-nez v0, :cond_0

    .line 83
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/NotificationProxyBroadcastReceiver;->a:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u627e\u4e0d\u5230\u5e94\u7528: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-interface {v0, v1, v6, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 91
    :goto_0
    return-void

    .line 86
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 89
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/NotificationProxyBroadcastReceiver;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6253\u5f00\u5e94\u7528: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .prologue
    .line 31
    const-string v0, "MSG"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    :try_start_0
    const-string v1, "ACTION"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 35
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v3, Lcom/umeng/message/NotificationProxyBroadcastReceiver;->a:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "onReceive[msg=%s, action=%d]"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 37
    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 38
    invoke-direct {p0, p1}, Lcom/umeng/message/NotificationProxyBroadcastReceiver;->a(Landroid/content/Context;)V

    .line 77
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v2, Lcom/umeng/message/entity/UMessage;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/umeng/message/entity/UMessage;-><init>(Lorg/json/JSONObject;)V

    .line 43
    const-string v0, "NOTIFICATION_ID"

    const/4 v3, -0x1

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 45
    const-string v3, "MESSAGE_ID"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/umeng/message/entity/UMessage;->message_id:Ljava/lang/String;

    .line 46
    const-string v3, "TASK_ID"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/umeng/message/entity/UMessage;->task_id:Ljava/lang/String;

    .line 48
    packed-switch v1, :pswitch_data_0

    .line 73
    :cond_1
    :goto_1
    invoke-static {}, Lcom/umeng/message/MessageNotificationQueue;->getInstance()Lcom/umeng/message/MessageNotificationQueue;

    move-result-object v1

    new-instance v3, Lcom/umeng/message/entity/UNotificationItem;

    invoke-direct {v3, v0, v2}, Lcom/umeng/message/entity/UNotificationItem;-><init>(ILcom/umeng/message/entity/UMessage;)V

    invoke-virtual {v1, v3}, Lcom/umeng/message/MessageNotificationQueue;->remove(Lcom/umeng/message/entity/UNotificationItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 50
    :pswitch_0
    :try_start_1
    sget-object v1, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v3, Lcom/umeng/message/NotificationProxyBroadcastReceiver;->a:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "\u5ffd\u7565\u901a\u77e5"

    aput-object v7, v5, v6

    invoke-interface {v1, v3, v4, v5}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 51
    invoke-static {p1}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/umeng/message/UTrack;->setClearPrevMessage(Z)V

    .line 52
    invoke-static {p1}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/umeng/message/UTrack;->trackMsgDismissed(Lcom/umeng/message/entity/UMessage;)V

    .line 53
    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lcom/umeng/message/PushAgent;->getNotificationClickHandler()Lcom/umeng/message/UHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/NotificationProxyBroadcastReceiver;->b:Lcom/umeng/message/UHandler;

    .line 55
    iget-object v1, p0, Lcom/umeng/message/NotificationProxyBroadcastReceiver;->b:Lcom/umeng/message/UHandler;

    if-eqz v1, :cond_1

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/umeng/message/entity/UMessage;->clickOrDismiss:Z

    .line 57
    iget-object v1, p0, Lcom/umeng/message/NotificationProxyBroadcastReceiver;->b:Lcom/umeng/message/UHandler;

    invoke-interface {v1, p1, v2}, Lcom/umeng/message/UHandler;->handleMessage(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V

    goto :goto_1

    .line 61
    :pswitch_1
    sget-object v1, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v3, Lcom/umeng/message/NotificationProxyBroadcastReceiver;->a:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "\u70b9\u51fb\u901a\u77e5"

    aput-object v7, v5, v6

    invoke-interface {v1, v3, v4, v5}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 62
    invoke-static {p1}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/umeng/message/UTrack;->setClearPrevMessage(Z)V

    .line 63
    invoke-static {p1}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/umeng/message/UTrack;->trackMsgClick(Lcom/umeng/message/entity/UMessage;)V

    .line 64
    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/umeng/message/PushAgent;->getNotificationClickHandler()Lcom/umeng/message/UHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/NotificationProxyBroadcastReceiver;->b:Lcom/umeng/message/UHandler;

    .line 66
    iget-object v1, p0, Lcom/umeng/message/NotificationProxyBroadcastReceiver;->b:Lcom/umeng/message/UHandler;

    if-eqz v1, :cond_1

    .line 67
    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/umeng/message/entity/UMessage;->clickOrDismiss:Z

    .line 68
    iget-object v1, p0, Lcom/umeng/message/NotificationProxyBroadcastReceiver;->b:Lcom/umeng/message/UHandler;

    invoke-interface {v1, p1, v2}, Lcom/umeng/message/UHandler;->handleMessage(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 48
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
