.class public Lcom/taobao/accs/antibrush/AntiBrush;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/antibrush/AntiBrush$AntiReceiver;
    }
.end annotation


# static fields
.field private static final ANTI_ATTACK_ACTION:Ljava/lang/String; = "mtopsdk.mtop.antiattack.checkcode.validate.activity_action"

.field private static final ANTI_ATTACK_RESULT_ACTION:Ljava/lang/String; = "mtopsdk.extra.antiattack.result.notify.action"

.field public static final STATUS_BRUSH:I = 0x1a3

.field private static final TAG:Ljava/lang/String; = "AntiBrush"

.field private static mHost:Ljava/lang/String;

.field private static volatile mIsInCheckCodeActivity:Z

.field private static mTimeoutTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mAntiAttackReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/accs/antibrush/AntiBrush;->mIsInCheckCodeActivity:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/accs/antibrush/AntiBrush;->mAntiAttackReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/antibrush/AntiBrush;->mContext:Landroid/content/Context;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/accs/antibrush/AntiBrush;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/taobao/accs/antibrush/AntiBrush;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private handleantiBrush(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 111
    sget-boolean v0, Lcom/taobao/accs/antibrush/AntiBrush;->mIsInCheckCodeActivity:Z

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "AntiBrush"

    const-string v1, "handleantiBrush return"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "mIsInCheckCodeActivity"

    aput-object v3, v2, v4

    sget-boolean v3, Lcom/taobao/accs/antibrush/AntiBrush;->mIsInCheckCodeActivity:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :goto_0
    return-void

    .line 118
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 119
    const-string v1, "mtopsdk.mtop.antiattack.checkcode.validate.activity_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/taobao/accs/antibrush/AntiBrush;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 122
    const-string v1, "Location"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v1, "AntiBrush"

    const-string v2, "handleAntiBrush:"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iget-object v1, p0, Lcom/taobao/accs/antibrush/AntiBrush;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 125
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/accs/antibrush/AntiBrush;->mIsInCheckCodeActivity:Z

    .line 126
    iget-object v0, p0, Lcom/taobao/accs/antibrush/AntiBrush;->mAntiAttackReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 127
    new-instance v0, Lcom/taobao/accs/antibrush/AntiBrush$AntiReceiver;

    invoke-direct {v0}, Lcom/taobao/accs/antibrush/AntiBrush$AntiReceiver;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/antibrush/AntiBrush;->mAntiAttackReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/taobao/accs/antibrush/AntiBrush;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/accs/antibrush/AntiBrush;->mAntiAttackReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "mtopsdk.extra.antiattack.result.notify.action"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    const-string v1, "AntiBrush"

    const-string v2, "handleantiBrush"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static onResult(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/accs/antibrush/AntiBrush;->mIsInCheckCodeActivity:Z

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.taobao.accs.intent.action.RECEIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v1, "command"

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    const-string v1, "anti_brush_ret"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    invoke-static {p0, v0}, Lcom/taobao/accs/data/d;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 99
    sget-object v0, Lcom/taobao/accs/antibrush/AntiBrush;->mTimeoutTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/taobao/accs/antibrush/AntiBrush;->mTimeoutTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 101
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/accs/antibrush/AntiBrush;->mTimeoutTask:Ljava/util/concurrent/ScheduledFuture;

    .line 103
    :cond_0
    sget-object v0, Lcom/taobao/accs/antibrush/AntiBrush;->mHost:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 104
    sget-object v0, Lcom/taobao/accs/antibrush/AntiBrush;->mHost:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/accs/antibrush/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {p0, v0}, Lcom/taobao/accs/utl/UtilityImpl;->storeCookie(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    :cond_1
    return-void
.end method


# virtual methods
.method public checkAntiBrush(Ljava/net/URL;Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    .line 43
    if-eqz p2, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/antibrush/AntiBrush;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->isForeground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 44
    sget-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_STATUS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v0}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 46
    :goto_0
    const/16 v4, 0x1a3

    if-ne v0, v4, :cond_4

    .line 47
    sget-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_LOCATION:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v0}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 49
    const-string v4, "AntiBrush"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start anti bursh location:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-direct {p0, v0}, Lcom/taobao/accs/antibrush/AntiBrush;->handleantiBrush(Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/taobao/accs/antibrush/AntiBrush;->mTimeoutTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/taobao/accs/antibrush/AntiBrush;->mTimeoutTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/accs/antibrush/AntiBrush;->mTimeoutTask:Ljava/util/concurrent/ScheduledFuture;

    .line 55
    :cond_0
    new-instance v0, Lcom/taobao/accs/antibrush/a;

    invoke-direct {v0, p0}, Lcom/taobao/accs/antibrush/a;-><init>(Lcom/taobao/accs/antibrush/AntiBrush;)V

    const-wide/32 v4, 0xea60

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v4, v5, v6}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/antibrush/AntiBrush;->mTimeoutTask:Ljava/util/concurrent/ScheduledFuture;

    .line 64
    if-nez p1, :cond_3

    move-object v0, v3

    :goto_1
    sput-object v0, Lcom/taobao/accs/antibrush/AntiBrush;->mHost:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 71
    :goto_2
    :try_start_1
    sget-object v1, Lcom/taobao/accs/client/GlobalClientInfo;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/taobao/accs/antibrush/AntiBrush;->mHost:Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/accs/antibrush/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    const-string v1, "AntiBrush"

    const-string v3, "cookie invalid, clear"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v1, p0, Lcom/taobao/accs/antibrush/AntiBrush;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/UtilityImpl;->clearCookie(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    :cond_1
    :goto_3
    return v0

    .line 45
    :cond_2
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_0

    .line 64
    :cond_3
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_1

    .line 76
    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v2

    .line 77
    :goto_4
    const-string v3, "AntiBrush"

    const-string v4, "checkAntiBrush error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_3

    .line 76
    :catch_1
    move-exception v1

    goto :goto_4

    :cond_4
    move v0, v2

    goto :goto_2
.end method
