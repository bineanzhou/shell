.class public Lcom/umeng/message/PushAgent;
.super Ljava/lang/Object;
.source "PushAgent.java"


# static fields
.field public static DEBUG:Z

.field private static a:Lcom/umeng/message/PushAgent;

.field private static d:Z

.field private static final e:Ljava/lang/String;


# instance fields
.field private b:Lcom/umeng/message/tag/TagManager;

.field private c:Landroid/content/Context;

.field private f:Lcom/umeng/message/UHandler;

.field private g:Lcom/umeng/message/UHandler;

.field private h:Lcom/umeng/message/UHandler;

.field private i:Z

.field private j:Z

.field private k:Landroid/os/Handler;

.field private l:Lcom/umeng/message/IUmengRegisterCallback;

.field private m:Lcom/umeng/message/IUmengCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    sput-boolean v0, Lcom/umeng/message/PushAgent;->d:Z

    .line 52
    sput-boolean v0, Lcom/umeng/message/PushAgent;->DEBUG:Z

    .line 56
    const-class v0, Lcom/umeng/message/PushAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/PushAgent;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/message/PushAgent;->i:Z

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/message/PushAgent;->j:Z

    .line 91
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v5, p0, Lcom/umeng/message/PushAgent;->i:Z

    .line 63
    iput-boolean v6, p0, Lcom/umeng/message/PushAgent;->j:Z

    .line 69
    :try_start_0
    iput-object p1, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    .line 70
    invoke-static {p1}, Lcom/umeng/message/tag/TagManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/tag/TagManager;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/PushAgent;->b:Lcom/umeng/message/tag/TagManager;

    .line 73
    new-instance v0, Lcom/umeng/message/UmengMessageHandler;

    invoke-direct {v0}, Lcom/umeng/message/UmengMessageHandler;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/PushAgent;->f:Lcom/umeng/message/UHandler;

    .line 74
    new-instance v0, Lcom/umeng/message/UmengAdHandler;

    invoke-direct {v0}, Lcom/umeng/message/UmengAdHandler;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/PushAgent;->g:Lcom/umeng/message/UHandler;

    .line 75
    new-instance v0, Lcom/umeng/message/UmengNotificationClickHandler;

    invoke-direct {v0}, Lcom/umeng/message/UmengNotificationClickHandler;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/PushAgent;->h:Lcom/umeng/message/UHandler;

    .line 76
    invoke-static {p1}, Lcom/umeng/message/util/b;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    new-instance v0, Lcom/umeng/message/PushAgent$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/PushAgent$1;-><init>(Lcom/umeng/message/PushAgent;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/umeng/message/PushAgent;->k:Landroid/os/Handler;

    .line 88
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    sget-object v1, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v2, Lcom/umeng/message/PushAgent;->e:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "PushAgent\u521d\u59cb\u5316\u5931\u8d25"

    aput-object v4, v3, v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-interface {v1, v2, v5, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/message/PushAgent;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/umeng/message/PushAgent;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/message/PushAgent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/umeng/message/PushAgent;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/message/PushAgent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/PushAgent;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 196
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 197
    iget-object v1, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v1, "com.umeng.messge.registercallback.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v1, "registration_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v1, "status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    iget-object v1, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 202
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 211
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 212
    iget-object v1, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v1, "com.umeng.messge.registercallback.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v1, "status"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 215
    const-string v1, "s"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v1, "s1"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    iget-object v1, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 218
    return-void
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 105
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 106
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/PushAgent;->e:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "U-Push\u6700\u4f4e\u652f\u6301\u7684\u7cfb\u7edf\u7248\u672c\u4e3aAndroid 4.0"

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/message/PushAgent;->k:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/h;->a(Landroid/content/Context;Landroid/os/Handler;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/PushAgent;->e:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "AndroidManifest\u6743\u9650\u6216\u7ec4\u4ef6\u914d\u7f6e\u9519\u8bef"

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/PushAgent;->e:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u6ce8\u518c\u5931\u8d25"

    aput-object v3, v2, v6

    invoke-interface {v0, v1, v6, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_1
    :try_start_1
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/PushAgent;->e:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "AndroidManifest\u914d\u7f6e\u6b63\u786e"

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/umeng/message/PushAgent;->getMessageAppkey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/umeng/message/PushAgent;->getMessageSecret()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    :cond_2
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/PushAgent;->e:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Appkey\u548cSecret key\u5747\u4e0d\u80fd\u4e3a\u7a7a"

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    const-class v1, Lcom/umeng/message/UmengMessageCallbackHandlerService;

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/h;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    sget-boolean v0, Lcom/umeng/message/PushAgent;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 125
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/message/PushAgent;->k:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/h;->b(Landroid/content/Context;Landroid/os/Handler;)V

    .line 128
    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->setUseTlog(Z)V

    .line 129
    const/4 v0, 0x0

    invoke-static {v0}, Lanet/channel/util/ALog;->setUseTlog(Z)V

    .line 131
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/accs/ACCSClient;->setEnvironment(Landroid/content/Context;I)V

    .line 132
    new-instance v0, Lcom/taobao/accs/AccsClientConfig$Builder;

    invoke-direct {v0}, Lcom/taobao/accs/AccsClientConfig$Builder;-><init>()V

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "umeng:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/PushAgent;->getMessageAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAppKey(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lcom/umeng/message/PushAgent;->getMessageSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAppSecret(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v0

    const-string v1, "umengacs.m.taobao.com"

    .line 135
    invoke-virtual {v0, v1}, Lcom/taobao/accs/AccsClientConfig$Builder;->setInappHost(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v0

    const/16 v1, 0xb

    .line 136
    invoke-virtual {v0, v1}, Lcom/taobao/accs/AccsClientConfig$Builder;->setInappPubKey(I)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v0

    const-string v1, "umengjmacs.m.taobao.com"

    .line 137
    invoke-virtual {v0, v1}, Lcom/taobao/accs/AccsClientConfig$Builder;->setChannelHost(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v0

    const/16 v1, 0xb

    .line 138
    invoke-virtual {v0, v1}, Lcom/taobao/accs/AccsClientConfig$Builder;->setChannelPubKey(I)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v0

    .line 139
    invoke-direct {p0}, Lcom/umeng/message/PushAgent;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/taobao/accs/AccsClientConfig$Builder;->setKeepAlive(Z)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 140
    invoke-virtual {v0, v1}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAutoUnit(Z)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig$Builder;->build()Lcom/taobao/accs/AccsClientConfig;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/taobao/accs/ACCSClient;->init(Landroid/content/Context;Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;

    .line 146
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "amdcopen.m.taobao.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "amdc.wapa.taobao.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "amdc.taobao.net"

    aput-object v2, v0, v1

    invoke-static {v0}, Lanet/channel/strategy/dispatch/DispatchConstants;->setAmdcServerDomain([Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "106.11.61.135"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "106.11.61.137"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    invoke-static {v0}, Lanet/channel/strategy/dispatch/DispatchConstants;->setAmdcServerFixIp([[Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->isMiui8()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 152
    const-string v0, "com.umeng.message.XiaomiIntentService"

    invoke-static {v0}, Lcom/taobao/agoo/TaobaoRegister;->setAgooMsgReceiveService(Ljava/lang/String;)V

    .line 157
    :goto_1
    new-instance v0, Lcom/umeng/message/PushAgent$2;

    invoke-direct {v0, p0}, Lcom/umeng/message/PushAgent$2;-><init>(Lcom/umeng/message/PushAgent;)V

    invoke-static {v0}, Lcom/umeng/message/common/d;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 154
    :cond_5
    const-string v0, "com.umeng.message.UmengIntentService"

    invoke-static {v0}, Lcom/taobao/agoo/TaobaoRegister;->setAgooMsgReceiveService(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    new-instance v1, Lcom/umeng/message/PushAgent$3;

    invoke-direct {v1, p0}, Lcom/umeng/message/PushAgent$3;-><init>(Lcom/umeng/message/PushAgent;)V

    invoke-static {v0, v1}, Lcom/taobao/agoo/TaobaoRegister;->bindAgoo(Landroid/content/Context;Lcom/taobao/agoo/ICallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/PushAgent;->e:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u5f00\u542f\u63a8\u9001\u5931\u8d25"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v4, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    new-instance v1, Lcom/umeng/message/PushAgent$4;

    invoke-direct {v1, p0}, Lcom/umeng/message/PushAgent$4;-><init>(Lcom/umeng/message/PushAgent;)V

    invoke-static {v0, v1}, Lcom/taobao/agoo/TaobaoRegister;->unbindAgoo(Landroid/content/Context;Lcom/taobao/agoo/ICallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/PushAgent;->e:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u5173\u95ed\u63a8\u9001\u5931\u8d25"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v4, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 738
    iget-boolean v0, p0, Lcom/umeng/message/PushAgent;->j:Z

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;
    .locals 3

    .prologue
    .line 94
    const-class v1, Lcom/umeng/message/PushAgent;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/umeng/message/PushAgent;->a:Lcom/umeng/message/PushAgent;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/umeng/message/PushAgent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/umeng/message/PushAgent;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/message/PushAgent;->a:Lcom/umeng/message/PushAgent;

    .line 97
    :cond_0
    sget-object v0, Lcom/umeng/message/PushAgent;->a:Lcom/umeng/message/PushAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isAppLaunchByMessage()Z
    .locals 1

    .prologue
    .line 501
    sget-boolean v0, Lcom/umeng/message/PushAgent;->d:Z

    return v0
.end method

.method public static setAppLaunchByMessage()V
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/message/PushAgent;->d:Z

    .line 498
    return-void
.end method

.method private setAppkey(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 583
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/h;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 585
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/PushAgent;->e:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "appkey\u4e0d\u80fd\u4e3anull"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v4, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 590
    :cond_1
    :goto_0
    return-void

    .line 588
    :cond_2
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/message/MessageSharedPrefs;->setMessageAppKey(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAppkeyAndSecret(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 562
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/h;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->getMessageAppKey()Ljava/lang/String;

    move-result-object v0

    .line 564
    iget-object v1, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/MessageSharedPrefs;->getMessageAppSecret()Ljava/lang/String;

    move-result-object v1

    .line 566
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->removeMessageAppKey()V

    .line 568
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->removeMessageAppSecret()V

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/message/MessageSharedPrefs;->setMessageAppKey(Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/umeng/message/MessageSharedPrefs;->setMessageAppSecret(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/UTrack;->updateHeader()V

    .line 574
    :cond_1
    return-void
.end method

.method private setDebugMode(Z)V
    .locals 0

    .prologue
    .line 457
    sput-boolean p1, Lcom/umeng/message/PushAgent;->DEBUG:Z

    .line 458
    invoke-static {p1}, Lcom/taobao/accs/utl/ALog;->setPrintLog(Z)V

    .line 459
    invoke-static {p1}, Lanet/channel/util/ALog;->setPrintLog(Z)V

    .line 460
    sput-boolean p1, Lorg/android/spdy/SpdyAgent;->enableDebug:Z

    .line 461
    return-void
.end method

.method private setMessageChannel(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 611
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/h;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/message/MessageSharedPrefs;->setMessageChannel(Ljava/lang/String;)V

    .line 613
    new-instance v0, Lcom/umeng/message/PushAgent$5;

    invoke-direct {v0, p0}, Lcom/umeng/message/PushAgent$5;-><init>(Lcom/umeng/message/PushAgent;)V

    invoke-static {v0}, Lcom/umeng/message/common/d;->a(Ljava/lang/Runnable;)V

    .line 620
    :cond_0
    return-void
.end method

.method private setSecret(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 599
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/h;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 601
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/PushAgent;->e:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "appSecret\u4e0d\u80fd\u4e3anull"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v4, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 606
    :cond_1
    :goto_0
    return-void

    .line 604
    :cond_2
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/message/MessageSharedPrefs;->setMessageAppSecret(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addAlias(Ljava/lang/String;Ljava/lang/String;Lcom/umeng/message/UTrack$ICallBack;)V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/umeng/message/UTrack;->addAlias(Ljava/lang/String;Ljava/lang/String;Lcom/umeng/message/UTrack$ICallBack;)Z

    .line 361
    return-void
.end method

.method public deleteAlias(Ljava/lang/String;Ljava/lang/String;Lcom/umeng/message/UTrack$ICallBack;)V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/umeng/message/UTrack;->deleteAlias(Ljava/lang/String;Ljava/lang/String;Lcom/umeng/message/UTrack$ICallBack;)V

    .line 384
    return-void
.end method

.method public disable(Lcom/umeng/message/IUmengCallback;)V
    .locals 0

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lcom/umeng/message/PushAgent;->setCallback(Lcom/umeng/message/IUmengCallback;)V

    .line 297
    invoke-direct {p0}, Lcom/umeng/message/PushAgent;->d()V

    .line 298
    return-void
.end method

.method public enable(Lcom/umeng/message/IUmengCallback;)V
    .locals 0

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lcom/umeng/message/PushAgent;->setCallback(Lcom/umeng/message/IUmengCallback;)V

    .line 287
    invoke-direct {p0}, Lcom/umeng/message/PushAgent;->c()V

    .line 288
    return-void
.end method

.method public getAdHandler()Lcom/umeng/message/UHandler;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->g:Lcom/umeng/message/UHandler;

    return-object v0
.end method

.method public getCallback()Lcom/umeng/message/IUmengCallback;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->m:Lcom/umeng/message/IUmengCallback;

    return-object v0
.end method

.method public getDisplayNotificationNumber()I
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->getDisplayNotificationNumber()I

    move-result v0

    return v0
.end method

.method public getMessageAppkey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->getMessageAppKey()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    .line 411
    invoke-static {v0}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 413
    :cond_0
    return-object v0
.end method

.method public getMessageChannel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->getMessageChannel()Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    .line 426
    invoke-static {v0}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 428
    :cond_0
    return-object v0
.end method

.method public getMessageHandler()Lcom/umeng/message/UHandler;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->f:Lcom/umeng/message/UHandler;

    return-object v0
.end method

.method public getMessageSecret()Ljava/lang/String;
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->getMessageAppSecret()Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    const-string v1, "UMENG_MESSAGE_SECRET"

    .line 396
    invoke-static {v0, v1}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    :cond_0
    return-object v0
.end method

.method public getMuteDurationSeconds()I
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->getMuteDuration()I

    move-result v0

    return v0
.end method

.method public getNoDisturbEndHour()I
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->c()I

    move-result v0

    return v0
.end method

.method public getNoDisturbEndMinute()I
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->d()I

    move-result v0

    return v0
.end method

.method public getNoDisturbStartHour()I
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->a()I

    move-result v0

    return v0
.end method

.method public getNoDisturbStartMinute()I
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    .line 485
    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->b()I

    move-result v0

    .line 484
    return v0
.end method

.method public getNotificationChannelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationClickHandler()Lcom/umeng/message/UHandler;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->h:Lcom/umeng/message/UHandler;

    return-object v0
.end method

.method public getNotificationOnForeground()Z
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    .line 667
    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->getNotificaitonOnForeground()Z

    move-result v0

    .line 666
    return v0
.end method

.method public getNotificationPlayLights()I
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    .line 711
    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->getNotificationPlayLights()I

    move-result v0

    .line 710
    return v0
.end method

.method public getNotificationPlaySound()I
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    .line 723
    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->getNotificationPlaySound()I

    move-result v0

    .line 722
    return v0
.end method

.method public getNotificationPlayVibrate()I
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    .line 699
    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->getNotificationPlayVibrate()I

    move-result v0

    .line 698
    return v0
.end method

.method public getPushIntentServiceClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->getPushIntentServiceClass()Ljava/lang/String;

    move-result-object v0

    .line 452
    return-object v0
.end method

.method public getRegisterCallback()Lcom/umeng/message/IUmengRegisterCallback;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->l:Lcom/umeng/message/IUmengRegisterCallback;

    return-object v0
.end method

.method public getRegistrationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->getDeviceToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourcePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    .line 679
    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->getResourcePackageName()Ljava/lang/String;

    move-result-object v0

    .line 678
    return-object v0
.end method

.method public getTagManager()Lcom/umeng/message/tag/TagManager;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->b:Lcom/umeng/message/tag/TagManager;

    return-object v0
.end method

.method public isIncludesUmengUpdateSDK()Z
    .locals 2

    .prologue
    .line 653
    const/4 v1, 0x0

    .line 656
    :try_start_0
    const-string v0, "com.umeng.update.UmengUpdateAgent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 662
    :goto_0
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 657
    :catch_0
    move-exception v0

    .line 659
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 662
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isPushCheck()Z
    .locals 1

    .prologue
    .line 690
    iget-boolean v0, p0, Lcom/umeng/message/PushAgent;->i:Z

    return v0
.end method

.method public keepLowPowerMode(Z)V
    .locals 1

    .prologue
    .line 734
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/umeng/message/PushAgent;->j:Z

    .line 735
    return-void

    .line 734
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAppStart()V
    .locals 4

    .prologue
    .line 435
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Lcom/umeng/message/UTrack;->trackAppLaunch(J)V

    .line 436
    const-wide/16 v0, 0x0

    .line 437
    invoke-static {}, Lcom/umeng/message/PushAgent;->isAppLaunchByMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    sget-wide v2, Lcom/umeng/message/MsgConstant;->b:J

    rem-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 441
    :cond_0
    iget-object v2, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/umeng/message/UTrack;->sendCachedMsgLog(J)V

    .line 442
    return-void
.end method

.method public register(Lcom/umeng/message/IUmengRegisterCallback;)V
    .locals 0

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Lcom/umeng/message/PushAgent;->setRegisterCallback(Lcom/umeng/message/IUmengRegisterCallback;)V

    .line 282
    invoke-direct {p0}, Lcom/umeng/message/PushAgent;->b()V

    .line 283
    return-void
.end method

.method public setAlias(Ljava/lang/String;Ljava/lang/String;Lcom/umeng/message/UTrack$ICallBack;)V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/umeng/message/UTrack;->setAlias(Ljava/lang/String;Ljava/lang/String;Lcom/umeng/message/UTrack$ICallBack;)V

    .line 372
    return-void
.end method

.method public setCallback(Lcom/umeng/message/IUmengCallback;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lcom/umeng/message/PushAgent;->m:Lcom/umeng/message/IUmengCallback;

    .line 636
    return-void
.end method

.method public setDisplayNotificationNumber(I)V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/h;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/message/MessageSharedPrefs;->setDisplayNotificationNumber(I)V

    .line 518
    :cond_0
    return-void
.end method

.method public setEnableForground(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 748
    invoke-static {p1, p2}, Lcom/taobao/accs/client/GlobalConfig;->setEnableForground(Landroid/content/Context;Z)V

    .line 749
    return-void
.end method

.method public setMessageHandler(Lcom/umeng/message/UHandler;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/umeng/message/PushAgent;->f:Lcom/umeng/message/UHandler;

    .line 308
    return-void
.end method

.method public setMuteDurationSeconds(I)V
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/h;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/message/MessageSharedPrefs;->setMuteDuration(I)V

    .line 646
    :cond_0
    return-void
.end method

.method public setNoDisturbMode(IIII)V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/h;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/umeng/message/MessageSharedPrefs;->a(IIII)V

    .line 477
    :cond_0
    return-void
.end method

.method public setNotificaitonOnForeground(Z)V
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/h;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/message/MessageSharedPrefs;->setNotificaitonOnForeground(Z)V

    .line 675
    :cond_0
    return-void
.end method

.method public setNotificationChannelName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/h;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;)V

    .line 755
    :cond_0
    return-void
.end method

.method public setNotificationClickHandler(Lcom/umeng/message/UHandler;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/umeng/message/PushAgent;->h:Lcom/umeng/message/UHandler;

    .line 336
    return-void
.end method

.method public setNotificationPlayLights(I)V
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/h;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/message/MessageSharedPrefs;->setNotificationPlayLights(I)V

    .line 719
    :cond_0
    return-void
.end method

.method public setNotificationPlaySound(I)V
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/h;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/message/MessageSharedPrefs;->setNotificationPlaySound(I)V

    .line 731
    :cond_0
    return-void
.end method

.method public setNotificationPlayVibrate(I)V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/h;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/message/MessageSharedPrefs;->setNotificationPlayVibrate(I)V

    .line 707
    :cond_0
    return-void
.end method

.method public setPushCheck(Z)V
    .locals 0

    .prologue
    .line 694
    iput-boolean p1, p0, Lcom/umeng/message/PushAgent;->i:Z

    .line 695
    return-void
.end method

.method public setPushIntentServiceClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Lcom/umeng/message/UmengMessageService;",
            ">(",
            "Ljava/lang/Class",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/h;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/message/MessageSharedPrefs;->setPushIntentServiceClass(Ljava/lang/Class;)V

    .line 449
    :cond_0
    return-void
.end method

.method public setRegisterCallback(Lcom/umeng/message/IUmengRegisterCallback;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Lcom/umeng/message/PushAgent;->l:Lcom/umeng/message/IUmengRegisterCallback;

    .line 626
    return-void
.end method

.method public setResourcePackageName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/h;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/umeng/message/PushAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/message/MessageSharedPrefs;->setResourcePackageName(Ljava/lang/String;)V

    .line 687
    :cond_0
    return-void
.end method
