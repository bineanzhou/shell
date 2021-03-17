.class public Lcom/taobao/accs/utl/b;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lanet/channel/statist/AlarmObject;

    invoke-direct {v0}, Lanet/channel/statist/AlarmObject;-><init>()V

    .line 15
    iput-object p0, v0, Lanet/channel/statist/AlarmObject;->module:Ljava/lang/String;

    .line 16
    iput-object p1, v0, Lanet/channel/statist/AlarmObject;->modulePoint:Ljava/lang/String;

    .line 17
    iput-object p2, v0, Lanet/channel/statist/AlarmObject;->arg:Ljava/lang/String;

    .line 18
    const/4 v1, 0x1

    iput-boolean v1, v0, Lanet/channel/statist/AlarmObject;->isSuccess:Z

    .line 19
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v1

    invoke-interface {v1, v0}, Lanet/channel/appmonitor/IAppMonitor;->commitAlarm(Lanet/channel/statist/AlarmObject;)V

    .line 20
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lanet/channel/statist/CountObject;

    invoke-direct {v0}, Lanet/channel/statist/CountObject;-><init>()V

    .line 36
    iput-object p0, v0, Lanet/channel/statist/CountObject;->module:Ljava/lang/String;

    .line 37
    iput-object p1, v0, Lanet/channel/statist/CountObject;->modulePoint:Ljava/lang/String;

    .line 38
    iput-object p2, v0, Lanet/channel/statist/CountObject;->arg:Ljava/lang/String;

    .line 39
    iput-wide p3, v0, Lanet/channel/statist/CountObject;->value:D

    .line 40
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v1

    invoke-interface {v1, v0}, Lanet/channel/appmonitor/IAppMonitor;->commitCount(Lanet/channel/statist/CountObject;)V

    .line 41
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lanet/channel/statist/AlarmObject;

    invoke-direct {v0}, Lanet/channel/statist/AlarmObject;-><init>()V

    .line 25
    iput-object p0, v0, Lanet/channel/statist/AlarmObject;->module:Ljava/lang/String;

    .line 26
    iput-object p1, v0, Lanet/channel/statist/AlarmObject;->modulePoint:Ljava/lang/String;

    .line 27
    iput-object p2, v0, Lanet/channel/statist/AlarmObject;->arg:Ljava/lang/String;

    .line 28
    iput-object p3, v0, Lanet/channel/statist/AlarmObject;->errorCode:Ljava/lang/String;

    .line 29
    iput-object p4, v0, Lanet/channel/statist/AlarmObject;->errorMsg:Ljava/lang/String;

    .line 30
    const/4 v1, 0x0

    iput-boolean v1, v0, Lanet/channel/statist/AlarmObject;->isSuccess:Z

    .line 31
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v1

    invoke-interface {v1, v0}, Lanet/channel/appmonitor/IAppMonitor;->commitAlarm(Lanet/channel/statist/AlarmObject;)V

    .line 32
    return-void
.end method
