.class Lanet/channel/g;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/entity/EventCb;


# instance fields
.field final synthetic a:Lanet/channel/SessionRequest$IConnCb;

.field final synthetic b:J

.field final synthetic c:Lanet/channel/SessionRequest;


# direct methods
.method constructor <init>(Lanet/channel/SessionRequest;Lanet/channel/SessionRequest$IConnCb;J)V
    .locals 1

    .prologue
    .line 392
    iput-object p1, p0, Lanet/channel/g;->c:Lanet/channel/SessionRequest;

    iput-object p2, p0, Lanet/channel/g;->a:Lanet/channel/SessionRequest$IConnCb;

    iput-wide p3, p0, Lanet/channel/g;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lanet/channel/Session;Lanet/channel/entity/EventType;Lanet/channel/entity/d;)V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 395
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    if-nez p3, :cond_2

    move v5, v3

    .line 399
    :goto_1
    if-nez p3, :cond_3

    const-string v0, ""

    .line 400
    :goto_2
    sget-object v2, Lanet/channel/SessionRequest$1;->a:[I

    invoke-virtual {p2}, Lanet/channel/entity/EventType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 402
    :pswitch_0
    const-string v2, "awcn.SessionRequest"

    if-eqz p1, :cond_4

    iget-object v0, p1, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    :goto_3
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Session"

    aput-object v5, v4, v3

    aput-object p1, v4, v8

    const-string v5, "EventType"

    aput-object v5, v4, v9

    aput-object p2, v4, v10

    const/4 v5, 0x4

    const-string v6, "Event"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object p3, v4, v5

    invoke-static {v2, v1, v0, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    iget-object v0, p0, Lanet/channel/g;->c:Lanet/channel/SessionRequest;

    invoke-virtual {v0, p1, v3, v1}, Lanet/channel/SessionRequest;->a(Lanet/channel/Session;ILjava/lang/String;)V

    .line 404
    iget-object v0, p0, Lanet/channel/g;->a:Lanet/channel/SessionRequest$IConnCb;

    iget-wide v2, p0, Lanet/channel/g;->b:J

    invoke-interface {v0, p1, v2, v3}, Lanet/channel/SessionRequest$IConnCb;->onSuccess(Lanet/channel/Session;J)V

    goto :goto_0

    .line 398
    :cond_2
    iget v5, p3, Lanet/channel/entity/d;->d:I

    goto :goto_1

    .line 399
    :cond_3
    iget-object v0, p3, Lanet/channel/entity/d;->e:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 402
    goto :goto_3

    .line 407
    :pswitch_1
    const-string v4, "awcn.SessionRequest"

    if-eqz p1, :cond_5

    iget-object v2, p1, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    :goto_4
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "Session"

    aput-object v7, v6, v3

    aput-object p1, v6, v8

    const-string v3, "EventType"

    aput-object v3, v6, v9

    aput-object p2, v6, v10

    const/4 v3, 0x4

    const-string v7, "Event"

    aput-object v7, v6, v3

    const/4 v3, 0x5

    aput-object p3, v6, v3

    invoke-static {v4, v1, v2, v6}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    iget-object v1, p0, Lanet/channel/g;->c:Lanet/channel/SessionRequest;

    invoke-virtual {v1, p1, v5, v0}, Lanet/channel/SessionRequest;->a(Lanet/channel/Session;ILjava/lang/String;)V

    .line 409
    iget-object v0, p0, Lanet/channel/g;->c:Lanet/channel/SessionRequest;

    iget-object v0, v0, Lanet/channel/SessionRequest;->c:Lanet/channel/f;

    iget-object v1, p0, Lanet/channel/g;->c:Lanet/channel/SessionRequest;

    invoke-virtual {v0, v1, p1}, Lanet/channel/f;->c(Lanet/channel/SessionRequest;Lanet/channel/Session;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 410
    iget-object v0, p0, Lanet/channel/g;->a:Lanet/channel/SessionRequest$IConnCb;

    iget-wide v2, p0, Lanet/channel/g;->b:J

    invoke-interface {v0, p1, v2, v3, p2}, Lanet/channel/SessionRequest$IConnCb;->onDisConnect(Lanet/channel/Session;JLanet/channel/entity/EventType;)V

    goto/16 :goto_0

    :cond_5
    move-object v2, v1

    .line 407
    goto :goto_4

    .line 412
    :cond_6
    iget-object v0, p0, Lanet/channel/g;->a:Lanet/channel/SessionRequest$IConnCb;

    iget-wide v2, p0, Lanet/channel/g;->b:J

    move-object v1, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lanet/channel/SessionRequest$IConnCb;->onFailed(Lanet/channel/Session;JLanet/channel/entity/EventType;I)V

    goto/16 :goto_0

    .line 416
    :pswitch_2
    const-string v4, "awcn.SessionRequest"

    if-eqz p1, :cond_7

    iget-object v2, p1, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    :goto_5
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "Session"

    aput-object v7, v6, v3

    aput-object p1, v6, v8

    const-string v3, "EventType"

    aput-object v3, v6, v9

    aput-object p2, v6, v10

    const/4 v3, 0x4

    const-string v7, "Event"

    aput-object v7, v6, v3

    const/4 v3, 0x5

    aput-object p3, v6, v3

    invoke-static {v4, v1, v2, v6}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    iget-object v1, p0, Lanet/channel/g;->c:Lanet/channel/SessionRequest;

    invoke-virtual {v1, p1, v5, v0}, Lanet/channel/SessionRequest;->a(Lanet/channel/Session;ILjava/lang/String;)V

    .line 418
    iget-object v0, p0, Lanet/channel/g;->a:Lanet/channel/SessionRequest$IConnCb;

    iget-wide v2, p0, Lanet/channel/g;->b:J

    move-object v1, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lanet/channel/SessionRequest$IConnCb;->onFailed(Lanet/channel/Session;JLanet/channel/entity/EventType;I)V

    goto/16 :goto_0

    :cond_7
    move-object v2, v1

    .line 416
    goto :goto_5

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
