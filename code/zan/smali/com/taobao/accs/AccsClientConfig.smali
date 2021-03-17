.class public Lcom/taobao/accs/AccsClientConfig;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/AccsClientConfig$Builder;,
        Lcom/taobao/accs/AccsClientConfig$ENV;,
        Lcom/taobao/accs/AccsClientConfig$SECURITY_TYPE;
    }
.end annotation


# static fields
.field public static final DEFAULT_CENTER_HOSTS:[Ljava/lang/String;

.field private static DEFAULT_CHANNEL_HOSTS:[Ljava/lang/String; = null

.field public static final DEFAULT_CONFIGTAG:Ljava/lang/String; = "default"

.field public static final SECURITY_OFF:I = 0x2

.field public static final SECURITY_OPEN:I = 0x1

.field public static final SECURITY_TAOBAO:I

.field public static loadedStaticConfig:Z

.field private static mContext:Landroid/content/Context;

.field private static mDebugConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/AccsClientConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static mEnv:I
    .annotation build Lcom/taobao/accs/AccsClientConfig$ENV;
    .end annotation
.end field

.field private static mPreviewConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/AccsClientConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static mReleaseConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/AccsClientConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppKey:Ljava/lang/String;

.field private mAppSecret:Ljava/lang/String;

.field private mAuthCode:Ljava/lang/String;

.field private mAutoUnit:Z

.field private mChannelHost:Ljava/lang/String;

.field private mChannelPubKey:I

.field private mConfigEnv:I

.field private mDisableChannel:Z

.field private mInappHost:Ljava/lang/String;

.field private mInappPubKey:I

.field private mKeepalive:Z

.field private mSecurity:I

.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .prologue
    .line 27
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "msgacs.m.taobao.com"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "msgacs.wapa.taobao.com"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "msgacs.waptest.taobao.com"

    aput-object v3, v1, v2

    sput-object v1, Lcom/taobao/accs/AccsClientConfig;->DEFAULT_CENTER_HOSTS:[Ljava/lang/String;

    .line 29
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "accscdn.m.taobao.com"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "acs.wapa.taobao.com"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "acs.waptest.taobao.com"

    aput-object v3, v1, v2

    sput-object v1, Lcom/taobao/accs/AccsClientConfig;->DEFAULT_CHANNEL_HOSTS:[Ljava/lang/String;

    .line 32
    const/4 v1, 0x0

    sput v1, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    .line 36
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v1, Lcom/taobao/accs/AccsClientConfig;->mReleaseConfigs:Ljava/util/Map;

    .line 37
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v1, Lcom/taobao/accs/AccsClientConfig;->mPreviewConfigs:Ljava/util/Map;

    .line 38
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v1, Lcom/taobao/accs/AccsClientConfig;->mDebugConfigs:Ljava/util/Map;

    .line 42
    const/4 v1, 0x0

    sput-boolean v1, Lcom/taobao/accs/AccsClientConfig;->loadedStaticConfig:Z

    .line 46
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/AccsClientConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/accs/utl/l;->f(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v4

    .line 47
    if-eqz v4, :cond_2

    .line 48
    const-string v1, "accsConfigTags"

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    const-string v1, "AccsClientConfig"

    const-string v3, "init config from xml"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "configtags"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v1, v3, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 52
    const-string v1, "\\|"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    move-object v3, v1

    .line 58
    :goto_0
    array-length v5, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_4

    aget-object v6, v3, v2

    .line 60
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    :cond_0
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 65
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "_accsAppkey"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, -0x1

    invoke-virtual {v4, v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 66
    if-gez v1, :cond_3

    const/4 v1, 0x0

    .line 67
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_accsAppSecret"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 68
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_authCode"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 69
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_keepAlive"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 70
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_autoUnit"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 71
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_inappPubkey"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, -0x1

    invoke-virtual {v4, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 72
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_channelPubkey"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, -0x1

    invoke-virtual {v4, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 73
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_inappHost"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 74
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_channelHost"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 75
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_configEnv"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 76
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_disableChannel"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    .line 78
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 79
    new-instance v17, Lcom/taobao/accs/AccsClientConfig$Builder;

    invoke-direct/range {v17 .. v17}, Lcom/taobao/accs/AccsClientConfig$Builder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/taobao/accs/AccsClientConfig$Builder;->setTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAppKey(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAppSecret(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAutoCode(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/taobao/accs/AccsClientConfig$Builder;->setKeepAlive(Z)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAutoUnit(Z)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/taobao/accs/AccsClientConfig$Builder;->setInappPubKey(I)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/taobao/accs/AccsClientConfig$Builder;->setChannelPubKey(I)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/taobao/accs/AccsClientConfig$Builder;->setInappHost(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/taobao/accs/AccsClientConfig$Builder;->setChannelHost(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/taobao/accs/AccsClientConfig$Builder;->setConfigEnv(I)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v1

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/taobao/accs/AccsClientConfig$Builder;->setDisableChannel(Z)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/accs/AccsClientConfig$Builder;->build()Lcom/taobao/accs/AccsClientConfig;

    .line 92
    const-string v1, "AccsClientConfig"

    const-string v6, "init config from xml"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 98
    :catch_0
    move-exception v1

    .line 99
    const-string v2, "AccsClientConfig"

    const-string v3, "init config from xml"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 101
    :cond_2
    :goto_4
    return-void

    .line 66
    :cond_3
    :try_start_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 95
    :cond_4
    const/4 v1, 0x1

    sput-boolean v1, Lcom/taobao/accs/AccsClientConfig;->loadedStaticConfig:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :cond_5
    move-object v3, v1

    goto/16 :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig;->mAppKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mAppSecret:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/taobao/accs/AccsClientConfig;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/taobao/accs/AccsClientConfig;->mConfigEnv:I

    return v0
.end method

.method static synthetic access$1002(Lcom/taobao/accs/AccsClientConfig;I)I
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/taobao/accs/AccsClientConfig;->mConfigEnv:I

    return p1
.end method

.method static synthetic access$102(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig;->mAppSecret:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/taobao/accs/AccsClientConfig;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/taobao/accs/AccsClientConfig;->mDisableChannel:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/taobao/accs/AccsClientConfig;I)I
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/taobao/accs/AccsClientConfig;->mSecurity:I

    return p1
.end method

.method static synthetic access$1300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->DEFAULT_CHANNEL_HOSTS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mPreviewConfigs:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mDebugConfigs:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mReleaseConfigs:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$202(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig;->mAuthCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/taobao/accs/AccsClientConfig;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/taobao/accs/AccsClientConfig;->mKeepalive:Z

    return p1
.end method

.method static synthetic access$402(Lcom/taobao/accs/AccsClientConfig;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/taobao/accs/AccsClientConfig;->mAutoUnit:Z

    return p1
.end method

.method static synthetic access$502(Lcom/taobao/accs/AccsClientConfig;I)I
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/taobao/accs/AccsClientConfig;->mInappPubKey:I

    return p1
.end method

.method static synthetic access$602(Lcom/taobao/accs/AccsClientConfig;I)I
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/taobao/accs/AccsClientConfig;->mChannelPubKey:I

    return p1
.end method

.method static synthetic access$700(Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mInappHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig;->mInappHost:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mChannelHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig;->mChannelHost:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig;->mTag:Ljava/lang/String;

    return-object p1
.end method

.method public static getConfig(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 140
    sget v0, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    packed-switch v0, :pswitch_data_0

    .line 148
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mReleaseConfigs:Ljava/util/Map;

    .line 151
    :goto_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/AccsClientConfig;

    .line 152
    iget-object v2, v0, Lcom/taobao/accs/AccsClientConfig;->mAppKey:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/taobao/accs/AccsClientConfig;->mConfigEnv:I

    sget v3, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    if-ne v2, v3, :cond_0

    .line 157
    :goto_1
    return-object v0

    .line 142
    :pswitch_0
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mPreviewConfigs:Ljava/util/Map;

    goto :goto_0

    .line 145
    :pswitch_1
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mDebugConfigs:Ljava/util/Map;

    goto :goto_0

    .line 156
    :cond_1
    const-string v0, "AccsClientConfig"

    const-string v1, "getConfig null!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    const/4 v0, 0x0

    goto :goto_1

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getConfigByTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig;
    .locals 4

    .prologue
    .line 162
    sget v0, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    packed-switch v0, :pswitch_data_0

    .line 170
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mReleaseConfigs:Ljava/util/Map;

    .line 174
    :goto_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/AccsClientConfig;

    .line 175
    if-nez v0, :cond_0

    .line 176
    const-string v1, "AccsClientConfig"

    const-string v2, "getConfig null!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :cond_0
    return-object v0

    .line 164
    :pswitch_0
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mPreviewConfigs:Ljava/util/Map;

    goto :goto_0

    .line 167
    :pswitch_1
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mDebugConfigs:Ljava/util/Map;

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getContext()Landroid/content/Context;
    .locals 5

    .prologue
    .line 105
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mContext:Landroid/content/Context;

    .line 119
    :goto_0
    return-object v0

    .line 108
    :cond_0
    const-class v1, Lcom/taobao/accs/AccsClientConfig;

    monitor-enter v1

    .line 109
    :try_start_0
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 110
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mContext:Landroid/content/Context;

    monitor-exit v1

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 113
    :cond_1
    :try_start_1
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 114
    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getApplication"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sput-object v0, Lcom/taobao/accs/AccsClientConfig;->mContext:Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :goto_1
    :try_start_2
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mContext:Landroid/content/Context;

    monitor-exit v1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mAppSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mAuthCode:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mChannelHost:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelPubKey()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/taobao/accs/AccsClientConfig;->mChannelPubKey:I

    return v0
.end method

.method public getConfigEnv()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/taobao/accs/AccsClientConfig;->mConfigEnv:I

    return v0
.end method

.method public getDisableChannel()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/taobao/accs/AccsClientConfig;->mDisableChannel:Z

    return v0
.end method

.method public getInappHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mInappHost:Ljava/lang/String;

    return-object v0
.end method

.method public getInappPubKey()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/taobao/accs/AccsClientConfig;->mInappPubKey:I

    return v0
.end method

.method public getSecurity()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/taobao/accs/AccsClientConfig;->mSecurity:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoUnit()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/taobao/accs/AccsClientConfig;->mAutoUnit:Z

    return v0
.end method

.method public isKeepalive()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/taobao/accs/AccsClientConfig;->mKeepalive:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccsClientConfig{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mAppKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig;->mAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAppSecret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig;->mAppSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInappHost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig;->mInappHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mChannelHost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig;->mChannelHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSecurity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/taobao/accs/AccsClientConfig;->mSecurity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAuthCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig;->mAuthCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInappPubKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/taobao/accs/AccsClientConfig;->mInappPubKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mChannelPubKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/taobao/accs/AccsClientConfig;->mChannelPubKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mKeepalive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/taobao/accs/AccsClientConfig;->mKeepalive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAutoUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/taobao/accs/AccsClientConfig;->mAutoUnit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConfigEnv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/taobao/accs/AccsClientConfig;->mConfigEnv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDisableChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/taobao/accs/AccsClientConfig;->mDisableChannel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
