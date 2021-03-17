.class public Lanetwork/channel/http/NetworkSdkSetting;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static CURRENT_ENV:Lanet/channel/entity/ENV; = null

.field private static final TAG:Ljava/lang/String; = "ANet.NetworkSdkSetting"

.field private static context:Landroid/content/Context;

.field private static isInit:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    sput-object v0, Lanetwork/channel/http/NetworkSdkSetting;->CURRENT_ENV:Lanet/channel/entity/ENV;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lanetwork/channel/http/NetworkSdkSetting;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lanetwork/channel/http/NetworkSdkSetting;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static init(Landroid/app/Application;Ljava/util/HashMap;)V
    .locals 5
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
    .line 55
    :try_start_0
    const-string v0, "ttid"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    invoke-static {v0}, Lanet/channel/GlobalAppRuntimeInfo;->setTtid(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lanetwork/channel/http/NetworkSdkSetting;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const-string v1, "ANet.NetworkSdkSetting"

    const-string v2, "Network SDK initial failed!"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 36
    if-nez p0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    :try_start_0
    sget-object v0, Lanetwork/channel/http/NetworkSdkSetting;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    sput-object p0, Lanetwork/channel/http/NetworkSdkSetting;->context:Landroid/content/Context;

    .line 42
    invoke-static {p0}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;)V

    .line 44
    invoke-static {}, Lanetwork/channel/monitor/Monitor;->a()V

    .line 45
    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->a()V

    .line 46
    invoke-static {p0}, Lanetwork/channel/cookie/CookieManager;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const-string v1, "ANet.NetworkSdkSetting"

    const-string v2, "Network SDK initial failed!"

    const/4 v3, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setTtid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    invoke-static {p0}, Lanet/channel/GlobalAppRuntimeInfo;->setTtid(Ljava/lang/String;)V

    .line 65
    return-void
.end method
