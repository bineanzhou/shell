.class Lanetwork/channel/entity/Repeater$3;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanetwork/channel/aidl/DefaultFinishEvent;

.field final synthetic b:Lanetwork/channel/aidl/ParcelableNetworkListener;

.field final synthetic c:Lanetwork/channel/entity/Repeater;


# direct methods
.method constructor <init>(Lanetwork/channel/entity/Repeater;Lanetwork/channel/aidl/DefaultFinishEvent;Lanetwork/channel/aidl/ParcelableNetworkListener;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lanetwork/channel/entity/Repeater$3;->c:Lanetwork/channel/entity/Repeater;

    iput-object p2, p0, Lanetwork/channel/entity/Repeater$3;->a:Lanetwork/channel/aidl/DefaultFinishEvent;

    iput-object p3, p0, Lanetwork/channel/entity/Repeater$3;->b:Lanetwork/channel/aidl/ParcelableNetworkListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 110
    invoke-static {v7}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "anet.Repeater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFinish]on Finish waitTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lanetwork/channel/entity/Repeater$3;->c:Lanetwork/channel/entity/Repeater;

    invoke-static {v4}, Lanetwork/channel/entity/Repeater;->d(Lanetwork/channel/entity/Repeater;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/entity/Repeater$3;->c:Lanetwork/channel/entity/Repeater;

    invoke-static {v2}, Lanetwork/channel/entity/Repeater;->e(Lanetwork/channel/entity/Repeater;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lanetwork/channel/entity/Repeater$3;->c:Lanetwork/channel/entity/Repeater;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lanetwork/channel/entity/Repeater;->a(Lanetwork/channel/entity/Repeater;J)J

    .line 114
    iget-object v0, p0, Lanetwork/channel/entity/Repeater$3;->a:Lanetwork/channel/aidl/DefaultFinishEvent;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lanetwork/channel/entity/Repeater$3;->a:Lanetwork/channel/aidl/DefaultFinishEvent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/DefaultFinishEvent;->a(Ljava/lang/Object;)V

    .line 118
    :cond_1
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/entity/Repeater$3;->b:Lanetwork/channel/aidl/ParcelableNetworkListener;

    iget-object v1, p0, Lanetwork/channel/entity/Repeater$3;->a:Lanetwork/channel/aidl/DefaultFinishEvent;

    invoke-interface {v0, v1}, Lanetwork/channel/aidl/ParcelableNetworkListener;->a(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    .line 120
    iget-object v0, p0, Lanetwork/channel/entity/Repeater$3;->c:Lanetwork/channel/entity/Repeater;

    invoke-static {v0}, Lanetwork/channel/entity/Repeater;->b(Lanetwork/channel/entity/Repeater;)Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lanetwork/channel/entity/Repeater$3;->c:Lanetwork/channel/entity/Repeater;

    invoke-static {v0}, Lanetwork/channel/entity/Repeater;->b(Lanetwork/channel/entity/Repeater;)Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    move-result-object v0

    invoke-virtual {v0}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->e()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_2
    :goto_0
    invoke-static {v7}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    const-string v0, "anet.Repeater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFinish]on Finish process time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lanetwork/channel/entity/Repeater$3;->c:Lanetwork/channel/entity/Repeater;

    invoke-static {v4}, Lanetwork/channel/entity/Repeater;->d(Lanetwork/channel/entity/Repeater;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/entity/Repeater$3;->c:Lanetwork/channel/entity/Repeater;

    invoke-static {v2}, Lanetwork/channel/entity/Repeater;->e(Lanetwork/channel/entity/Repeater;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :cond_3
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
