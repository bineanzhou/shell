.class public abstract Lcom/taobao/accs/internal/b;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lcom/taobao/accs/base/IBaseService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/internal/b$1;
    }
.end annotation


# static fields
.field public static final ELECTION_KEY_BLACKLIST:Ljava/lang/String; = "blacklist"

.field public static final ELECTION_KEY_HOST:Ljava/lang/String; = "host"

.field public static final ELECTION_KEY_SDKVS:Ljava/lang/String; = "sdkvs"

.field public static final ELECTION_KEY_VERSION:Ljava/lang/String; = "elversion"

.field public static final ELECTION_SERVICE_ID:Ljava/lang/String; = "accs_election"

.field public static final ELE_ERROR_EXCEPTION:I = -0x385

.field public static final ELE_ERROR_SERVER:I = -0x384

.field public static final ELE_LIST_NULL:I = -0x386

.field protected static a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/net/b;",
            ">;"
        }
    .end annotation
.end field

.field private static g:I

.field private static h:Z


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Z

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private i:Landroid/app/Service;

.field private j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

.field private k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

.field private l:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private m:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private n:Lcom/taobao/accs/base/AccsAbstractDataListener;

.field private o:Lcom/taobao/accs/a/a$a;

.field private p:Z

.field private q:Z

.field private r:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 58
    sput v0, Lcom/taobao/accs/internal/b;->g:I

    .line 60
    sput-boolean v0, Lcom/taobao/accs/internal/b;->h:Z

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/taobao/accs/internal/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/Service;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v1, p0, Lcom/taobao/accs/internal/b;->c:Z

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/accs/internal/b;->d:Z

    .line 54
    iput-object v2, p0, Lcom/taobao/accs/internal/b;->e:Ljava/util/Map;

    .line 62
    iput-object v2, p0, Lcom/taobao/accs/internal/b;->i:Landroid/app/Service;

    .line 383
    new-instance v0, Lcom/taobao/accs/internal/c;

    invoke-direct {v0, p0}, Lcom/taobao/accs/internal/c;-><init>(Lcom/taobao/accs/internal/b;)V

    iput-object v0, p0, Lcom/taobao/accs/internal/b;->n:Lcom/taobao/accs/base/AccsAbstractDataListener;

    .line 654
    iput-boolean v1, p0, Lcom/taobao/accs/internal/b;->p:Z

    .line 655
    iput-boolean v1, p0, Lcom/taobao/accs/internal/b;->q:Z

    .line 90
    iput-object p1, p0, Lcom/taobao/accs/internal/b;->i:Landroid/app/Service;

    .line 91
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/internal/b;->e:Ljava/util/Map;

    .line 93
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/internal/b;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 94
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    const-class v1, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-interface {v0, v1}, Lanet/channel/appmonitor/IAppMonitor;->register(Ljava/lang/Class;)V

    .line 95
    return-void
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;ZI)Lcom/taobao/accs/net/b;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 415
    .line 418
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    const-string v0, "ElectionServiceImpl"

    const-string v2, "getConnection configTag null or env invalid"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "command"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "conns:"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Lcom/taobao/accs/internal/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    sget-object v0, Lcom/taobao/accs/internal/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 421
    sget-object v0, Lcom/taobao/accs/internal/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/net/b;

    .line 451
    :cond_0
    :goto_0
    return-object v0

    .line 425
    :cond_1
    const-string v0, "ElectionServiceImpl"

    const-string v2, "getConnection"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "configTag"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    invoke-static {p1}, Lcom/taobao/accs/AccsClientConfig;->getConfigByTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig;

    move-result-object v0

    .line 427
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getDisableChannel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    const-string v0, "ElectionServiceImpl"

    const-string v2, "channel disabled!"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "configTag"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 429
    goto :goto_0

    .line 432
    :cond_2
    invoke-static {p0}, Lcom/taobao/accs/utl/l;->a(Landroid/content/Context;)I

    move-result v2

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 434
    sget-object v0, Lcom/taobao/accs/internal/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/net/b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    if-nez v0, :cond_0

    .line 436
    :try_start_1
    sput v2, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    .line 437
    new-instance v1, Lcom/taobao/accs/net/r;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Lcom/taobao/accs/net/r;-><init>(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 438
    if-eqz p2, :cond_3

    .line 439
    :try_start_2
    invoke-virtual {v1}, Lcom/taobao/accs/net/b;->a()V

    .line 441
    :cond_3
    sget-object v0, Lcom/taobao/accs/internal/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_4

    .line 442
    sget-object v0, Lcom/taobao/accs/internal/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0

    .line 444
    :cond_4
    const-string v0, "ElectionServiceImpl"

    const-string v2, "to many conns!!!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 448
    :goto_1
    const-string v2, "ElectionServiceImpl"

    const-string v3, "getConnection"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 447
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/taobao/accs/internal/b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->r:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic a(Lcom/taobao/accs/internal/b;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/taobao/accs/internal/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/taobao/accs/internal/b;[BI)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/taobao/accs/internal/b;->a([BI)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 770
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->o:Lcom/taobao/accs/a/a$a;

    if-nez v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/a/a;->a(Landroid/content/Context;)Lcom/taobao/accs/a/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/internal/b;->o:Lcom/taobao/accs/a/a$a;

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->o:Lcom/taobao/accs/a/a$a;

    iput-object p1, v0, Lcom/taobao/accs/a/a$a;->a:Ljava/lang/String;

    .line 774
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->o:Lcom/taobao/accs/a/a$a;

    iget v1, v0, Lcom/taobao/accs/a/a$a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/taobao/accs/a/a$a;->b:I

    .line 775
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/accs/internal/b;->o:Lcom/taobao/accs/a/a$a;

    invoke-static {v0, v1}, Lcom/taobao/accs/a/a;->a(Landroid/content/Context;Lcom/taobao/accs/a/a$a;)V

    .line 776
    const-string v0, "ElectionServiceImpl"

    const-string v1, "handleResult notify result"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "host"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string v4, "packMap"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/taobao/accs/internal/b;->e:Ljava/util/Map;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 777
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 778
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 779
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/taobao/accs/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 780
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 781
    const-string v3, "operate"

    sget-object v4, Lcom/taobao/accs/common/Constants$Operate;->RESULT_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 782
    const-string v3, "sudoPack"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 783
    const-string v3, "com.taobao.accs.ChannelService"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 785
    :try_start_1
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 786
    :catch_0
    move-exception v0

    .line 787
    :try_start_2
    const-string v2, "ElectionServiceImpl"

    const-string v3, "handleResult startService"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 792
    :catch_1
    move-exception v0

    .line 793
    const-string v1, "ElectionServiceImpl"

    const-string v2, "handleResult"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 796
    :cond_2
    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 361
    const-string v0, "ElectionServiceImpl"

    const-string v1, "serverElection start"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "packs"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    new-instance v0, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-direct {v0}, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/internal/b;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    const-string v1, "server"

    iput-object v1, v0, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->type:Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iget-object v1, p0, Lcom/taobao/accs/internal/b;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iget-object v1, v1, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->reason:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->reason:Ljava/lang/String;

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v0

    const-string v1, "accs_election"

    iget-object v2, p0, Lcom/taobao/accs/internal/b;->n:Lcom/taobao/accs/base/AccsAbstractDataListener;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/client/GlobalClientInfo;->registerListener(Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V

    .line 369
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 370
    const-string v1, "com.taobao.accs.intent.action.COMMAND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    const-string v1, "packageName"

    iget-object v2, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    const-string v1, "command"

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 373
    const-string v1, "packs"

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 374
    invoke-virtual {p0, v0}, Lcom/taobao/accs/internal/b;->a(Landroid/content/Intent;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 376
    iget-object v1, p0, Lcom/taobao/accs/internal/b;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    const/16 v2, -0x385

    iput v2, v1, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 377
    iget-object v1, p0, Lcom/taobao/accs/internal/b;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;

    goto :goto_0
.end method

.method private a([BI)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 712
    iget-boolean v0, p0, Lcom/taobao/accs/internal/b;->q:Z

    if-eqz v0, :cond_1

    .line 713
    const-string v0, "ElectionServiceImpl"

    const-string v2, "server election handled, return"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    iput-boolean v2, p0, Lcom/taobao/accs/internal/b;->q:Z

    .line 717
    const/4 v3, 0x0

    .line 720
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_2

    if-nez p1, :cond_4

    .line 721
    :cond_2
    :try_start_0
    const-string v0, "ElectionServiceImpl"

    const-string v4, "handleServerElectionResult fail, start local election"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "error"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    const/16 v0, 0xc9

    if-eq p2, v0, :cond_d

    move v4, v2

    .line 726
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v0, :cond_c

    .line 727
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput p2, v0, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 728
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    const-string v5, "server status error"

    iput-object v5, v0, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v3

    .line 755
    :goto_2
    if-eqz v4, :cond_3

    .line 756
    invoke-direct {p0}, Lcom/taobao/accs/internal/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 758
    :cond_3
    invoke-direct {p0, v0}, Lcom/taobao/accs/internal/b;->a(Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v0, :cond_0

    .line 760
    iget-object v3, p0, Lcom/taobao/accs/internal/b;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v4, :cond_6

    move v0, v1

    :goto_3
    iput v0, v3, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->ret:I

    .line 761
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/internal/b;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-interface {v0, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    goto :goto_0

    .line 731
    :cond_4
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 732
    const-string v4, "ElectionServiceImpl"

    const-string v5, "handleServerElectionResult"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "json"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 733
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 734
    const-string v0, "host"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 735
    :try_start_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v0

    if-eqz v0, :cond_b

    move v4, v2

    .line 738
    :goto_4
    :try_start_4
    const-string v0, "blacklist"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 739
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 740
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/accs/a/a;->a(Landroid/content/Context;[B)V

    move-object v0, v3

    goto :goto_2

    .line 742
    :cond_5
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/a/a;->c(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v0, v3

    goto :goto_2

    :cond_6
    move v0, v2

    .line 760
    goto :goto_3

    .line 747
    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v0, v3

    move-object v3, v9

    .line 749
    :goto_5
    :try_start_5
    const-string v4, "ElectionServiceImpl"

    const-string v5, "handleServerElectionResult"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v3, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 750
    iget-object v4, p0, Lcom/taobao/accs/internal/b;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v4, :cond_7

    .line 751
    iget-object v4, p0, Lcom/taobao/accs/internal/b;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    const/16 v5, -0x385

    iput v5, v4, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 752
    iget-object v4, p0, Lcom/taobao/accs/internal/b;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 756
    :cond_7
    invoke-direct {p0}, Lcom/taobao/accs/internal/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 758
    invoke-direct {p0, v0}, Lcom/taobao/accs/internal/b;->a(Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput v1, v0, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->ret:I

    .line 761
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/internal/b;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-interface {v0, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    goto/16 :goto_0

    .line 755
    :catchall_0
    move-exception v0

    move v4, v1

    move-object v9, v0

    move-object v0, v3

    move-object v3, v9

    :goto_6
    if-eqz v4, :cond_8

    .line 756
    invoke-direct {p0}, Lcom/taobao/accs/internal/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 758
    :cond_8
    invoke-direct {p0, v0}, Lcom/taobao/accs/internal/b;->a(Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v0, :cond_9

    .line 760
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v4, :cond_a

    :goto_7
    iput v1, v0, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->ret:I

    .line 761
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/internal/b;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-interface {v0, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    :cond_9
    throw v3

    :cond_a
    move v1, v2

    .line 760
    goto :goto_7

    .line 755
    :catchall_1
    move-exception v0

    move-object v9, v0

    move-object v0, v3

    move-object v3, v9

    goto :goto_6

    :catchall_2
    move-exception v0

    move v4, v1

    move-object v9, v0

    move-object v0, v3

    move-object v3, v9

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v9, v0

    move-object v0, v3

    move-object v3, v9

    goto :goto_6

    :catchall_4
    move-exception v3

    move v4, v2

    goto :goto_6

    .line 747
    :catch_1
    move-exception v0

    move-object v9, v0

    move-object v0, v3

    move-object v3, v9

    goto :goto_5

    :cond_b
    move v4, v1

    goto/16 :goto_4

    :cond_c
    move-object v0, v3

    goto/16 :goto_2

    :cond_d
    move v4, v1

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/taobao/accs/internal/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 526
    invoke-static {p1}, Lcom/taobao/accs/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 527
    const-string v1, "ElectionServiceImpl"

    const-string v2, "selectAppToElection"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "pkg"

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    sput-boolean v5, Lcom/taobao/accs/a/a;->b:Z

    .line 529
    iput-boolean v5, p0, Lcom/taobao/accs/internal/b;->d:Z

    .line 530
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/taobao/accs/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 531
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 532
    const-string v2, "operate"

    sget-object v3, Lcom/taobao/accs/common/Constants$Operate;->START_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 533
    const-string v2, "reason"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    const-string v2, "com.taobao.accs.ChannelService"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    :goto_0
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->m:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->m:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v6}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 544
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/accs/internal/b;->m:Ljava/util/concurrent/ScheduledFuture;

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/taobao/accs/internal/e;

    invoke-direct {v2, p0, p1}, Lcom/taobao/accs/internal/e;-><init>(Lcom/taobao/accs/internal/b;Landroid/content/Context;)V

    const-wide/16 v4, 0x1e

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/internal/b;->m:Ljava/util/concurrent/ScheduledFuture;

    .line 563
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 564
    return-void

    .line 537
    :cond_1
    const-string v0, "operate"

    sget-object v2, Lcom/taobao/accs/common/Constants$Operate;->START_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 538
    const-string v0, "reason"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.taobao.accs.ChannelService"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic b()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/taobao/accs/internal/b;->h:Z

    return v0
.end method

.method private c()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 327
    .line 332
    :try_start_0
    iget-object v2, p0, Lcom/taobao/accs/internal/b;->e:Ljava/util/Map;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/taobao/accs/internal/b;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 333
    iget-object v2, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/taobao/accs/internal/b;->e:Ljava/util/Map;

    invoke-static {v2, v4}, Lcom/taobao/accs/a/a;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move-object v4, v3

    move v5, v0

    .line 339
    :goto_0
    :try_start_1
    const-string v3, "ElectionServiceImpl"

    const-string v6, "localElection"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "host"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-static {v3, v6, v7}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 345
    iget-object v3, p0, Lcom/taobao/accs/internal/b;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v3, :cond_8

    .line 346
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 347
    iget-object v3, p0, Lcom/taobao/accs/internal/b;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput v5, v3, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 348
    iget-object v3, p0, Lcom/taobao/accs/internal/b;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput-object v4, v3, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;

    .line 350
    :cond_0
    iget-object v3, p0, Lcom/taobao/accs/internal/b;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    iput v0, v3, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->ret:I

    .line 351
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/internal/b;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-interface {v0, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    move-object v0, v2

    .line 356
    :goto_2
    return-object v0

    .line 335
    :cond_1
    const/16 v4, -0x386

    .line 336
    :try_start_2
    const-string v2, "apps is null"
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v5, v4

    move-object v4, v2

    move-object v2, v3

    goto :goto_0

    :cond_2
    move v0, v1

    .line 350
    goto :goto_1

    .line 340
    :catch_0
    move-exception v2

    move-object v4, v3

    move v5, v0

    move-object v10, v2

    move-object v2, v3

    move-object v3, v10

    .line 341
    :goto_3
    :try_start_3
    const-string v6, "ElectionServiceImpl"

    const-string v7, "localElection error"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v3, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 342
    const/16 v5, -0x385

    .line 343
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v3

    .line 345
    iget-object v4, p0, Lcom/taobao/accs/internal/b;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v4, :cond_8

    .line 346
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 347
    iget-object v4, p0, Lcom/taobao/accs/internal/b;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput v5, v4, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 348
    iget-object v4, p0, Lcom/taobao/accs/internal/b;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput-object v3, v4, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;

    .line 350
    :cond_3
    iget-object v3, p0, Lcom/taobao/accs/internal/b;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_4
    iput v0, v3, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->ret:I

    .line 351
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/internal/b;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-interface {v0, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    move-object v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    .line 350
    goto :goto_4

    .line 345
    :catchall_0
    move-exception v2

    move-object v4, v3

    move v5, v0

    :goto_5
    iget-object v6, p0, Lcom/taobao/accs/internal/b;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v6, :cond_6

    .line 346
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 347
    iget-object v6, p0, Lcom/taobao/accs/internal/b;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput v5, v6, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 348
    iget-object v5, p0, Lcom/taobao/accs/internal/b;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput-object v4, v5, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;

    .line 350
    :cond_5
    iget-object v4, p0, Lcom/taobao/accs/internal/b;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_6
    iput v0, v4, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->ret:I

    .line 351
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/internal/b;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-interface {v0, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    :cond_6
    throw v2

    :cond_7
    move v0, v1

    .line 350
    goto :goto_6

    .line 345
    :catchall_1
    move-exception v2

    move v5, v4

    move-object v4, v3

    goto :goto_5

    :catchall_2
    move-exception v3

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    goto :goto_5

    .line 340
    :catch_1
    move-exception v2

    move v5, v4

    move-object v4, v3

    move-object v10, v2

    move-object v2, v3

    move-object v3, v10

    goto :goto_3

    :catch_2
    move-exception v3

    goto :goto_3

    :cond_8
    move-object v0, v2

    goto/16 :goto_2
.end method

.method static synthetic c(Lcom/taobao/accs/internal/b;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/taobao/accs/internal/b;->d:Z

    return v0
.end method

.method static synthetic d(Lcom/taobao/accs/internal/b;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->e:Ljava/util/Map;

    return-object v0
.end method

.method private d()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->isFirstStart(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    const-string v1, "first start"

    invoke-direct {p0, v0, v1}, Lcom/taobao/accs/internal/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->setSdkStart(Landroid/content/Context;)V

    .line 517
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/a/a;->a(Landroid/content/Context;)Lcom/taobao/accs/a/a$a;

    move-result-object v0

    iget-object v1, v0, Lcom/taobao/accs/a/a$a;->a:Ljava/lang/String;

    .line 468
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 469
    const-string v2, "ElectionServiceImpl"

    const-string v3, "tryElection begin"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "isFirstStart"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/taobao/accs/utl/UtilityImpl;->isFirstStart(Landroid/content/Context;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "currentPack"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    const/4 v5, 0x4

    const-string v6, "currentElectionPack"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 472
    const-string v0, "ElectionServiceImpl"

    const-string v1, "host is empty, try selectAppToElection"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    const-string v1, "host null"

    invoke-direct {p0, v0, v1}, Lcom/taobao/accs/internal/b;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    const-string v1, "ElectionServiceImpl"

    const-string v2, "tryElection error"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 477
    :cond_1
    :try_start_1
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_2

    .line 479
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/taobao/accs/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    const-string v3, "operate"

    sget-object v4, Lcom/taobao/accs/common/Constants$Operate;->PING_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 482
    const-string v3, "com.taobao.accs.ChannelService"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const-string v3, "pingPack"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 485
    const-string v0, "ElectionServiceImpl"

    const-string v2, "tryElection send PING_ELECTION"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "to pkg"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 489
    :try_start_3
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/taobao/accs/internal/d;

    invoke-direct {v2, p0, v1}, Lcom/taobao/accs/internal/d;-><init>(Lcom/taobao/accs/internal/b;Ljava/lang/String;)V

    const-wide/16 v4, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v4, v5, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 486
    :catch_1
    move-exception v0

    .line 487
    :try_start_4
    const-string v2, "ElectionServiceImpl"

    const-string v3, "tryElection startService error"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "currentElectionPack"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 489
    :try_start_5
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/taobao/accs/internal/d;

    invoke-direct {v2, p0, v1}, Lcom/taobao/accs/internal/d;-><init>(Lcom/taobao/accs/internal/b;Ljava/lang/String;)V

    const-wide/16 v4, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v4, v5, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/taobao/accs/internal/b;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Lcom/taobao/accs/internal/d;

    invoke-direct {v3, p0, v1}, Lcom/taobao/accs/internal/d;-><init>(Lcom/taobao/accs/internal/b;Ljava/lang/String;)V

    const-wide/16 v4, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    throw v0

    .line 509
    :cond_2
    const-string v0, "ElectionServiceImpl"

    const-string v1, "curr is host, no need election"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    invoke-virtual {p0}, Lcom/taobao/accs/internal/b;->a()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->l:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->l:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 664
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/accs/internal/b;->l:Ljava/util/concurrent/ScheduledFuture;

    .line 666
    :cond_0
    iget-boolean v0, p0, Lcom/taobao/accs/internal/b;->p:Z

    if-eqz v0, :cond_1

    .line 667
    const-string v0, "ElectionServiceImpl"

    const-string v2, "reportcompleted, return"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    iput-boolean v1, p0, Lcom/taobao/accs/internal/b;->c:Z

    .line 709
    :goto_0
    return-void

    .line 670
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/taobao/accs/internal/b;->p:Z

    .line 672
    const-string v0, "ElectionServiceImpl"

    const-string v3, "onReportComplete"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 673
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->e:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 674
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/internal/b;->e:Ljava/util/Map;

    .line 676
    :cond_2
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->e:Ljava/util/Map;

    iget-object v3, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xdd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 680
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    .line 681
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v0, :cond_3

    .line 682
    iget-object v4, p0, Lcom/taobao/accs/internal/b;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput v0, v4, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->ret:I

    .line 683
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/accs/internal/b;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-interface {v0, v2}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 685
    :cond_3
    invoke-direct {p0, v3}, Lcom/taobao/accs/internal/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 706
    :goto_2
    iput-boolean v1, p0, Lcom/taobao/accs/internal/b;->c:Z

    goto :goto_0

    :cond_4
    move v0, v2

    .line 682
    goto :goto_1

    .line 688
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->e:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/taobao/accs/internal/b;->a(Ljava/util/Map;)V

    .line 689
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/accs/internal/b;->q:Z

    .line 690
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/taobao/accs/internal/g;

    invoke-direct {v2, p0}, Lcom/taobao/accs/internal/g;-><init>(Lcom/taobao/accs/internal/b;)V

    const-wide/16 v4, 0x14

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/internal/b;->r:Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 699
    :catch_0
    move-exception v0

    .line 700
    :try_start_3
    iget-object v2, p0, Lcom/taobao/accs/internal/b;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v2, :cond_6

    .line 701
    iget-object v2, p0, Lcom/taobao/accs/internal/b;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    const/16 v3, -0x385

    iput v3, v2, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 702
    iget-object v2, p0, Lcom/taobao/accs/internal/b;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;

    .line 704
    :cond_6
    const-string v2, "ElectionServiceImpl"

    const-string v3, "onReportComplete"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 706
    iput-boolean v1, p0, Lcom/taobao/accs/internal/b;->c:Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/taobao/accs/internal/b;->c:Z

    throw v0
.end method

.method static synthetic e(Lcom/taobao/accs/internal/b;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/taobao/accs/internal/b;->e()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Intent;)I
.end method

.method public abstract a()V
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x0

    .line 576
    :try_start_0
    iget-boolean v0, p0, Lcom/taobao/accs/internal/b;->c:Z

    if-eqz v0, :cond_1

    .line 577
    const-string v0, "ElectionServiceImpl"

    const-string v1, "isElectioning return"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    invoke-static {p1}, Lcom/taobao/accs/a/a;->a(Landroid/content/Context;)Lcom/taobao/accs/a/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/internal/b;->o:Lcom/taobao/accs/a/a$a;

    .line 581
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->o:Lcom/taobao/accs/a/a$a;

    iget v0, v0, Lcom/taobao/accs/a/a$a;->b:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    .line 582
    const-string v0, "ElectionServiceImpl"

    const-string v1, "startElection too many times, return"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "times"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/taobao/accs/internal/b;->o:Lcom/taobao/accs/a/a$a;

    iget v4, v4, Lcom/taobao/accs/a/a$a;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    const-string v0, "accs"

    const-string v1, "ele_over_max_times"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 641
    :catch_0
    move-exception v0

    .line 642
    const-string v1, "ElectionServiceImpl"

    const-string v2, "startElection error"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 643
    iput-boolean v8, p0, Lcom/taobao/accs/internal/b;->c:Z

    .line 644
    iget-object v1, p0, Lcom/taobao/accs/internal/b;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v1, :cond_0

    .line 645
    iget-object v1, p0, Lcom/taobao/accs/internal/b;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    const/16 v2, -0x385

    iput v2, v1, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 646
    iget-object v1, p0, Lcom/taobao/accs/internal/b;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;

    goto :goto_0

    .line 587
    :cond_2
    :try_start_1
    new-instance v0, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-direct {v0}, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/internal/b;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    .line 588
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    const-string v1, "local"

    iput-object v1, v0, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->type:Ljava/lang/String;

    .line 589
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput-object p2, v0, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->reason:Ljava/lang/String;

    .line 591
    const-string v0, "accs"

    const-string v1, "ele_start_times"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, p2, v2, v3}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 593
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 595
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/taobao/accs/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 597
    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 601
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/taobao/accs/internal/b;->c:Z

    .line 602
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v4, :cond_5

    .line 603
    :cond_3
    const-string v1, "ElectionServiceImpl"

    const-string v2, "startElection apps < 2"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "services"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    if-nez v0, :cond_4

    const-string v0, "null"

    :goto_1
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 604
    invoke-direct {p0}, Lcom/taobao/accs/internal/b;->e()V

    goto/16 :goto_0

    .line 603
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 607
    :cond_5
    const/4 v1, 0x0

    sput v1, Lcom/taobao/accs/internal/b;->g:I

    .line 608
    const-string v1, "ElectionServiceImpl"

    const-string v2, "startElection begin"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "locallist"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "size"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 609
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 610
    if-eqz v0, :cond_6

    .line 613
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_6

    .line 616
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 617
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 618
    const-string v2, "ElectionServiceImpl"

    const-string v3, "startElection unvailable app"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "pkg"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 621
    :cond_7
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/taobao/accs/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 622
    const-string v3, "operate"

    sget-object v4, Lcom/taobao/accs/common/Constants$Operate;->ASK_VERSION:Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 623
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    const-string v3, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    const-string v3, "elversion"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 626
    const-string v3, "com.taobao.accs.ChannelService"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    const-string v3, "ElectionServiceImpl"

    const-string v4, "startElection askversion"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "receive pkg"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 628
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 629
    sget v0, Lcom/taobao/accs/internal/b;->g:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/taobao/accs/internal/b;->g:I

    goto :goto_2

    .line 631
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/accs/internal/b;->p:Z

    .line 632
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/taobao/accs/internal/f;

    invoke-direct {v1, p0}, Lcom/taobao/accs/internal/f;-><init>(Lcom/taobao/accs/internal/b;)V

    const-wide/16 v2, 0x3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/internal/b;->l:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 800
    const-string v0, "ElectionServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldStopSelf, kill:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 801
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->i:Landroid/app/Service;

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->i:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 804
    :cond_0
    if-eqz p1, :cond_1

    .line 805
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 807
    :cond_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 100
    const-string v0, "ElectionServiceImpl"

    const-string v1, "onCreate,"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "sdkv"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0xdd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 318
    const-string v0, "ElectionServiceImpl"

    const-string v1, "Service onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    iput-object v3, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    .line 320
    iput-object v3, p0, Lcom/taobao/accs/internal/b;->i:Landroid/app/Service;

    .line 321
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 13

    .prologue
    .line 106
    const/4 v1, 0x2

    .line 107
    if-nez p1, :cond_0

    move v0, v1

    .line 301
    :goto_0
    return v0

    .line 110
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 113
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 114
    const-string v0, "ElectionServiceImpl"

    const-string v4, "onStartCommand begin"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "action"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v0, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    invoke-static {}, Lcom/taobao/accs/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 118
    :try_start_0
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 119
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 120
    const-string v3, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 122
    iget-object v4, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/a/a;->a(Landroid/content/Context;)Lcom/taobao/accs/a/a$a;

    move-result-object v4

    .line 123
    iget-object v5, v4, Lcom/taobao/accs/a/a$a;->a:Ljava/lang/String;

    .line 124
    const-string v6, "ElectionServiceImpl"

    const-string v7, "onstartcommand PACKAGE_REMOVED"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "pkg"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    const/4 v9, 0x2

    const-string v10, "host"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v5, v8, v9

    const/4 v9, 0x4

    const-string v10, "replaced"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v8, v9

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    const/4 v0, 0x0

    iput v0, v4, Lcom/taobao/accs/a/a$a;->b:I

    .line 129
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/taobao/accs/a/a;->a(Landroid/content/Context;Lcom/taobao/accs/a/a$a;)V

    .line 130
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    const-string v3, "host removed"

    invoke-virtual {p0, v0, v3}, Lcom/taobao/accs/internal/b;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :cond_1
    :goto_1
    const-string v0, "com.taobao.accs.intent.action.START_SERVICE"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 252
    :try_start_1
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    const-string v3, "appKey"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 256
    const-string v4, "ttid"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 257
    const-string v5, "app_sercet"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 258
    const-string v6, "configTag"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 259
    const-string v7, "mode"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 260
    const-string v8, "ElectionServiceImpl"

    const-string v9, "try to saveAppKey"

    const/16 v10, 0xa

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "configTag"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    const/4 v11, 0x2

    const-string v12, "appkey"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aput-object v3, v10, v11

    const/4 v11, 0x4

    const-string v12, "appSecret"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    aput-object v5, v10, v11

    const/4 v11, 0x6

    const-string v12, "ttid"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    aput-object v4, v10, v11

    const/16 v11, 0x8

    const-string v12, "pkg"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    aput-object v0, v10, v11

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/taobao/accs/utl/l;->a(Landroid/content/Context;I)V

    .line 265
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-static {v0, v6, v7, v8}, Lcom/taobao/accs/internal/b;->a(Landroid/content/Context;Ljava/lang/String;ZI)Lcom/taobao/accs/net/b;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_e

    .line 267
    iput-object v4, v0, Lcom/taobao/accs/net/b;->a:Ljava/lang/String;

    .line 271
    :goto_2
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-static {v0, v3, v5}, Lcom/taobao/accs/utl/UtilityImpl;->saveAppKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 284
    :cond_2
    :goto_3
    invoke-static {}, Lcom/taobao/accs/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    .line 285
    goto/16 :goto_0

    .line 132
    :cond_3
    :try_start_2
    const-string v0, "ElectionServiceImpl"

    const-string v3, "onstartcommand PACKAGE_REMOVED no need election"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 237
    :catch_0
    move-exception v0

    .line 238
    const-string v3, "ElectionServiceImpl"

    const-string v4, "onStartCommand"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v0, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 135
    :cond_4
    :try_start_3
    const-string v0, "ElectionServiceImpl"

    const-string v3, "onstartcommand PACKAGE_REMOVED no need election"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 137
    :cond_5
    invoke-static {}, Lcom/taobao/accs/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    const-string v0, "operate"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/common/Constants$Operate;

    .line 139
    const-string v4, "ElectionServiceImpl"

    const-string v5, "operate is receive"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "operate"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    sget-object v4, Lcom/taobao/accs/internal/b$1;->a:[I

    invoke-virtual {v0}, Lcom/taobao/accs/common/Constants$Operate;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    :cond_6
    :goto_4
    move v0, v1

    .line 235
    goto/16 :goto_0

    .line 143
    :pswitch_0
    invoke-direct {p0}, Lcom/taobao/accs/internal/b;->d()V

    goto :goto_4

    .line 147
    :pswitch_1
    const-string v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v3, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-virtual {p0, v3, v0}, Lcom/taobao/accs/internal/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 152
    :pswitch_2
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 153
    const-string v0, "elversion"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 154
    new-instance v5, Landroid/content/Intent;

    invoke-static {}, Lcom/taobao/accs/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    const-string v0, "operate"

    sget-object v6, Lcom/taobao/accs/common/Constants$Operate;->REPORT_VERSION:Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v5, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 156
    const-string v0, "packageName"

    iget-object v6, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v0, "com.taobao.accs.ChannelService"

    invoke-virtual {v5, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const/16 v0, 0xdd

    .line 160
    iget-object v6, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    iget-object v7, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Lcom/taobao/accs/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 161
    const-string v4, "sdkVersion"

    const/16 v6, 0xdd

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    :goto_5
    iget-object v4, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 166
    const-string v4, "ElectionServiceImpl"

    const-string v5, "report"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "sdkv"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x2

    const-string v7, "from pkg"

    aput-object v7, v6, v0

    const/4 v0, 0x3

    iget-object v7, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v0, 0x4

    const-string v7, "to pkg"

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v3, v6, v0

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 163
    :cond_7
    const/4 v0, 0x0

    goto :goto_5

    .line 170
    :pswitch_3
    iget-boolean v0, p0, Lcom/taobao/accs/internal/b;->c:Z

    if-eqz v0, :cond_9

    .line 172
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    const-string v3, "sdkVersion"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 174
    sget v4, Lcom/taobao/accs/internal/b;->g:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/taobao/accs/internal/b;->g:I

    .line 175
    if-eqz v3, :cond_8

    .line 176
    iget-object v4, p0, Lcom/taobao/accs/internal/b;->e:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_8
    const-string v4, "ElectionServiceImpl"

    const-string v5, "collect info"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "sdkv"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    const/4 v3, 0x2

    const-string v7, "election pkg"

    aput-object v7, v6, v3

    const/4 v3, 0x3

    aput-object v0, v6, v3

    const/4 v0, 0x4

    const-string v3, "electionPackCount"

    aput-object v3, v6, v0

    const/4 v0, 0x5

    sget v3, Lcom/taobao/accs/internal/b;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v0

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    sget v0, Lcom/taobao/accs/internal/b;->g:I

    if-nez v0, :cond_6

    .line 180
    invoke-direct {p0}, Lcom/taobao/accs/internal/b;->e()V

    goto/16 :goto_4

    .line 183
    :cond_9
    const-string v0, "ElectionServiceImpl"

    const-string v3, "not electioning, but receive report"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 188
    :pswitch_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/accs/internal/b;->d:Z

    .line 189
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->m:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_a

    .line 190
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->m:Ljava/util/concurrent/ScheduledFuture;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/accs/internal/b;->m:Ljava/util/concurrent/ScheduledFuture;

    .line 193
    :cond_a
    const-string v0, "sudoPack"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    const-string v4, "ElectionServiceImpl"

    const-string v5, "election result"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "host"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v7, 0x2

    const-string v8, "curr pkg"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    const-string v4, "accs"

    const-string v5, "ele_pkg_times"

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v0, v6, v7}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 196
    iget-object v4, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/a/a;->b(Landroid/content/Context;)Lcom/taobao/accs/a/a$a;

    .line 197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 199
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 200
    invoke-virtual {p0}, Lcom/taobao/accs/internal/b;->a()V

    goto/16 :goto_4

    .line 203
    :cond_b
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/taobao/accs/internal/b;->a(Z)V

    goto/16 :goto_4

    .line 209
    :pswitch_5
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/a/a;->a(Landroid/content/Context;)Lcom/taobao/accs/a/a$a;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/accs/a/a$a;->a:Ljava/lang/String;

    .line 210
    const-string v4, "pingPack"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 212
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 213
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 214
    const-string v5, "ElectionServiceImpl"

    const-string v6, "host receive ping, and report ping"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "to pkg"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v8, 0x2

    const-string v9, "host"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object v0, v7, v8

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    new-instance v5, Landroid/content/Intent;

    invoke-static {}, Lcom/taobao/accs/a/a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v6, "com.taobao.accs.ChannelService"

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v6, "operate"

    sget-object v7, Lcom/taobao/accs/common/Constants$Operate;->PING_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 219
    const-string v6, "isPing"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 220
    const-string v6, "pingPack"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v6, "sdkVersion"

    const/16 v7, 0xdd

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    iget-object v6, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 223
    invoke-virtual {p0}, Lcom/taobao/accs/internal/b;->a()V

    .line 227
    :cond_c
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 228
    const-string v3, "ElectionServiceImpl"

    const-string v4, "receive host\'s ping back"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "host"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    const-string v0, "isPing"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/taobao/accs/internal/b;->h:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    .line 241
    :cond_d
    invoke-static {}, Lcom/taobao/accs/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    const-string v0, "ElectionServiceImpl"

    const-string v2, "election disabled"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 243
    goto/16 :goto_0

    .line 269
    :cond_e
    :try_start_4
    const-string v0, "ElectionServiceImpl"

    const-string v4, "start action, no connection"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "configTag"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v6, v7, v8

    invoke-static {v0, v4, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 273
    :catch_1
    move-exception v0

    .line 274
    const-string v3, "ElectionServiceImpl"

    const-string v4, "start action"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v0, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 289
    :cond_f
    iget-object v0, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/a/a;->a(Landroid/content/Context;)Lcom/taobao/accs/a/a$a;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/accs/a/a$a;->a:Ljava/lang/String;

    .line 291
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {}, Lcom/taobao/accs/a/a;->b()Z

    move-result v1

    if-nez v1, :cond_11

    .line 294
    :cond_10
    const-string v1, "ElectionServiceImpl"

    const-string v2, "deliver to channelservice"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "host pkg"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    invoke-virtual {p0, p1}, Lcom/taobao/accs/internal/b;->a(Landroid/content/Intent;)I

    move-result v0

    goto/16 :goto_0

    .line 297
    :cond_11
    iget-boolean v0, p0, Lcom/taobao/accs/internal/b;->c:Z

    if-nez v0, :cond_12

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 298
    const-string v0, "ElectionServiceImpl"

    const-string v1, "not electioning and not host, stop"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/taobao/accs/internal/b;->a(Z)V

    .line 301
    :cond_12
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    return v0
.end method
