.class public Lcom/open/likehelper/base/MyApplication;
.super Landroid/support/multidex/MultiDexApplication;
.source "MyApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    .line 104
    const-string v0, "wx62537eeb2f483d8f"

    const-string v1, "5b60d490a9f37ac1c086f52adcc6abb3"

    invoke-static {v0, v1}, Lcom/umeng/socialize/PlatformConfig;->setWeixin(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method private a()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 61
    invoke-static {p0}, Lcom/mcxiaoke/packer/helper/PackerNg;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Official_1"

    .line 63
    :goto_0
    const-string v1, "5ac3493ff29d983a910000dd"

    const-string v2, "abcce42a162f0b8f7dca11565ffd5708"

    invoke-static {p0, v1, v0, v3, v2}, Lcom/umeng/commonsdk/UMConfigure;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/commonsdk/UMConfigure;->setLogEnabled(Z)V

    .line 73
    invoke-static {v3}, Lcom/umeng/commonsdk/UMConfigure;->setEncryptEnabled(Z)V

    .line 75
    sget-object v0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->setScenarioType(Landroid/content/Context;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V

    .line 76
    return-void

    .line 62
    :cond_0
    invoke-static {p0}, Lcom/mcxiaoke/packer/helper/PackerNg;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 79
    invoke-static {p0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    .line 81
    new-instance v1, Lcom/open/likehelper/base/MyApplication$2;

    invoke-direct {v1, p0}, Lcom/open/likehelper/base/MyApplication$2;-><init>(Lcom/open/likehelper/base/MyApplication;)V

    invoke-virtual {v0, v1}, Lcom/umeng/message/PushAgent;->register(Lcom/umeng/message/IUmengRegisterCallback;)V

    .line 94
    new-instance v1, Lcom/open/likehelper/base/MyApplication$3;

    invoke-direct {v1, p0}, Lcom/open/likehelper/base/MyApplication$3;-><init>(Lcom/open/likehelper/base/MyApplication;)V

    .line 100
    invoke-virtual {v0, v1}, Lcom/umeng/message/PushAgent;->setNotificationClickHandler(Lcom/umeng/message/UHandler;)V

    .line 101
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 109
    new-instance v0, Lcom/open/likehelper/base/MyApplication$4;

    invoke-direct {v0, p0}, Lcom/open/likehelper/base/MyApplication$4;-><init>(Lcom/open/likehelper/base/MyApplication;)V

    .line 124
    invoke-virtual {p0}, Lcom/open/likehelper/base/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/smtt/sdk/QbSdk;->initX5Environment(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V

    .line 125
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/support/multidex/MultiDexApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 33
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->a(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    .line 39
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->a(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0}, Lcom/open/likehelper/base/MyApplication;->a()V

    .line 43
    invoke-direct {p0}, Lcom/open/likehelper/base/MyApplication;->b()V

    .line 44
    invoke-direct {p0}, Lcom/open/likehelper/base/MyApplication;->c()V

    .line 46
    invoke-direct {p0}, Lcom/open/likehelper/base/MyApplication;->d()V

    .line 47
    return-void
.end method
