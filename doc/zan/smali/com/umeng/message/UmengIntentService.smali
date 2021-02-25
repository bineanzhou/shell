.class public Lcom/umeng/message/UmengIntentService;
.super Lcom/umeng/message/UmengBaseIntentService;
.source "UmengIntentService.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/umeng/message/UmengIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/UmengIntentService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/umeng/message/UmengBaseIntentService;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;Lcom/umeng/message/entity/UMessage;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 135
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/umeng/message/entity/UMessage;->extra:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 144
    :cond_0
    return-object p1

    .line 138
    :cond_1
    iget-object v0, p2, Lcom/umeng/message/entity/UMessage;->extra:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 139
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 140
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    if-eqz v1, :cond_2

    .line 142
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Lcom/umeng/message/UmengBaseIntentService;->onMessage(Landroid/content/Context;Landroid/content/Intent;)V

    .line 45
    const-string v0, ""

    .line 46
    const-string v0, ""

    .line 47
    const-string v0, ""

    .line 49
    :try_start_0
    const-string v0, "body"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    const-string v1, "id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    const-string v2, "task_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    new-instance v3, Lcom/umeng/message/entity/UMessage;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/umeng/message/entity/UMessage;-><init>(Lorg/json/JSONObject;)V

    .line 54
    const-string v4, "pullapp"

    iget-object v5, v3, Lcom/umeng/message/entity/UMessage;->display_type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 55
    iget-boolean v0, v3, Lcom/umeng/message/entity/UMessage;->isAction:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, v3, Lcom/umeng/message/entity/UMessage;->pulled_service:Ljava/lang/String;

    iget-object v1, v3, Lcom/umeng/message/entity/UMessage;->pulled_package:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getServiceName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/umeng/message/entity/UMessage;->pulled_service:Ljava/lang/String;

    .line 60
    :cond_0
    iget-object v0, v3, Lcom/umeng/message/entity/UMessage;->pulled_service:Ljava/lang/String;

    iget-object v1, v3, Lcom/umeng/message/entity/UMessage;->pulled_package:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->isServiceWork(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    invoke-static {p1}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v0

    const/16 v1, 0x34

    invoke-virtual {v0, v3, v1}, Lcom/umeng/message/UTrack;->trackMsgPulled(Lcom/umeng/message/entity/UMessage;I)V

    .line 132
    :cond_1
    :goto_0
    return-void

    .line 65
    :cond_2
    iget-object v0, v3, Lcom/umeng/message/entity/UMessage;->pulled_package:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getDataData(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 66
    invoke-static {p1}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v0

    const/16 v1, 0x35

    invoke-virtual {v0, v3, v1}, Lcom/umeng/message/UTrack;->trackMsgPulled(Lcom/umeng/message/entity/UMessage;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 70
    :cond_3
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 71
    iget-object v1, v3, Lcom/umeng/message/entity/UMessage;->pulled_package:Ljava/lang/String;

    iget-object v2, v3, Lcom/umeng/message/entity/UMessage;->pulled_service:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-direct {p0, v0, v3}, Lcom/umeng/message/UmengIntentService;->a(Landroid/content/Intent;Lcom/umeng/message/entity/UMessage;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v0}, Lcom/umeng/message/UmengIntentService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 74
    new-instance v0, Lcom/umeng/message/UmengIntentService$1;

    invoke-direct {v0, p0, p1, v3}, Lcom/umeng/message/UmengIntentService$1;-><init>(Lcom/umeng/message/UmengIntentService;Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V

    invoke-static {v0}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 95
    :cond_4
    const-string v4, "notificationpullapp"

    iget-object v3, v3, Lcom/umeng/message/entity/UMessage;->display_type:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 96
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v4, "com.umeng.message.message.handler.action"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v4, "body"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v0, "id"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v0, "task_id"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 104
    :cond_5
    invoke-static {p1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/message/MessageSharedPrefs;->getPushIntentServiceClass()Ljava/lang/String;

    move-result-object v3

    .line 106
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 107
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 108
    invoke-virtual {v4, p1, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v3, "body"

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v0, "id"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v0, "task_id"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 116
    :cond_6
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v4, "com.umeng.message.message.handler.action"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v4, "body"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v0, "id"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v0, "task_id"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
