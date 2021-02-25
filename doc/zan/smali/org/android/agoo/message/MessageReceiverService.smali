.class public abstract Lorg/android/agoo/message/MessageReceiverService;
.super Landroid/app/Service;
.source "Taobao"


# instance fields
.field a:Lorg/android/agoo/service/SendMessage$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 23
    new-instance v0, Lorg/android/agoo/message/MessageReceiverService$1;

    invoke-direct {v0, p0}, Lorg/android/agoo/message/MessageReceiverService$1;-><init>(Lorg/android/agoo/message/MessageReceiverService;)V

    iput-object v0, p0, Lorg/android/agoo/message/MessageReceiverService;->a:Lorg/android/agoo/service/SendMessage$Stub;

    return-void
.end method


# virtual methods
.method public abstract getIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5

    .prologue
    .line 36
    const-string v0, "MessageReceiverService"

    const-string v1, "Message receiver aidl was binded {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    const-string v0, "org.android.agoo.client.MessageReceiverService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lorg/android/agoo/message/MessageReceiverService;->a:Lorg/android/agoo/service/SendMessage$Stub;

    .line 40
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/android/agoo/message/MessageReceiverService;->a:Lorg/android/agoo/service/SendMessage$Stub;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 46
    return-void
.end method
