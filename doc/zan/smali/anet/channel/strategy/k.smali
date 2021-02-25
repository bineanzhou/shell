.class public Lanet/channel/strategy/k;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/k$c;,
        Lanet/channel/strategy/k$b;,
        Lanet/channel/strategy/k$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lanet/channel/strategy/k$c;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 14
    .line 16
    :try_start_0
    new-instance v0, Lanet/channel/strategy/k$c;

    invoke-direct {v0, p0}, Lanet/channel/strategy/k$c;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return-object v0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    const-string v2, "StrategyResultParser"

    const-string v3, "Parse HttpDns response failed."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "JSON Content"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v1, v0, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 19
    goto :goto_0
.end method
