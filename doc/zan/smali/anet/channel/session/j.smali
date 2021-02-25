.class Lanet/channel/session/j;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lorg/android/spdy/AccsSSLCallback;


# instance fields
.field final synthetic a:Lanet/channel/session/TnetSpdySession;


# direct methods
.method constructor <init>(Lanet/channel/session/TnetSpdySession;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lanet/channel/session/j;->a:Lanet/channel/session/TnetSpdySession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSSLPublicKey(I[B)[B
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 452
    .line 454
    :try_start_0
    iget-object v0, p0, Lanet/channel/session/j;->a:Lanet/channel/session/TnetSpdySession;

    iget-object v0, v0, Lanet/channel/session/TnetSpdySession;->iSecurity:Lanet/channel/security/ISecurity;

    iget-object v1, p0, Lanet/channel/session/j;->a:Lanet/channel/session/TnetSpdySession;

    invoke-static {v1}, Lanet/channel/session/TnetSpdySession;->access$300(Lanet/channel/session/TnetSpdySession;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "ASE128"

    const-string v4, "tnet_pksg_key"

    invoke-interface {v0, v1, v3, v4, p2}, Lanet/channel/security/ISecurity;->decrypt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 455
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    :try_start_1
    invoke-static {v1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    const-string v1, "getSSLPublicKey"

    const/4 v3, 0x0

    const-string v4, "decrypt"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    aput-object v7, v5, v6

    invoke-static {v1, v3, v4, v5}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 461
    :cond_0
    :goto_0
    return-object v0

    .line 458
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 459
    :goto_1
    const-string v3, "awcn.TnetSpdySession"

    const-string v4, "getSSLPublicKey"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v1, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 458
    :catch_1
    move-exception v1

    goto :goto_1
.end method
