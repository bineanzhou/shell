.class Lanet/channel/session/e;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanet/channel/request/Request;

.field final synthetic b:Lanet/channel/session/d;


# direct methods
.method constructor <init>(Lanet/channel/session/d;Lanet/channel/request/Request;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lanet/channel/session/e;->b:Lanet/channel/session/d;

    iput-object p2, p0, Lanet/channel/session/e;->a:Lanet/channel/request/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 69
    iget-object v2, p0, Lanet/channel/session/e;->a:Lanet/channel/request/Request;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;Lanet/channel/RequestCb;)Lanet/channel/session/b$a;

    move-result-object v2

    .line 70
    iget v3, v2, Lanet/channel/session/b$a;->a:I

    if-lez v3, :cond_0

    .line 71
    new-instance v2, Lanet/channel/entity/b;

    sget-object v3, Lanet/channel/entity/EventType;->CONNECTED:Lanet/channel/entity/EventType;

    invoke-direct {v2, v3}, Lanet/channel/entity/b;-><init>(Lanet/channel/entity/EventType;)V

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    iput-wide v0, v2, Lanet/channel/entity/b;->a:J

    .line 73
    iget-object v0, p0, Lanet/channel/session/e;->b:Lanet/channel/session/d;

    sget-object v1, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    invoke-static {v0, v1, v2}, Lanet/channel/session/d;->a(Lanet/channel/session/d;Lanet/channel/Session$Status;Lanet/channel/entity/d;)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lanet/channel/session/e;->b:Lanet/channel/session/d;

    sget-object v1, Lanet/channel/entity/EventType;->CONNECT_FAIL:Lanet/channel/entity/EventType;

    new-instance v3, Lanet/channel/entity/d;

    sget-object v4, Lanet/channel/entity/EventType;->CONNECT_FAIL:Lanet/channel/entity/EventType;

    iget v2, v2, Lanet/channel/session/b$a;->a:I

    const-string v5, "Http connect fail"

    invoke-direct {v3, v4, v2, v5}, Lanet/channel/entity/d;-><init>(Lanet/channel/entity/EventType;ILjava/lang/String;)V

    invoke-static {v0, v1, v3}, Lanet/channel/session/d;->a(Lanet/channel/session/d;Lanet/channel/entity/EventType;Lanet/channel/entity/d;)V

    goto :goto_0
.end method
