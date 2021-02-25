.class public Lorg/android/agoo/control/AgooFactory;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/android/agoo/control/AgooFactory$a;,
        Lorg/android/agoo/control/AgooFactory$b;
    }
.end annotation


# static fields
.field private static final DEAL_MESSAGE:Ljava/lang/String; = "accs.msgRecevie"

.field private static final TAG:Ljava/lang/String; = "AgooFactory"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private messageService:Lorg/android/agoo/message/MessageService;

.field protected notifyManager:Lorg/android/agoo/control/NotifManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lorg/android/agoo/control/AgooFactory;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lorg/android/agoo/control/AgooFactory;->notifyManager:Lorg/android/agoo/control/NotifManager;

    .line 49
    iput-object v0, p0, Lorg/android/agoo/control/AgooFactory;->messageService:Lorg/android/agoo/message/MessageService;

    .line 609
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lorg/android/agoo/control/AgooFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lorg/android/agoo/control/AgooFactory;)Lorg/android/agoo/message/MessageService;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/android/agoo/control/AgooFactory;->messageService:Lorg/android/agoo/message/MessageService;

    return-object v0
.end method

.method static synthetic access$500(Lorg/android/agoo/control/AgooFactory;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/android/agoo/control/AgooFactory;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method private static final checkPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 451
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 452
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 455
    if-eqz v1, :cond_0

    .line 456
    const/4 v0, 0x1

    .line 461
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getFlag(JLorg/android/agoo/common/MsgDO;)Landroid/os/Bundle;
    .locals 8

    .prologue
    const/16 v7, 0x9

    const/16 v3, 0x8

    const/16 v6, 0x31

    .line 465
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 467
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 469
    if-eqz v1, :cond_4

    array-length v2, v1

    if-gt v3, v2, :cond_4

    .line 470
    array-length v2, v1

    if-gt v3, v2, :cond_1

    .line 471
    const-string v2, "encrypted"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const/4 v2, 0x6

    aget-char v2, v1, v2

    if-ne v2, v6, :cond_0

    .line 477
    const-string v2, "report"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v2, "1"

    iput-object v2, p2, Lorg/android/agoo/common/MsgDO;->reportStr:Ljava/lang/String;

    .line 480
    :cond_0
    const/4 v2, 0x7

    aget-char v2, v1, v2

    if-ne v2, v6, :cond_1

    .line 481
    const-string v2, "notify"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_1
    array-length v2, v1

    if-gt v7, v2, :cond_2

    .line 486
    const/16 v2, 0x8

    aget-char v2, v1, v2

    if-ne v2, v6, :cond_2

    .line 487
    const-string v2, "has_test"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_2
    const/16 v2, 0xa

    array-length v3, v1

    if-gt v2, v3, :cond_3

    .line 492
    const/16 v2, 0x9

    aget-char v2, v1, v2

    if-ne v2, v6, :cond_3

    .line 493
    const-string v2, "duplicate"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :cond_3
    const/16 v2, 0xb

    array-length v3, v1

    if-gt v2, v3, :cond_4

    .line 498
    const/16 v2, 0xa

    aget-char v1, v1, v2

    if-ne v1, v6, :cond_4

    .line 499
    const-string v1, "popup"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :cond_4
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static parseEncryptedMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 299
    .line 302
    :try_start_0
    sget-object v0, Lorg/android/agoo/control/AgooFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/common/Config;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 303
    sget v0, Lcom/taobao/accs/client/a;->a:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 304
    sget-object v0, Lcom/taobao/accs/utl/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    sget-object v0, Lcom/taobao/accs/utl/a;->b:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/android/agoo/control/AgooFactory;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/utl/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v0, v3}, Lorg/android/agoo/common/b;->a([B[B)[B

    move-result-object v0

    .line 326
    :goto_0
    if-eqz v0, :cond_3

    array-length v3, v0

    if-lez v3, :cond_3

    .line 327
    const/16 v3, 0x10

    invoke-static {p0, v3}, Lorg/android/agoo/common/a;->a(Ljava/lang/String;I)[B

    move-result-object v3

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v0}, Lorg/android/agoo/common/b;->a([B)[B

    move-result-object v0

    const-string v5, "AES"

    invoke-direct {v4, v0, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v0, "utf-8"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/android/agoo/common/b;->a([B)[B

    move-result-object v0

    invoke-static {v3, v4, v0}, Lorg/android/agoo/common/b;->a([BLjavax/crypto/spec/SecretKeySpec;[B)[B

    move-result-object v2

    .line 329
    new-instance v0, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 336
    :goto_1
    return-object v0

    .line 308
    :cond_0
    const-string v0, "AgooFactory"

    const-string v3, "getAppsign secret null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    .line 311
    :cond_1
    sget-object v0, Lorg/android/agoo/control/AgooFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_2

    .line 313
    const-string v3, "AgooFactory"

    const-string v4, "SecurityGuardManager not null!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSecureSignatureComp()Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    move-result-object v0

    .line 315
    new-instance v3, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;

    invoke-direct {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;-><init>()V

    .line 316
    iput-object v2, v3, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    .line 317
    iget-object v4, v3, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    const-string v5, "INPUT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lorg/android/agoo/control/AgooFactory;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/taobao/accs/utl/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const/4 v4, 0x3

    iput v4, v3, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->requestType:I

    .line 320
    sget-object v4, Lcom/taobao/accs/client/a;->c:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;->signRequest(Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-static {v0}, Lorg/android/agoo/common/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 323
    :cond_2
    const-string v0, "AgooFactory"

    const-string v3, "SecurityGuardManager is null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 331
    :cond_3
    const-string v0, "AgooFactory"

    const-string v2, "aesDecrypt key is null!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v0, v1

    goto :goto_1

    .line 333
    :catch_0
    move-exception v0

    .line 334
    const-string v2, "AgooFactory"

    const-string v3, "parseEncryptedMsg failure: "

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private sendMsgByBindService(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 550
    :try_start_0
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    const-string v0, "AgooFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHandleMessage current tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    :cond_0
    iget-object v0, p0, Lorg/android/agoo/control/AgooFactory;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lorg/android/agoo/control/AgooFactory$b;

    invoke-direct {v1, p0, p1, p2}, Lorg/android/agoo/control/AgooFactory$b;-><init>(Lorg/android/agoo/control/AgooFactory;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :goto_0
    return-void

    .line 554
    :catch_0
    move-exception v0

    .line 555
    const-string v1, "AgooFactory"

    const-string v2, "sendMsgByBindService error >>"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private sendMsgToBussiness(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 513
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 514
    const-string v0, "org.agoo.android.intent.action.RECEIVE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    invoke-virtual {v6, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    invoke-virtual {v6, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 517
    const-string v0, "type"

    const-string v1, "common-push"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    const-string v0, "message_source"

    invoke-virtual {v6, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    const/16 v0, 0x20

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 521
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 522
    const-string v1, "accs_extra"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 523
    const-string v1, "msg_agoo_bundle"

    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :goto_0
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    const-string v0, "AgooFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMsgToBussiness intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",utdid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/taobao/accs/utl/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",agooFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    :cond_0
    if-eqz p4, :cond_1

    .line 533
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d2

    const-string v2, "accs.msgRecevie"

    invoke-static {p1}, Lcom/taobao/accs/utl/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "agooMsg"

    const-string v5, "15"

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 534
    invoke-direct {p0, p2, v6}, Lorg/android/agoo/control/AgooFactory;->sendMsgByBindService(Ljava/lang/String;Landroid/content/Intent;)V

    .line 540
    :goto_1
    return-void

    .line 524
    :catch_0
    move-exception v0

    .line 525
    const-string v1, "AgooFactory"

    const-string v2, "sendMsgToBussiness"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 537
    :cond_1
    invoke-static {p2}, Lcom/taobao/accs/client/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    invoke-virtual {p1, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1
.end method


# virtual methods
.method public init(Landroid/content/Context;Lorg/android/agoo/control/NotifManager;Lorg/android/agoo/message/MessageService;)V
    .locals 2

    .prologue
    .line 57
    sput-object p1, Lorg/android/agoo/control/AgooFactory;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {}, Lorg/android/agoo/common/d;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lorg/android/agoo/control/AgooFactory;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 59
    iput-object p2, p0, Lorg/android/agoo/control/AgooFactory;->notifyManager:Lorg/android/agoo/control/NotifManager;

    .line 60
    iget-object v0, p0, Lorg/android/agoo/control/AgooFactory;->notifyManager:Lorg/android/agoo/control/NotifManager;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lorg/android/agoo/control/NotifManager;

    invoke-direct {v0}, Lorg/android/agoo/control/NotifManager;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/control/AgooFactory;->notifyManager:Lorg/android/agoo/control/NotifManager;

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/android/agoo/control/AgooFactory;->notifyManager:Lorg/android/agoo/control/NotifManager;

    sget-object v1, Lorg/android/agoo/control/AgooFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/android/agoo/control/NotifManager;->init(Landroid/content/Context;)V

    .line 64
    iput-object p3, p0, Lorg/android/agoo/control/AgooFactory;->messageService:Lorg/android/agoo/message/MessageService;

    .line 65
    iget-object v0, p0, Lorg/android/agoo/control/AgooFactory;->messageService:Lorg/android/agoo/message/MessageService;

    if-nez v0, :cond_1

    .line 66
    new-instance v0, Lorg/android/agoo/message/MessageService;

    invoke-direct {v0}, Lorg/android/agoo/message/MessageService;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/control/AgooFactory;->messageService:Lorg/android/agoo/message/MessageService;

    .line 68
    :cond_1
    iget-object v0, p0, Lorg/android/agoo/control/AgooFactory;->messageService:Lorg/android/agoo/message/MessageService;

    sget-object v1, Lorg/android/agoo/control/AgooFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/android/agoo/message/MessageService;->a(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public msgReceiverPreHandler([BLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;Z)Landroid/os/Bundle;
    .locals 24

    .prologue
    .line 148
    if-eqz p1, :cond_0

    :try_start_0
    move-object/from16 v0, p1

    array-length v2, v0

    if-gtz v2, :cond_1

    .line 149
    :cond_0
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v2

    const v3, 0x101d2

    const-string v4, "accs.msgRecevie"

    sget-object v5, Lorg/android/agoo/control/AgooFactory;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/taobao/accs/utl/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "data==null"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    const-string v2, "AgooFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage data==null,utdid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/android/agoo/control/AgooFactory;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/utl/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    const/4 v2, 0x0

    .line 294
    :goto_0
    return-object v2

    .line 153
    :cond_1
    new-instance v14, Ljava/lang/String;

    const-string v2, "utf-8"

    move-object/from16 v0, p1

    invoke-direct {v14, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 154
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    const-string v2, "AgooFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msgRecevie,message--->["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",utdid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/android/agoo/control/AgooFactory;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/utl/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :cond_2
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 158
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v2

    const v3, 0x101d2

    const-string v4, "accs.msgRecevie"

    sget-object v5, Lorg/android/agoo/control/AgooFactory;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/taobao/accs/utl/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "message==null"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    const-string v2, "AgooFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage message==null,utdid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/android/agoo/control/AgooFactory;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/utl/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    const/4 v2, 0x0

    goto :goto_0

    .line 162
    :cond_3
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15, v14}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v16

    .line 166
    const/4 v4, 0x0

    .line 168
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    const/4 v3, 0x0

    .line 172
    const/4 v2, 0x0

    move v13, v2

    move-object v2, v4

    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_11

    .line 173
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 174
    invoke-virtual {v15, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 175
    if-nez v3, :cond_4

    .line 172
    :goto_2
    add-int/lit8 v3, v13, 0x1

    move v13, v3

    move-object v3, v8

    goto :goto_1

    .line 178
    :cond_4
    new-instance v10, Lorg/android/agoo/common/MsgDO;

    invoke-direct {v10}, Lorg/android/agoo/common/MsgDO;-><init>()V

    .line 179
    const-string v4, "p"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 180
    const-string v4, "i"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 181
    const-string v4, "b"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 182
    const-string v5, "f"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 183
    const-string v5, "ext"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 184
    const-string v2, "ext"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 187
    :goto_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    add-int/lit8 v2, v16, -0x1

    if-ge v13, v2, :cond_5

    .line 189
    const-string v2, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_5
    iput-object v11, v10, Lorg/android/agoo/common/MsgDO;->msgIds:Ljava/lang/String;

    .line 192
    iput-object v12, v10, Lorg/android/agoo/common/MsgDO;->extData:Ljava/lang/String;

    .line 193
    iput-object v7, v10, Lorg/android/agoo/common/MsgDO;->removePacks:Ljava/lang/String;

    .line 194
    move-object/from16 v0, p2

    iput-object v0, v10, Lorg/android/agoo/common/MsgDO;->messageSource:Ljava/lang/String;

    .line 195
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 196
    const-string v2, "11"

    iput-object v2, v10, Lorg/android/agoo/common/MsgDO;->errorCode:Ljava/lang/String;

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/android/agoo/control/AgooFactory;->notifyManager:Lorg/android/agoo/control/NotifManager;

    move-object/from16 v0, p3

    invoke-virtual {v2, v10, v0}, Lorg/android/agoo/control/NotifManager;->handlerACKMessage(Lorg/android/agoo/common/MsgDO;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    move-object v2, v12

    .line 198
    goto :goto_2

    .line 200
    :cond_6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 201
    const-string v2, "12"

    iput-object v2, v10, Lorg/android/agoo/common/MsgDO;->errorCode:Ljava/lang/String;

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/android/agoo/control/AgooFactory;->notifyManager:Lorg/android/agoo/control/NotifManager;

    move-object/from16 v0, p3

    invoke-virtual {v2, v10, v0}, Lorg/android/agoo/control/NotifManager;->handlerACKMessage(Lorg/android/agoo/common/MsgDO;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    move-object v2, v12

    .line 203
    goto :goto_2

    .line 205
    :cond_7
    const-wide/16 v22, -0x1

    cmp-long v2, v20, v22

    if-nez v2, :cond_8

    .line 206
    const-string v2, "13"

    iput-object v2, v10, Lorg/android/agoo/common/MsgDO;->errorCode:Ljava/lang/String;

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/android/agoo/control/AgooFactory;->notifyManager:Lorg/android/agoo/control/NotifManager;

    move-object/from16 v0, p3

    invoke-virtual {v2, v10, v0}, Lorg/android/agoo/control/NotifManager;->handlerACKMessage(Lorg/android/agoo/common/MsgDO;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    move-object v2, v12

    .line 208
    goto/16 :goto_2

    .line 210
    :cond_8
    sget-object v2, Lorg/android/agoo/control/AgooFactory;->mContext:Landroid/content/Context;

    invoke-static {v2, v7}, Lorg/android/agoo/control/AgooFactory;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 211
    const-string v2, "AgooFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msgRecevie checkpackage is del,pack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v2

    const v3, 0x101d2

    const-string v4, "accs.msgRecevie"

    sget-object v5, Lorg/android/agoo/control/AgooFactory;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/taobao/accs/utl/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "deletePack"

    invoke-virtual/range {v2 .. v7}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 213
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    add-int/lit8 v2, v16, -0x1

    if-ge v13, v2, :cond_10

    .line 216
    const-string v2, ","

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v2, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v12

    goto/16 :goto_2

    .line 221
    :cond_9
    move-wide/from16 v0, v20

    invoke-static {v0, v1, v10}, Lorg/android/agoo/control/AgooFactory;->getFlag(JLorg/android/agoo/common/MsgDO;)Landroid/os/Bundle;

    move-result-object v2

    .line 222
    const-string v5, "encrypted"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 225
    const/4 v9, 0x0

    .line 226
    sget-object v6, Lorg/android/agoo/control/AgooFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 227
    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 248
    :goto_4
    if-eqz v2, :cond_a

    .line 249
    invoke-virtual {v8, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 252
    :cond_a
    :try_start_1
    const-string v2, "t"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 254
    const-string v3, "time"

    invoke-virtual {v8, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 261
    :cond_b
    :goto_5
    :try_start_2
    const-string v2, "trace"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v8, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 262
    const-string v2, "id"

    invoke-virtual {v8, v2, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v2, "body"

    invoke-virtual {v8, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v2, "source"

    invoke-virtual {v8, v2, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v2, "fromAppkey"

    sget-object v3, Lorg/android/agoo/control/AgooFactory;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/android/agoo/common/Config;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v2, "extData"

    invoke-virtual {v8, v2, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v2, "oriData"

    invoke-virtual {v8, v2, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    if-eqz p4, :cond_f

    .line 269
    sget-object v6, Lorg/android/agoo/control/AgooFactory;->mContext:Landroid/content/Context;

    move-object/from16 v5, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v5 .. v11}, Lorg/android/agoo/control/AgooFactory;->sendMsgToBussiness(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    move-object v2, v12

    goto/16 :goto_2

    .line 237
    :cond_c
    const-string v2, "AgooFactory"

    const-string v3, "msgRecevie msg encrypted flag not exist, cannot prase!!!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v2

    const v3, 0x101d2

    const-string v4, "accs.msgRecevie"

    sget-object v5, Lorg/android/agoo/control/AgooFactory;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/taobao/accs/utl/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "encrypted!=4"

    const-string v7, "15"

    invoke-virtual/range {v2 .. v7}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    const-string v2, "24"

    iput-object v2, v10, Lorg/android/agoo/common/MsgDO;->errorCode:Ljava/lang/String;

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/android/agoo/control/AgooFactory;->notifyManager:Lorg/android/agoo/control/NotifManager;

    move-object/from16 v0, p3

    invoke-virtual {v2, v10, v0}, Lorg/android/agoo/control/NotifManager;->handlerACKMessage(Lorg/android/agoo/common/MsgDO;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    move-object v2, v12

    .line 241
    goto/16 :goto_2

    .line 245
    :cond_d
    const/4 v9, 0x1

    goto/16 :goto_4

    .line 257
    :catch_0
    move-exception v2

    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 258
    const-string v2, "AgooFactory"

    const-string v3, "agoo msg has no time"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    .line 290
    :catch_1
    move-exception v2

    .line 291
    sget-object v3, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v3}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 292
    const-string v3, "AgooFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msgRecevie is error,e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 271
    :cond_f
    :try_start_3
    const-string v2, "type"

    const-string v3, "common-push"

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v2, "message_source"

    move-object/from16 v0, p2

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    move-object v2, v12

    goto/16 :goto_2

    .line 275
    :cond_11
    if-eqz v19, :cond_12

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_12

    .line 276
    new-instance v2, Lorg/android/agoo/common/MsgDO;

    invoke-direct {v2}, Lorg/android/agoo/common/MsgDO;-><init>()V

    .line 277
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/android/agoo/common/MsgDO;->msgIds:Ljava/lang/String;

    .line 278
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/android/agoo/common/MsgDO;->removePacks:Ljava/lang/String;

    .line 279
    const-string v4, "10"

    iput-object v4, v2, Lorg/android/agoo/common/MsgDO;->errorCode:Ljava/lang/String;

    .line 280
    move-object/from16 v0, p2

    iput-object v0, v2, Lorg/android/agoo/common/MsgDO;->messageSource:Ljava/lang/String;

    .line 282
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/android/agoo/control/AgooFactory;->notifyManager:Lorg/android/agoo/control/NotifManager;

    move-object/from16 v0, p3

    invoke-virtual {v4, v2, v0}, Lorg/android/agoo/control/NotifManager;->handlerACKMessage(Lorg/android/agoo/common/MsgDO;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_12
    move-object v2, v3

    .line 284
    goto/16 :goto_0

    :cond_13
    move-object v12, v2

    goto/16 :goto_3
.end method

.method public msgRecevie([BLjava/lang/String;)V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/android/agoo/control/AgooFactory;->msgRecevie([BLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    .line 123
    return-void
.end method

.method public msgRecevie([BLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 128
    :try_start_0
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "AgooFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "into--[AgooFactory,msgRecevie]:messageSource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lorg/android/agoo/control/AgooFactory;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lorg/android/agoo/control/b;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/android/agoo/control/b;-><init>(Lorg/android/agoo/control/AgooFactory;[BLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const-string v1, "AgooFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceImpl init task fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public reportCacheMsg()V
    .locals 4

    .prologue
    .line 342
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/control/AgooFactory;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lorg/android/agoo/control/c;

    invoke-direct {v1, p0}, Lorg/android/agoo/control/c;-><init>(Lorg/android/agoo/control/AgooFactory;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    const-string v1, "AgooFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportCacheMsg fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public saveMsg([B)V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/android/agoo/control/AgooFactory;->saveMsg([BLjava/lang/String;)V

    .line 74
    return-void
.end method

.method public saveMsg([BLjava/lang/String;)V
    .locals 2

    .prologue
    .line 77
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lorg/android/agoo/control/AgooFactory;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lorg/android/agoo/control/a;

    invoke-direct {v1, p0, p1, p2}, Lorg/android/agoo/control/a;-><init>(Lorg/android/agoo/control/AgooFactory;[BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateMsg([BZ)V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lorg/android/agoo/control/AgooFactory;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lorg/android/agoo/control/d;

    invoke-direct {v1, p0, p1, p2}, Lorg/android/agoo/control/d;-><init>(Lorg/android/agoo/control/AgooFactory;[BZ)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 414
    return-void
.end method

.method public updateMsgStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 428
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 432
    const-string v0, "AgooFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNotifyMsg begin,messageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",reportTimes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/android/agoo/control/AgooFactory;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/agoo/common/Config;->e(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    :cond_2
    const-string v0, "8"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 436
    iget-object v0, p0, Lorg/android/agoo/control/AgooFactory;->messageService:Lorg/android/agoo/message/MessageService;

    const-string v1, "2"

    invoke-virtual {v0, p1, v1}, Lorg/android/agoo/message/MessageService;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 441
    :catch_0
    move-exception v0

    .line 442
    const-string v1, "AgooFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNotifyMsg e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 437
    :cond_3
    :try_start_1
    const-string v0, "9"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lorg/android/agoo/control/AgooFactory;->messageService:Lorg/android/agoo/message/MessageService;

    const-string v1, "3"

    invoke-virtual {v0, p1, v1}, Lorg/android/agoo/message/MessageService;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public updateNotifyMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lorg/android/agoo/control/AgooFactory;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lorg/android/agoo/control/e;

    invoke-direct {v1, p0, p1, p2}, Lorg/android/agoo/control/e;-><init>(Lorg/android/agoo/control/AgooFactory;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 424
    return-void
.end method
