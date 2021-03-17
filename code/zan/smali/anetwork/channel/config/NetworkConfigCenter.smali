.class public Lanetwork/channel/config/NetworkConfigCenter;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final a:Ljava/lang/String; = "Cache.Flag"

.field private static volatile b:Z

.field private static volatile c:Z

.field private static volatile d:Z

.field private static volatile e:Z

.field private static volatile f:Z

.field private static volatile g:Z

.field private static volatile h:J

.field private static volatile i:Lanetwork/channel/config/IRemoteConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 18
    sput-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->b:Z

    .line 19
    sput-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->c:Z

    .line 20
    sput-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->d:Z

    .line 21
    sput-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->e:Z

    .line 22
    sput-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->f:Z

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->g:Z

    .line 24
    const-wide/16 v0, 0x0

    sput-wide v0, Lanetwork/channel/config/NetworkConfigCenter;->h:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 4

    .prologue
    .line 29
    new-instance v0, Lanetwork/channel/config/OrangeConfigImpl;

    invoke-direct {v0}, Lanetwork/channel/config/OrangeConfigImpl;-><init>()V

    sput-object v0, Lanetwork/channel/config/NetworkConfigCenter;->i:Lanetwork/channel/config/IRemoteConfig;

    .line 30
    sget-object v0, Lanetwork/channel/config/NetworkConfigCenter;->i:Lanetwork/channel/config/IRemoteConfig;

    invoke-interface {v0}, Lanetwork/channel/config/IRemoteConfig;->a()V

    .line 32
    invoke-static {}, Lanetwork/channel/http/NetworkSdkSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 33
    const-string v1, "Cache.Flag"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lanetwork/channel/config/NetworkConfigCenter;->h:J

    .line 34
    return-void
.end method

.method public static a(J)V
    .locals 8

    .prologue
    .line 102
    sget-wide v0, Lanetwork/channel/config/NetworkConfigCenter;->h:J

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "anet.NetworkConfigCenter"

    const-string v1, "set cache flag"

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "old"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-wide v6, Lanetwork/channel/config/NetworkConfigCenter;->h:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "new"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    sput-wide p0, Lanetwork/channel/config/NetworkConfigCenter;->h:J

    .line 105
    invoke-static {}, Lanetwork/channel/http/NetworkSdkSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    const-string v1, "Cache.Flag"

    sget-wide v2, Lanetwork/channel/config/NetworkConfigCenter;->h:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 108
    invoke-static {}, Lanetwork/channel/cache/CacheManager;->a()V

    .line 110
    :cond_0
    return-void
.end method

.method public static a(Lanetwork/channel/config/IRemoteConfig;)V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lanetwork/channel/config/NetworkConfigCenter;->i:Lanetwork/channel/config/IRemoteConfig;

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lanetwork/channel/config/NetworkConfigCenter;->i:Lanetwork/channel/config/IRemoteConfig;

    invoke-interface {v0}, Lanetwork/channel/config/IRemoteConfig;->b()V

    .line 71
    :cond_0
    if-eqz p0, :cond_1

    .line 72
    invoke-interface {p0}, Lanetwork/channel/config/IRemoteConfig;->a()V

    .line 74
    :cond_1
    sput-object p0, Lanetwork/channel/config/NetworkConfigCenter;->i:Lanetwork/channel/config/IRemoteConfig;

    .line 75
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 37
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->b:Z

    .line 38
    return-void
.end method

.method public static b(Z)V
    .locals 0

    .prologue
    .line 44
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->c:Z

    .line 45
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->b:Z

    return v0
.end method

.method public static c(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    if-nez p0, :cond_0

    .line 52
    sget-object v0, Lanet/channel/util/b;->ALLOW_ALL_HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0}, Lanet/channel/util/b;->a(Ljavax/net/ssl/HostnameVerifier;)V

    .line 53
    sget-object v0, Lanet/channel/util/b;->TRUST_ALL_SSL_SOCKET_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0}, Lanet/channel/util/b;->a(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-static {v0}, Lanet/channel/util/b;->a(Ljavax/net/ssl/HostnameVerifier;)V

    .line 56
    invoke-static {v0}, Lanet/channel/util/b;->a(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->c:Z

    return v0
.end method

.method public static d(Z)V
    .locals 0

    .prologue
    .line 61
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->d:Z

    .line 62
    return-void
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->d:Z

    return v0
.end method

.method public static e(Z)V
    .locals 0

    .prologue
    .line 82
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->e:Z

    .line 83
    return-void
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->e:Z

    return v0
.end method

.method public static f(Z)V
    .locals 0

    .prologue
    .line 90
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->g:Z

    .line 91
    return-void
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 86
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->e:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Z)V
    .locals 0

    .prologue
    .line 98
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->f:Z

    .line 99
    return-void
.end method

.method public static g()Z
    .locals 1

    .prologue
    .line 94
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->f:Z

    return v0
.end method
