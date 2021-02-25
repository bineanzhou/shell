.class public Lcom/taobao/accs/net/a;
.super Lcom/taobao/accs/net/g;
.source "Taobao"


# instance fields
.field private c:Landroid/app/PendingIntent;

.field private d:Landroid/app/AlarmManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/taobao/accs/net/g;-><init>(Landroid/content/Context;)V

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/net/a;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/taobao/accs/net/a;->d:Landroid/app/AlarmManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    const-string v1, "AlarmHeartBeatMgr"

    const-string v2, "AlarmHeartBeatMgr"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 33
    iget-object v0, p0, Lcom/taobao/accs/net/a;->d:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/taobao/accs/net/a;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/taobao/accs/net/a;->d:Landroid/app/AlarmManager;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/net/a;->d:Landroid/app/AlarmManager;

    if-nez v0, :cond_1

    .line 38
    const-string v0, "AlarmHeartBeatMgr"

    const-string v1, "setInner null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/taobao/accs/net/a;->c:Landroid/app/PendingIntent;

    if-nez v0, :cond_2

    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/taobao/accs/net/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const-string v1, "com.taobao.accs.intent.action.COMMAND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v1, "command"

    const/16 v2, 0xc9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    iget-object v1, p0, Lcom/taobao/accs/net/a;->a:Landroid/content/Context;

    invoke-static {v1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/net/a;->c:Landroid/app/PendingIntent;

    .line 49
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 51
    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 52
    iget-object v1, p0, Lcom/taobao/accs/net/a;->d:Landroid/app/AlarmManager;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/taobao/accs/net/a;->c:Landroid/app/PendingIntent;

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
