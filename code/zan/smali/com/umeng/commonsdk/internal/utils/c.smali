.class public Lcom/umeng/commonsdk/internal/utils/c;
.super Ljava/lang/Object;
.source "BatteryUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/internal/utils/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "BatteryUtils"

.field private static b:Z

.field private static c:Landroid/content/Context;


# instance fields
.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/commonsdk/internal/utils/c;->b:Z

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/commonsdk/internal/utils/c;->c:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/umeng/commonsdk/internal/utils/c$1;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/internal/utils/c$1;-><init>(Lcom/umeng/commonsdk/internal/utils/c;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/internal/utils/c;->d:Landroid/content/BroadcastReceiver;

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/internal/utils/c$1;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/umeng/commonsdk/internal/utils/c;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/utils/c;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/umeng/commonsdk/internal/utils/c;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 41
    if-eqz p0, :cond_0

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/internal/utils/c;->c:Landroid/content/Context;

    .line 45
    :cond_0
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/c$a;->a()Lcom/umeng/commonsdk/internal/utils/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/umeng/commonsdk/internal/utils/c;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()Z
    .locals 1

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/umeng/commonsdk/internal/utils/c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 3

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 59
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    sget-object v1, Lcom/umeng/commonsdk/internal/utils/c;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/commonsdk/internal/utils/c;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/commonsdk/internal/utils/c;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :goto_0
    monitor-exit p0

    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    :try_start_1
    sget-object v1, Lcom/umeng/commonsdk/internal/utils/c;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 2

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/umeng/commonsdk/internal/utils/c;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/commonsdk/internal/utils/c;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/commonsdk/internal/utils/c;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :goto_0
    monitor-exit p0

    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    :try_start_1
    sget-object v1, Lcom/umeng/commonsdk/internal/utils/c;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
