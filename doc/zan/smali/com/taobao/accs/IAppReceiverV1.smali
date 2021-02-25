.class public abstract Lcom/taobao/accs/IAppReceiverV1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lcom/taobao/accs/IAppReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


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

.method public onBindApp(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 18
    return-void
.end method

.method public abstract onBindApp(ILjava/lang/String;)V
.end method

.method public abstract onBindUser(Ljava/lang/String;I)V
.end method

.method public onData(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public onSendData(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public abstract onUnbindApp(I)V
.end method

.method public abstract onUnbindUser(I)V
.end method
