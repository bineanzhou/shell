.class public Lcom/open/likehelper/base/user/UserManager;
.super Ljava/lang/Object;
.source "UserManager.java"


# static fields
.field private static volatile a:Lcom/open/likehelper/base/user/UserManager;


# instance fields
.field private b:Lcom/open/likehelper/base/user/UserInfo;

.field private c:Landroid/content/Context;

.field private d:Lcom/open/likehelper/util/SharedPreferUtils;

.field private e:Lcom/google/gson/Gson;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/open/likehelper/base/user/UserManager;->e:Lcom/google/gson/Gson;

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/open/likehelper/base/user/UserManager;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/open/likehelper/base/user/UserManager;Lcom/open/likehelper/base/user/UserInfo;)Lcom/open/likehelper/base/user/UserInfo;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/open/likehelper/base/user/UserManager;->b:Lcom/open/likehelper/base/user/UserInfo;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/open/likehelper/base/user/UserManager;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/open/likehelper/base/user/UserManager;->a:Lcom/open/likehelper/base/user/UserManager;

    if-nez v0, :cond_1

    .line 27
    const-class v1, Lcom/open/likehelper/base/user/UserManager;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lcom/open/likehelper/base/user/UserManager;->a:Lcom/open/likehelper/base/user/UserManager;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/open/likehelper/base/user/UserManager;

    invoke-direct {v0}, Lcom/open/likehelper/base/user/UserManager;-><init>()V

    sput-object v0, Lcom/open/likehelper/base/user/UserManager;->a:Lcom/open/likehelper/base/user/UserManager;

    .line 31
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    sget-object v0, Lcom/open/likehelper/base/user/UserManager;->a:Lcom/open/likehelper/base/user/UserManager;

    invoke-direct {v0, p0}, Lcom/open/likehelper/base/user/UserManager;->b(Landroid/content/Context;)V

    .line 34
    sget-object v0, Lcom/open/likehelper/base/user/UserManager;->a:Lcom/open/likehelper/base/user/UserManager;

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/open/likehelper/base/user/UserManager;)Lcom/open/likehelper/util/SharedPreferUtils;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/open/likehelper/base/user/UserManager;->d:Lcom/open/likehelper/util/SharedPreferUtils;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 38
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/open/likehelper/base/user/UserManager;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iput-object p1, p0, Lcom/open/likehelper/base/user/UserManager;->c:Landroid/content/Context;

    .line 43
    new-instance v0, Lcom/open/likehelper/util/SharedPreferUtils;

    invoke-direct {v0, p1}, Lcom/open/likehelper/util/SharedPreferUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/open/likehelper/base/user/UserManager;->d:Lcom/open/likehelper/util/SharedPreferUtils;

    .line 44
    iget-object v0, p0, Lcom/open/likehelper/base/user/UserManager;->d:Lcom/open/likehelper/util/SharedPreferUtils;

    const-string v1, "loginInfo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/open/likehelper/util/SharedPreferUtils;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/open/likehelper/base/user/UserManager;->e:Lcom/google/gson/Gson;

    new-instance v2, Lcom/open/likehelper/base/user/UserManager$1;

    invoke-direct {v2, p0}, Lcom/open/likehelper/base/user/UserManager$1;-><init>(Lcom/open/likehelper/base/user/UserManager;)V

    .line 46
    invoke-virtual {v2}, Lcom/open/likehelper/base/user/UserManager$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 45
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/base/user/UserInfo;

    iput-object v0, p0, Lcom/open/likehelper/base/user/UserManager;->b:Lcom/open/likehelper/base/user/UserInfo;

    .line 47
    iget-object v0, p0, Lcom/open/likehelper/base/user/UserManager;->b:Lcom/open/likehelper/base/user/UserInfo;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/open/likehelper/base/user/UserInfo;

    invoke-direct {v0}, Lcom/open/likehelper/base/user/UserInfo;-><init>()V

    iput-object v0, p0, Lcom/open/likehelper/base/user/UserManager;->b:Lcom/open/likehelper/base/user/UserInfo;

    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/open/likehelper/base/user/UserManager;->d:Lcom/open/likehelper/util/SharedPreferUtils;

    const-string v1, "loginInfo"

    iget-object v2, p0, Lcom/open/likehelper/base/user/UserManager;->e:Lcom/google/gson/Gson;

    iget-object v3, p0, Lcom/open/likehelper/base/user/UserManager;->b:Lcom/open/likehelper/base/user/UserInfo;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/open/likehelper/util/SharedPreferUtils;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/open/likehelper/base/user/UserManager;->b:Lcom/open/likehelper/base/user/UserInfo;

    invoke-virtual {v0, p1}, Lcom/open/likehelper/base/user/UserInfo;->a(Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lcom/open/likehelper/base/user/UserManager;->e()V

    .line 73
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/open/likehelper/base/user/UserManager;->b:Lcom/open/likehelper/base/user/UserInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/open/likehelper/base/user/UserManager;->f:Landroid/os/Handler;

    new-instance v1, Lcom/open/likehelper/base/user/UserManager$2;

    invoke-direct {v1, p0}, Lcom/open/likehelper/base/user/UserManager$2;-><init>(Lcom/open/likehelper/base/user/UserManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/open/likehelper/base/user/UserManager;->b:Lcom/open/likehelper/base/user/UserInfo;

    invoke-virtual {v0, p1}, Lcom/open/likehelper/base/user/UserInfo;->b(Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lcom/open/likehelper/base/user/UserManager;->e()V

    .line 82
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/open/likehelper/base/user/UserManager;->b:Lcom/open/likehelper/base/user/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/open/likehelper/base/user/UserManager;->b:Lcom/open/likehelper/base/user/UserInfo;

    invoke-virtual {v0}, Lcom/open/likehelper/base/user/UserInfo;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/open/likehelper/base/user/UserManager;->b:Lcom/open/likehelper/base/user/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/open/likehelper/base/user/UserManager;->b:Lcom/open/likehelper/base/user/UserInfo;

    invoke-virtual {v0}, Lcom/open/likehelper/base/user/UserInfo;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
