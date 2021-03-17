.class public Lanet/channel/appmonitor/AppMonitor;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static volatile appMonitor:Lanet/channel/appmonitor/IAppMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lanet/channel/appmonitor/b;

    invoke-direct {v0}, Lanet/channel/appmonitor/b;-><init>()V

    sput-object v0, Lanet/channel/appmonitor/AppMonitor;->appMonitor:Lanet/channel/appmonitor/IAppMonitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lanet/channel/appmonitor/IAppMonitor;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lanet/channel/appmonitor/AppMonitor;->appMonitor:Lanet/channel/appmonitor/IAppMonitor;

    return-object v0
.end method

.method public static setInstance(Lanet/channel/appmonitor/IAppMonitor;)V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lanet/channel/appmonitor/a;

    invoke-direct {v0, p0}, Lanet/channel/appmonitor/a;-><init>(Lanet/channel/appmonitor/IAppMonitor;)V

    sput-object v0, Lanet/channel/appmonitor/AppMonitor;->appMonitor:Lanet/channel/appmonitor/IAppMonitor;

    .line 48
    return-void
.end method
