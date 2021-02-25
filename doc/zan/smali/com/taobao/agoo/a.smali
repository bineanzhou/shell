.class Lcom/taobao/agoo/a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/taobao/agoo/BaseNotifyClickActivity;


# direct methods
.method constructor <init>(Lcom/taobao/agoo/BaseNotifyClickActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/taobao/agoo/a;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    iput-object p2, p0, Lcom/taobao/agoo/a;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 78
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/taobao/agoo/a;->a:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/taobao/agoo/a;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    iget-object v2, p0, Lcom/taobao/agoo/a;->a:Landroid/content/Intent;

    invoke-static {v0, v2}, Lcom/taobao/agoo/BaseNotifyClickActivity;->access$000(Lcom/taobao/agoo/BaseNotifyClickActivity;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/taobao/agoo/a;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    invoke-static {v2}, Lcom/taobao/agoo/BaseNotifyClickActivity;->access$100(Lcom/taobao/agoo/BaseNotifyClickActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 86
    iget-object v2, p0, Lcom/taobao/agoo/a;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    invoke-static {v2}, Lcom/taobao/agoo/BaseNotifyClickActivity;->access$200(Lcom/taobao/agoo/BaseNotifyClickActivity;)Lorg/android/agoo/control/NotifManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/taobao/agoo/a;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    new-instance v3, Lorg/android/agoo/control/NotifManager;

    invoke-direct {v3}, Lorg/android/agoo/control/NotifManager;-><init>()V

    invoke-static {v2, v3}, Lcom/taobao/agoo/BaseNotifyClickActivity;->access$202(Lcom/taobao/agoo/BaseNotifyClickActivity;Lorg/android/agoo/control/NotifManager;)Lorg/android/agoo/control/NotifManager;

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/taobao/agoo/a;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    invoke-static {v2}, Lcom/taobao/agoo/BaseNotifyClickActivity;->access$300(Lcom/taobao/agoo/BaseNotifyClickActivity;)Lorg/android/agoo/control/AgooFactory;

    move-result-object v2

    if-nez v2, :cond_1

    .line 90
    iget-object v2, p0, Lcom/taobao/agoo/a;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    new-instance v3, Lorg/android/agoo/control/AgooFactory;

    invoke-direct {v3}, Lorg/android/agoo/control/AgooFactory;-><init>()V

    invoke-static {v2, v3}, Lcom/taobao/agoo/BaseNotifyClickActivity;->access$302(Lcom/taobao/agoo/BaseNotifyClickActivity;Lorg/android/agoo/control/AgooFactory;)Lorg/android/agoo/control/AgooFactory;

    .line 91
    iget-object v2, p0, Lcom/taobao/agoo/a;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    invoke-static {v2}, Lcom/taobao/agoo/BaseNotifyClickActivity;->access$300(Lcom/taobao/agoo/BaseNotifyClickActivity;)Lorg/android/agoo/control/AgooFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/agoo/a;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    invoke-virtual {v3}, Lcom/taobao/agoo/BaseNotifyClickActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/agoo/a;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    invoke-static {v4}, Lcom/taobao/agoo/BaseNotifyClickActivity;->access$200(Lcom/taobao/agoo/BaseNotifyClickActivity;)Lorg/android/agoo/control/NotifManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/android/agoo/control/AgooFactory;->init(Landroid/content/Context;Lorg/android/agoo/control/NotifManager;Lorg/android/agoo/message/MessageService;)V

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/taobao/agoo/a;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    invoke-static {v2}, Lcom/taobao/agoo/BaseNotifyClickActivity;->access$300(Lcom/taobao/agoo/BaseNotifyClickActivity;)Lorg/android/agoo/control/AgooFactory;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/agoo/a;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    invoke-static {v4}, Lcom/taobao/agoo/BaseNotifyClickActivity;->access$100(Lcom/taobao/agoo/BaseNotifyClickActivity;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/android/agoo/control/AgooFactory;->msgReceiverPreHandler([BLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;Z)Landroid/os/Bundle;

    move-result-object v3

    .line 94
    const-string v2, "body"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    const-string v4, "accs.BaseNotifyClickActivity"

    const-string v5, "begin parse EncryptedMsg"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object v4, p0, Lcom/taobao/agoo/a;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    invoke-static {v4}, Lcom/taobao/agoo/BaseNotifyClickActivity;->access$300(Lcom/taobao/agoo/BaseNotifyClickActivity;)Lorg/android/agoo/control/AgooFactory;

    invoke-static {v2}, Lorg/android/agoo/control/AgooFactory;->parseEncryptedMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 98
    const-string v4, "body"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 104
    iget-object v1, p0, Lcom/taobao/agoo/a;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    invoke-static {v1}, Lcom/taobao/agoo/BaseNotifyClickActivity;->access$300(Lcom/taobao/agoo/BaseNotifyClickActivity;)Lorg/android/agoo/control/AgooFactory;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v3, "2"

    invoke-virtual {v1, v0, v3}, Lorg/android/agoo/control/AgooFactory;->saveMsg([BLjava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/taobao/agoo/a;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    invoke-static {v0, v2}, Lcom/taobao/agoo/BaseNotifyClickActivity;->access$400(Lcom/taobao/agoo/BaseNotifyClickActivity;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 114
    :cond_2
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/taobao/agoo/a;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    invoke-virtual {v0, v1}, Lcom/taobao/agoo/BaseNotifyClickActivity;->onMessage(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 121
    :goto_2
    return-void

    .line 100
    :cond_3
    :try_start_3
    const-string v2, "accs.BaseNotifyClickActivity"

    const-string v4, "parse EncryptedMsg fail, empty"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    :goto_3
    :try_start_4
    const-string v2, "accs.BaseNotifyClickActivity"

    const-string v3, "buildMessage"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 114
    :try_start_5
    iget-object v0, p0, Lcom/taobao/agoo/a;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    invoke-virtual {v0, v1}, Lcom/taobao/agoo/BaseNotifyClickActivity;->onMessage(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 115
    :catch_1
    move-exception v0

    .line 116
    const-string v1, "accs.BaseNotifyClickActivity"

    const-string v2, "onMessage"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    .line 107
    :cond_4
    :try_start_6
    const-string v0, "accs.BaseNotifyClickActivity"

    const-string v2, "parseMsgFromNotifyListener null!!"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "source"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/taobao/agoo/a;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    invoke-static {v5}, Lcom/taobao/agoo/BaseNotifyClickActivity;->access$100(Lcom/taobao/agoo/BaseNotifyClickActivity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    :goto_4
    :try_start_7
    iget-object v2, p0, Lcom/taobao/agoo/a;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    invoke-virtual {v2, v1}, Lcom/taobao/agoo/BaseNotifyClickActivity;->onMessage(Landroid/content/Intent;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 117
    :goto_5
    throw v0

    .line 115
    :catch_2
    move-exception v0

    .line 116
    const-string v1, "accs.BaseNotifyClickActivity"

    const-string v2, "onMessage"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    .line 115
    :catch_3
    move-exception v1

    .line 116
    const-string v2, "accs.BaseNotifyClickActivity"

    const-string v3, "onMessage"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_5

    .line 113
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 110
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_3
.end method
