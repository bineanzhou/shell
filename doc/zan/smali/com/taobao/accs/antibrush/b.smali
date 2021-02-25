.class public Lcom/taobao/accs/antibrush/b;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final KEY_SEC:Ljava/lang/String; = "sec"

.field public static final TAG:Ljava/lang/String; = "CookieMgr"

.field public static a:Landroid/webkit/CookieManager;

.field private static volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/accs/antibrush/b;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 60
    const-class v2, Lcom/taobao/accs/antibrush/b;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/taobao/accs/antibrush/b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    const-string v1, "CookieMgr"

    const-string v3, "cookieMgr not setup"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :goto_0
    monitor-exit v2

    return-object v0

    .line 67
    :cond_0
    :try_start_1
    sget-object v1, Lcom/taobao/accs/antibrush/b;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v1, p0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v1}, Lcom/taobao/accs/antibrush/b;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    :try_start_2
    const-string v3, "CookieMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get cookie failed. url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v1, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/16 v3, 0x15

    .line 28
    const-class v1, Lcom/taobao/accs/antibrush/b;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/taobao/accs/client/GlobalConfig;->enableCookie:Z

    if-nez v0, :cond_1

    .line 29
    const-string v0, "CookieMgr"

    const-string v2, "disable cookie"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 33
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/taobao/accs/antibrush/b;->b:Z

    if-nez v0, :cond_0

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_2

    .line 38
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 40
    :cond_2
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/antibrush/b;->a:Landroid/webkit/CookieManager;

    .line 41
    sget-object v0, Lcom/taobao/accs/antibrush/b;->a:Landroid/webkit/CookieManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_3

    .line 43
    sget-object v0, Lcom/taobao/accs/antibrush/b;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    .line 45
    :cond_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/accs/antibrush/b;->b:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    :try_start_2
    const-string v2, "CookieMgr"

    const-string v3, "setup"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/taobao/accs/antibrush/b;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/antibrush/b;->a(Landroid/content/Context;)V

    .line 56
    :cond_0
    sget-boolean v0, Lcom/taobao/accs/antibrush/b;->b:Z

    return v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 77
    const/4 v0, 0x0

    .line 78
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    :goto_0
    return-object v0

    .line 81
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ";"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 85
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 86
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 87
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 88
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 89
    const-string v3, "sec"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    invoke-static {v2}, Lcom/taobao/accs/antibrush/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 94
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid cookie name-value pair"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    const-string v2, "CookieMgr"

    const-string v3, "parse"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x27

    const/16 v4, 0x22

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 104
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_1

    .line 106
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 112
    :cond_0
    :goto_0
    return-object p0

    .line 108
    :cond_1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_0

    .line 110
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
