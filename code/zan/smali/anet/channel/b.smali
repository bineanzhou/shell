.class Lanet/channel/b;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanet/channel/entity/EventType;

.field final synthetic b:Lanet/channel/entity/d;

.field final synthetic c:Lanet/channel/Session;


# direct methods
.method constructor <init>(Lanet/channel/Session;Lanet/channel/entity/EventType;Lanet/channel/entity/d;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lanet/channel/b;->c:Lanet/channel/Session;

    iput-object p2, p0, Lanet/channel/b;->a:Lanet/channel/entity/EventType;

    iput-object p3, p0, Lanet/channel/b;->b:Lanet/channel/entity/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 230
    :try_start_0
    iget-object v0, p0, Lanet/channel/b;->c:Lanet/channel/Session;

    iget-object v0, v0, Lanet/channel/Session;->mEventCallBacks:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lanet/channel/b;->a:Lanet/channel/entity/EventType;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lanet/channel/b;->c:Lanet/channel/Session;

    iget-object v0, v0, Lanet/channel/Session;->mEventCallBacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/entity/EventCb;

    .line 232
    if-eqz v0, :cond_0

    .line 233
    iget-object v1, p0, Lanet/channel/b;->c:Lanet/channel/Session;

    iget-object v1, v1, Lanet/channel/Session;->mEventCallBacks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 234
    iget-object v3, p0, Lanet/channel/b;->a:Lanet/channel/entity/EventType;

    invoke-virtual {v3}, Lanet/channel/entity/EventType;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    and-int/2addr v1, v3

    if-eqz v1, :cond_0

    .line 236
    :try_start_1
    iget-object v1, p0, Lanet/channel/b;->c:Lanet/channel/Session;

    iget-object v3, p0, Lanet/channel/b;->a:Lanet/channel/entity/EventType;

    iget-object v4, p0, Lanet/channel/b;->b:Lanet/channel/entity/d;

    invoke-interface {v0, v1, v3, v4}, Lanet/channel/entity/EventCb;->onEvent(Lanet/channel/Session;Lanet/channel/entity/EventType;Lanet/channel/entity/d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    :try_start_2
    const-string v1, "awcn.Session"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lanet/channel/b;->c:Lanet/channel/Session;

    iget-object v3, v3, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v3, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 245
    :catch_1
    move-exception v0

    .line 246
    const-string v1, "awcn.Session"

    const-string v2, "handleCallbacks"

    iget-object v3, p0, Lanet/channel/b;->c:Lanet/channel/Session;

    iget-object v3, v3, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 248
    :cond_1
    return-void
.end method
