.class public Lcom/taobao/accs/init/Launcher_InitAccs;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/init/Launcher_InitAccs$a;
    }
.end annotation


# static fields
.field protected static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static defaultAppkey:Ljava/lang/String;

.field public static mAppReceiver:Lcom/taobao/accs/IAppReceiver;

.field public static mAppkey:Ljava/lang/String;

.field public static mContext:Landroid/content/Context;

.field public static mForceBindUser:Z

.field public static mIsInited:Z

.field public static mSid:Ljava/lang/String;

.field public static mTtid:Ljava/lang/String;

.field public static mUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 37
    sput-boolean v0, Lcom/taobao/accs/init/Launcher_InitAccs;->mForceBindUser:Z

    .line 38
    sput-boolean v0, Lcom/taobao/accs/init/Launcher_InitAccs;->mIsInited:Z

    .line 39
    const-string v0, "21646297"

    sput-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->defaultAppkey:Ljava/lang/String;

    .line 144
    new-instance v0, Lcom/taobao/accs/init/d;

    invoke-direct {v0}, Lcom/taobao/accs/init/d;-><init>()V

    sput-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppReceiver:Lcom/taobao/accs/IAppReceiver;

    .line 228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    .line 231
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "im"

    const-string v2, "com.taobao.tao.amp.remote.AccsReceiverCallback"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "powermsg"

    const-string v2, "com.taobao.appfrmbundle.mkt.AccsReceiverService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "pmmonitor"

    const-string v2, "com.taobao.appfrmbundle.mkt.AccsReceiverService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "motu-remote"

    const-string v2, "com.taobao.tao.log.collect.AccsTlogService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "cloudsync"

    const-string v2, "com.taobao.datasync.network.accs.AccsCloudSyncService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "acds"

    const-string v2, "com.taobao.acds.compact.AccsACDSService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "agooSend"

    const-string v2, "org.android.agoo.accs.AgooService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "agooAck"

    const-string v2, "org.android.agoo.accs.AgooService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "agooTokenReport"

    const-string v2, "org.android.agoo.accs.AgooService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "AliLive"

    const-string v2, "com.taobao.playbudyy.gameplugin.danmu.DanmuCallbackService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "orange"

    const-string v2, "com.taobao.orange.accssupport.OrangeAccsService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "tsla"

    const-string v2, "com.taobao.android.festival.accs.HomepageAccsMassService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "taobaoWaimaiAccsService"

    const-string v2, "com.taobao.takeout.order.detail.service.TakeoutOrderDetailACCSService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "login"

    const-string v2, "com.taobao.android.sso.v2.service.LoginAccsService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "ranger_abtest"

    const-string v2, "com.taobao.ranger3.RangerACCSService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "accs_poplayer"

    const-string v2, "com.taobao.tbpoplayer.AccsPopLayerService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "dm_abtest"

    const-string v2, "com.tmall.wireless.ant.accs.AntAccsService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method


# virtual methods
.method public init(Landroid/app/Application;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 42
    const-string v0, "Launcher_InitAccs"

    const-string v1, "init"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 46
    const/4 v1, 0x0

    .line 48
    :try_start_1
    const-string v0, "envIndex"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 49
    const-string v0, "onlineAppKey"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppkey:Ljava/lang/String;

    .line 50
    if-ne v5, v2, :cond_3

    .line 51
    const-string v0, "preAppKey"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppkey:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    :goto_0
    :try_start_2
    const-string v0, "process"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 59
    :try_start_3
    const-string v1, "ttid"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/taobao/accs/init/Launcher_InitAccs;->mTtid:Ljava/lang/String;

    .line 60
    const-string v1, "userId"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/taobao/accs/init/Launcher_InitAccs;->mUserId:Ljava/lang/String;

    .line 61
    const-string v1, "sid"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/taobao/accs/init/Launcher_InitAccs;->mSid:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 66
    :goto_1
    :try_start_4
    sget-object v1, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppkey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const-string v1, "Launcher_InitAccs"

    const-string v4, "init get appkey null\uff01\uff01"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    sget-object v1, Lcom/taobao/accs/init/Launcher_InitAccs;->defaultAppkey:Ljava/lang/String;

    sput-object v1, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppkey:Ljava/lang/String;

    .line 71
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    const-string v0, "Launcher_InitAccs"

    const-string v1, "init get process null\uff01\uff01"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/taobao/accs/utl/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 78
    :cond_1
    const-string v1, "Launcher_InitAccs"

    const-string v4, "init"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "appkey"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppkey:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "mode"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "process"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    aput-object v0, v5, v6

    invoke-static {v1, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    sget-object v1, Lcom/taobao/accs/init/Launcher_InitAccs;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppkey:Ljava/lang/String;

    invoke-static {v1, v4, v2}, Lcom/taobao/accs/ACCSManager;->setAppkey(Landroid/content/Context;Ljava/lang/String;I)V

    .line 81
    sget-object v1, Lcom/taobao/accs/init/Launcher_InitAccs;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/taobao/accs/ACCSManager;->setMode(Landroid/content/Context;I)V

    .line 82
    sget-object v1, Lcom/taobao/accs/init/Launcher_InitAccs;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/taobao/accs/init/Launcher_InitAccs$a;

    invoke-direct {v2}, Lcom/taobao/accs/init/Launcher_InitAccs$a;-><init>()V

    invoke-static {v1, v2}, Lcom/taobao/accs/ACCSManager;->setLoginInfoImpl(Landroid/content/Context;Lcom/taobao/accs/ILoginInfo;)V

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/taobao/accs/init/Launcher_InitAccs;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppkey:Ljava/lang/String;

    sget-object v2, Lcom/taobao/accs/init/Launcher_InitAccs;->mTtid:Ljava/lang/String;

    sget-object v4, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppReceiver:Lcom/taobao/accs/IAppReceiver;

    invoke-static {v0, v1, v2, v4}, Lcom/taobao/accs/ACCSManager;->startInAppConnection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V

    .line 93
    :cond_2
    new-instance v0, Lcom/taobao/accs/init/c;

    invoke-direct {v0, p0}, Lcom/taobao/accs/init/c;-><init>(Lcom/taobao/accs/init/Launcher_InitAccs;)V

    const-wide/16 v4, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v4, v5, v1}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 104
    :goto_2
    return-void

    .line 53
    :cond_3
    if-ne v5, v4, :cond_4

    move v0, v2

    :goto_3
    if-ne v5, v6, :cond_5

    :goto_4
    or-int/2addr v0, v2

    if-eqz v0, :cond_6

    .line 54
    :try_start_5
    const-string v0, "dailyAppkey"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppkey:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    move v2, v4

    .line 55
    goto/16 :goto_0

    :cond_4
    move v0, v3

    .line 53
    goto :goto_3

    :cond_5
    move v2, v3

    goto :goto_4

    .line 62
    :catch_0
    move-exception v0

    move v2, v3

    .line 63
    :goto_5
    :try_start_6
    const-string v4, "Launcher_InitAccs"

    const-string v5, "init get param error"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v0, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    move-object v0, v1

    goto/16 :goto_1

    .line 101
    :catch_1
    move-exception v0

    .line 102
    const-string v1, "Launcher_InitAccs"

    const-string v2, "init"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    .line 62
    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_5

    :cond_6
    move v2, v3

    goto/16 :goto_0
.end method
