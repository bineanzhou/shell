.class public Lcom/taobao/accs/client/GlobalClientInfo;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final AGOO_SERVICE_ID:Ljava/lang/String; = "agooSend"

.field public static final SUPPORT_AUTO_UNIT:Z

.field public static a:Landroid/content/Context;

.field public static b:Lcom/taobao/accs/IAgooAppReceiver;

.field public static c:Ljava/lang/String;

.field public static d:Z

.field private static volatile e:Lcom/taobao/accs/client/GlobalClientInfo;

.field private static m:Ljava/util/Map;
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


# instance fields
.field private f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/ILoginInfo;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/IAppReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/app/ActivityManager;

.field private i:Landroid/net/ConnectivityManager;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private k:Lcom/taobao/accs/a/a$a;

.field private l:Landroid/content/pm/PackageInfo;

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/base/AccsAbstractDataListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/accs/client/GlobalClientInfo;->d:Z

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->m:Ljava/util/Map;

    .line 51
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->m:Ljava/util/Map;

    const-string v1, "agooSend"

    const-string v2, "org.android.agoo.accs.AgooService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->m:Ljava/util/Map;

    const-string v1, "agooAck"

    const-string v2, "org.android.agoo.accs.AgooService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->m:Ljava/util/Map;

    const-string v1, "agooTokenReport"

    const-string v2, "org.android.agoo.accs.AgooService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->n:Ljava/util/Map;

    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Context is null!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->a:Landroid/content/Context;

    .line 81
    :cond_1
    new-instance v0, Lcom/taobao/accs/client/c;

    invoke-direct {v0, p0}, Lcom/taobao/accs/client/c;-><init>(Lcom/taobao/accs/client/GlobalClientInfo;)V

    invoke-static {v0}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->execute(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->e:Lcom/taobao/accs/client/GlobalClientInfo;

    if-nez v0, :cond_1

    .line 60
    const-class v1, Lcom/taobao/accs/client/GlobalClientInfo;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->e:Lcom/taobao/accs/client/GlobalClientInfo;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/taobao/accs/client/GlobalClientInfo;

    invoke-direct {v0, p0}, Lcom/taobao/accs/client/GlobalClientInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->e:Lcom/taobao/accs/client/GlobalClientInfo;

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_1
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->e:Lcom/taobao/accs/client/GlobalClientInfo;

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearLoginInfoImpl()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 120
    return-void
.end method

.method public getActivityManager()Landroid/app/ActivityManager;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->h:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 95
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->a:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->h:Landroid/app/ActivityManager;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->h:Landroid/app/ActivityManager;

    return-object v0
.end method

.method public getAppReceiver()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/IAppReceiver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->g:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->i:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 103
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->i:Landroid/net/ConnectivityManager;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->i:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public getElectionBlackList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->j:Ljava/util/Map;

    return-object v0
.end method

.method public getElectionResult()Lcom/taobao/accs/a/a$a;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->k:Lcom/taobao/accs/a/a$a;

    return-object v0
.end method

.method public getListener(Ljava/lang/String;)Lcom/taobao/accs/base/AccsAbstractDataListener;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/base/AccsAbstractDataListener;

    return-object v0
.end method

.method public getNick(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->f:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 152
    :goto_0
    return-object v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/ILoginInfo;

    .line 149
    if-nez v0, :cond_1

    move-object v0, v1

    .line 150
    goto :goto_0

    .line 152
    :cond_1
    invoke-interface {v0}, Lcom/taobao/accs/ILoginInfo;->getNick()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->l:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    .line 231
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/taobao/accs/client/GlobalClientInfo;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->l:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->l:Landroid/content/pm/PackageInfo;

    return-object v0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    const-string v1, "GlobalClientInfo"

    const-string v2, "getPackageInfo"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getService(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->f:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 130
    :goto_0
    return-object v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/ILoginInfo;

    .line 127
    if-nez v0, :cond_1

    move-object v0, v1

    .line 128
    goto :goto_0

    .line 130
    :cond_1
    invoke-interface {v0}, Lcom/taobao/accs/ILoginInfo;->getSid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->f:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 141
    :goto_0
    return-object v0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/ILoginInfo;

    .line 138
    if-nez v0, :cond_1

    move-object v0, v1

    .line 139
    goto :goto_0

    .line 141
    :cond_1
    invoke-interface {v0}, Lcom/taobao/accs/ILoginInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public registerListener(Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V
    .locals 1

    .prologue
    .line 193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->n:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public registerService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->m:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAppReceiver(Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    .locals 2

    .prologue
    .line 156
    if-eqz p2, :cond_0

    .line 158
    instance-of v0, p2, Lcom/taobao/accs/IAgooAppReceiver;

    if-eqz v0, :cond_1

    .line 159
    check-cast p2, Lcom/taobao/accs/IAgooAppReceiver;

    sput-object p2, Lcom/taobao/accs/client/GlobalClientInfo;->b:Lcom/taobao/accs/IAgooAppReceiver;

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->g:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_2

    .line 163
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setElectionBlackList(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 210
    iput-object p1, p0, Lcom/taobao/accs/client/GlobalClientInfo;->j:Ljava/util/Map;

    .line 211
    return-void
.end method

.method public setElectionReslt(Lcom/taobao/accs/a/a$a;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/taobao/accs/client/GlobalClientInfo;->k:Lcom/taobao/accs/a/a$a;

    .line 221
    return-void
.end method

.method public setLoginInfoImpl(Ljava/lang/String;Lcom/taobao/accs/ILoginInfo;)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->f:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 113
    :cond_0
    if-eqz p2, :cond_1

    .line 114
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_1
    return-void
.end method

.method public unRegisterService(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 185
    :cond_0
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public unregisterListener(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method
