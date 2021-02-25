.class public interface abstract Lcom/taobao/accs/IAppReceiver;
.super Ljava/lang/Object;
.source "Taobao"


# virtual methods
.method public abstract getAllServices()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getService(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract onBindApp(I)V
.end method

.method public abstract onBindUser(Ljava/lang/String;I)V
.end method

.method public abstract onData(Ljava/lang/String;Ljava/lang/String;[B)V
.end method

.method public abstract onSendData(Ljava/lang/String;I)V
.end method

.method public abstract onUnbindApp(I)V
.end method

.method public abstract onUnbindUser(I)V
.end method
