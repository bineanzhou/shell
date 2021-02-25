.class public Lcom/umeng/socialize/UmengTool;
.super Ljava/lang/Object;
.source "UmengTool.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAlipay(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".apshare.ShareEntryActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apshare.ShareEntryActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->checkPath(Ljava/lang/String;)Z

    move-result v0

    .line 98
    if-nez v0, :cond_0

    .line 99
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->ALIPAYERROR:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->ALIPAYSUCCESS:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static checkFBByself(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 108
    const-string v0, ""

    .line 111
    const-string v0, "com.umeng.facebook.FacebookActivity"

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/utils/UMUtils;->checkAndroidManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 112
    if-nez v0, :cond_0

    .line 113
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$FACEBOOK;->NOFACEBOOKACTIVITY:Ljava/lang/String;

    .line 130
    :goto_0
    return-object v0

    .line 116
    :cond_0
    const-string v0, "com.umeng.facebook.FacebookContentProvider"

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/utils/UMUtils;->checkAndroidManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 117
    if-nez v0, :cond_1

    .line 118
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$FACEBOOK;->NOFACEBOOKCONTENTPROVIDER:Ljava/lang/String;

    goto :goto_0

    .line 120
    :cond_1
    const-string v0, "com.facebook.sdk.ApplicationId"

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/utils/UMUtils;->checkMetaData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 121
    if-nez v0, :cond_2

    .line 122
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$FACEBOOK;->NOMETA:Ljava/lang/String;

    goto :goto_0

    .line 124
    :cond_2
    const-string v0, "facebook_app_id"

    const-string v1, "string"

    invoke-static {p0, v0, v1}, Lcom/umeng/commonsdk/utils/UMUtils;->checkResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 125
    if-nez v0, :cond_3

    .line 126
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$FACEBOOK;->ERRORMETA:Ljava/lang/String;

    goto :goto_0

    .line 130
    :cond_3
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppHashKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/UmengText$CHECK;->checkSuccess(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static checkFacebook(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 212
    invoke-static {p0}, Lcom/umeng/socialize/UmengTool;->checkFBByself(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/umeng/socialize/UmengTool;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public static checkKakao(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 192
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const-string v0, "\u5305\u540d\u4e3a\u7a7a"

    .line 201
    :goto_0
    return-object v0

    .line 196
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kakao \u914d\u7f6e\u6b63\u786e\uff0c\u8bf7\u68c0\u67e5kakao\u540e\u53f0\u7b7e\u540d:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppHashKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    const-string v0, "\u7b7e\u540d\u83b7\u53d6\u5931\u8d25"

    goto :goto_0
.end method

.method public static checkLinkin(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 175
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "\u5305\u540d\u4e3a\u7a7a"

    .line 184
    :goto_0
    return-object v0

    .line 179
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9886\u82f1 \u914d\u7f6e\u6b63\u786e\uff0c\u8bf7\u68c0\u67e5\u9886\u82f1\u540e\u53f0\u7b7e\u540d:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppHashKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    const-string v0, "\u7b7e\u540d\u83b7\u53d6\u5931\u8d25"

    goto :goto_0
.end method

.method public static checkQQ(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 207
    invoke-static {p0}, Lcom/umeng/socialize/UmengTool;->checkQQByself(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/umeng/socialize/UmengTool;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public static checkQQByself(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    const-string v0, "com.tencent.tauth.AuthActivity"

    .line 139
    const-string v1, "com.tencent.connect.common.AssistActivity"

    .line 140
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/utils/UMUtils;->checkAndroidManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 141
    if-nez v2, :cond_0

    .line 142
    invoke-static {v0}, Lcom/umeng/socialize/utils/UmengText$QQ;->getError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 144
    :cond_0
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/utils/UMUtils;->checkAndroidManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 145
    if-nez v0, :cond_1

    .line 146
    invoke-static {v1}, Lcom/umeng/socialize/utils/UmengText$QQ;->getError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_1
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/utils/UMUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 150
    if-nez v0, :cond_2

    .line 151
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$QQ;->ADDPERMISSION:Ljava/lang/String;

    goto :goto_0

    .line 153
    :cond_2
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v0}, Lcom/umeng/socialize/PlatformConfig;->getPlatform(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Lcom/umeng/socialize/PlatformConfig$Platform;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;

    .line 154
    iget-object v0, v0, Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;->appId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/utils/UMUtils;->checkIntentFilterData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 155
    if-nez v0, :cond_3

    .line 156
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$QQ;->ERRORDATA:Ljava/lang/String;

    goto :goto_0

    .line 158
    :cond_3
    const-string v0, "qq\u914d\u7f6e\u6b63\u786e"

    goto :goto_0
.end method

.method public static checkSina(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 90
    invoke-static {p0}, Lcom/umeng/socialize/UmengTool;->checkSinaBySelf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/umeng/socialize/UmengTool;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public static checkSinaBySelf(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppMD5Signature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 69
    const-string v2, "com.umeng.socialize.media.WBShareCallBackActivity"

    .line 70
    const-string v3, "com.sina.weibo.sdk.web.WeiboSdkWebActivity"

    .line 71
    const-string v4, "com.sina.weibo.sdk.share.WbShareTransActivity"

    .line 72
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/utils/UMUtils;->checkAndroidManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 73
    if-nez v2, :cond_0

    .line 74
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$SINA;->SINA_CALLBACKACTIVITY:Ljava/lang/String;

    .line 84
    :goto_0
    return-object v0

    .line 76
    :cond_0
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/utils/UMUtils;->checkAndroidManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 77
    if-nez v2, :cond_1

    .line 78
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$SINA;->SINA_WEBACTIVITY:Ljava/lang/String;

    goto :goto_0

    .line 80
    :cond_1
    invoke-static {p0, v4}, Lcom/umeng/commonsdk/utils/UMUtils;->checkAndroidManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 81
    if-nez v2, :cond_2

    .line 82
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$SINA;->SINA_TRANSACTIVITY:Ljava/lang/String;

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/umeng/socialize/utils/UmengText$CHECK;->checkSuccess(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static checkVK(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 217
    invoke-static {p0}, Lcom/umeng/socialize/UmengTool;->checkVKByself(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/umeng/socialize/UmengTool;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public static checkVKByself(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 166
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppSHA1Key(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4f60\u4f7f\u7528\u7684\u7b7e\u540d\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkWx(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 63
    invoke-static {p0}, Lcom/umeng/socialize/UmengTool;->checkWxBySelf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/umeng/socialize/UmengTool;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static checkWxBySelf(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".wxapi.WXEntryActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->checkPath(Ljava/lang/String;)Z

    move-result v2

    .line 47
    if-nez v2, :cond_0

    .line 48
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$WX;->WX_ERRORACTIVITY:Ljava/lang/String;

    .line 57
    :goto_0
    return-object v0

    .line 51
    :cond_0
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppMD5Signature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/utils/UMUtils;->checkAndroidManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/umeng/socialize/utils/UmengText$CHECK;->checkSuccess(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_1
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$WX;->WX_ERRORMANIFEST:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSignature(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5305\u540d\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\u7b7e\u540d:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppMD5Signature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nfacebook keyhash:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppHashKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/umeng/socialize/UmengTool;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static getStrRedicrectUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;

    iget-object v0, v0, Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;->redirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u53cb\u76dfDebug\u6a21\u5f0f\u81ea\u68c0"

    .line 31
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5173\u95ed"

    const/4 v2, 0x0

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 35
    return-void
.end method
