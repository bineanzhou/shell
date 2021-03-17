.class public Lcom/umeng/message/UmengMessageHandler;
.super Ljava/lang/Object;
.source "UmengMessageHandler.java"

# interfaces
.implements Lcom/umeng/message/UHandler;


# static fields
.field private static a:I = 0x0

.field private static final b:Ljava/lang/String;

.field private static c:Ljava/util/Date; = null

.field private static d:Ljava/lang/String; = null

.field private static g:Z = false

.field private static final h:Ljava/lang/String; = "upush_default"

.field private static final i:Ljava/lang/String; = "Default"

.field private static final j:Ljava/lang/String; = "umeng_push_notification_default_large_icon"

.field private static final k:Ljava/lang/String; = "umeng_push_notification_default_small_icon"

.field private static final l:Ljava/lang/String; = "umeng_push_notification_default_sound"


# instance fields
.field private e:Lcom/umeng/message/entity/UMessage;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x40

    sput v0, Lcom/umeng/message/UmengMessageHandler;->a:I

    .line 53
    const-class v0, Lcom/umeng/message/UmengMessageHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/UmengMessageHandler;->b:Ljava/lang/String;

    .line 55
    const-string v0, "9999999999999"

    sput-object v0, Lcom/umeng/message/UmengMessageHandler;->d:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/message/UmengMessageHandler;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/UmengMessageHandler;->e:Lcom/umeng/message/entity/UMessage;

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->getNotificationChannelName()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const-string v0, "Default"

    .line 206
    :cond_0
    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/app/Notification;ZLcom/umeng/message/entity/UMessage;)V
    .locals 5

    .prologue
    .line 212
    :try_start_0
    const-string v0, "notification"

    .line 213
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 215
    iget v1, p0, Lcom/umeng/message/UmengMessageHandler;->f:I

    .line 217
    invoke-static {p1}, Lcom/umeng/message/proguard/h;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/umeng/message/proguard/h;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/PushAgent;->getNotificationOnForeground()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 219
    :cond_0
    invoke-static {p1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/MessageSharedPrefs;->getDisplayNotificationNumber()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    if-eqz p3, :cond_4

    .line 221
    :cond_1
    invoke-static {p1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/MessageSharedPrefs;->getDisplayNotificationNumber()I

    move-result v2

    if-lez v2, :cond_3

    .line 222
    :goto_0
    invoke-static {}, Lcom/umeng/message/MessageNotificationQueue;->getInstance()Lcom/umeng/message/MessageNotificationQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/MessageNotificationQueue;->size()I

    move-result v2

    .line 223
    invoke-static {p1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/message/MessageSharedPrefs;->getDisplayNotificationNumber()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 224
    invoke-static {}, Lcom/umeng/message/MessageNotificationQueue;->getInstance()Lcom/umeng/message/MessageNotificationQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/MessageNotificationQueue;->pollFirst()Lcom/umeng/message/entity/UNotificationItem;

    move-result-object v2

    .line 225
    iget v3, v2, Lcom/umeng/message/entity/UNotificationItem;->id:I

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 226
    invoke-static {p1}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/umeng/message/UTrack;->setClearPrevMessage(Z)V

    .line 227
    invoke-static {p1}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v3

    iget-object v2, v2, Lcom/umeng/message/entity/UNotificationItem;->message:Lcom/umeng/message/entity/UMessage;

    invoke-virtual {v3, v2}, Lcom/umeng/message/UTrack;->trackMsgDismissed(Lcom/umeng/message/entity/UMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 241
    :goto_1
    return-void

    .line 229
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/umeng/message/MessageNotificationQueue;->getInstance()Lcom/umeng/message/MessageNotificationQueue;

    move-result-object v2

    new-instance v3, Lcom/umeng/message/entity/UNotificationItem;

    invoke-direct {v3, v1, p4}, Lcom/umeng/message/entity/UNotificationItem;-><init>(ILcom/umeng/message/entity/UMessage;)V

    invoke-virtual {v2, v3}, Lcom/umeng/message/MessageNotificationQueue;->addLast(Lcom/umeng/message/entity/UNotificationItem;)V

    .line 233
    :goto_2
    invoke-virtual {v0, v1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 231
    :cond_3
    invoke-static {}, Lcom/umeng/message/MessageNotificationQueue;->getInstance()Lcom/umeng/message/MessageNotificationQueue;

    move-result-object v2

    new-instance v3, Lcom/umeng/message/entity/UNotificationItem;

    invoke-direct {v3, v1, p4}, Lcom/umeng/message/entity/UNotificationItem;-><init>(ILcom/umeng/message/entity/UMessage;)V

    invoke-virtual {v2, v3}, Lcom/umeng/message/MessageNotificationQueue;->addLast(Lcom/umeng/message/entity/UNotificationItem;)V

    goto :goto_2

    .line 235
    :cond_4
    invoke-static {p1}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/message/UTrack;->setClearPrevMessage(Z)V

    .line 236
    invoke-static {p1}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/umeng/message/UTrack;->trackMsgDismissed(Lcom/umeng/message/entity/UMessage;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 576
    :try_start_0
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 577
    if-nez v0, :cond_0

    .line 596
    :goto_0
    return-void

    .line 580
    :cond_0
    invoke-static {}, Lcom/umeng/message/MessageNotificationQueue;->getInstance()Lcom/umeng/message/MessageNotificationQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/MessageNotificationQueue;->getQueue()Ljava/util/LinkedList;

    move-result-object v1

    .line 581
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 582
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 583
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/message/entity/UNotificationItem;

    .line 584
    iget-object v3, p2, Lcom/umeng/message/entity/UMessage;->recall:Ljava/lang/String;

    iget-object v4, v1, Lcom/umeng/message/entity/UNotificationItem;->message:Lcom/umeng/message/entity/UMessage;

    iget-object v4, v4, Lcom/umeng/message/entity/UMessage;->msg_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 585
    iget v2, v1, Lcom/umeng/message/entity/UNotificationItem;->id:I

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 586
    invoke-static {}, Lcom/umeng/message/MessageNotificationQueue;->getInstance()Lcom/umeng/message/MessageNotificationQueue;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/umeng/message/MessageNotificationQueue;->remove(Lcom/umeng/message/entity/UNotificationItem;)V

    .line 587
    invoke-static {p1}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/entity/UMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 592
    :catch_0
    move-exception v0

    .line 593
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/UmengMessageHandler;->b:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u901a\u77e5\u53ec\u56de\u5f02\u5e38"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v5, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_0

    .line 591
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/umeng/message/UTrack;->b(Lcom/umeng/message/entity/UMessage;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/app/Notification$Builder;Lcom/umeng/message/entity/UMessage;)Z
    .locals 2

    .prologue
    .line 433
    invoke-virtual {p0, p1, p3}, Lcom/umeng/message/UmengMessageHandler;->getSmallIconId(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)I

    move-result v0

    .line 434
    invoke-virtual {p0, p1, p3}, Lcom/umeng/message/UmengMessageHandler;->getLargeIcon(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 436
    if-gez v0, :cond_0

    .line 437
    const/4 v0, 0x0

    .line 444
    :goto_0
    return v0

    .line 439
    :cond_0
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 442
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 444
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "Wakelock"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 246
    :try_start_0
    const-string v0, "power"

    .line 247
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 252
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x7

    if-lt v2, v3, :cond_1

    .line 253
    new-instance v1, Lcom/umeng/message/UmengMessageHandler$1;

    invoke-direct {v1, p0, v0}, Lcom/umeng/message/UmengMessageHandler$1;-><init>(Lcom/umeng/message/UmengMessageHandler;Landroid/os/PowerManager;)V

    .line 257
    invoke-virtual {v1}, Lcom/umeng/message/UmengMessageHandler$1;->a()Z

    move-result v1

    .line 263
    :goto_0
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v3, Lcom/umeng/message/UmengMessageHandler;->b:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5c4f\u5e55\u5f00\u542f\u72b6\u6001\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 265
    if-nez v1, :cond_0

    .line 267
    const v1, 0x30000006

    const-string v2, "MyLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 270
    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 275
    :cond_0
    :goto_1
    return-void

    .line 260
    :cond_1
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v3, Lcom/umeng/message/UmengMessageHandler;->b:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "android os version < 7, skip checking screen on status"

    aput-object v7, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public dealWithCustomMessage(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V
    .locals 0

    .prologue
    .line 278
    return-void
.end method

.method public dealWithNotificationMessage(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V
    .locals 10

    .prologue
    const/16 v9, 0x14

    const/4 v8, 0x7

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 81
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/UmengMessageHandler;->b:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v5, v2, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notify: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/umeng/message/entity/UMessage;->getRaw()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-interface {v0, v1, v4, v5}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Lcom/umeng/message/entity/UMessage;->hasResourceFromInternet()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    iget-object v1, p2, Lcom/umeng/message/entity/UMessage;->msg_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->hasMessageResourceDownloaded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengMessageHandler;->startDownloadResourceService(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)Z

    move-result v0

    .line 89
    if-eqz v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-static {p1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->getLastMessageMsgID()Ljava/lang/String;

    move-result-object v0

    .line 93
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 94
    const-string v0, ""

    .line 101
    :goto_1
    iget-object v1, p2, Lcom/umeng/message/entity/UMessage;->msg_id:Ljava/lang/String;

    if-eqz v1, :cond_9

    const/16 v1, 0x16

    iget-object v4, p2, Lcom/umeng/message/entity/UMessage;->msg_id:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v1, v4, :cond_9

    iget-object v1, p2, Lcom/umeng/message/entity/UMessage;->msg_id:Ljava/lang/String;

    const-string v4, "u"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 102
    invoke-static {p1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v1

    iget-object v4, p2, Lcom/umeng/message/entity/UMessage;->msg_id:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/umeng/message/MessageSharedPrefs;->setLastMessageMsgID(Ljava/lang/String;)V

    .line 103
    iget-object v1, p2, Lcom/umeng/message/entity/UMessage;->msg_id:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 108
    :goto_2
    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v1, v2

    .line 114
    :goto_3
    invoke-static {p1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    iget-object v3, p2, Lcom/umeng/message/entity/UMessage;->msg_id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/umeng/message/MessageSharedPrefs;->removeMessageResouceRecord(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengMessageHandler;->getNotification(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)Landroid/app/Notification;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_2

    iget v3, v0, Landroid/app/Notification;->icon:I

    if-nez v3, :cond_2

    .line 125
    :cond_2
    if-nez v0, :cond_5

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_c

    .line 128
    sget-boolean v0, Lcom/umeng/message/UmengMessageHandler;->g:Z

    if-nez v0, :cond_3

    .line 129
    sput-boolean v2, Lcom/umeng/message/UmengMessageHandler;->g:Z

    .line 130
    new-instance v3, Landroid/app/NotificationChannel;

    const-string v0, "upush_default"

    invoke-direct {p0, p1}, Lcom/umeng/message/UmengMessageHandler;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v3, v0, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 132
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 134
    if-eqz v0, :cond_3

    .line 135
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 138
    :cond_3
    new-instance v0, Landroid/app/Notification$Builder;

    const-string v3, "upush_default"

    invoke-direct {v0, p1, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    :goto_4
    iget-object v3, p2, Lcom/umeng/message/entity/UMessage;->expand_image:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_4

    .line 144
    new-instance v3, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengMessageHandler;->getExpandImage(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 147
    :cond_4
    iget-object v3, p2, Lcom/umeng/message/entity/UMessage;->bar_image:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengMessageHandler;->getSmallIconId(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)I

    move-result v3

    .line 149
    if-ltz v3, :cond_0

    .line 152
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/umeng/message/common/c;->a(Landroid/content/Context;)Lcom/umeng/message/common/c;

    move-result-object v6

    const-string v7, "upush_bar_image_notification"

    invoke-virtual {v6, v7}, Lcom/umeng/message/common/c;->e(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 153
    invoke-static {p1}, Lcom/umeng/message/common/c;->a(Landroid/content/Context;)Lcom/umeng/message/common/c;

    move-result-object v5

    const-string v6, "notification_bar_image"

    invoke-virtual {v5, v6}, Lcom/umeng/message/common/c;->b(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengMessageHandler;->getBarImage(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 154
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 155
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p2, Lcom/umeng/message/entity/UMessage;->ticker:Ljava/lang/String;

    .line 156
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 157
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 177
    :goto_5
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 181
    :cond_5
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    iput v2, p0, Lcom/umeng/message/UmengMessageHandler;->f:I

    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengMessageHandler;->getClickPendingIntent(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengMessageHandler;->getDismissPendingIntent(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 186
    iput-object v3, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 187
    iput-object v2, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengMessageHandler;->getNotificationDefaults(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)I

    move-result v2

    .line 190
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_7

    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengMessageHandler;->getSound(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)Landroid/net/Uri;

    move-result-object v3

    .line 192
    if-eqz v3, :cond_6

    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengMessageHandler;->getSound(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 194
    :cond_6
    if-eqz v3, :cond_7

    xor-int/lit8 v2, v2, 0x1

    .line 196
    :cond_7
    iput v2, v0, Landroid/app/Notification;->defaults:I

    .line 198
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/umeng/message/UmengMessageHandler;->a(Landroid/content/Context;Landroid/app/Notification;ZLcom/umeng/message/entity/UMessage;)V

    goto/16 :goto_0

    .line 96
    :cond_8
    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 105
    :cond_9
    sget-object v1, Lcom/umeng/message/UmengMessageHandler;->d:Ljava/lang/String;

    goto/16 :goto_2

    .line 111
    :cond_a
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_b

    move v0, v2

    :goto_6
    move v1, v0

    goto/16 :goto_3

    :cond_b
    move v0, v3

    goto :goto_6

    .line 140
    :cond_c
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    goto/16 :goto_4

    .line 159
    :cond_d
    invoke-direct {p0, p1, v0, p2}, Lcom/umeng/message/UmengMessageHandler;->a(Landroid/content/Context;Landroid/app/Notification$Builder;Lcom/umeng/message/entity/UMessage;)Z

    move-result v3

    .line 160
    if-eqz v3, :cond_0

    .line 162
    iget-object v3, p2, Lcom/umeng/message/entity/UMessage;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p2, Lcom/umeng/message/entity/UMessage;->text:Ljava/lang/String;

    .line 163
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p2, Lcom/umeng/message/entity/UMessage;->ticker:Ljava/lang/String;

    .line 164
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 165
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    goto :goto_5
.end method

.method public getBarImage(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/umeng/message/UmengDownloadResourceService;->getMessageResourceFolder(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/umeng/message/entity/UMessage;->bar_image:Ljava/lang/String;

    .line 519
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 520
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getClickPendingIntent(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 281
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 282
    const-class v1, Lcom/umeng/message/NotificationProxyBroadcastReceiver;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 283
    const-string v1, "MSG"

    .line 284
    invoke-virtual {p2}, Lcom/umeng/message/entity/UMessage;->getRaw()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const-string v1, "ACTION"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    const-string v1, "MESSAGE_ID"

    iget-object v2, p2, Lcom/umeng/message/entity/UMessage;->message_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v1, "NOTIFICATION_ID"

    iget v2, p0, Lcom/umeng/message/UmengMessageHandler;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 294
    const-string v1, "TASK_ID"

    iget-object v2, p2, Lcom/umeng/message/entity/UMessage;->task_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v1, v2

    const/high16 v2, 0x10000000

    .line 298
    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 302
    return-object v0
.end method

.method public getDismissPendingIntent(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)Landroid/app/PendingIntent;
    .locals 6

    .prologue
    .line 306
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 307
    const-class v1, Lcom/umeng/message/NotificationProxyBroadcastReceiver;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 308
    const-string v1, "MSG"

    .line 309
    invoke-virtual {p2}, Lcom/umeng/message/entity/UMessage;->getRaw()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v1, "ACTION"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    const-string v1, "MESSAGE_ID"

    iget-object v2, p2, Lcom/umeng/message/entity/UMessage;->message_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string v1, "NOTIFICATION_ID"

    iget v2, p0, Lcom/umeng/message/UmengMessageHandler;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    const-string v1, "TASK_ID"

    iget-object v2, p2, Lcom/umeng/message/entity/UMessage;->task_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    long-to-int v1, v2

    const/high16 v2, 0x10000000

    .line 324
    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 328
    return-object v0
.end method

.method public getExpandImage(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/umeng/message/UmengDownloadResourceService;->getMessageResourceFolder(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/umeng/message/entity/UMessage;->expand_image:Ljava/lang/String;

    .line 525
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 526
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLargeIcon(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 483
    .line 485
    :try_start_0
    invoke-virtual {p2}, Lcom/umeng/message/entity/UMessage;->isLargeIconFromInternet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/umeng/message/UmengDownloadResourceService;->getMessageResourceFolder(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p2, Lcom/umeng/message/entity/UMessage;->img:Ljava/lang/String;

    .line 487
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 490
    :goto_0
    if-nez v0, :cond_2

    .line 491
    const/4 v2, -0x1

    .line 492
    iget-object v3, p2, Lcom/umeng/message/entity/UMessage;->largeIcon:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 493
    invoke-static {p1}, Lcom/umeng/message/common/c;->a(Landroid/content/Context;)Lcom/umeng/message/common/c;

    move-result-object v2

    iget-object v3, p2, Lcom/umeng/message/entity/UMessage;->largeIcon:Ljava/lang/String;

    .line 494
    invoke-virtual {v2, v3}, Lcom/umeng/message/common/c;->d(Ljava/lang/String;)I

    move-result v2

    .line 497
    :cond_0
    if-gez v2, :cond_1

    .line 498
    invoke-static {p1}, Lcom/umeng/message/common/c;->a(Landroid/content/Context;)Lcom/umeng/message/common/c;

    move-result-object v2

    const-string v3, "umeng_push_notification_default_large_icon"

    .line 499
    invoke-virtual {v2, v3}, Lcom/umeng/message/common/c;->d(Ljava/lang/String;)I

    move-result v2

    .line 502
    :cond_1
    if-lez v2, :cond_2

    .line 504
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 503
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 514
    :cond_2
    :goto_1
    return-object v0

    .line 510
    :catch_0
    move-exception v0

    .line 511
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 514
    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public getNotification(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotificationDefaults(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)I
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 358
    .line 359
    invoke-virtual {p0, p1}, Lcom/umeng/message/UmengMessageHandler;->isInNoDisturbTime(Landroid/content/Context;)Z

    move-result v0

    .line 361
    invoke-static {p1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/message/MessageSharedPrefs;->getMuteDuration()I

    move-result v3

    .line 362
    const-wide/16 v4, 0x1

    int-to-long v6, v3

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 364
    if-eqz v0, :cond_1

    .line 415
    :cond_0
    :goto_0
    return v2

    .line 367
    :cond_1
    sget-object v0, Lcom/umeng/message/UmengMessageHandler;->c:Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 368
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sget-object v0, Lcom/umeng/message/UmengMessageHandler;->c:Ljava/util/Date;

    .line 369
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v0, v6, v4

    if-ltz v0, :cond_0

    .line 373
    :cond_2
    invoke-static {p1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->getNotificationPlayVibrate()I

    move-result v0

    .line 374
    sget-object v3, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v4, Lcom/umeng/message/UmengMessageHandler;->b:Ljava/lang/String;

    new-array v5, v10, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "playVibrate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-interface {v3, v4, v1, v5}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 375
    if-ne v0, v10, :cond_6

    move v0, v1

    .line 385
    :goto_1
    invoke-static {p1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/message/MessageSharedPrefs;->getNotificationPlayLights()I

    move-result v3

    .line 386
    sget-object v4, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v5, Lcom/umeng/message/UmengMessageHandler;->b:Ljava/lang/String;

    new-array v6, v10, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playLights:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-interface {v4, v5, v1, v6}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 387
    if-ne v3, v10, :cond_7

    .line 388
    or-int/lit8 v0, v0, 0x4

    .line 397
    :cond_3
    :goto_2
    invoke-static {p1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/message/MessageSharedPrefs;->getNotificationPlaySound()I

    move-result v3

    .line 398
    sget-object v4, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v5, Lcom/umeng/message/UmengMessageHandler;->b:Ljava/lang/String;

    new-array v6, v10, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playSound:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-interface {v4, v5, v1, v6}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 399
    if-ne v3, v10, :cond_8

    .line 400
    or-int/lit8 v0, v0, 0x1

    .line 409
    :cond_4
    :goto_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    sput-object v1, Lcom/umeng/message/UmengMessageHandler;->c:Ljava/util/Date;

    .line 410
    iget-boolean v1, p2, Lcom/umeng/message/entity/UMessage;->screen_on:Z

    if-eqz v1, :cond_5

    .line 411
    invoke-direct {p0, p1}, Lcom/umeng/message/UmengMessageHandler;->b(Landroid/content/Context;)V

    :cond_5
    move v2, v0

    goto/16 :goto_0

    .line 378
    :cond_6
    if-eq v0, v1, :cond_9

    .line 379
    iget-boolean v0, p2, Lcom/umeng/message/entity/UMessage;->play_vibrate:Z

    if-eqz v0, :cond_9

    move v0, v1

    .line 380
    goto :goto_1

    .line 390
    :cond_7
    if-eq v3, v1, :cond_3

    .line 391
    iget-boolean v3, p2, Lcom/umeng/message/entity/UMessage;->play_lights:Z

    if-eqz v3, :cond_3

    .line 392
    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    .line 402
    :cond_8
    if-eq v3, v1, :cond_4

    .line 403
    iget-boolean v1, p2, Lcom/umeng/message/entity/UMessage;->play_sound:Z

    if-eqz v1, :cond_4

    .line 404
    or-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    move v0, v2

    goto/16 :goto_1
.end method

.method public getSmallIconId(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)I
    .locals 8

    .prologue
    .line 452
    const/4 v1, -0x1

    .line 454
    :try_start_0
    iget-object v0, p2, Lcom/umeng/message/entity/UMessage;->icon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    invoke-static {p1}, Lcom/umeng/message/common/c;->a(Landroid/content/Context;)Lcom/umeng/message/common/c;

    move-result-object v0

    iget-object v2, p2, Lcom/umeng/message/entity/UMessage;->icon:Ljava/lang/String;

    .line 456
    invoke-virtual {v0, v2}, Lcom/umeng/message/common/c;->d(Ljava/lang/String;)I

    move-result v1

    .line 459
    :cond_0
    if-gez v1, :cond_1

    .line 460
    invoke-static {p1}, Lcom/umeng/message/common/c;->a(Landroid/content/Context;)Lcom/umeng/message/common/c;

    move-result-object v0

    const-string v2, "umeng_push_notification_default_small_icon"

    .line 461
    invoke-virtual {v0, v2}, Lcom/umeng/message/common/c;->d(Ljava/lang/String;)I

    move-result v1

    .line 464
    :cond_1
    if-gez v1, :cond_3

    .line 465
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v2, Lcom/umeng/message/UmengMessageHandler;->b:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "\u6ca1\u6709\u81ea\u5b9a\u4e49\u901a\u77e5\u56fe\u6807\uff0c\u6539\u7528\u5e94\u7528\u56fe\u6807"

    aput-object v6, v4, v5

    invoke-interface {v0, v2, v3, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 466
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 467
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 466
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :goto_0
    if-gez v0, :cond_2

    .line 470
    :try_start_1
    sget-object v1, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v2, Lcom/umeng/message/UmengMessageHandler;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "\u627e\u4e0d\u5230\u9002\u5f53\u7684\u901a\u77e5\u56fe\u6807\uff0c\u8bf7\u786e\u4fdd\u60a8\u4e3a\u6b64\u901a\u77e5\u6307\u5b9a\u4e86\u4e00\u4e2a\u56fe\u6807\uff0c\u6216\u8005\u5e94\u7528\u5df2\u7ecf\u5b9a\u4e49\u4e86\u4e00\u4e2a\u56fe\u6807"

    aput-object v6, v4, v5

    invoke-interface {v1, v2, v3, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 478
    :cond_2
    :goto_1
    return v0

    .line 474
    :catch_0
    move-exception v0

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    .line 475
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 474
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getSound(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)Landroid/net/Uri;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 532
    .line 535
    :try_start_0
    invoke-virtual {p2}, Lcom/umeng/message/entity/UMessage;->isSoundFromInternet()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/umeng/message/UmengDownloadResourceService;->getMessageResourceFolder(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/umeng/message/entity/UMessage;->sound:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 537
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    .line 540
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 541
    const/4 v2, -0x1

    .line 543
    iget-object v3, p2, Lcom/umeng/message/entity/UMessage;->sound:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 544
    invoke-static {p1}, Lcom/umeng/message/common/c;->a(Landroid/content/Context;)Lcom/umeng/message/common/c;

    move-result-object v2

    iget-object v3, p2, Lcom/umeng/message/entity/UMessage;->sound:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/umeng/message/common/c;->j(Ljava/lang/String;)I

    move-result v2

    .line 547
    :cond_1
    if-gez v2, :cond_2

    .line 548
    invoke-static {p1}, Lcom/umeng/message/common/c;->a(Landroid/content/Context;)Lcom/umeng/message/common/c;

    move-result-object v2

    const-string v3, "umeng_push_notification_default_sound"

    invoke-virtual {v2, v3}, Lcom/umeng/message/common/c;->j(Ljava/lang/String;)I

    move-result v2

    .line 551
    :cond_2
    if-lez v2, :cond_3

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 556
    :cond_3
    if-eqz v1, :cond_4

    .line 557
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 564
    :cond_4
    :goto_1
    return-object v0

    .line 561
    :catch_0
    move-exception v1

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V
    .locals 2

    .prologue
    .line 68
    const-string v0, "notification"

    iget-object v1, p2, Lcom/umeng/message/entity/UMessage;->display_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengMessageHandler;->dealWithNotificationMessage(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string v0, "custom"

    iget-object v1, p2, Lcom/umeng/message/entity/UMessage;->display_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p1}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/message/UTrack;->setClearPrevMessage(Z)V

    .line 72
    iget-object v0, p2, Lcom/umeng/message/entity/UMessage;->recall:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/UmengMessageHandler;->a(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengMessageHandler;->dealWithCustomMessage(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V

    goto :goto_0
.end method

.method public isInNoDisturbTime(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 332
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 333
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 335
    mul-int/lit8 v0, v3, 0x3c

    add-int/2addr v0, v4

    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v5

    .line 336
    invoke-virtual {v5}, Lcom/umeng/message/PushAgent;->getNoDisturbStartHour()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    .line 338
    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/umeng/message/PushAgent;->getNoDisturbStartMinute()I

    move-result v6

    add-int/2addr v5, v6

    if-lt v0, v5, :cond_1

    move v0, v1

    .line 340
    :goto_0
    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v3, v4

    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v4

    .line 341
    invoke-virtual {v4}, Lcom/umeng/message/PushAgent;->getNoDisturbEndHour()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    .line 343
    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/message/PushAgent;->getNoDisturbEndMinute()I

    move-result v5

    add-int/2addr v4, v5

    if-gt v3, v4, :cond_2

    move v3, v1

    .line 346
    :goto_1
    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/message/PushAgent;->getNoDisturbEndHour()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    .line 348
    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/message/PushAgent;->getNoDisturbEndMinute()I

    move-result v5

    add-int/2addr v4, v5

    .line 349
    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/message/PushAgent;->getNoDisturbStartHour()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    .line 351
    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/umeng/message/PushAgent;->getNoDisturbStartMinute()I

    move-result v6

    add-int/2addr v5, v6

    if-lt v4, v5, :cond_3

    move v4, v1

    .line 352
    :goto_2
    if-eqz v4, :cond_5

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 354
    :cond_0
    :goto_3
    return v1

    :cond_1
    move v0, v2

    .line 338
    goto :goto_0

    :cond_2
    move v3, v2

    .line 343
    goto :goto_1

    :cond_3
    move v4, v2

    .line 351
    goto :goto_2

    :cond_4
    move v1, v2

    .line 352
    goto :goto_3

    :cond_5
    if-nez v0, :cond_0

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_3
.end method

.method public setPrevMessage(Lcom/umeng/message/entity/UMessage;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/umeng/message/UmengMessageHandler;->e:Lcom/umeng/message/entity/UMessage;

    .line 64
    return-void
.end method

.method public startDownloadResourceService(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)Z
    .locals 3

    .prologue
    .line 420
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/umeng/message/UmengDownloadResourceService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 421
    const-string v1, "body"

    invoke-virtual {p2}, Lcom/umeng/message/entity/UMessage;->getRaw()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    const-string v1, "id"

    iget-object v2, p2, Lcom/umeng/message/entity/UMessage;->message_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    const-string v1, "task_id"

    iget-object v2, p2, Lcom/umeng/message/entity/UMessage;->task_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    const/4 v0, 0x1

    .line 428
    :goto_0
    return v0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 428
    const/4 v0, 0x0

    goto :goto_0
.end method
