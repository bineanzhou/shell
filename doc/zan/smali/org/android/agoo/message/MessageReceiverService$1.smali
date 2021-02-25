.class Lorg/android/agoo/message/MessageReceiverService$1;
.super Lorg/android/agoo/service/SendMessage$Stub;
.source "Taobao"


# instance fields
.field final synthetic this$0:Lorg/android/agoo/message/MessageReceiverService;


# direct methods
.method constructor <init>(Lorg/android/agoo/message/MessageReceiverService;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lorg/android/agoo/message/MessageReceiverService$1;->this$0:Lorg/android/agoo/message/MessageReceiverService;

    invoke-direct {p0}, Lorg/android/agoo/service/SendMessage$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public doSend(Landroid/content/Intent;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lorg/android/agoo/message/MessageReceiverService$1;->this$0:Lorg/android/agoo/message/MessageReceiverService;

    invoke-virtual {v0}, Lorg/android/agoo/message/MessageReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/message/MessageReceiverService$1;->this$0:Lorg/android/agoo/message/MessageReceiverService;

    iget-object v2, p0, Lorg/android/agoo/message/MessageReceiverService$1;->this$0:Lorg/android/agoo/message/MessageReceiverService;

    invoke-virtual {v2}, Lorg/android/agoo/message/MessageReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/android/agoo/message/MessageReceiverService;->getIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/android/agoo/control/BaseIntentService;->runIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x0

    return v0
.end method
