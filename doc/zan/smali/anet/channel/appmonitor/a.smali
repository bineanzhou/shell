.class final Lanet/channel/appmonitor/a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/appmonitor/IAppMonitor;


# instance fields
.field final synthetic a:Lanet/channel/appmonitor/IAppMonitor;


# direct methods
.method constructor <init>(Lanet/channel/appmonitor/IAppMonitor;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lanet/channel/appmonitor/a;->a:Lanet/channel/appmonitor/IAppMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public commitAlarm(Lanet/channel/statist/AlarmObject;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lanet/channel/appmonitor/a;->a:Lanet/channel/appmonitor/IAppMonitor;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lanet/channel/appmonitor/a;->a:Lanet/channel/appmonitor/IAppMonitor;

    invoke-interface {v0, p1}, Lanet/channel/appmonitor/IAppMonitor;->commitAlarm(Lanet/channel/statist/AlarmObject;)V

    .line 39
    :cond_0
    return-void
.end method

.method public commitCount(Lanet/channel/statist/CountObject;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lanet/channel/appmonitor/a;->a:Lanet/channel/appmonitor/IAppMonitor;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lanet/channel/appmonitor/a;->a:Lanet/channel/appmonitor/IAppMonitor;

    invoke-interface {v0, p1}, Lanet/channel/appmonitor/IAppMonitor;->commitCount(Lanet/channel/statist/CountObject;)V

    .line 46
    :cond_0
    return-void
.end method

.method public commitStat(Lanet/channel/statist/StatObject;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lanet/channel/appmonitor/a;->a:Lanet/channel/appmonitor/IAppMonitor;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lanet/channel/appmonitor/a;->a:Lanet/channel/appmonitor/IAppMonitor;

    invoke-interface {v0, p1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 32
    :cond_0
    return-void
.end method

.method public register()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 21
    return-void
.end method

.method public register(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 25
    return-void
.end method
