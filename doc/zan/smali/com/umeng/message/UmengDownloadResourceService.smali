.class public Lcom/umeng/message/UmengDownloadResourceService;
.super Landroid/app/Service;
.source "UmengDownloadResourceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final d:Ljava/lang/String; = ".tmp"

.field private static final e:Ljava/lang/String; = "RETRY_TIME"

.field private static final f:Ljava/lang/String; = "OPERATIOIN"

.field private static final g:I = 0x1

.field private static final h:I = 0x2

.field private static final i:J = 0x100000L

.field private static final j:J = 0x5265c00L

.field private static final k:I = 0x493e0

.field private static final l:I = 0x3

.field private static m:Ljava/lang/Thread;


# instance fields
.field a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field b:Landroid/content/Context;

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/umeng/message/UmengDownloadResourceService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/UmengDownloadResourceService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;)J
    .locals 11

    .prologue
    const-wide/16 v0, 0x0

    .line 332
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move-wide v2, v0

    .line 350
    :cond_1
    return-wide v2

    .line 335
    :cond_2
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    .line 336
    invoke-virtual {v4}, Ljava/util/Stack;->clear()V

    .line 338
    invoke-virtual {v4, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v2, v0

    .line 340
    :goto_0
    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 343
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 344
    array-length v6, v5

    const/4 v0, 0x0

    move v10, v0

    move-wide v0, v2

    move v2, v10

    :goto_1
    if-ge v2, v6, :cond_4

    aget-object v3, v5, v2

    .line 346
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v0, v8

    .line 344
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move-wide v2, v0

    .line 348
    goto :goto_0
.end method

.method private a(Lcom/umeng/message/entity/UMessage;I)Landroid/app/PendingIntent;
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 154
    invoke-virtual {p1}, Lcom/umeng/message/entity/UMessage;->getRaw()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    iget-object v1, p1, Lcom/umeng/message/entity/UMessage;->msg_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 157
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/umeng/message/UmengDownloadResourceService;->b:Landroid/content/Context;

    const-class v4, Lcom/umeng/message/UmengDownloadResourceService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    const-string v3, "body"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v0, "id"

    iget-object v3, p1, Lcom/umeng/message/entity/UMessage;->message_id:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v0, "task_id"

    iget-object v3, p1, Lcom/umeng/message/entity/UMessage;->task_id:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string v0, "OPERATIOIN"

    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    const-string v0, "RETRY_TIME"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    iget-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService;->b:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 167
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v3, Lcom/umeng/message/UmengDownloadResourceService;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PendingIntent: msgId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/umeng/message/entity/UMessage;->msg_id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",requestCode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ",retryTime:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v8, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 170
    return-object v0
.end method

.method static synthetic a(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 32
    sput-object p0, Lcom/umeng/message/UmengDownloadResourceService;->m:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic a(Ljava/io/File;J)V
    .locals 1

    .prologue
    .line 32
    invoke-static {p0, p1, p2}, Lcom/umeng/message/UmengDownloadResourceService;->b(Ljava/io/File;J)V

    return-void
.end method

.method private static b(Ljava/io/File;J)V
    .locals 9

    .prologue
    .line 360
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 367
    :cond_0
    return-void

    .line 361
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 362
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 363
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v4, v4, p1

    if-lez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 362
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static checkDir(Ljava/io/File;JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/UmengDownloadResourceService;->a(Ljava/io/File;)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_1

    .line 315
    sget-object v0, Lcom/umeng/message/UmengDownloadResourceService;->m:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/message/UmengDownloadResourceService$1;

    invoke-direct {v1, p0, p3, p4}, Lcom/umeng/message/UmengDownloadResourceService$1;-><init>(Ljava/io/File;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/umeng/message/UmengDownloadResourceService;->m:Ljava/lang/Thread;

    .line 324
    :cond_0
    sget-object v1, Lcom/umeng/message/UmengDownloadResourceService;->m:Ljava/lang/Thread;

    monitor-enter v1

    .line 325
    :try_start_0
    sget-object v0, Lcom/umeng/message/UmengDownloadResourceService;->m:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 326
    monitor-exit v1

    .line 329
    :cond_1
    return-void

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getMessageResourceFolder(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/umeng_push/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/umeng/message/entity/UMessage;->msg_id:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/umeng/message/entity/UMessage;->msg_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    :cond_0
    return-object v0
.end method


# virtual methods
.method public checkCache()V
    .locals 6

    .prologue
    .line 297
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/message/UmengDownloadResourceService;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/umeng/message/UmengDownloadResourceService;->getMessageResourceFolder(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    const-wide/32 v2, 0x100000

    const-wide/32 v4, 0x5265c00

    invoke-static {v0, v2, v3, v4, v5}, Lcom/umeng/message/UmengDownloadResourceService;->checkDir(Ljava/io/File;JJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public close(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 289
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteAlarm(Lcom/umeng/message/entity/UMessage;I)V
    .locals 6

    .prologue
    .line 147
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/UmengDownloadResourceService;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "deleteAlarm"

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/UmengDownloadResourceService;->a(Lcom/umeng/message/entity/UMessage;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 149
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/umeng/message/UmengDownloadResourceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 150
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 151
    return-void
.end method

.method public downloadResource(Lcom/umeng/message/entity/UMessage;I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 130
    new-instance v0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;-><init>(Lcom/umeng/message/UmengDownloadResourceService;Lcom/umeng/message/entity/UMessage;I)V

    .line 131
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 132
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public notification(Lcom/umeng/message/entity/UMessage;)V
    .locals 3

    .prologue
    .line 110
    .line 111
    const-string v0, "notificationpullapp"

    iget-object v1, p1, Lcom/umeng/message/entity/UMessage;->display_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-static {p0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->getAdHandler()Lcom/umeng/message/UHandler;

    move-result-object v0

    .line 117
    :goto_0
    if-eqz v0, :cond_0

    .line 118
    const-string v1, "autoupdate"

    iget-object v2, p1, Lcom/umeng/message/entity/UMessage;->display_type:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    iget-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->getMessageHandler()Lcom/umeng/message/UHandler;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/UmengMessageHandler;

    .line 121
    if-eqz v0, :cond_0

    .line 122
    iget-object v1, p0, Lcom/umeng/message/UmengDownloadResourceService;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/umeng/message/UmengMessageHandler;->dealWithNotificationMessage(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V

    .line 126
    :cond_0
    :goto_1
    return-void

    .line 114
    :cond_1
    invoke-static {p0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->getMessageHandler()Lcom/umeng/message/UHandler;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_2
    invoke-interface {v0, p0, p1}, Lcom/umeng/message/UHandler;->handleMessage(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 64
    iput-object p0, p0, Lcom/umeng/message/UmengDownloadResourceService;->b:Landroid/content/Context;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService;->c:Ljava/util/ArrayList;

    .line 66
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 71
    if-nez p1, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 106
    :goto_0
    return v0

    .line 73
    :cond_0
    const-string v0, "OPERATIOIN"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 74
    const-string v1, "RETRY_TIME"

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 75
    const-string v2, "body"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    :try_start_0
    new-instance v3, Lcom/umeng/message/entity/UMessage;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/umeng/message/entity/UMessage;-><init>(Lorg/json/JSONObject;)V

    .line 80
    const-string v2, "id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/umeng/message/entity/UMessage;->message_id:Ljava/lang/String;

    .line 81
    const-string v2, "task_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/umeng/message/entity/UMessage;->task_id:Ljava/lang/String;

    .line 82
    iget-object v2, p0, Lcom/umeng/message/UmengDownloadResourceService;->c:Ljava/util/ArrayList;

    iget-object v4, v3, Lcom/umeng/message/entity/UMessage;->msg_id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0

    .line 83
    :cond_1
    iget-object v2, p0, Lcom/umeng/message/UmengDownloadResourceService;->c:Ljava/util/ArrayList;

    iget-object v4, v3, Lcom/umeng/message/entity/UMessage;->msg_id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    packed-switch v0, :pswitch_data_0

    .line 106
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0

    .line 87
    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v2, Lcom/umeng/message/UmengDownloadResourceService;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "\u5f00\u59cb\u4e0b\u8f7d\u8d44\u6e90"

    aput-object v7, v5, v6

    invoke-interface {v0, v2, v4, v5}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 88
    add-int/lit8 v0, v1, -0x1

    .line 89
    invoke-virtual {p0, v3, v0}, Lcom/umeng/message/UmengDownloadResourceService;->setAlarm(Lcom/umeng/message/entity/UMessage;I)V

    .line 90
    invoke-virtual {p0}, Lcom/umeng/message/UmengDownloadResourceService;->checkCache()V

    .line 91
    invoke-virtual {p0, v3, v0}, Lcom/umeng/message/UmengDownloadResourceService;->downloadResource(Lcom/umeng/message/entity/UMessage;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 94
    :pswitch_1
    :try_start_2
    invoke-virtual {p0, v3, v1}, Lcom/umeng/message/UmengDownloadResourceService;->deleteAlarm(Lcom/umeng/message/entity/UMessage;I)V

    .line 95
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/UmengDownloadResourceService;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "\u4e0b\u8f7d\u8d44\u6e90\u540e\u663e\u793a\u901a\u77e5"

    aput-object v6, v4, v5

    invoke-interface {v0, v1, v2, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, v3}, Lcom/umeng/message/UmengDownloadResourceService;->notification(Lcom/umeng/message/entity/UMessage;)V

    .line 97
    iget-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService;->c:Ljava/util/ArrayList;

    iget-object v1, v3, Lcom/umeng/message/entity/UMessage;->msg_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/umeng/message/UmengDownloadResourceService;->stopSelf()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAlarm(Lcom/umeng/message/entity/UMessage;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 139
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/UmengDownloadResourceService;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "setAlarm"

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 140
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/UmengDownloadResourceService;->a(Lcom/umeng/message/entity/UMessage;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 141
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/umeng/message/UmengDownloadResourceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 144
    return-void
.end method
