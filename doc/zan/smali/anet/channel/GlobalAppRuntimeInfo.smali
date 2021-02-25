.class public Lanet/channel/GlobalAppRuntimeInfo;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final TAG:Ljava/lang/String; = "awcn.GlobalAppRuntimeInfo"

.field private static context:Landroid/content/Context;

.field private static currentProcess:Ljava/lang/String;

.field private static env:Lanet/channel/entity/ENV;

.field public static volatile isBackground:Z

.field public static mConnToken:Ljava/lang/String;

.field private static volatile proxySetting:Lanet/channel/util/d;

.field private static targetProcess:Ljava/lang/String;

.field private static ttid:Ljava/lang/String;

.field private static userId:Ljava/lang/String;

.field private static utdid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    sget-object v0, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    sput-object v0, Lanet/channel/GlobalAppRuntimeInfo;->env:Lanet/channel/entity/ENV;

    .line 29
    const-string v0, ""

    sput-object v0, Lanet/channel/GlobalAppRuntimeInfo;->targetProcess:Ljava/lang/String;

    .line 31
    const-string v0, ""

    sput-object v0, Lanet/channel/GlobalAppRuntimeInfo;->currentProcess:Ljava/lang/String;

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lanet/channel/GlobalAppRuntimeInfo;->isBackground:Z

    .line 41
    sput-object v1, Lanet/channel/GlobalAppRuntimeInfo;->mConnToken:Ljava/lang/String;

    .line 43
    sput-object v1, Lanet/channel/GlobalAppRuntimeInfo;->proxySetting:Lanet/channel/util/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lanet/channel/GlobalAppRuntimeInfo;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getCurrentProcess()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lanet/channel/GlobalAppRuntimeInfo;->currentProcess:Ljava/lang/String;

    return-object v0
.end method

.method public static getEnv()Lanet/channel/entity/ENV;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lanet/channel/GlobalAppRuntimeInfo;->env:Lanet/channel/entity/ENV;

    return-object v0
.end method

.method public static getProxySetting()Lanet/channel/util/d;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lanet/channel/GlobalAppRuntimeInfo;->proxySetting:Lanet/channel/util/d;

    return-object v0
.end method

.method public static getTtid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lanet/channel/GlobalAppRuntimeInfo;->ttid:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lanet/channel/GlobalAppRuntimeInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public static getUtdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lanet/channel/GlobalAppRuntimeInfo;->utdid:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lanet/channel/GlobalAppRuntimeInfo;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lanet/channel/GlobalAppRuntimeInfo;->context:Landroid/content/Context;

    invoke-static {v0}, Lanet/channel/util/Utils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lanet/channel/GlobalAppRuntimeInfo;->utdid:Ljava/lang/String;

    .line 119
    :cond_0
    sget-object v0, Lanet/channel/GlobalAppRuntimeInfo;->utdid:Ljava/lang/String;

    return-object v0
.end method

.method public static isAppBackground()Z
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lanet/channel/GlobalAppRuntimeInfo;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lanet/channel/GlobalAppRuntimeInfo;->isBackground:Z

    goto :goto_0
.end method

.method public static isTargetProcess()Z
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lanet/channel/GlobalAppRuntimeInfo;->targetProcess:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lanet/channel/GlobalAppRuntimeInfo;->currentProcess:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lanet/channel/GlobalAppRuntimeInfo;->targetProcess:Ljava/lang/String;

    sget-object v1, Lanet/channel/GlobalAppRuntimeInfo;->currentProcess:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static setBackground(Z)V
    .locals 0

    .prologue
    .line 123
    sput-boolean p0, Lanet/channel/GlobalAppRuntimeInfo;->isBackground:Z

    .line 124
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 46
    sput-object p0, Lanet/channel/GlobalAppRuntimeInfo;->context:Landroid/content/Context;

    .line 47
    if-eqz p0, :cond_2

    .line 48
    sget-object v0, Lanet/channel/GlobalAppRuntimeInfo;->currentProcess:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {p0, v0}, Lanet/channel/util/Utils;->getProcessName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lanet/channel/GlobalAppRuntimeInfo;->currentProcess:Ljava/lang/String;

    .line 52
    :cond_0
    sget-object v0, Lanet/channel/GlobalAppRuntimeInfo;->targetProcess:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-static {p0}, Lanet/channel/util/Utils;->getMainProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lanet/channel/GlobalAppRuntimeInfo;->targetProcess:Ljava/lang/String;

    .line 57
    :cond_1
    const-string v0, "awcn.GlobalAppRuntimeInfo"

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "CurrentProcess"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lanet/channel/GlobalAppRuntimeInfo;->currentProcess:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "TargetProcess"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Lanet/channel/GlobalAppRuntimeInfo;->targetProcess:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :cond_2
    return-void
.end method

.method public static setCurrentProcess(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    sput-object p0, Lanet/channel/GlobalAppRuntimeInfo;->currentProcess:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public static setEnv(Lanet/channel/entity/ENV;)V
    .locals 0

    .prologue
    .line 85
    sput-object p0, Lanet/channel/GlobalAppRuntimeInfo;->env:Lanet/channel/entity/ENV;

    .line 86
    return-void
.end method

.method public static setProxySetting(Lanet/channel/util/d;)V
    .locals 0

    .prologue
    .line 134
    sput-object p0, Lanet/channel/GlobalAppRuntimeInfo;->proxySetting:Lanet/channel/util/d;

    .line 135
    return-void
.end method

.method public static setTargetProcess(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    sput-object p0, Lanet/channel/GlobalAppRuntimeInfo;->targetProcess:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public static setTtid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    sput-object p0, Lanet/channel/GlobalAppRuntimeInfo;->ttid:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lanet/channel/GlobalAppRuntimeInfo;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lanet/channel/GlobalAppRuntimeInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    :cond_0
    sput-object p0, Lanet/channel/GlobalAppRuntimeInfo;->userId:Ljava/lang/String;

    .line 103
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    invoke-static {}, Lanet/channel/strategy/dispatch/DispatchConstants;->getAmdcServerDomain()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lanet/channel/strategy/IStrategyInstance;->forceRefreshStrategy(Ljava/lang/String;)V

    .line 105
    :cond_1
    return-void
.end method

.method public static setUtdid(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 113
    return-void
.end method
