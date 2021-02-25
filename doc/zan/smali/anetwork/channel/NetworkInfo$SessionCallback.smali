.class Lanetwork/channel/NetworkInfo$SessionCallback;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lorg/android/spdy/SessionCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/NetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionCallback"
.end annotation


# instance fields
.field final synthetic a:Lanetwork/channel/NetworkInfo;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lanetwork/channel/NetworkInfo;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 538
    iput-object p1, p0, Lanetwork/channel/NetworkInfo$SessionCallback;->a:Lanetwork/channel/NetworkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    iput-object p3, p0, Lanetwork/channel/NetworkInfo$SessionCallback;->b:Ljava/lang/String;

    .line 540
    iput-object p2, p0, Lanetwork/channel/NetworkInfo$SessionCallback;->c:Ljava/util/HashMap;

    .line 541
    return-void
.end method

.method synthetic constructor <init>(Lanetwork/channel/NetworkInfo;Ljava/util/HashMap;Ljava/lang/String;Lanetwork/channel/NetworkInfo$1;)V
    .locals 0

    .prologue
    .line 533
    invoke-direct {p0, p1, p2, p3}, Lanetwork/channel/NetworkInfo$SessionCallback;-><init>(Lanetwork/channel/NetworkInfo;Ljava/util/HashMap;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bioPingRecvCallback(Lorg/android/spdy/SpdySession;I)V
    .locals 0

    .prologue
    .line 578
    return-void
.end method

.method public getSSLMeta(Lorg/android/spdy/SpdySession;)[B
    .locals 1

    .prologue
    .line 582
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public putSSLMeta(Lorg/android/spdy/SpdySession;[B)I
    .locals 1

    .prologue
    .line 587
    const/4 v0, 0x0

    return v0
.end method

.method public spdyCustomControlFrameFailCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;II)V
    .locals 0

    .prologue
    .line 563
    return-void
.end method

.method public spdyCustomControlFrameRecvCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;IIII[B)V
    .locals 0

    .prologue
    .line 558
    return-void
.end method

.method public spdyPingRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 552
    return-void
.end method

.method public spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;I)V
    .locals 3

    .prologue
    .line 572
    invoke-static {}, Lanetwork/channel/NetworkInfo;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spdy session close: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return-void
.end method

.method public spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V
    .locals 3

    .prologue
    .line 546
    iget-object v0, p0, Lanetwork/channel/NetworkInfo$SessionCallback;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lanetwork/channel/NetworkInfo$SessionCallback;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "true"

    aput-object v2, v0, v1

    .line 547
    iget-object v0, p0, Lanetwork/channel/NetworkInfo$SessionCallback;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lanetwork/channel/NetworkInfo$SessionCallback;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "0"

    aput-object v2, v0, v1

    .line 548
    return-void
.end method

.method public spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V
    .locals 4

    .prologue
    .line 567
    iget-object v0, p0, Lanetwork/channel/NetworkInfo$SessionCallback;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lanetwork/channel/NetworkInfo$SessionCallback;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 568
    return-void
.end method
