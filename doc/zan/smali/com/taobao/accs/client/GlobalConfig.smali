.class public Lcom/taobao/accs/client/GlobalConfig;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static enableCookie:Z

.field public static mGroup:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;->TAOBAO:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    sput-object v0, Lcom/taobao/accs/client/GlobalConfig;->mGroup:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    .line 69
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/accs/client/GlobalConfig;->enableCookie:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setChannelProcessName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    sput-object p0, Lcom/taobao/accs/client/a;->e:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static setChannelReuse(ZLcom/taobao/accs/client/AccsConfig$ACCS_GROUP;)V
    .locals 0

    .prologue
    .line 50
    sput-boolean p0, Lcom/taobao/accs/client/GlobalClientInfo;->d:Z

    .line 51
    sput-object p1, Lcom/taobao/accs/client/GlobalConfig;->mGroup:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    .line 52
    return-void
.end method

.method public static setControlFrameMaxRetry(I)V
    .locals 0

    .prologue
    .line 24
    sput p0, Lcom/taobao/accs/data/Message;->a:I

    .line 25
    return-void
.end method

.method public static setCurrProcessNameImpl(Lcom/taobao/accs/IProcessName;)V
    .locals 0

    .prologue
    .line 43
    sput-object p0, Lcom/taobao/accs/client/a;->f:Lcom/taobao/accs/IProcessName;

    .line 44
    return-void
.end method

.method public static setEnableForground(Landroid/content/Context;Z)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 61
    const-string v1, "GlobalConfig"

    const-string v2, "setEnableForground"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "enable"

    aput-object v4, v3, v0

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    const/16 v1, 0x18

    .line 63
    if-nez p1, :cond_0

    .line 66
    :goto_0
    const-string v1, "support_foreground_v"

    invoke-static {p0, v1, v0}, Lcom/taobao/accs/utl/i;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 67
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static setMainProcessName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    sput-object p0, Lcom/taobao/accs/client/a;->d:Ljava/lang/String;

    .line 33
    return-void
.end method
