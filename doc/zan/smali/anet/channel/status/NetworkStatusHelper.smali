.class public Lanet/channel/status/NetworkStatusHelper;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;,
        Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lanet/channel/status/NetworkStatusHelper;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static a()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lanet/channel/status/b;->b:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 58
    const-class v1, Lanet/channel/status/NetworkStatusHelper;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lanet/channel/status/b;->a:Landroid/content/Context;

    .line 59
    invoke-static {}, Lanet/channel/status/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit v1

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;)V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lanet/channel/status/NetworkStatusHelper;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method static a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lanet/channel/status/a;

    invoke-direct {v0, p0}, Lanet/channel/status/a;-><init>(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V

    invoke-static {v0}, Lanet/channel/a/c;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 90
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lanet/channel/status/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;)V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lanet/channel/status/NetworkStatusHelper;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lanet/channel/status/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lanet/channel/status/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lanet/channel/status/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lanet/channel/status/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static g()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 126
    sget-object v1, Lanet/channel/status/b;->b:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    sget-object v2, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NO:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-eq v1, v2, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v0

    .line 130
    :cond_1
    invoke-static {}, Lanet/channel/status/b;->b()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 131
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h()Z
    .locals 3

    .prologue
    .line 135
    sget-object v0, Lanet/channel/status/b;->b:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 136
    sget-object v1, Lanet/channel/status/b;->d:Ljava/lang/String;

    .line 137
    sget-object v2, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne v0, v2, :cond_0

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->j()Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "wap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getProxySetting()Lanet/channel/util/d;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 140
    :cond_1
    const/4 v0, 0x1

    .line 142
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 147
    sget-object v0, Lanet/channel/status/b;->b:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 148
    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->j()Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 149
    const-string v0, "proxy"

    .line 155
    :goto_0
    return-object v0

    .line 150
    :cond_0
    invoke-virtual {v0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lanet/channel/status/b;->d:Ljava/lang/String;

    const-string v2, "wap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    const-string v0, "wap"

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {v0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getProxySetting()Lanet/channel/util/d;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 153
    const-string v0, "auth"

    goto :goto_0

    .line 155
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public static j()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    sget-object v0, Lanet/channel/status/b;->b:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-eq v0, v1, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 167
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lanet/channel/status/b;->i:Landroid/util/Pair;

    goto :goto_0
.end method

.method public static k()V
    .locals 4

    .prologue
    .line 172
    :try_start_0
    sget-object v0, Lanet/channel/status/b;->b:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 174
    const-string v2, "\nNetwork detail*******************************\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v2, "Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    const-string v2, "Subtype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lanet/channel/status/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    sget-object v2, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NO:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-eq v0, v2, :cond_0

    .line 178
    invoke-virtual {v0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    const-string v0, "Apn: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lanet/channel/status/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    const-string v0, "Carrier: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lanet/channel/status/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    :cond_0
    :goto_0
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    const-string v0, "Proxy: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->j()Landroid/util/Pair;

    move-result-object v2

    .line 189
    if-eqz v2, :cond_1

    .line 190
    const-string v0, "ProxyHost: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    const-string v0, "ProxyPort: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    :cond_1
    const-string v0, "*********************************************"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v0, "awcn.NetworkStatusHelper"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    :goto_1
    return-void

    .line 182
    :cond_2
    const-string v0, "BSSID: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lanet/channel/status/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    const-string v0, "SSID: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lanet/channel/status/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic l()Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lanet/channel/status/NetworkStatusHelper;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method
